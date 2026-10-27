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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A023500: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

The programs for A023500, the canonical program `A023500.P6704142718453384351` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023500 has offset 0).

The definition of A023500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023500.P6704142718453384351

`A023499(n)+A000045(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023500

/-- `A023499(n)+A000045(n+1)` -/
def P6704142718453384351.Spec : Prop :=
  ∀ n, P6704142718453384351.a n = A023500 n

theorem P6704142718453384351.correct : P6704142718453384351.Spec := by
  intro n
  simp only [A023500]

end A023500

/-! ## A023500.P12798128720270928676

`A023499(n)+∑[A118658(n)/2]`
-/

namespace A023500.P12798128720270928676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023499 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023500.P12798128720270928676

namespace A023500

/-- `A023499(n)+∑[A118658(n)/2]` -/
def P12798128720270928676.Spec : Prop :=
  ∀ n, P12798128720270928676.a n = (A023500 n : ℚ)

end A023500

/-! ## A023500.P9396445388805460779

`A000071(n+1)+A023499(n)+1`
-/

namespace A023500.P9396445388805460779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A023499 n + 1)

end

end A023500.P9396445388805460779

namespace A023500

/-- `A000071(n+1)+A023499(n)+1` -/
def P9396445388805460779.Spec : Prop :=
  ∀ n, P9396445388805460779.a n = A023500 n

theorem P9396445388805460779.correct : P9396445388805460779.Spec := by
  intro n
  simp only [A023500, Nat.add_sub_cancel, A023500.P9396445388805460779.a, A023500.P6704142718453384351.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A023499, A023499.P8730777959964670675.f1, A023499.P8730777959964670675.f2, A023499.P8730777959964670675.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023500

/-! ## A023500.P4706659360948977751

`A023501(n)-A000045(n+1)`
-/

namespace A023500.P4706659360948977751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023501 n - A000045 (n + 1)

end

end A023500.P4706659360948977751

namespace A023500

/-- `A023501(n)-A000045(n+1)` -/
def P4706659360948977751.Spec : Prop :=
  ∀ n, P4706659360948977751.a n = A023500 n

end A023500

/-! ## A023500.P6335555193313490707

`A023502(n)-A000045(n+2)`
-/

namespace A023500.P6335555193313490707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - A000045 (n + 2)

end

end A023500.P6335555193313490707

namespace A023500

/-- `A023502(n)-A000045(n+2)` -/
def P6335555193313490707.Spec : Prop :=
  ∀ n, P6335555193313490707.a n = A023500 n

end A023500

/-! ## A023500.P3596269120743781323

`A023502(n)-A212804(n+3)`
-/

namespace A023500.P3596269120743781323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - A212804 (n + 3)

end

end A023500.P3596269120743781323

namespace A023500

/-- `A023502(n)-A212804(n+3)` -/
def P3596269120743781323.Spec : Prop :=
  ∀ n, P3596269120743781323.a n = A023500 n

end A023500

/-! ## A023500.P13503378943525527921

`A022810(n+1)-2*Δ[A001911(n)]`
-/

namespace A023500.P13503378943525527921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - 2 * (f1 (n + 1) - f1 n)

end

end A023500.P13503378943525527921

namespace A023500

/-- `A022810(n+1)-2*Δ[A001911(n)]` -/
def P13503378943525527921.Spec : Prop :=
  ∀ n, P13503378943525527921.a n = A023500 n

end A023500

/-! ## A023500.P7891396529228943138

`A090991(n+1)-A014252(n+1)`
-/

namespace A023500.P7891396529228943138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - A014252 (n + 1)

end

end A023500.P7891396529228943138

namespace A023500

/-- `A090991(n+1)-A014252(n+1)` -/
def P7891396529228943138.Spec : Prop :=
  ∀ n, P7891396529228943138.a n = A023500 n

end A023500

/-! ## A023500.P8653766462438825310

`A023501(n)-sqrt(A007598(n+1))`
-/

namespace A023500.P8653766462438825310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023501 n : ℝ) - Real.sqrt (A007598 (n + 1) : ℝ)

end

end A023500.P8653766462438825310

namespace A023500

/-- `A023501(n)-sqrt(A007598(n+1))` -/
def P8653766462438825310.Spec : Prop :=
  ∀ n, P8653766462438825310.a n = (A023500 n : ℝ)

end A023500

/-! ## A023500.P16856117441234719643

`A037027(∑[n])+A023499(n)`
-/

namespace A023500.P16856117441234719643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f1 j) + A023499 n

end

end A023500.P16856117441234719643

namespace A023500

/-- `A037027(∑[n])+A023499(n)` -/
def P16856117441234719643.Spec : Prop :=
  ∀ n, P16856117441234719643.a n = A023500 n

end A023500

/-! ## A023500.P3586418104623663867

`A036355(∑[n])+A023499(n)`
-/

namespace A023500.P3586418104623663867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j) + A023499 n

end

end A023500.P3586418104623663867

namespace A023500

/-- `A036355(∑[n])+A023499(n)` -/
def P3586418104623663867.Spec : Prop :=
  ∀ n, P3586418104623663867.a n = A023500 n

end A023500

/-! ## A023500.P688724722360730055

`A055830(∑[n])+A023499(n)`
-/

namespace A023500.P688724722360730055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (∑ j ∈ Finset.range (n + 1), f1 j) + A023499 n

end

end A023500.P688724722360730055

namespace A023500

/-- `A055830(∑[n])+A023499(n)` -/
def P688724722360730055.Spec : Prop :=
  ∀ n, P688724722360730055.a n = A023500 n

end A023500

/-! ## A023500.P1376479762634166183

`A058071(∑[n])+A023499(n)`
-/

namespace A023500.P1376479762634166183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) + A023499 n

end

end A023500.P1376479762634166183

namespace A023500

/-- `A058071(∑[n])+A023499(n)` -/
def P1376479762634166183.Spec : Prop :=
  ∀ n, P1376479762634166183.a n = A023500 n

end A023500

/-!
# A023501: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 1) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

The programs for A023501, the canonical program `A023501.P14554855581393115018` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023501 has offset 0).

The definition of A023501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023501.P12681289808546084890

`A023502(n)-A000045(n)`
-/

namespace A023501.P12681289808546084890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - A000045 n

end

end A023501.P12681289808546084890

namespace A023501

/-- `A023502(n)-A000045(n)` -/
def P12681289808546084890.Spec : Prop :=
  ∀ n, P12681289808546084890.a n = A023501 n

theorem P12681289808546084890.correct : P12681289808546084890.Spec := by
  intro n
  simp only [A023501, Nat.add_sub_cancel, A023501.P12681289808546084890.a, A023501.P14554855581393115018.f1, A023501.P14554855581393115018.a, A000045, A000045.P11838749114346432762.a, A023499, A023499.P8730777959964670675.f1, A023499.P8730777959964670675.f2, A023499.P8730777959964670675.a, A023502, A023502.P3083904464572208669.a, A118658, A118658.P8652943087803871292.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023501

/-! ## A023501.P14554855581393115018

`A023499(n)+∑[A118658(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023501

/-- `A023499(n)+∑[A118658(n)]` -/
def P14554855581393115018.Spec : Prop :=
  ∀ n, P14554855581393115018.a n = A023501 n

theorem P14554855581393115018.correct : P14554855581393115018.Spec := by
  intro n
  simp only [A023501]

end A023501

/-! ## A023501.P14360984301315376236

`A023500(n)+A000045(n+1)`
-/

namespace A023501.P14360984301315376236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n + A000045 (n + 1)

end

end A023501.P14360984301315376236

namespace A023501

/-- `A023500(n)+A000045(n+1)` -/
def P14360984301315376236.Spec : Prop :=
  ∀ n, P14360984301315376236.a n = A023501 n

end A023501

/-! ## A023501.P1431014858125371644

`A023502(n)+1-A001611(n)`
-/

namespace A023501.P1431014858125371644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n + (1 - A001611 n)

end

end A023501.P1431014858125371644

namespace A023501

/-- `A023502(n)+1-A001611(n)` -/
def P1431014858125371644.Spec : Prop :=
  ∀ n, P1431014858125371644.a n = A023501 n

theorem P1431014858125371644.correct : P1431014858125371644.Spec := by
  intro n
  simp only [A023501, Nat.add_sub_cancel, A023501.P1431014858125371644.a, A023501.P14554855581393115018.f1, A023501.P14554855581393115018.a, A001611, A001611.P16593652898942925329.a, A023499, A023499.P8730777959964670675.f1, A023499.P8730777959964670675.f2, A023499.P8730777959964670675.a, A023502, A023502.P3083904464572208669.a, A118658, A118658.P8652943087803871292.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023501

/-! ## A023501.P18083642795484363146

`A118658(n+2)+A023499(n)`
-/

namespace A023501.P18083642795484363146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) + A023499 n

end

end A023501.P18083642795484363146

namespace A023501

/-- `A118658(n+2)+A023499(n)` -/
def P18083642795484363146.Spec : Prop :=
  ∀ n, P18083642795484363146.a n = A023501 n

end A023501

/-! ## A023501.P9691756839819244399

`A023502(n)-A212804(n+1)`
-/

namespace A023501.P9691756839819244399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - A212804 (n + 1)

end

end A023501.P9691756839819244399

namespace A023501

/-- `A023502(n)-A212804(n+1)` -/
def P9691756839819244399.Spec : Prop :=
  ∀ n, P9691756839819244399.a n = A023501 n

end A023501

/-! ## A023501.P7384179610518378882

`A023502(n)+n-A002062(n)`
-/

namespace A023501.P7384179610518378882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n + ((n : ℤ) - A002062 n)

end

end A023501.P7384179610518378882

namespace A023501

/-- `A023502(n)+n-A002062(n)` -/
def P7384179610518378882.Spec : Prop :=
  ∀ n, P7384179610518378882.a n = A023501 n

theorem P7384179610518378882.correct : P7384179610518378882.Spec := by
  intro n
  simp only [A023501, Nat.add_sub_cancel, A023501.P7384179610518378882.a, A023501.P14554855581393115018.f1, A023501.P14554855581393115018.a, A002062, A002062.P4072436808255348786.a, A023499, A023499.P8730777959964670675.f1, A023499.P8730777959964670675.f2, A023499.P8730777959964670675.a, A023502, A023502.P3083904464572208669.a, A118658, A118658.P8652943087803871292.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023501

/-! ## A023501.P12137693996806718931

`A023502(n)-lcm(A167808(n), A167816(n))`
-/

namespace A023501.P12137693996806718931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - (Int.lcm (A167808 n) (A167816 n) : ℤ)

end

end A023501.P12137693996806718931

namespace A023501

/-- `A023502(n)-lcm(A167808(n), A167816(n))` -/
def P12137693996806718931.Spec : Prop :=
  ∀ n, P12137693996806718931.a n = A023501 n

end A023501

/-! ## A023501.P3687199756575068861

`A023502(n)-Δ[A000032(n)-A212804(n)]`
-/

namespace A023501.P3687199756575068861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - (f1 (n + 1) - f1 n)

end

end A023501.P3687199756575068861

namespace A023501

/-- `A023502(n)-Δ[A000032(n)-A212804(n)]` -/
def P3687199756575068861.Spec : Prop :=
  ∀ n, P3687199756575068861.a n = A023501 n

end A023501

/-! ## A023501.P4786707497977950373

`A023500(n)+Δ[Δ[A001911(n)]]`
-/

namespace A023501.P4786707497977950373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n + (f1 (n + 1) - f1 n)

end

end A023501.P4786707497977950373

namespace A023501

/-- `A023500(n)+Δ[Δ[A001911(n)]]` -/
def P4786707497977950373.Spec : Prop :=
  ∀ n, P4786707497977950373.a n = A023501 n

end A023501

/-! ## A023501.P4912408212449031671

`A022810(n+1)-A000032(n+1)`
-/

namespace A023501.P4912408212449031671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - A000032 (n + 1)

end

end A023501.P4912408212449031671

namespace A023501

/-- `A022810(n+1)-A000032(n+1)` -/
def P4912408212449031671.Spec : Prop :=
  ∀ n, P4912408212449031671.a n = A023501 n

end A023501

/-! ## A023501.P4647056104779704448

`A022810(n+1)-A000204(n+1)`
-/

namespace A023501.P4647056104779704448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - A000204 (n + 1)

end

end A023501.P4647056104779704448

namespace A023501

/-- `A022810(n+1)-A000204(n+1)` -/
def P4647056104779704448.Spec : Prop :=
  ∀ n, P4647056104779704448.a n = A023501 n

end A023501

/-! ## A023501.P7329937092028173393

`A288219(n+2)-A014252(n+1)`
-/

namespace A023501.P7329937092028173393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (n + 2) - A014252 (n + 1)

end

end A023501.P7329937092028173393

namespace A023501

/-- `A288219(n+2)-A014252(n+1)` -/
def P7329937092028173393.Spec : Prop :=
  ∀ n, P7329937092028173393.a n = A023501 n

end A023501

/-! ## A023501.P12390431658228537360

`A329723(n+6)-(A000285(n+2)-A023499(n))`
-/

namespace A023501.P12390431658228537360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 6) - (A000285 (n + 2) - A023499 n)

end

end A023501.P12390431658228537360

namespace A023501

/-- `A329723(n+6)-(A000285(n+2)-A023499(n))` -/
def P12390431658228537360.Spec : Prop :=
  ∀ n, P12390431658228537360.a n = A023501 n

end A023501

/-! ## A023501.P3112569288214274039

`A023502(n)-sqrt(A007598(n))`
-/

namespace A023501.P3112569288214274039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023502 n : ℝ) - Real.sqrt (A007598 n : ℝ)

end

end A023501.P3112569288214274039

namespace A023501

/-- `A023502(n)-sqrt(A007598(n))` -/
def P3112569288214274039.Spec : Prop :=
  ∀ n, P3112569288214274039.a n = (A023501 n : ℝ)

end A023501

/-! ## A023501.P13002116332457052203

`A036355(∑[n])+A023500(n)`
-/

namespace A023501.P13002116332457052203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j) + A023500 n

end

end A023501.P13002116332457052203

namespace A023501

/-- `A036355(∑[n])+A023500(n)` -/
def P13002116332457052203.Spec : Prop :=
  ∀ n, P13002116332457052203.a n = A023501 n

end A023501

/-!
# A023502: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2 ) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

The programs for A023502, the canonical program `A023502.P3083904464572208669` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023502 has offset 0).

The definition of A023502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023502.P3083904464572208669

`A023501(n)+A000045(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023502

/-- `A023501(n)+A000045(n)` -/
def P3083904464572208669.Spec : Prop :=
  ∀ n, P3083904464572208669.a n = A023502 n

theorem P3083904464572208669.correct : P3083904464572208669.Spec := by
  intro n
  simp only [A023502]

end A023502

/-! ## A023502.P12088994063293435159

`A023499(n)+A020695(n)`
-/

namespace A023502.P12088994063293435159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + A020695 n

end

end A023502.P12088994063293435159

namespace A023502

/-- `A023499(n)+A020695(n)` -/
def P12088994063293435159.Spec : Prop :=
  ∀ n, P12088994063293435159.a n = A023502 n

end A023502

/-! ## A023502.P10741494467971265806

`A023500(n)+Δ[A001911(n)]`
-/

namespace A023502.P10741494467971265806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n + (f1 (n + 1) - f1 n)

end

end A023502.P10741494467971265806

namespace A023502

/-- `A023500(n)+Δ[A001911(n)]` -/
def P10741494467971265806.Spec : Prop :=
  ∀ n, P10741494467971265806.a n = A023502 n

end A023502

/-! ## A023502.P8295288918892370169

`A023500(n)+A000045(n+2)`
-/

namespace A023502.P8295288918892370169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n + A000045 (n + 2)

end

end A023502.P8295288918892370169

namespace A023502

/-- `A023500(n)+A000045(n+2)` -/
def P8295288918892370169.Spec : Prop :=
  ∀ n, P8295288918892370169.a n = A023502 n

end A023502

/-! ## A023502.P8943594444454628482

`A023499(n)+A000045(n+3)`
-/

namespace A023502.P8943594444454628482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + A000045 (n + 3)

end

end A023502.P8943594444454628482

namespace A023502

/-- `A023499(n)+A000045(n+3)` -/
def P8943594444454628482.Spec : Prop :=
  ∀ n, P8943594444454628482.a n = A023502 n

end A023502

/-! ## A023502.P1774097084577184984

`A023500(n)+record[A118658(n)/2]`
-/

namespace A023502.P1774097084577184984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023500 n : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023502.P1774097084577184984

namespace A023502

/-- `A023500(n)+record[A118658(n)/2]` -/
def P1774097084577184984.Spec : Prop :=
  ∀ n, P1774097084577184984.a n = (A023502 n : ℚ)

end A023502

/-! ## A023502.P4823503766880856781

`A022810(n+1)-Δ[A001911(n)]`
-/

namespace A023502.P4823503766880856781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023502.P4823503766880856781

namespace A023502

/-- `A022810(n+1)-Δ[A001911(n)]` -/
def P4823503766880856781.Spec : Prop :=
  ∀ n, P4823503766880856781.a n = A023502 n

end A023502

/-! ## A023502.P6028126277061590746

`A022810(n+1)-A000045(n+2)`
-/

namespace A023502.P6028126277061590746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - A000045 (n + 2)

end

end A023502.P6028126277061590746

namespace A023502

/-- `A022810(n+1)-A000045(n+2)` -/
def P6028126277061590746.Spec : Prop :=
  ∀ n, P6028126277061590746.a n = A023502 n

end A023502

/-! ## A023502.P1734955279425695719

`A020712(n)+A023499(n)-Δ[A020712(n)]`
-/

namespace A023502.P1734955279425695719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n + (A023499 n - (f1 (n + 1) - f1 n))

end

end A023502.P1734955279425695719

namespace A023502

/-- `A020712(n)+A023499(n)-Δ[A020712(n)]` -/
def P1734955279425695719.Spec : Prop :=
  ∀ n, P1734955279425695719.a n = A023502 n

end A023502

/-! ## A023502.P2943553442344793623

`A023499(n)+Δ[Δ[A020712(n)]]`
-/

namespace A023502.P2943553442344793623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + (f1 (n + 1) - f1 n)

end

end A023502.P2943553442344793623

namespace A023502

/-- `A023499(n)+Δ[Δ[A020712(n)]]` -/
def P2943553442344793623.Spec : Prop :=
  ∀ n, P2943553442344793623.a n = A023502 n

end A023502

/-! ## A023502.P16120653127491709545

`A023501(n)+sqrt(A007598(n))`
-/

namespace A023502.P16120653127491709545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023501 n : ℝ) + Real.sqrt (A007598 n : ℝ)

end

end A023502.P16120653127491709545

namespace A023502

/-- `A023501(n)+sqrt(A007598(n))` -/
def P16120653127491709545.Spec : Prop :=
  ∀ n, P16120653127491709545.a n = (A023502 n : ℝ)

end A023502

/-!
# A023503: Greatest prime divisor of prime(n) - 1.

The programs for A023503, the canonical program `A023503.P1741513283774222757` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023503 has offset 2).

The definition of A023503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023503.P1741513283774222757

`A006530(A006093(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023503

/-- `A006530(A006093(n+2))` -/
def P1741513283774222757.Spec : Prop :=
  ∀ n, P1741513283774222757.a n = A023503 (n + 2)

theorem P1741513283774222757.correct : P1741513283774222757.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel]

end A023503

/-! ## A023503.P13397235230766181100

`A006530(A000040(n+2)-1)`
-/

namespace A023503.P13397235230766181100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) - 1).toNat

end

end A023503.P13397235230766181100

namespace A023503

/-- `A006530(A000040(n+2)-1)` -/
def P13397235230766181100.Spec : Prop :=
  ∀ n, P13397235230766181100.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P13843512288596255928

`A085382(n+2)-A065091(n+1)`
-/

namespace A023503.P13843512288596255928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085382 (n + 2) - A065091 (n + 1)

end

end A023503.P13843512288596255928

namespace A023503

/-- `A085382(n+2)-A065091(n+1)` -/
def P13843512288596255928.Spec : Prop :=
  ∀ n, P13843512288596255928.a n = A023503 (n + 2)

theorem P13843512288596255928.correct : P13843512288596255928.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel, A023503.P13843512288596255928.a, A023503.P1741513283774222757.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A065091, A065091.P6971844946592549357.a, A085382, A085382.P1988162494212330199.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023503

/-! ## A023503.P6892616046621392006

`A006530(A005097(n+1)+A000007(n))`
-/

namespace A023503.P6892616046621392006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005097 (n + 1) + A000007 n).toNat

end

end A023503.P6892616046621392006

namespace A023503

/-- `A006530(A005097(n+1)+A000007(n))` -/
def P6892616046621392006.Spec : Prop :=
  ∀ n, P6892616046621392006.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P10499953258635661822

`A070820(n+2)-1`
-/

namespace A023503.P10499953258635661822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070820 (n + 2) - 1

end

end A023503.P10499953258635661822

namespace A023503

/-- `A070820(n+2)-1` -/
def P10499953258635661822.Spec : Prop :=
  ∀ n, P10499953258635661822.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P8390518720654491416

`A006530(A241195(n+2))`
-/

namespace A023503.P8390518720654491416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A241195 (n + 2)).toNat

end

end A023503.P8390518720654491416

namespace A023503

/-- `A006530(A241195(n+2))` -/
def P8390518720654491416.Spec : Prop :=
  ∀ n, P8390518720654491416.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P17842923783218477181

`A085382(n+2)-A000040(n+2)`
-/

namespace A023503.P17842923783218477181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085382 (n + 2) - A000040 (n + 2)

end

end A023503.P17842923783218477181

namespace A023503

/-- `A085382(n+2)-A000040(n+2)` -/
def P17842923783218477181.Spec : Prop :=
  ∀ n, P17842923783218477181.a n = A023503 (n + 2)

theorem P17842923783218477181.correct : P17842923783218477181.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel, A023503.P17842923783218477181.a, A023503.P1741513283774222757.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A085382, A085382.P1988162494212330199.a, A065091, A065091.P6971844946592549357.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023503

/-! ## A023503.P14847779566823180692

`A006093(n+2)/A339464(n+2)`
-/

namespace A023503.P14847779566823180692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / (A339464 (n + 2) : ℚ)

end

end A023503.P14847779566823180692

namespace A023503

/-- `A006093(n+2)/A339464(n+2)` -/
def P14847779566823180692.Spec : Prop :=
  ∀ n, P14847779566823180692.a n = (A023503 (n + 2) : ℚ)

end A023503

/-! ## A023503.P7497210149031868939

`A006530(A000034(n+1)*A005097(n+1))`
-/

namespace A023503.P7497210149031868939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000034 (n + 1) * A005097 (n + 1)).toNat

end

end A023503.P7497210149031868939

namespace A023503

/-- `A006530(A000034(n+1)*A005097(n+1))` -/
def P7497210149031868939.Spec : Prop :=
  ∀ n, P7497210149031868939.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P7014479548573041299

`A006530(p?[2*n+1]-1)`
-/

namespace A023503.P7014479548573041299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A023503.P7014479548573041299

namespace A023503

/-- `A006530(p?[2*n+1]-1)` -/
def P7014479548573041299.Spec : Prop :=
  ∀ n, P7014479548573041299.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P2776846387599851222

`A006530(xor(1, p?[2*n+1]))`
-/

namespace A023503.P2776846387599851222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A023503.P2776846387599851222

namespace A023503

/-- `A006530(xor(1, p?[2*n+1]))` -/
def P2776846387599851222.Spec : Prop :=
  ∀ n, P2776846387599851222.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P11737012445224224446

`A006530(and(-2, p?[2*n+1]))`
-/

namespace A023503.P11737012445224224446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (-2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)).toNat

end

end A023503.P11737012445224224446

namespace A023503

/-- `A006530(and(-2, p?[2*n+1]))` -/
def P11737012445224224446.Spec : Prop :=
  ∀ n, P11737012445224224446.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P564313502848484547

`A006530(A039915(n+2))`
-/

namespace A023503.P564313502848484547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039915 (n + 2)).toNat

end

end A023503.P564313502848484547

namespace A023503

/-- `A006530(A039915(n+2))` -/
def P564313502848484547.Spec : Prop :=
  ∀ n, P564313502848484547.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P2931423115416689477

`A006530(A077063(n+2))`
-/

namespace A023503.P2931423115416689477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077063 (n + 2)).toNat

end

end A023503.P2931423115416689477

namespace A023503

/-- `A006530(A077063(n+2))` -/
def P2931423115416689477.Spec : Prop :=
  ∀ n, P2931423115416689477.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P9255872518430212601

`A006530(A040976(n+2)+1)`
-/

namespace A023503.P9255872518430212601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (n + 2) + 1).toNat

end

end A023503.P9255872518430212601

namespace A023503

/-- `A006530(A040976(n+2)+1)` -/
def P9255872518430212601.Spec : Prop :=
  ∀ n, P9255872518430212601.a n = A023503 (n + 2)

theorem P9255872518430212601.correct : P9255872518430212601.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel, A023503.P9255872518430212601.a, A023503.P1741513283774222757.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023503

/-! ## A023503.P16211965121296344555

`A006530(A065091(n+1)-1)`
-/

namespace A023503.P16211965121296344555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065091 (n + 1) - 1).toNat

end

end A023503.P16211965121296344555

namespace A023503

/-- `A006530(A065091(n+1)-1)` -/
def P16211965121296344555.Spec : Prop :=
  ∀ n, P16211965121296344555.a n = A023503 (n + 2)

end A023503

/-! ## A023503.P1435153388796883585

`A006530(A154115(n+1)+2)`
-/

namespace A023503.P1435153388796883585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154115 (n + 1) + 2).toNat

end

end A023503.P1435153388796883585

namespace A023503

/-- `A006530(A154115(n+1)+2)` -/
def P1435153388796883585.Spec : Prop :=
  ∀ n, P1435153388796883585.a n = A023503 (n + 2)

theorem P1435153388796883585.correct : P1435153388796883585.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel, A023503.P1435153388796883585.a, A023503.P1741513283774222757.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A154115, A154115.P220062109648616098.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A086801, A086801.P17699144881820784956.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023503

/-! ## A023503.P7537909153060992974

`A006530(A006005(n+2)-1)`
-/

namespace A023503.P7537909153060992974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006005 (n + 2) - 1).toNat

end

end A023503.P7537909153060992974

namespace A023503

/-- `A006530(A006005(n+2)-1)` -/
def P7537909153060992974.Spec : Prop :=
  ∀ n, P7537909153060992974.a n = A023503 (n + 2)

theorem P7537909153060992974.correct : P7537909153060992974.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel, A023503.P7537909153060992974.a, A023503.P1741513283774222757.a, A006005, A006005.P1228063357782503489.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023503

/-! ## A023503.P14571985697607443317

`A006530(A086801(n+2)+2)`
-/

namespace A023503.P14571985697607443317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086801 (n + 2) + 2).toNat

end

end A023503.P14571985697607443317

namespace A023503

/-- `A006530(A086801(n+2)+2)` -/
def P14571985697607443317.Spec : Prop :=
  ∀ n, P14571985697607443317.a n = A023503 (n + 2)

theorem P14571985697607443317.correct : P14571985697607443317.Spec := by
  intro n
  simp only [A023503, Nat.add_sub_cancel, A023503.P14571985697607443317.a, A023503.P1741513283774222757.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A086801, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023503

/-! ## A023503.P8196373454191226637

`A006530(2*A005097(n+1))`
-/

namespace A023503.P8196373454191226637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A005097 (n + 1)).toNat

end

end A023503.P8196373454191226637

namespace A023503

/-- `A006530(2*A005097(n+1))` -/
def P8196373454191226637.Spec : Prop :=
  ∀ n, P8196373454191226637.a n = A023503 (n + 2)

end A023503

/-!
# A023504: Maximum exponent in the prime factorization of prime(n) - 1.

The programs for A023504, the canonical program `A023504.P16342308356438405673` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023504 has offset 1).

The definition of A023504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023504.P16342308356438405673

`A051903(A006093(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023504

/-- `A051903(A006093(n+1))` -/
def P16342308356438405673.Spec : Prop :=
  ∀ n, P16342308356438405673.a n = A023504 (n + 1)

theorem P16342308356438405673.correct : P16342308356438405673.Spec := by
  intro n
  simp only [A023504, Nat.add_sub_cancel]

end A023504

/-! ## A023504.P7072519299649474815

`val(A278227(n+1), 2)`
-/

namespace A023504.P7072519299649474815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278227 (n + 1)).toNat 2

end

end A023504.P7072519299649474815

namespace A023504

/-- `val(A278227(n+1), 2)` -/
def P7072519299649474815.Spec : Prop :=
  ∀ n, (P7072519299649474815.a n : ℤ) = A023504 (n + 1)

end A023504

/-! ## A023504.P17940264886135457626

`A051903(A278227(n+1))`
-/

namespace A023504.P17940264886135457626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278227 (n + 1)).toNat

end

end A023504.P17940264886135457626

namespace A023504

/-- `A051903(A278227(n+1))` -/
def P17940264886135457626.Spec : Prop :=
  ∀ n, P17940264886135457626.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P12803135324565192781

`A051903(Δ[A007504(n)]-1)`
-/

namespace A023504.P12803135324565192781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (n + 1) - f1 n - 1).toNat

end

end A023504.P12803135324565192781

namespace A023504

/-- `A051903(Δ[A007504(n)]-1)` -/
def P12803135324565192781.Spec : Prop :=
  ∀ n, P12803135324565192781.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P1445652658290571394

`A051903(record[A000010(n+1)])`
-/

namespace A023504.P1445652658290571394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023504.P1445652658290571394

namespace A023504

/-- `A051903(record[A000010(n+1)])` -/
def P1445652658290571394.Spec : Prop :=
  ∀ n, P1445652658290571394.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P1580282904987474997

`A051903(record[A192133(n+1)])`
-/

namespace A023504.P1580282904987474997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023504.P1580282904987474997

namespace A023504

/-- `A051903(record[A192133(n+1)])` -/
def P1580282904987474997.Spec : Prop :=
  ∀ n, P1580282904987474997.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P10489708342665657367

`A051903(A040976(n+1)+1)`
-/

namespace A023504.P10489708342665657367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A040976 (n + 1) + 1).toNat

end

end A023504.P10489708342665657367

namespace A023504

/-- `A051903(A040976(n+1)+1)` -/
def P10489708342665657367.Spec : Prop :=
  ∀ n, P10489708342665657367.a n = A023504 (n + 1)

theorem P10489708342665657367.correct : P10489708342665657367.Spec := by
  intro n
  simp only [A023504, Nat.add_sub_cancel, A023504.P10489708342665657367.a, A023504.P16342308356438405673.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023504

/-! ## A023504.P2081439675856728001

`A051903(A000040(n+1)-1)`
-/

namespace A023504.P2081439675856728001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1) - 1).toNat

end

end A023504.P2081439675856728001

namespace A023504

/-- `A051903(A000040(n+1)-1)` -/
def P2081439675856728001.Spec : Prop :=
  ∀ n, P2081439675856728001.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P7174610389281791324

`A051903(A008578(n+2)-1)`
-/

namespace A023504.P7174610389281791324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008578 (n + 2) - 1).toNat

end

end A023504.P7174610389281791324

namespace A023504

/-- `A051903(A008578(n+2)-1)` -/
def P7174610389281791324.Spec : Prop :=
  ∀ n, P7174610389281791324.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P12987009989997657054

`A051903(A008864(n+1)-2)`
-/

namespace A023504.P12987009989997657054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008864 (n + 1) - 2).toNat

end

end A023504.P12987009989997657054

namespace A023504

/-- `A051903(A008864(n+1)-2)` -/
def P12987009989997657054.Spec : Prop :=
  ∀ n, P12987009989997657054.a n = A023504 (n + 1)

theorem P12987009989997657054.correct : P12987009989997657054.Spec := by
  intro n
  simp only [A023504, Nat.add_sub_cancel, A023504.P12987009989997657054.a, A023504.P16342308356438405673.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023504

/-! ## A023504.P13289932158135668638

`A051903(A028815(n+1)-2)`
-/

namespace A023504.P13289932158135668638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A028815 (n + 1) - 2).toNat

end

end A023504.P13289932158135668638

namespace A023504

/-- `A051903(A028815(n+1)-2)` -/
def P13289932158135668638.Spec : Prop :=
  ∀ n, P13289932158135668638.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P12683202537130943360

`A051903(A299763(n+2)-2)`
-/

namespace A023504.P12683202537130943360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A299763 (n + 2) - 2).toNat

end

end A023504.P12683202537130943360

namespace A023504

/-- `A051903(A299763(n+2)-2)` -/
def P12683202537130943360.Spec : Prop :=
  ∀ n, P12683202537130943360.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P9903752251732622677

`A051903(A037168(n+1)/2)`
-/

namespace A023504.P9903752251732622677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A037168 (n + 1) : ℚ) / 2)).toNat

end

end A023504.P9903752251732622677

namespace A023504

/-- `A051903(A037168(n+1)/2)` -/
def P9903752251732622677.Spec : Prop :=
  ∀ n, P9903752251732622677.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P14982006318840322842

`A051903(A014689(n+1)+n)`
-/

namespace A023504.P14982006318840322842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A023504.P14982006318840322842

namespace A023504

/-- `A051903(A014689(n+1)+n)` -/
def P14982006318840322842.Spec : Prop :=
  ∀ n, P14982006318840322842.a n = A023504 (n + 1)

theorem P14982006318840322842.correct : P14982006318840322842.Spec := by
  intro n
  simp only [A023504, Nat.add_sub_cancel, A023504.P14982006318840322842.a, A023504.P16342308356438405673.a, A006093, A006093.P2906174024863549003.a, A014689, A014689.P6286543075765329050.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023504

/-! ## A023504.P9822329517718695120

`A051903(record[A006530(n+2)-1])`
-/

namespace A023504.P9822329517718695120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023504.P9822329517718695120

namespace A023504

/-- `A051903(record[A006530(n+2)-1])` -/
def P9822329517718695120.Spec : Prop :=
  ∀ n, P9822329517718695120.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P10181863276138661260

`A051903(record[A020639(n+2)-1])`
-/

namespace A023504.P10181863276138661260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023504.P10181863276138661260

namespace A023504

/-- `A051903(record[A020639(n+2)-1])` -/
def P10181863276138661260.Spec : Prop :=
  ∀ n, P10181863276138661260.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P9547350521469314975

`A051903(A089241(n+1)/2-2)`
-/

namespace A023504.P9547350521469314975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 - 2)).toNat

end

end A023504.P9547350521469314975

namespace A023504

/-- `A051903(A089241(n+1)/2-2)` -/
def P9547350521469314975.Spec : Prop :=
  ∀ n, P9547350521469314975.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P13461865263427345150

`A051903(A000010(A000040(n+1)))`
-/

namespace A023504.P13461865263427345150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A023504.P13461865263427345150

namespace A023504

/-- `A051903(A000010(A000040(n+1)))` -/
def P13461865263427345150.Spec : Prop :=
  ∀ n, P13461865263427345150.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P10960666602365043782

`A051903(A000010(A008578(n+2)))`
-/

namespace A023504.P10960666602365043782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A023504.P10960666602365043782

namespace A023504

/-- `A051903(A000010(A008578(n+2)))` -/
def P10960666602365043782.Spec : Prop :=
  ∀ n, P10960666602365043782.a n = A023504 (n + 1)

end A023504

/-! ## A023504.P17764605373134220045

`A051903(eq[1, A001222(n+1)])`
-/

namespace A023504.P17764605373134220045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023504.P17764605373134220045

namespace A023504

/-- `A051903(eq[1, A001222(n+1)])` -/
def P17764605373134220045.Spec : Prop :=
  ∀ n, P17764605373134220045.a n = A023504 (n + 1)

end A023504

/-!
# A023505: Least odd prime divisor of prime(n) - 1, or 1 if prime(n) - 1 is a power of 2.

The programs for A023505, there is no canonical definition to state claims against.
-/

/-! ## A023505.P2479297012446176422

`A078701(A006093(n+1))`
-/

namespace A023505.P2479297012446176422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A006093 (n + 1)).toNat

end

end A023505.P2479297012446176422

/-! ## A023505.P12618682038353384235

`A020639(A057023(n+1))`
-/

namespace A023505.P12618682038353384235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057023 (n + 1)).toNat

end

end A023505.P12618682038353384235

/-! ## A023505.P5573267969952735746

`A020639(A356489(n+1))`
-/

namespace A023505.P5573267969952735746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A356489 (n + 1)).toNat

end

end A023505.P5573267969952735746

/-! ## A023505.P3264784778966108929

`A020639(∏{p}[A037168(n+1), #]/2)`
-/

namespace A023505.P3264784778966108929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 2)).toNat

end

end A023505.P3264784778966108929

/-! ## A023505.P11759885005302612173

`A020639(∏{p}[A006093(n+1), #-val(#, 2)])`
-/

namespace A023505.P11759885005302612173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - (SequenceMachineLib.valuation p 2 : ℤ))).toNat

end

end A023505.P11759885005302612173

/-! ## A023505.P6918695033060965150

`A020639(∏{p}[A037168(n+1), #-val(#, 2)])`
-/

namespace A023505.P6918695033060965150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - (SequenceMachineLib.valuation p 2 : ℤ))).toNat

end

end A023505.P6918695033060965150

/-! ## A023505.P7820870082296809950

`A020639(A006093(n+1)/A058384(n+1))`
-/

namespace A023505.P7820870082296809950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A006093 (n + 1) : ℚ) / (A058384 (n + 1) : ℚ))).toNat

end

end A023505.P7820870082296809950

/-! ## A023505.P12276758212357364826

`A020639(A000265(A000040(n+1)-1))`
-/

namespace A023505.P12276758212357364826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A000040 (n + 1) - 1).toNat).toNat

end

end A023505.P12276758212357364826

/-! ## A023505.P1252505345138510662

`A078701(A130290(n+1))`
-/

namespace A023505.P1252505345138510662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A130290 (n + 1)).toNat

end

end A023505.P1252505345138510662

/-! ## A023505.P6154045705224687906

`A078701(A236965(n+1))`
-/

namespace A023505.P6154045705224687906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A236965 (n + 1)).toNat

end

end A023505.P6154045705224687906

/-! ## A023505.P16538870103454596368

`A078701(record[A037225(n)])`
-/

namespace A023505.P16538870103454596368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023505.P16538870103454596368

/-! ## A023505.P1926921559722336021

`A014673(A077063(n+1))`
-/

namespace A023505.P1926921559722336021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A077063 (n + 1)).toNat

end

end A023505.P1926921559722336021

/-! ## A023505.P7739673077327209764

`A119288(A039915(n+1))`
-/

namespace A023505.P7739673077327209764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A039915 (n + 1)).toNat

end

end A023505.P7739673077327209764

/-! ## A023505.P9191765492068007955

`A078701(A156037(n+1))`
-/

namespace A023505.P9191765492068007955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A156037 (n + 1)).toNat

end

end A023505.P9191765492068007955

/-! ## A023505.P2045398404285459878

`A119288(A068499(n+2))`
-/

namespace A023505.P2045398404285459878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A068499 (n + 2)).toNat

end

end A023505.P2045398404285459878

/-! ## A023505.P13799388488206622350

`A078701(Δ[A007504(n)]-1)`
-/

namespace A023505.P13799388488206622350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (n + 1) - f1 n - 1).toNat

end

end A023505.P13799388488206622350

/-! ## A023505.P15982669341873803980

`A078701(record[A000010(n+1)])`
-/

namespace A023505.P15982669341873803980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023505.P15982669341873803980

/-! ## A023505.P3514006609547410057

`A119288(record[A000010(n+1)])`
-/

namespace A023505.P3514006609547410057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023505.P3514006609547410057

/-! ## A023505.P5541352632614886845

`A020639(A053575(p?[xor(1, n)]))`
-/

namespace A023505.P5541352632614886845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053575 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A023505.P5541352632614886845

/-! ## A023505.P7383902769199912209

`A078701(A000040(n+1)-1)`
-/

namespace A023505.P7383902769199912209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A000040 (n + 1) - 1).toNat

end

end A023505.P7383902769199912209

/-!
# A023506: Exponent of 2 in prime factorization of prime(n) - 1.

The programs for A023506, the canonical program `A023506.P8238075321002430413` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023506 has offset 1).

The definition of A023506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023506.P1620770290798767804

`val(A000040(n+1)-1, 2)`
-/

namespace A023506.P1620770290798767804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) - 1).toNat 2

end

end A023506.P1620770290798767804

namespace A023506

/-- `val(A000040(n+1)-1, 2)` -/
def P1620770290798767804.Spec : Prop :=
  ∀ n, (P1620770290798767804.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P8238075321002430413

`A007814(A006093(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023506

/-- `A007814(A006093(n+1))` -/
def P8238075321002430413.Spec : Prop :=
  ∀ n, P8238075321002430413.a n = A023506 (n + 1)

theorem P8238075321002430413.correct : P8238075321002430413.Spec := by
  intro n
  simp only [A023506, Nat.add_sub_cancel]

end A023506

/-! ## A023506.P3245049851181726518

`A007814(A000010(A000040(n+1)))`
-/

namespace A023506.P3245049851181726518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A023506.P3245049851181726518

namespace A023506

/-- `A007814(A000010(A000040(n+1)))` -/
def P3245049851181726518.Spec : Prop :=
  ∀ n, P3245049851181726518.a n = A023506 (n + 1)

end A023506

/-! ## A023506.P7447011075932666341

`log2(A058384(n+1))`
-/

namespace A023506.P7447011075932666341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A058384 (n + 1) : ℝ)

end

end A023506.P7447011075932666341

namespace A023506

/-- `log2(A058384(n+1))` -/
def P7447011075932666341.Spec : Prop :=
  ∀ n, P7447011075932666341.a n = (A023506 (n + 1) : ℝ)

end A023506

/-! ## A023506.P7535123290240979876

`val(A037167(n+1), 2)`
-/

namespace A023506.P7535123290240979876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037167 (n + 1)).toNat 2

end

end A023506.P7535123290240979876

namespace A023506

/-- `val(A037167(n+1), 2)` -/
def P7535123290240979876.Spec : Prop :=
  ∀ n, (P7535123290240979876.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P9655644203898554877

`val(A039915(n+1), 2)`
-/

namespace A023506.P9655644203898554877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039915 (n + 1)).toNat 2

end

end A023506.P9655644203898554877

namespace A023506

/-- `val(A039915(n+1), 2)` -/
def P9655644203898554877.Spec : Prop :=
  ∀ n, (P9655644203898554877.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P676325765769788593

`val(A099585(n+1), 2)`
-/

namespace A023506.P676325765769788593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099585 (n + 1)).toNat 2

end

end A023506.P676325765769788593

namespace A023506

/-- `val(A099585(n+1), 2)` -/
def P676325765769788593.Spec : Prop :=
  ∀ n, (P676325765769788593.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P14326177688250012671

`val(A236959(n+1), 2)`
-/

namespace A023506.P14326177688250012671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A236959 (n + 1)).toNat 2

end

end A023506.P14326177688250012671

namespace A023506

/-- `val(A236959(n+1), 2)` -/
def P14326177688250012671.Spec : Prop :=
  ∀ n, (P14326177688250012671.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P3478900464694236267

`val(A005722(n+1), 4)`
-/

namespace A023506.P3478900464694236267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005722 (n + 1)).toNat 4

end

end A023506.P3478900464694236267

namespace A023506

/-- `val(A005722(n+1), 4)` -/
def P3478900464694236267.Spec : Prop :=
  ∀ n, (P3478900464694236267.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P10339064250781080782

`val(Δ[A007504(n)]-1, 2)`
-/

namespace A023506.P10339064250781080782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n - 1).toNat 2

end

end A023506.P10339064250781080782

namespace A023506

/-- `val(Δ[A007504(n)]-1, 2)` -/
def P10339064250781080782.Spec : Prop :=
  ∀ n, (P10339064250781080782.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P1651456631071823712

`val(A040976(n+1)+1, 2)`
-/

namespace A023506.P1651456631071823712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040976 (n + 1) + 1).toNat 2

end

end A023506.P1651456631071823712

namespace A023506

/-- `val(A040976(n+1)+1, 2)` -/
def P1651456631071823712.Spec : Prop :=
  ∀ n, (P1651456631071823712.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P1265951759145256917

`val(A153481(n+1)+1, 2)`
-/

namespace A023506.P1265951759145256917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A153481 (n + 1) + 1).toNat 2

end

end A023506.P1265951759145256917

namespace A023506

/-- `val(A153481(n+1)+1, 2)` -/
def P1265951759145256917.Spec : Prop :=
  ∀ n, (P1265951759145256917.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P16897753998199962338

`val(A030078(n+1)-1, 2)`
-/

namespace A023506.P16897753998199962338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030078 (n + 1) - 1).toNat 2

end

end A023506.P16897753998199962338

namespace A023506

/-- `val(A030078(n+1)-1, 2)` -/
def P16897753998199962338.Spec : Prop :=
  ∀ n, (P16897753998199962338.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P6734457537451867222

`val(A037168(n+1), 2)-1`
-/

namespace A023506.P6734457537451867222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A037168 (n + 1)).toNat 2 : ℤ) - 1

end

end A023506.P6734457537451867222

namespace A023506

/-- `val(A037168(n+1), 2)-1` -/
def P6734457537451867222.Spec : Prop :=
  ∀ n, P6734457537451867222.a n = A023506 (n + 1)

end A023506

/-! ## A023506.P11944757323011965493

`val(A050997(n+1)-1, 2)`
-/

namespace A023506.P11944757323011965493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050997 (n + 1) - 1).toNat 2

end

end A023506.P11944757323011965493

namespace A023506

/-- `val(A050997(n+1)-1, 2)` -/
def P11944757323011965493.Spec : Prop :=
  ∀ n, (P11944757323011965493.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P10804971004107371247

`val(A086801(n+1)+2, 2)`
-/

namespace A023506.P10804971004107371247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086801 (n + 1) + 2).toNat 2

end

end A023506.P10804971004107371247

namespace A023506

/-- `val(A086801(n+1)+2, 2)` -/
def P10804971004107371247.Spec : Prop :=
  ∀ n, (P10804971004107371247.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P10286380865014376082

`val(A008864(n+1)-2, 2)`
-/

namespace A023506.P10286380865014376082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008864 (n + 1) - 2).toNat 2

end

end A023506.P10286380865014376082

namespace A023506

/-- `val(A008864(n+1)-2, 2)` -/
def P10286380865014376082.Spec : Prop :=
  ∀ n, (P10286380865014376082.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P8768729429549234959

`val(A028815(n+1)-2, 2)`
-/

namespace A023506.P8768729429549234959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028815 (n + 1) - 2).toNat 2

end

end A023506.P8768729429549234959

namespace A023506

/-- `val(A028815(n+1)-2, 2)` -/
def P8768729429549234959.Spec : Prop :=
  ∀ n, (P8768729429549234959.a n : ℤ) = A023506 (n + 1)

end A023506

/-! ## A023506.P4667716477621947675

`A091282(n+1)-A023512(n+1)`
-/

namespace A023506.P4667716477621947675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091282 (n + 1) - A023512 (n + 1)

end

end A023506.P4667716477621947675

namespace A023506

/-- `A091282(n+1)-A023512(n+1)` -/
def P4667716477621947675.Spec : Prop :=
  ∀ n, P4667716477621947675.a n = A023506 (n + 1)

theorem P4667716477621947675.correct : P4667716477621947675.Spec := by
  intro n
  simp only [A023506, Nat.add_sub_cancel, A023506.P4667716477621947675.a, A023506.P8238075321002430413.a, A006093, A006093.P2906174024863549003.a, A007814, A007814.P13537437864234730737.a, A023512, A023512.P10956487217838497278.a, A091282, A091282.P45468277352217509.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001511, A001511.P17146462531039486101.a, A008864, A008864.P9177617808325052279.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023506

/-! ## A023506.P18111025643959266934

`val(record[A192133(n+1)], 2)`
-/

namespace A023506.P18111025643959266934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A023506.P18111025643959266934

namespace A023506

/-- `val(record[A192133(n+1)], 2)` -/
def P18111025643959266934.Spec : Prop :=
  ∀ n, (P18111025643959266934.a n : ℤ) = A023506 (n + 1)

end A023506

/-!
# A023507: a(n) = sum of distinct prime divisors of prime(n) - 1.

The programs for A023507, the canonical program `A023507.P330678373377985328` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023507 has offset 1).

The definition of A023507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023507.P330678373377985328

`A008472(A006093(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023507

/-- `A008472(A006093(n+1))` -/
def P330678373377985328.Spec : Prop :=
  ∀ n, P330678373377985328.a n = A023507 (n + 1)

theorem P330678373377985328.correct : P330678373377985328.Spec := by
  intro n
  simp only [A023507, Nat.add_sub_cancel]

end A023507

/-! ## A023507.P16404232462360967636

`∑{p}[A077063(n+1), #]`
-/

namespace A023507.P16404232462360967636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P16404232462360967636

namespace A023507

/-- `∑{p}[A077063(n+1), #]` -/
def P16404232462360967636.Spec : Prop :=
  ∀ n, (P16404232462360967636.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P2663647109037120998

`∑{p}[A040976(n+1)+1, #]`
-/

namespace A023507.P2663647109037120998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P2663647109037120998

namespace A023507

/-- `∑{p}[A040976(n+1)+1, #]` -/
def P2663647109037120998.Spec : Prop :=
  ∀ n, (P2663647109037120998.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P15171432591194105273

`∑{p}[1-A000040(n+1), #]`
-/

namespace A023507.P15171432591194105273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P15171432591194105273

namespace A023507

/-- `∑{p}[1-A000040(n+1), #]` -/
def P15171432591194105273.Spec : Prop :=
  ∀ n, (P15171432591194105273.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P5763254561700873068

`∑{p}[1-A006005(n+1), #]`
-/

namespace A023507.P5763254561700873068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P5763254561700873068

namespace A023507

/-- `∑{p}[1-A006005(n+1), #]` -/
def P5763254561700873068.Spec : Prop :=
  ∀ n, (P5763254561700873068.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P10624089858687866448

`∑{p}[A086801(n+1)+2, #]`
-/

namespace A023507.P10624089858687866448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P10624089858687866448

namespace A023507

/-- `∑{p}[A086801(n+1)+2, #]` -/
def P10624089858687866448.Spec : Prop :=
  ∀ n, (P10624089858687866448.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P3839871004209909478

`∑{p}[2-A008864(n+1), #]`
-/

namespace A023507.P3839871004209909478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P3839871004209909478

namespace A023507

/-- `∑{p}[2-A008864(n+1), #]` -/
def P3839871004209909478.Spec : Prop :=
  ∀ n, (P3839871004209909478.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P10863242927108408103

`∑{p}[2-A028815(n+1), #]`
-/

namespace A023507.P10863242927108408103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P10863242927108408103

namespace A023507

/-- `∑{p}[2-A028815(n+1), #]` -/
def P10863242927108408103.Spec : Prop :=
  ∀ n, (P10863242927108408103.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P17875900172580497671

`∑{p}[2-A055670(n+1), #]`
-/

namespace A023507.P17875900172580497671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A055670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P17875900172580497671

namespace A023507

/-- `∑{p}[2-A055670(n+1), #]` -/
def P17875900172580497671.Spec : Prop :=
  ∀ n, (P17875900172580497671.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P13799494835748251042

`∑{p}[A014689(n+1)+n, #]`
-/

namespace A023507.P13799494835748251042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P13799494835748251042

namespace A023507

/-- `∑{p}[A014689(n+1)+n, #]` -/
def P13799494835748251042.Spec : Prop :=
  ∀ n, (P13799494835748251042.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P1039560711897190438

`∑{p}[A000040(2*n-(n-1))-1, #]`
-/

namespace A023507.P1039560711897190438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P1039560711897190438

namespace A023507

/-- `∑{p}[A000040(2*n-(n-1))-1, #]` -/
def P1039560711897190438.Spec : Prop :=
  ∀ n, (P1039560711897190438.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P3719633798169209031

`∑{p}[record[A000010(n+1)], #]`
-/

namespace A023507.P3719633798169209031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P3719633798169209031

namespace A023507

/-- `∑{p}[record[A000010(n+1)], #]` -/
def P3719633798169209031.Spec : Prop :=
  ∀ n, (P3719633798169209031.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P3732857777471026774

`∑{p}[record[A003958(n+1)], #]`
-/

namespace A023507.P3732857777471026774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P3732857777471026774

namespace A023507

/-- `∑{p}[record[A003958(n+1)], #]` -/
def P3732857777471026774.Spec : Prop :=
  ∀ n, (P3732857777471026774.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P8698290546559473022

`∑{p}[record[A006530(n+2)-1], #]`
-/

namespace A023507.P8698290546559473022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023507.P8698290546559473022

namespace A023507

/-- `∑{p}[record[A006530(n+2)-1], #]` -/
def P8698290546559473022.Spec : Prop :=
  ∀ n, (P8698290546559473022.a n : ℤ) = A023507 (n + 1)

end A023507

/-! ## A023507.P15990388314134887880

`A001414(A077063(n+1))`
-/

namespace A023507.P15990388314134887880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A077063 (n + 1)).toNat

end

end A023507.P15990388314134887880

namespace A023507

/-- `A001414(A077063(n+1))` -/
def P15990388314134887880.Spec : Prop :=
  ∀ n, P15990388314134887880.a n = A023507 (n + 1)

end A023507

/-! ## A023507.P361602924780089794

`A008472(record[A000010(n+1)])`
-/

namespace A023507.P361602924780089794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023507.P361602924780089794

namespace A023507

/-- `A008472(record[A000010(n+1)])` -/
def P361602924780089794.Spec : Prop :=
  ∀ n, P361602924780089794.a n = A023507 (n + 1)

end A023507

/-! ## A023507.P8887059384816137568

`A008472(A040976(n+1)+1)`
-/

namespace A023507.P8887059384816137568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A040976 (n + 1) + 1).toNat

end

end A023507.P8887059384816137568

namespace A023507

/-- `A008472(A040976(n+1)+1)` -/
def P8887059384816137568.Spec : Prop :=
  ∀ n, P8887059384816137568.a n = A023507 (n + 1)

theorem P8887059384816137568.correct : P8887059384816137568.Spec := by
  intro n
  simp only [A023507, Nat.add_sub_cancel, A023507.P8887059384816137568.a, A023507.P330678373377985328.a, A006093, A006093.P2906174024863549003.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023507

/-! ## A023507.P1742820058984865148

`A008472(A000040(n+1)-1)`
-/

namespace A023507.P1742820058984865148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 1) - 1).toNat

end

end A023507.P1742820058984865148

namespace A023507

/-- `A008472(A000040(n+1)-1)` -/
def P1742820058984865148.Spec : Prop :=
  ∀ n, P1742820058984865148.a n = A023507 (n + 1)

end A023507

/-! ## A023507.P8360742394963572203

`A008472(A008578(n+2)-1)`
-/

namespace A023507.P8360742394963572203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008578 (n + 2) - 1).toNat

end

end A023507.P8360742394963572203

namespace A023507

/-- `A008472(A008578(n+2)-1)` -/
def P8360742394963572203.Spec : Prop :=
  ∀ n, P8360742394963572203.a n = A023507 (n + 1)

end A023507

/-! ## A023507.P2338501213203026011

`A008472(A008864(n+1)-2)`
-/

namespace A023507.P2338501213203026011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008864 (n + 1) - 2).toNat

end

end A023507.P2338501213203026011

namespace A023507

/-- `A008472(A008864(n+1)-2)` -/
def P2338501213203026011.Spec : Prop :=
  ∀ n, P2338501213203026011.a n = A023507 (n + 1)

theorem P2338501213203026011.correct : P2338501213203026011.Spec := by
  intro n
  simp only [A023507, Nat.add_sub_cancel, A023507.P2338501213203026011.a, A023507.P330678373377985328.a, A006093, A006093.P2906174024863549003.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023507

/-!
# A023508: Sum of exponents in prime-power factorization of n-th prime - 1.

The programs for A023508, the canonical program `A023508.P14059105083037945661` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023508 has offset 1).

The definition of A023508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023508.P14059105083037945661

`A001222(A006093(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023508

/-- `A001222(A006093(n+1))` -/
def P14059105083037945661.Spec : Prop :=
  ∀ n, P14059105083037945661.a n = A023508 (n + 1)

theorem P14059105083037945661.correct : P14059105083037945661.Spec := by
  intro n
  simp only [A023508, Nat.add_sub_cancel]

end A023508

/-! ## A023508.P13967484817540044960

`A001222(A000040(n+1)-1)`
-/

namespace A023508.P13967484817540044960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) - 1).toNat

end

end A023508.P13967484817540044960

namespace A023508

/-- `A001222(A000040(n+1)-1)` -/
def P13967484817540044960.Spec : Prop :=
  ∀ n, P13967484817540044960.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P14250141268377479467

`Δ[A382789(n)]`
-/

namespace A023508.P14250141268377479467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023508.P14250141268377479467

namespace A023508

/-- `Δ[A382789(n)]` -/
def P14250141268377479467.Spec : Prop :=
  ∀ n, P14250141268377479467.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P5204484224463315727

`∑{e}[A278227(n+1), #]`
-/

namespace A023508.P5204484224463315727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023508.P5204484224463315727

namespace A023508

/-- `∑{e}[A278227(n+1), #]` -/
def P5204484224463315727.Spec : Prop :=
  ∀ n, (P5204484224463315727.a n : ℤ) = A023508 (n + 1)

end A023508

/-! ## A023508.P8114926010964755306

`∑{e}[A040976(n+1)+1, #]`
-/

namespace A023508.P8114926010964755306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023508.P8114926010964755306

namespace A023508

/-- `∑{e}[A040976(n+1)+1, #]` -/
def P8114926010964755306.Spec : Prop :=
  ∀ n, (P8114926010964755306.a n : ℤ) = A023508 (n + 1)

end A023508

/-! ## A023508.P245140221026881846

`∑{e}[1-A006005(n+1), #]`
-/

namespace A023508.P245140221026881846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023508.P245140221026881846

namespace A023508

/-- `∑{e}[1-A006005(n+1), #]` -/
def P245140221026881846.Spec : Prop :=
  ∀ n, (P245140221026881846.a n : ℤ) = A023508 (n + 1)

end A023508

/-! ## A023508.P1006104148659621842

`∑{e}[A037168(n+1), #]-1`
-/

namespace A023508.P1006104148659621842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A023508.P1006104148659621842

namespace A023508

/-- `∑{e}[A037168(n+1), #]-1` -/
def P1006104148659621842.Spec : Prop :=
  ∀ n, P1006104148659621842.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P4542421145888452417

`∑{e}[A086801(n+1)+2, #]`
-/

namespace A023508.P4542421145888452417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023508.P4542421145888452417

namespace A023508

/-- `∑{e}[A086801(n+1)+2, #]` -/
def P4542421145888452417.Spec : Prop :=
  ∀ n, (P4542421145888452417.a n : ℤ) = A023508 (n + 1)

end A023508

/-! ## A023508.P10734052124505448491

`∑{e}[2-A008864(n+1), #]`
-/

namespace A023508.P10734052124505448491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023508.P10734052124505448491

namespace A023508

/-- `∑{e}[2-A008864(n+1), #]` -/
def P10734052124505448491.Spec : Prop :=
  ∀ n, (P10734052124505448491.a n : ℤ) = A023508 (n + 1)

end A023508

/-! ## A023508.P686559544437000332

`A382789(n+1)-A382789(n)`
-/

namespace A023508.P686559544437000332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382789 (n + 1) - A382789 n

end

end A023508.P686559544437000332

namespace A023508

/-- `A382789(n+1)-A382789(n)` -/
def P686559544437000332.Spec : Prop :=
  ∀ n, P686559544437000332.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P15353396935087894819

`A239669(n+1)-A023514(n+1)`
-/

namespace A023508.P15353396935087894819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239669 (n + 1) - A023514 (n + 1)

end

end A023508.P15353396935087894819

namespace A023508

/-- `A239669(n+1)-A023514(n+1)` -/
def P15353396935087894819.Spec : Prop :=
  ∀ n, P15353396935087894819.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P18050785542601528343

`A001222(A278227(n+1))`
-/

namespace A023508.P18050785542601528343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278227 (n + 1)).toNat

end

end A023508.P18050785542601528343

namespace A023508

/-- `A001222(A278227(n+1))` -/
def P18050785542601528343.Spec : Prop :=
  ∀ n, P18050785542601528343.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P13595463396210952179

`∑{e}[record[A000010(n+1)], #]`
-/

namespace A023508.P13595463396210952179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023508.P13595463396210952179

namespace A023508

/-- `∑{e}[record[A000010(n+1)], #]` -/
def P13595463396210952179.Spec : Prop :=
  ∀ n, (P13595463396210952179.a n : ℤ) = A023508 (n + 1)

end A023508

/-! ## A023508.P4794345558281566866

`A001222(sqrt(A005722(n+1)))`
-/

namespace A023508.P4794345558281566866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

end

end A023508.P4794345558281566866

namespace A023508

/-- `A001222(sqrt(A005722(n+1)))` -/
def P4794345558281566866.Spec : Prop :=
  ∀ n, P4794345558281566866.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P7181874444099048796

`A001222(Δ[A007504(n)]-1)`
-/

namespace A023508.P7181874444099048796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n - 1).toNat

end

end A023508.P7181874444099048796

namespace A023508

/-- `A001222(Δ[A007504(n)]-1)` -/
def P7181874444099048796.Spec : Prop :=
  ∀ n, P7181874444099048796.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P11140590054527796911

`A001222(record[A000010(n+1)])`
-/

namespace A023508.P11140590054527796911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023508.P11140590054527796911

namespace A023508

/-- `A001222(record[A000010(n+1)])` -/
def P11140590054527796911.Spec : Prop :=
  ∀ n, P11140590054527796911.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P17151594440806449484

`A001222(record[A180935(n+1)])`
-/

namespace A023508.P17151594440806449484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023508.P17151594440806449484

namespace A023508

/-- `A001222(record[A180935(n+1)])` -/
def P17151594440806449484.Spec : Prop :=
  ∀ n, P17151594440806449484.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P3212403225017885062

`A001222(A008578(n+2)-1)`
-/

namespace A023508.P3212403225017885062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2) - 1).toNat

end

end A023508.P3212403225017885062

namespace A023508

/-- `A001222(A008578(n+2)-1)` -/
def P3212403225017885062.Spec : Prop :=
  ∀ n, P3212403225017885062.a n = A023508 (n + 1)

end A023508

/-! ## A023508.P10236132839066831102

`A001222(A008864(n+1)-2)`
-/

namespace A023508.P10236132839066831102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1) - 2).toNat

end

end A023508.P10236132839066831102

namespace A023508

/-- `A001222(A008864(n+1)-2)` -/
def P10236132839066831102.Spec : Prop :=
  ∀ n, P10236132839066831102.a n = A023508 (n + 1)

theorem P10236132839066831102.correct : P10236132839066831102.Spec := by
  intro n
  simp only [A023508, Nat.add_sub_cancel, A023508.P10236132839066831102.a, A023508.P14059105083037945661.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023508

/-!
# A023509: Greatest prime divisor of prime(n) + 1.

The programs for A023509, the canonical program `A023509.P11626369917524831244` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023509 has offset 1).

The definition of A023509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023509.P11626369917524831244

`A006530(A008864(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023509

/-- `A006530(A008864(n+1))` -/
def P11626369917524831244.Spec : Prop :=
  ∀ n, P11626369917524831244.a n = A023509 (n + 1)

theorem P11626369917524831244.correct : P11626369917524831244.Spec := by
  intro n
  simp only [A023509, Nat.add_sub_cancel]

end A023509

/-! ## A023509.P10669319578865677512

`A006530(A077066(n+1))`
-/

namespace A023509.P10669319578865677512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077066 (n + 1)).toNat

end

end A023509.P10669319578865677512

namespace A023509

/-- `A006530(A077066(n+1))` -/
def P10669319578865677512.Spec : Prop :=
  ∀ n, P10669319578865677512.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P14102528519352435282

`A006530(2*A057024(n+1))`
-/

namespace A023509.P14102528519352435282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A057024 (n + 1)).toNat

end

end A023509.P14102528519352435282

namespace A023509

/-- `A006530(2*A057024(n+1))` -/
def P14102528519352435282.Spec : Prop :=
  ∀ n, P14102528519352435282.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P10035272507098958515

`A006530(A028815(n+1))`
-/

namespace A023509.P10035272507098958515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028815 (n + 1)).toNat

end

end A023509.P10035272507098958515

namespace A023509

/-- `A006530(A028815(n+1))` -/
def P10035272507098958515.Spec : Prop :=
  ∀ n, P10035272507098958515.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P4786277190503026682

`A006530(A306591(n+1))`
-/

namespace A023509.P4786277190503026682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A306591 (n + 1)).toNat

end

end A023509.P4786277190503026682

namespace A023509

/-- `A006530(A306591(n+1))` -/
def P4786277190503026682.Spec : Prop :=
  ∀ n, P4786277190503026682.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P3808299810650488301

`A006530(∑[A125266(n+1)])`
-/

namespace A023509.P3808299810650488301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023509.P3808299810650488301

namespace A023509

/-- `A006530(∑[A125266(n+1)])` -/
def P3808299810650488301.Spec : Prop :=
  ∀ n, P3808299810650488301.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P11587421330946466354

`A006530(Δ[A007504(n)]+1)`
-/

namespace A023509.P11587421330946466354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n + 1).toNat

end

end A023509.P11587421330946466354

namespace A023509

/-- `A006530(Δ[A007504(n)]+1)` -/
def P11587421330946466354.Spec : Prop :=
  ∀ n, P11587421330946466354.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P7464324108613614924

`A006530(A000040(n+1)+1)`
-/

namespace A023509.P7464324108613614924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + 1).toNat

end

end A023509.P7464324108613614924

namespace A023509

/-- `A006530(A000040(n+1)+1)` -/
def P7464324108613614924.Spec : Prop :=
  ∀ n, P7464324108613614924.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P7086017042016382843

`A006530(A006093(n+1)+2)`
-/

namespace A023509.P7086017042016382843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + 2).toNat

end

end A023509.P7086017042016382843

namespace A023509

/-- `A006530(A006093(n+1)+2)` -/
def P7086017042016382843.Spec : Prop :=
  ∀ n, P7086017042016382843.a n = A023509 (n + 1)

theorem P7086017042016382843.correct : P7086017042016382843.Spec := by
  intro n
  simp only [A023509, Nat.add_sub_cancel, A023509.P7086017042016382843.a, A023509.P11626369917524831244.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023509

/-! ## A023509.P12593465882806937282

`A006530(A008578(n+2)+1)`
-/

namespace A023509.P12593465882806937282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008578 (n + 2) + 1).toNat

end

end A023509.P12593465882806937282

namespace A023509

/-- `A006530(A008578(n+2)+1)` -/
def P12593465882806937282.Spec : Prop :=
  ∀ n, P12593465882806937282.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P2349006920309444311

`A006530(A052147(n+1)-1)`
-/

namespace A023509.P2349006920309444311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052147 (n + 1) - 1).toNat

end

end A023509.P2349006920309444311

namespace A023509

/-- `A006530(A052147(n+1)-1)` -/
def P2349006920309444311.Spec : Prop :=
  ∀ n, P2349006920309444311.a n = A023509 (n + 1)

theorem P2349006920309444311.correct : P2349006920309444311.Spec := by
  intro n
  simp only [A023509, Nat.add_sub_cancel, A023509.P2349006920309444311.a, A023509.P11626369917524831244.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023509

/-! ## A023509.P14982244503008345181

`A006530(A182986(n+2)+1)`
-/

namespace A023509.P14982244503008345181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182986 (n + 2) + 1).toNat

end

end A023509.P14982244503008345181

namespace A023509

/-- `A006530(A182986(n+2)+1)` -/
def P14982244503008345181.Spec : Prop :=
  ∀ n, P14982244503008345181.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P7898911805322685247

`A006530(A040976(n+1)+3)`
-/

namespace A023509.P7898911805322685247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (n + 1) + 3).toNat

end

end A023509.P7898911805322685247

namespace A023509

/-- `A006530(A040976(n+1)+3)` -/
def P7898911805322685247.Spec : Prop :=
  ∀ n, P7898911805322685247.a n = A023509 (n + 1)

theorem P7898911805322685247.correct : P7898911805322685247.Spec := by
  intro n
  simp only [A023509, Nat.add_sub_cancel, A023509.P7898911805322685247.a, A023509.P11626369917524831244.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023509

/-! ## A023509.P1369092894113056870

`A006530(A113935(n+1)-2)`
-/

namespace A023509.P1369092894113056870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113935 (n + 1) - 2).toNat

end

end A023509.P1369092894113056870

namespace A023509

/-- `A006530(A113935(n+1)-2)` -/
def P1369092894113056870.Spec : Prop :=
  ∀ n, P1369092894113056870.a n = A023509 (n + 1)

theorem P1369092894113056870.correct : P1369092894113056870.Spec := by
  intro n
  simp only [A023509, Nat.add_sub_cancel, A023509.P1369092894113056870.a, A023509.P11626369917524831244.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023509

/-! ## A023509.P7490294069753512877

`A006530(A089241(n+1)/2)`
-/

namespace A023509.P7490294069753512877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A023509.P7490294069753512877

namespace A023509

/-- `A006530(A089241(n+1)/2)` -/
def P7490294069753512877.Spec : Prop :=
  ∀ n, P7490294069753512877.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P9763905395698607732

`A006530(A014688(n+1)-n)`
-/

namespace A023509.P9763905395698607732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014688 (n + 1) - (n : ℤ)).toNat

end

end A023509.P9763905395698607732

namespace A023509

/-- `A006530(A014688(n+1)-n)` -/
def P9763905395698607732.Spec : Prop :=
  ∀ n, P9763905395698607732.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P18242276802307566987

`A006530(A014689(n+1)+n+2)`
-/

namespace A023509.P18242276802307566987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014689 (n + 1) + (n + 2 : ℤ)).toNat

end

end A023509.P18242276802307566987

namespace A023509

/-- `A006530(A014689(n+1)+n+2)` -/
def P18242276802307566987.Spec : Prop :=
  ∀ n, P18242276802307566987.a n = A023509 (n + 1)

theorem P18242276802307566987.correct : P18242276802307566987.Spec := by
  intro n
  simp only [A023509, Nat.add_sub_cancel, A023509.P18242276802307566987.a, A023509.P11626369917524831244.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A014689, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023509

/-! ## A023509.P664251608547599509

`A006530(A089241(n+1))`
-/

namespace A023509.P664251608547599509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089241 (n + 1)).toNat

end

end A023509.P664251608547599509

namespace A023509

/-- `A006530(A089241(n+1))` -/
def P664251608547599509.Spec : Prop :=
  ∀ n, P664251608547599509.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P7807001487071717401

`A006530(A072055(n+1)+1)`
-/

namespace A023509.P7807001487071717401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1) + 1).toNat

end

end A023509.P7807001487071717401

namespace A023509

/-- `A006530(A072055(n+1)+1)` -/
def P7807001487071717401.Spec : Prop :=
  ∀ n, P7807001487071717401.a n = A023509 (n + 1)

end A023509

/-! ## A023509.P18058128783578673388

`A006530(A100484(n+1)+2)`
-/

namespace A023509.P18058128783578673388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 (n + 1) + 2).toNat

end

end A023509.P18058128783578673388

namespace A023509

/-- `A006530(A100484(n+1)+2)` -/
def P18058128783578673388.Spec : Prop :=
  ∀ n, P18058128783578673388.a n = A023509 (n + 1)

end A023509

/-!
# A023510: Greatest exponent in prime-power factorization of prime(n) + 1.

The programs for A023510, the canonical program `A023510.P9489494763882677696` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023510 has offset 1).

The definition of A023510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023510.P9489494763882677696

`A051903(A008864(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023510

/-- `A051903(A008864(n+1))` -/
def P9489494763882677696.Spec : Prop :=
  ∀ n, P9489494763882677696.a n = A023510 (n + 1)

theorem P9489494763882677696.correct : P9489494763882677696.Spec := by
  intro n
  simp only [A023510, Nat.add_sub_cancel]

end A023510

/-! ## A023510.P17340153938267160365

`val(A278228(n+1), 2)`
-/

namespace A023510.P17340153938267160365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278228 (n + 1)).toNat 2

end

end A023510.P17340153938267160365

namespace A023510

/-- `val(A278228(n+1), 2)` -/
def P17340153938267160365.Spec : Prop :=
  ∀ n, (P17340153938267160365.a n : ℤ) = A023510 (n + 1)

end A023510

/-! ## A023510.P12700044663372976412

`A051903(A028815(n+1))`
-/

namespace A023510.P12700044663372976412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A028815 (n + 1)).toNat

end

end A023510.P12700044663372976412

namespace A023510

/-- `A051903(A028815(n+1))` -/
def P12700044663372976412.Spec : Prop :=
  ∀ n, P12700044663372976412.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P4198479835780719509

`A051903(A306591(n+1))`
-/

namespace A023510.P4198479835780719509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A306591 (n + 1)).toNat

end

end A023510.P4198479835780719509

namespace A023510

/-- `A051903(A306591(n+1))` -/
def P4198479835780719509.Spec : Prop :=
  ∀ n, P4198479835780719509.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P9638264320246028466

`A051903(A299763(n+2))`
-/

namespace A023510.P9638264320246028466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A299763 (n + 2)).toNat

end

end A023510.P9638264320246028466

namespace A023510

/-- `A051903(A299763(n+2))` -/
def P9638264320246028466.Spec : Prop :=
  ∀ n, P9638264320246028466.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P14425382861951382082

`A051903(Δ[A007504(n)]+1)`
-/

namespace A023510.P14425382861951382082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (n + 1) - f1 n + 1).toNat

end

end A023510.P14425382861951382082

namespace A023510

/-- `A051903(Δ[A007504(n)]+1)` -/
def P14425382861951382082.Spec : Prop :=
  ∀ n, P14425382861951382082.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P14907079985350925594

`A051903(A000040(n+1)+1)`
-/

namespace A023510.P14907079985350925594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1) + 1).toNat

end

end A023510.P14907079985350925594

namespace A023510

/-- `A051903(A000040(n+1)+1)` -/
def P14907079985350925594.Spec : Prop :=
  ∀ n, P14907079985350925594.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P1014822499419338624

`A051903(A006005(n+1)+1)`
-/

namespace A023510.P1014822499419338624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006005 (n + 1) + 1).toNat

end

end A023510.P1014822499419338624

namespace A023510

/-- `A051903(A006005(n+1)+1)` -/
def P1014822499419338624.Spec : Prop :=
  ∀ n, P1014822499419338624.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P6271101338433123299

`A051903(A006093(n+1)+2)`
-/

namespace A023510.P6271101338433123299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006093 (n + 1) + 2).toNat

end

end A023510.P6271101338433123299

namespace A023510

/-- `A051903(A006093(n+1)+2)` -/
def P6271101338433123299.Spec : Prop :=
  ∀ n, P6271101338433123299.a n = A023510 (n + 1)

theorem P6271101338433123299.correct : P6271101338433123299.Spec := by
  intro n
  simp only [A023510, Nat.add_sub_cancel, A023510.P6271101338433123299.a, A023510.P9489494763882677696.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023510

/-! ## A023510.P2706025639455773457

`A051903(A008578(n+2)+1)`
-/

namespace A023510.P2706025639455773457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008578 (n + 2) + 1).toNat

end

end A023510.P2706025639455773457

namespace A023510

/-- `A051903(A008578(n+2)+1)` -/
def P2706025639455773457.Spec : Prop :=
  ∀ n, P2706025639455773457.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P4941565462934395310

`A051903(A052147(n+1)-1)`
-/

namespace A023510.P4941565462934395310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A052147 (n + 1) - 1).toNat

end

end A023510.P4941565462934395310

namespace A023510

/-- `A051903(A052147(n+1)-1)` -/
def P4941565462934395310.Spec : Prop :=
  ∀ n, P4941565462934395310.a n = A023510 (n + 1)

theorem P4941565462934395310.correct : P4941565462934395310.Spec := by
  intro n
  simp only [A023510, Nat.add_sub_cancel, A023510.P4941565462934395310.a, A023510.P9489494763882677696.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023510

/-! ## A023510.P15885196483423653285

`A051903(A113935(n+1)-2)`
-/

namespace A023510.P15885196483423653285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A113935 (n + 1) - 2).toNat

end

end A023510.P15885196483423653285

namespace A023510

/-- `A051903(A113935(n+1)-2)` -/
def P15885196483423653285.Spec : Prop :=
  ∀ n, P15885196483423653285.a n = A023510 (n + 1)

theorem P15885196483423653285.correct : P15885196483423653285.Spec := by
  intro n
  simp only [A023510, Nat.add_sub_cancel, A023510.P15885196483423653285.a, A023510.P9489494763882677696.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023510

/-! ## A023510.P14120163596788534021

`A051903(2*A111333(n+1))`
-/

namespace A023510.P14120163596788534021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A111333 (n + 1)).toNat

end

end A023510.P14120163596788534021

namespace A023510

/-- `A051903(2*A111333(n+1))` -/
def P14120163596788534021.Spec : Prop :=
  ∀ n, P14120163596788534021.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P17372970830839023699

`A051903(A089241(n+1)/2)`
-/

namespace A023510.P17372970830839023699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A023510.P17372970830839023699

namespace A023510

/-- `A051903(A089241(n+1)/2)` -/
def P17372970830839023699.Spec : Prop :=
  ∀ n, P17372970830839023699.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P4421769943198479946

`A051903(record[A000010(n+1)+2])`
-/

namespace A023510.P4421769943198479946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023510.P4421769943198479946

namespace A023510

/-- `A051903(record[A000010(n+1)+2])` -/
def P4421769943198479946.Spec : Prop :=
  ∀ n, P4421769943198479946.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P1893429542306117402

`A051903(record[A006530(n+2)+1])`
-/

namespace A023510.P1893429542306117402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023510.P1893429542306117402

namespace A023510

/-- `A051903(record[A006530(n+2)+1])` -/
def P1893429542306117402.Spec : Prop :=
  ∀ n, P1893429542306117402.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P4990123541138356278

`A051903(record[A020639(n+2)+1])`
-/

namespace A023510.P4990123541138356278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023510.P4990123541138356278

namespace A023510

/-- `A051903(record[A020639(n+2)+1])` -/
def P4990123541138356278.Spec : Prop :=
  ∀ n, P4990123541138356278.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P5528661785999503266

`A051903(record[A192133(n+1)+2])`
-/

namespace A023510.P5528661785999503266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023510.P5528661785999503266

namespace A023510

/-- `A051903(record[A192133(n+1)+2])` -/
def P5528661785999503266.Spec : Prop :=
  ∀ n, P5528661785999503266.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P4039005972821926623

`A051903((A072055(n+1)+1)/2)`
-/

namespace A023510.P4039005972821926623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A072055 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A023510.P4039005972821926623

namespace A023510

/-- `A051903((A072055(n+1)+1)/2)` -/
def P4039005972821926623.Spec : Prop :=
  ∀ n, P4039005972821926623.a n = A023510 (n + 1)

end A023510

/-! ## A023510.P17748310022144097069

`A051903(A000203(A000040(n+1)))`
-/

namespace A023510.P17748310022144097069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000203 (A000040 (n + 1)).toNat).toNat

end

end A023510.P17748310022144097069

namespace A023510

/-- `A051903(A000203(A000040(n+1)))` -/
def P17748310022144097069.Spec : Prop :=
  ∀ n, P17748310022144097069.a n = A023510 (n + 1)

end A023510

/-!
# A023511: Least odd prime divisor of prime(n) + 1, or 1 if prime(n) + 1 is a power of 2.

The programs for A023511, there is no canonical definition to state claims against.
-/

/-! ## A023511.P8838373315280343944

`A078701(A008864(n+1))`
-/

namespace A023511.P8838373315280343944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A008864 (n + 1)).toNat

end

end A023511.P8838373315280343944

/-! ## A023511.P2244510043052990023

`A020639(A057024(n+1))`
-/

namespace A023511.P2244510043052990023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057024 (n + 1)).toNat

end

end A023511.P2244510043052990023

/-! ## A023511.P7206905890512419061

`A020639(∏{p}[A008864(n+1), #-val(#, 2)])`
-/

namespace A023511.P7206905890512419061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - (SequenceMachineLib.valuation p 2 : ℤ))).toNat

end

end A023511.P7206905890512419061

/-! ## A023511.P11106380821898061651

`A020639(A000265(A000040(n+1)+1))`
-/

namespace A023511.P11106380821898061651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A000040 (n + 1) + 1).toNat).toNat

end

end A023511.P11106380821898061651

/-! ## A023511.P18362284338392325172

`A020639(A161942(A000040(n+1)))`
-/

namespace A023511.P18362284338392325172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161942 (A000040 (n + 1)).toNat).toNat

end

end A023511.P18362284338392325172

/-! ## A023511.P11499560001009616383

`A078701(A077066(n+1))`
-/

namespace A023511.P11499560001009616383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A077066 (n + 1)).toNat

end

end A023511.P11499560001009616383

/-! ## A023511.P17785307548465757734

`A078701(p?[xor(1, n)+1]+1)`
-/

namespace A023511.P17785307548465757734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A023511.P17785307548465757734

/-! ## A023511.P2412841151965703676

`A078701(A028815(n+1))`
-/

namespace A023511.P2412841151965703676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A028815 (n + 1)).toNat

end

end A023511.P2412841151965703676

/-! ## A023511.P15894849633378171007

`A078701(A306591(n+1))`
-/

namespace A023511.P15894849633378171007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A306591 (n + 1)).toNat

end

end A023511.P15894849633378171007

/-! ## A023511.P1170998791448555597

`A078701(A299763(n+2))`
-/

namespace A023511.P1170998791448555597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A299763 (n + 2)).toNat

end

end A023511.P1170998791448555597

/-! ## A023511.P11427121003773215889

`A078701(Δ[A007504(n)]+1)`
-/

namespace A023511.P11427121003773215889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (n + 1) - f1 n + 1).toNat

end

end A023511.P11427121003773215889

/-! ## A023511.P10936971226323353634

`A078701(record[A037225(n)+2])`
-/

namespace A023511.P10936971226323353634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023511.P10936971226323353634

/-! ## A023511.P16144009606683772306

`A078701(A000040(n+1)+1)`
-/

namespace A023511.P16144009606683772306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A000040 (n + 1) + 1).toNat

end

end A023511.P16144009606683772306

/-! ## A023511.P11978449513105336492

`A078701(A006093(n+1)+2)`
-/

namespace A023511.P11978449513105336492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A006093 (n + 1) + 2).toNat

end

end A023511.P11978449513105336492

/-! ## A023511.P14193874139911285124

`A078701(A052147(n+1)-1)`
-/

namespace A023511.P14193874139911285124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A052147 (n + 1) - 1).toNat

end

end A023511.P14193874139911285124

/-! ## A023511.P7045663105519386024

`A078701(A113935(n+1)-2)`
-/

namespace A023511.P7045663105519386024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A113935 (n + 1) - 2).toNat

end

end A023511.P7045663105519386024

/-! ## A023511.P15976791194283159636

`A078701(A089241(n+1)/2)`
-/

namespace A023511.P15976791194283159636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A023511.P15976791194283159636

/-! ## A023511.P6091400575959833703

`A078701(record[A000010(n+1)+2])`
-/

namespace A023511.P6091400575959833703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023511.P6091400575959833703

/-! ## A023511.P3043222046963641512

`A078701(record[A006530(n+2)+1])`
-/

namespace A023511.P3043222046963641512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023511.P3043222046963641512

/-! ## A023511.P6661284502623074256

`A078701(record[A020639(n+2)+1])`
-/

namespace A023511.P6661284502623074256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023511.P6661284502623074256

/-!
# A023512: Exponent of 2 in prime factorization of prime(n) + 1.

The programs for A023512, the canonical program `A023512.P10956487217838497278` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023512 has offset 1).

The definition of A023512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023512.P7564593038120123052

`val(A000040(n+1)+1, 2)`
-/

namespace A023512.P7564593038120123052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 2

end

end A023512.P7564593038120123052

namespace A023512

/-- `val(A000040(n+1)+1, 2)` -/
def P7564593038120123052.Spec : Prop :=
  ∀ n, (P7564593038120123052.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P10956487217838497278

`A007814(A008864(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023512

/-- `A007814(A008864(n+1))` -/
def P10956487217838497278.Spec : Prop :=
  ∀ n, P10956487217838497278.a n = A023512 (n + 1)

theorem P10956487217838497278.correct : P10956487217838497278.Spec := by
  intro n
  simp only [A023512, Nat.add_sub_cancel]

end A023512

/-! ## A023512.P17446792740889320927

`log2(A068504(n+1))`
-/

namespace A023512.P17446792740889320927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A068504 (n + 1) : ℝ)

end

end A023512.P17446792740889320927

namespace A023512

/-- `log2(A068504(n+1))` -/
def P17446792740889320927.Spec : Prop :=
  ∀ n, P17446792740889320927.a n = (A023512 (n + 1) : ℝ)

end A023512

/-! ## A023512.P2580193492594313996

`A227471(n+1)-1`
-/

namespace A023512.P2580193492594313996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227471 (n + 1) - 1

end

end A023512.P2580193492594313996

namespace A023512

/-- `A227471(n+1)-1` -/
def P2580193492594313996.Spec : Prop :=
  ∀ n, P2580193492594313996.a n = A023512 (n + 1)

theorem P2580193492594313996.correct : P2580193492594313996.Spec := by
  intro n
  simp only [A023512, Nat.add_sub_cancel, A023512.P2580193492594313996.a, A023512.P10956487217838497278.a, A007814, A007814.P13537437864234730737.a, A008864, A008864.P9177617808325052279.a, A227471, A227471.P1173354223507232729.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023512

/-! ## A023512.P5432290331526149117

`val(A028815(n+1), 2)`
-/

namespace A023512.P5432290331526149117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028815 (n + 1)).toNat 2

end

end A023512.P5432290331526149117

namespace A023512

/-- `val(A028815(n+1), 2)` -/
def P5432290331526149117.Spec : Prop :=
  ∀ n, (P5432290331526149117.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P18179586406298467643

`val(A055670(n+1), 2)`
-/

namespace A023512.P18179586406298467643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055670 (n + 1)).toNat 2

end

end A023512.P18179586406298467643

namespace A023512

/-- `val(A055670(n+1), 2)` -/
def P18179586406298467643.Spec : Prop :=
  ∀ n, (P18179586406298467643.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P4955104039449957454

`val(A131993(n+1), 2)`
-/

namespace A023512.P4955104039449957454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131993 (n + 1)).toNat 2

end

end A023512.P4955104039449957454

namespace A023512

/-- `val(A131993(n+1), 2)` -/
def P4955104039449957454.Spec : Prop :=
  ∀ n, (P4955104039449957454.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P11247528010585563387

`val(A247159(n+1), 2)`
-/

namespace A023512.P11247528010585563387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247159 (n + 1)).toNat 2

end

end A023512.P11247528010585563387

namespace A023512

/-- `val(A247159(n+1), 2)` -/
def P11247528010585563387.Spec : Prop :=
  ∀ n, (P11247528010585563387.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P1898795512334004005

`val(A345727(n+1), 2)`
-/

namespace A023512.P1898795512334004005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A345727 (n + 1)).toNat 2

end

end A023512.P1898795512334004005

namespace A023512

/-- `val(A345727(n+1), 2)` -/
def P1898795512334004005.Spec : Prop :=
  ∀ n, (P1898795512334004005.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P3676298698749944408

`val(A382070(n+1), 2)`
-/

namespace A023512.P3676298698749944408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A382070 (n + 1)).toNat 2

end

end A023512.P3676298698749944408

namespace A023512

/-- `val(A382070(n+1), 2)` -/
def P3676298698749944408.Spec : Prop :=
  ∀ n, (P3676298698749944408.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P9784590332239745610

`val(A110833(n+1), 4)`
-/

namespace A023512.P9784590332239745610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110833 (n + 1)).toNat 4

end

end A023512.P9784590332239745610

namespace A023512

/-- `val(A110833(n+1), 4)` -/
def P9784590332239745610.Spec : Prop :=
  ∀ n, (P9784590332239745610.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P12792421300409181700

`val(A178398(n+1), 4)`
-/

namespace A023512.P12792421300409181700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178398 (n + 1)).toNat 4

end

end A023512.P12792421300409181700

namespace A023512

/-- `val(A178398(n+1), 4)` -/
def P12792421300409181700.Spec : Prop :=
  ∀ n, (P12792421300409181700.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P4818020460027597755

`val(∑[A125266(n+1)], 2)`
-/

namespace A023512.P4818020460027597755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A023512.P4818020460027597755

namespace A023512

/-- `val(∑[A125266(n+1)], 2)` -/
def P4818020460027597755.Spec : Prop :=
  ∀ n, (P4818020460027597755.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P3207309357407303965

`val(Δ[A007504(n)]+1, 2)`
-/

namespace A023512.P3207309357407303965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2

end

end A023512.P3207309357407303965

namespace A023512

/-- `val(Δ[A007504(n)]+1, 2)` -/
def P3207309357407303965.Spec : Prop :=
  ∀ n, (P3207309357407303965.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P13003845299410730853

`val(A030078(n+1)+1, 2)`
-/

namespace A023512.P13003845299410730853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030078 (n + 1) + 1).toNat 2

end

end A023512.P13003845299410730853

namespace A023512

/-- `val(A030078(n+1)+1, 2)` -/
def P13003845299410730853.Spec : Prop :=
  ∀ n, (P13003845299410730853.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P8505150288664451769

`val(A050997(n+1)+1, 2)`
-/

namespace A023512.P8505150288664451769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050997 (n + 1) + 1).toNat 2

end

end A023512.P8505150288664451769

namespace A023512

/-- `val(A050997(n+1)+1, 2)` -/
def P8505150288664451769.Spec : Prop :=
  ∀ n, (P8505150288664451769.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P5527585740884614845

`val(A006093(n+1)+2, 2)`
-/

namespace A023512.P5527585740884614845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1) + 2).toNat 2

end

end A023512.P5527585740884614845

namespace A023512

/-- `val(A006093(n+1)+2, 2)` -/
def P5527585740884614845.Spec : Prop :=
  ∀ n, (P5527585740884614845.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P15930743281887503714

`val(A039915(n+1)+2, 2)`
-/

namespace A023512.P15930743281887503714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039915 (n + 1) + 2).toNat 2

end

end A023512.P15930743281887503714

namespace A023512

/-- `val(A039915(n+1)+2, 2)` -/
def P15930743281887503714.Spec : Prop :=
  ∀ n, (P15930743281887503714.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P4741939397981469676

`val(A052147(n+1)-1, 2)`
-/

namespace A023512.P4741939397981469676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052147 (n + 1) - 1).toNat 2

end

end A023512.P4741939397981469676

namespace A023512

/-- `val(A052147(n+1)-1, 2)` -/
def P4741939397981469676.Spec : Prop :=
  ∀ n, (P4741939397981469676.a n : ℤ) = A023512 (n + 1)

end A023512

/-! ## A023512.P16987117025304855626

`val(A089241(n+1), 2)-1`
-/

namespace A023512.P16987117025304855626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A089241 (n + 1)).toNat 2 : ℤ) - 1

end

end A023512.P16987117025304855626

namespace A023512

/-- `val(A089241(n+1), 2)-1` -/
def P16987117025304855626.Spec : Prop :=
  ∀ n, P16987117025304855626.a n = A023512 (n + 1)

end A023512

/-!
# A023513: a(n) = sum of distinct prime divisors of prime(n) + 1.

The programs for A023513, the canonical program `A023513.P8810578022243060434` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023513 has offset 1).

The definition of A023513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023513.P8810578022243060434

`∑{p}[A008864(n+1), #]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023513

/-- `∑{p}[A008864(n+1), #]` -/
def P8810578022243060434.Spec : Prop :=
  ∀ n, (P8810578022243060434.a n : ℤ) = A023513 (n + 1)

theorem P8810578022243060434.correct : P8810578022243060434.Spec := by
  intro n
  simp only [A023513, Nat.add_sub_cancel]

end A023513

/-! ## A023513.P554753241059465588

`∑{p}[A028815(n+1), #]`
-/

namespace A023513.P554753241059465588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P554753241059465588

namespace A023513

/-- `∑{p}[A028815(n+1), #]` -/
def P554753241059465588.Spec : Prop :=
  ∀ n, (P554753241059465588.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P8249750468206142525

`∑{p}[A077066(n+1), #]`
-/

namespace A023513.P8249750468206142525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P8249750468206142525

namespace A023513

/-- `∑{p}[A077066(n+1), #]` -/
def P8249750468206142525.Spec : Prop :=
  ∀ n, (P8249750468206142525.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P253480708086763834

`∑{p}[A000040(n+1)+1, #]`
-/

namespace A023513.P253480708086763834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P253480708086763834

namespace A023513

/-- `∑{p}[A000040(n+1)+1, #]` -/
def P253480708086763834.Spec : Prop :=
  ∀ n, (P253480708086763834.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P9941527488745053176

`∑{p}[A006093(n+1)+2, #]`
-/

namespace A023513.P9941527488745053176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P9941527488745053176

namespace A023513

/-- `∑{p}[A006093(n+1)+2, #]` -/
def P9941527488745053176.Spec : Prop :=
  ∀ n, (P9941527488745053176.a n : ℤ) = A023513 (n + 1)

theorem P9941527488745053176.correct : P9941527488745053176.Spec := by
  intro n
  simp only [A023513, Nat.add_sub_cancel, A023513.P9941527488745053176.f1, A023513.P9941527488745053176.a, A023513.P8810578022243060434.f1, A023513.P8810578022243060434.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023513

/-! ## A023513.P117215435635833696

`∑{p}[2-A113935(n+1), #]`
-/

namespace A023513.P117215435635833696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A113935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P117215435635833696

namespace A023513

/-- `∑{p}[2-A113935(n+1), #]` -/
def P117215435635833696.Spec : Prop :=
  ∀ n, (P117215435635833696.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P12027694575701866583

`∑{p}[A014689(n+1)+n+2, #]`
-/

namespace A023513.P12027694575701866583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P12027694575701866583

namespace A023513

/-- `∑{p}[A014689(n+1)+n+2, #]` -/
def P12027694575701866583.Spec : Prop :=
  ∀ n, (P12027694575701866583.a n : ℤ) = A023513 (n + 1)

theorem P12027694575701866583.correct : P12027694575701866583.Spec := by
  intro n
  simp only [A023513, Nat.add_sub_cancel, A023513.P12027694575701866583.f1, A023513.P12027694575701866583.a, A023513.P8810578022243060434.f1, A023513.P8810578022243060434.a, A008864, A008864.P9177617808325052279.a, A014689, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023513

/-! ## A023513.P2027315695862403977

`∑{p}[lcm(A023509(n+1), A055670(n+1)), #]`
-/

namespace A023513.P2027315695862403977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023509 (n + 1)) (A055670 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023513.P2027315695862403977

namespace A023513

/-- `∑{p}[lcm(A023509(n+1), A055670(n+1)), #]` -/
def P2027315695862403977.Spec : Prop :=
  ∀ n, (P2027315695862403977.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P13067713682514767250

`∑{p}[A299763(n+2), #]`
-/

namespace A023513.P13067713682514767250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P13067713682514767250

namespace A023513

/-- `∑{p}[A299763(n+2), #]` -/
def P13067713682514767250.Spec : Prop :=
  ∀ n, (P13067713682514767250.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P4193312057699215695

`∑{p}[A008578(n+2)+1, #]`
-/

namespace A023513.P4193312057699215695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P4193312057699215695

namespace A023513

/-- `∑{p}[A008578(n+2)+1, #]` -/
def P4193312057699215695.Spec : Prop :=
  ∀ n, (P4193312057699215695.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P7763570581446653858

`A001414(A077066(n+1))`
-/

namespace A023513.P7763570581446653858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A077066 (n + 1)).toNat

end

end A023513.P7763570581446653858

namespace A023513

/-- `A001414(A077066(n+1))` -/
def P7763570581446653858.Spec : Prop :=
  ∀ n, P7763570581446653858.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P14228461054812499514

`∑{p}[record[A000010(n+1)+2], #]`
-/

namespace A023513.P14228461054812499514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P14228461054812499514

namespace A023513

/-- `∑{p}[record[A000010(n+1)+2], #]` -/
def P14228461054812499514.Spec : Prop :=
  ∀ n, (P14228461054812499514.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P17888771844823229096

`∑{p}[record[A020639(n+2)]+1, #]`
-/

namespace A023513.P17888771844823229096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P17888771844823229096

namespace A023513

/-- `∑{p}[record[A020639(n+2)]+1, #]` -/
def P17888771844823229096.Spec : Prop :=
  ∀ n, (P17888771844823229096.a n : ℤ) = A023513 (n + 1)

end A023513

/-! ## A023513.P16557532520239812488

`A008472(A008864(n+1))`
-/

namespace A023513.P16557532520239812488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008864 (n + 1)).toNat

end

end A023513.P16557532520239812488

namespace A023513

/-- `A008472(A008864(n+1))` -/
def P16557532520239812488.Spec : Prop :=
  ∀ n, P16557532520239812488.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P5835195655871281778

`A008472(A028815(n+1))`
-/

namespace A023513.P5835195655871281778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A028815 (n + 1)).toNat

end

end A023513.P5835195655871281778

namespace A023513

/-- `A008472(A028815(n+1))` -/
def P5835195655871281778.Spec : Prop :=
  ∀ n, P5835195655871281778.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P9882247118971655664

`A008472(A299763(n+2))`
-/

namespace A023513.P9882247118971655664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A299763 (n + 2)).toNat

end

end A023513.P9882247118971655664

namespace A023513

/-- `A008472(A299763(n+2))` -/
def P9882247118971655664.Spec : Prop :=
  ∀ n, P9882247118971655664.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P8374357904234390847

`A008472(A000040(n+1)+1)`
-/

namespace A023513.P8374357904234390847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 1) + 1).toNat

end

end A023513.P8374357904234390847

namespace A023513

/-- `A008472(A000040(n+1)+1)` -/
def P8374357904234390847.Spec : Prop :=
  ∀ n, P8374357904234390847.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P7916715748233089367

`A008472(A006093(n+1)+2)`
-/

namespace A023513.P7916715748233089367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006093 (n + 1) + 2).toNat

end

end A023513.P7916715748233089367

namespace A023513

/-- `A008472(A006093(n+1)+2)` -/
def P7916715748233089367.Spec : Prop :=
  ∀ n, P7916715748233089367.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P14396070277874373502

`A008472(A008578(n+2)+1)`
-/

namespace A023513.P14396070277874373502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008578 (n + 2) + 1).toNat

end

end A023513.P14396070277874373502

namespace A023513

/-- `A008472(A008578(n+2)+1)` -/
def P14396070277874373502.Spec : Prop :=
  ∀ n, P14396070277874373502.a n = A023513 (n + 1)

end A023513

/-! ## A023513.P11228376829583728289

`A008472(A052147(n+1)-1)`
-/

namespace A023513.P11228376829583728289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A052147 (n + 1) - 1).toNat

end

end A023513.P11228376829583728289

namespace A023513

/-- `A008472(A052147(n+1)-1)` -/
def P11228376829583728289.Spec : Prop :=
  ∀ n, P11228376829583728289.a n = A023513 (n + 1)

end A023513

/-!
# A023514: a(n) = sum of exponents in prime-power factorization of prime(n) + 1.

The programs for A023514, the canonical program `A023514.P888848431976553385` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023514 has offset 1).

The definition of A023514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023514.P888848431976553385

`A001222(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023514

/-- `A001222(A000040(n+1)+1)` -/
def P888848431976553385.Spec : Prop :=
  ∀ n, P888848431976553385.a n = A023514 (n + 1)

theorem P888848431976553385.correct : P888848431976553385.Spec := by
  intro n
  simp only [A023514, Nat.add_sub_cancel]

end A023514

/-! ## A023514.P15890484834239414950

`∑{e}[A008864(n+1), #]`
-/

namespace A023514.P15890484834239414950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P15890484834239414950

namespace A023514

/-- `∑{e}[A008864(n+1), #]` -/
def P15890484834239414950.Spec : Prop :=
  ∀ n, (P15890484834239414950.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P3581763799918457339

`∑{e}[A028815(n+1), #]`
-/

namespace A023514.P3581763799918457339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P3581763799918457339

namespace A023514

/-- `∑{e}[A028815(n+1), #]` -/
def P3581763799918457339.Spec : Prop :=
  ∀ n, (P3581763799918457339.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P11435983327098575564

`∑{e}[A278228(n+1), #]`
-/

namespace A023514.P11435983327098575564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P11435983327098575564

namespace A023514

/-- `∑{e}[A278228(n+1), #]` -/
def P11435983327098575564.Spec : Prop :=
  ∀ n, (P11435983327098575564.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P15482268634320497964

`∑{e}[A006005(n+1)+1, #]`
-/

namespace A023514.P15482268634320497964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P15482268634320497964

namespace A023514

/-- `∑{e}[A006005(n+1)+1, #]` -/
def P15482268634320497964.Spec : Prop :=
  ∀ n, (P15482268634320497964.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P5756325885616814133

`∑{e}[A006093(n+1)+2, #]`
-/

namespace A023514.P5756325885616814133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P5756325885616814133

namespace A023514

/-- `∑{e}[A006093(n+1)+2, #]` -/
def P5756325885616814133.Spec : Prop :=
  ∀ n, (P5756325885616814133.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P4716575822796169992

`∑{e}[1-A052147(n+1), #]`
-/

namespace A023514.P4716575822796169992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A052147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P4716575822796169992

namespace A023514

/-- `∑{e}[1-A052147(n+1), #]` -/
def P4716575822796169992.Spec : Prop :=
  ∀ n, (P4716575822796169992.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P4347341209678717342

`∑{e}[A089241(n+1), #]-1`
-/

namespace A023514.P4347341209678717342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A023514.P4347341209678717342

namespace A023514

/-- `∑{e}[A089241(n+1), #]-1` -/
def P4347341209678717342.Spec : Prop :=
  ∀ n, P4347341209678717342.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P15072178333271803219

`∑{e}[2-A113935(n+1), #]`
-/

namespace A023514.P15072178333271803219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A113935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P15072178333271803219

namespace A023514

/-- `∑{e}[2-A113935(n+1), #]` -/
def P15072178333271803219.Spec : Prop :=
  ∀ n, (P15072178333271803219.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P17616645330849832534

`∑{e}[A014688(n+1)-n, #]`
-/

namespace A023514.P17616645330849832534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P17616645330849832534

namespace A023514

/-- `∑{e}[A014688(n+1)-n, #]` -/
def P17616645330849832534.Spec : Prop :=
  ∀ n, (P17616645330849832534.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P10924592218644998915

`A079086(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A023514.P10924592218644998915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079086 n + (2 - a (n - 1))

end

end A023514.P10924592218644998915

namespace A023514

/-- `A079086(n)+2-a(n-1)` -/
def P10924592218644998915.Spec : Prop :=
  ∀ n, P10924592218644998915.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P17487576414522073807

`A001222(A111333(n+1))+1`
-/

namespace A023514.P17487576414522073807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A111333 (n + 1)).toNat + 1

end

end A023514.P17487576414522073807

namespace A023514

/-- `A001222(A111333(n+1))+1` -/
def P17487576414522073807.Spec : Prop :=
  ∀ n, P17487576414522073807.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P12128700692099909534

`A239669(n+1)-A023508(n+1)`
-/

namespace A023514.P12128700692099909534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239669 (n + 1) - A023508 (n + 1)

end

end A023514.P12128700692099909534

namespace A023514

/-- `A239669(n+1)-A023508(n+1)` -/
def P12128700692099909534.Spec : Prop :=
  ∀ n, P12128700692099909534.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P13087596686774817029

`∑{e}[A299763(n+2), #]`
-/

namespace A023514.P13087596686774817029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P13087596686774817029

namespace A023514

/-- `∑{e}[A299763(n+2), #]` -/
def P13087596686774817029.Spec : Prop :=
  ∀ n, (P13087596686774817029.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P11733795026996165489

`∑{e}[A093515(2*n+1), #]`
-/

namespace A023514.P11733795026996165489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023514.P11733795026996165489

namespace A023514

/-- `∑{e}[A093515(2*n+1), #]` -/
def P11733795026996165489.Spec : Prop :=
  ∀ n, (P11733795026996165489.a n : ℤ) = A023514 (n + 1)

end A023514

/-! ## A023514.P1705636621634082145

`A001222(A278228(n+1))`
-/

namespace A023514.P1705636621634082145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278228 (n + 1)).toNat

end

end A023514.P1705636621634082145

namespace A023514

/-- `A001222(A278228(n+1))` -/
def P1705636621634082145.Spec : Prop :=
  ∀ n, P1705636621634082145.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P13524270185794659812

`A001222(A008864(n+1))`
-/

namespace A023514.P13524270185794659812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1)).toNat

end

end A023514.P13524270185794659812

namespace A023514

/-- `A001222(A008864(n+1))` -/
def P13524270185794659812.Spec : Prop :=
  ∀ n, P13524270185794659812.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P11826306054750503967

`A001222(A028815(n+1))`
-/

namespace A023514.P11826306054750503967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028815 (n + 1)).toNat

end

end A023514.P11826306054750503967

namespace A023514

/-- `A001222(A028815(n+1))` -/
def P11826306054750503967.Spec : Prop :=
  ∀ n, P11826306054750503967.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P11157238577050047621

`A001222(A299763(n+2))`
-/

namespace A023514.P11157238577050047621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A299763 (n + 2)).toNat

end

end A023514.P11157238577050047621

namespace A023514

/-- `A001222(A299763(n+2))` -/
def P11157238577050047621.Spec : Prop :=
  ∀ n, P11157238577050047621.a n = A023514 (n + 1)

end A023514

/-! ## A023514.P6333809875899905909

`A001222(sqrt(A110833(n+1)))`
-/

namespace A023514.P6333809875899905909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))).toNat

end

end A023514.P6333809875899905909

namespace A023514

/-- `A001222(sqrt(A110833(n+1)))` -/
def P6333809875899905909.Spec : Prop :=
  ∀ n, P6333809875899905909.a n = A023514 (n + 1)

end A023514

/-!
# A023515: a(n) = prime(n)*prime(n-1) - 1.

The programs for A023515, the canonical program `A023515.P16950231091882071862` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023515 has offset 1).

The definition of A023515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023515.P1841900749002000105

`A023523(n+1)-2`
-/

namespace A023515.P1841900749002000105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) - 2

end

end A023515.P1841900749002000105

namespace A023515

/-- `A023523(n+1)-2` -/
def P1841900749002000105.Spec : Prop :=
  ∀ n, P1841900749002000105.a n = A023515 (n + 1)

theorem P1841900749002000105.correct : P1841900749002000105.Spec := by
  intro n
  simp only [A023515, Nat.add_sub_cancel, A023515.P1841900749002000105.a, A023515.P16950231091882071862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A023523, A023523.P8224990368586558717.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023515

/-! ## A023515.P7625448410023439570

`Δ[A007504(n)]*A008578(n+1)-1`
-/

namespace A023515.P7625448410023439570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008578 (n + 1) - 1

end

end A023515.P7625448410023439570

namespace A023515

/-- `Δ[A007504(n)]*A008578(n+1)-1` -/
def P7625448410023439570.Spec : Prop :=
  ∀ n, P7625448410023439570.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P16950231091882071862

`A000040(n+1)*A008578(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023515

/-- `A000040(n+1)*A008578(n+1)-1` -/
def P16950231091882071862.Spec : Prop :=
  ∀ n, P16950231091882071862.a n = A023515 (n + 1)

theorem P16950231091882071862.correct : P16950231091882071862.Spec := by
  intro n
  simp only [A023515, Nat.add_sub_cancel]

end A023515

/-! ## A023515.P4725239091884740393

`abs(Δ[A022837(n)])*A008578(n+1)-1`
-/

namespace A023515.P4725239091884740393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A008578 (n + 1) - 1

end

end A023515.P4725239091884740393

namespace A023515

/-- `abs(Δ[A022837(n)])*A008578(n+1)-1` -/
def P4725239091884740393.Spec : Prop :=
  ∀ n, P4725239091884740393.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P17633253635293845592

`sqrt(A001248(n+1))*A008578(n+1)-1`
-/

namespace A023515.P17633253635293845592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A008578 (n + 1) : ℝ) - 1

end

end A023515.P17633253635293845592

namespace A023515

/-- `sqrt(A001248(n+1))*A008578(n+1)-1` -/
def P17633253635293845592.Spec : Prop :=
  ∀ n, P17633253635293845592.a n = (A023515 (n + 1) : ℝ)

end A023515

/-! ## A023515.P16510781175159509393

`sqrt(A280076(n+1))*A000040(n+1)-1`
-/

namespace A023515.P16510781175159509393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ) - 1

end

end A023515.P16510781175159509393

namespace A023515

/-- `sqrt(A280076(n+1))*A000040(n+1)-1` -/
def P16510781175159509393.Spec : Prop :=
  ∀ n, P16510781175159509393.a n = (A023515 (n + 1) : ℝ)

end A023515

/-! ## A023515.P15607701316514304063

`(A175222(n+1)-5)*A008578(n+1)-1`
-/

namespace A023515.P15607701316514304063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175222 (n + 1) - 5) * A008578 (n + 1) - 1

end

end A023515.P15607701316514304063

namespace A023515

/-- `(A175222(n+1)-5)*A008578(n+1)-1` -/
def P15607701316514304063.Spec : Prop :=
  ∀ n, P15607701316514304063.a n = A023515 (n + 1)

theorem P15607701316514304063.correct : P15607701316514304063.Spec := by
  intro n
  simp only [A023515, Nat.add_sub_cancel, A023515.P15607701316514304063.a, A023515.P16950231091882071862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A175222, A175222.P10933161600630644520.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023515

/-! ## A023515.P7929853219313546257

`A000040(n+1)*A028815(n)-A008864(n+1)`
-/

namespace A023515.P7929853219313546257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A028815 n - A008864 (n + 1)

end

end A023515.P7929853219313546257

namespace A023515

/-- `A000040(n+1)*A028815(n)-A008864(n+1)` -/
def P7929853219313546257.Spec : Prop :=
  ∀ n, P7929853219313546257.a n = A023515 (n + 1)

theorem P7929853219313546257.correct : P7929853219313546257.Spec := by
  intro n
  simp only [A023515, Nat.add_sub_cancel, A023515.P7929853219313546257.a, A023515.P16950231091882071862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A008864, A008864.P9177617808325052279.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023515

/-! ## A023515.P18156909721043540819

`A008578(n+1)*A008864(n+1)-A028815(n)`
-/

namespace A023515.P18156909721043540819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A008864 (n + 1) - A028815 n

end

end A023515.P18156909721043540819

namespace A023515

/-- `A008578(n+1)*A008864(n+1)-A028815(n)` -/
def P18156909721043540819.Spec : Prop :=
  ∀ n, P18156909721043540819.a n = A023515 (n + 1)

theorem P18156909721043540819.correct : P18156909721043540819.Spec := by
  intro n
  simp only [A023515, Nat.add_sub_cancel, A023515.P18156909721043540819.a, A023515.P16950231091882071862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A008864, A008864.P9177617808325052279.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023515

/-! ## A023515.P9501934736179877622

`A000040(n+1)*A028815(n)-A028815(n+1)`
-/

namespace A023515.P9501934736179877622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A028815 n - A028815 (n + 1)

end

end A023515.P9501934736179877622

namespace A023515

/-- `A000040(n+1)*A028815(n)-A028815(n+1)` -/
def P9501934736179877622.Spec : Prop :=
  ∀ n, P9501934736179877622.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P36724714187403734

`A000040(n+1)*A299763(n+1)-A055670(n+1)`
-/

namespace A023515.P36724714187403734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A299763 (n + 1) - A055670 (n + 1)

end

end A023515.P36724714187403734

namespace A023515

/-- `A000040(n+1)*A299763(n+1)-A055670(n+1)` -/
def P36724714187403734.Spec : Prop :=
  ∀ n, P36724714187403734.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P11244393407703252488

`A008578(n+1)*A008578(n+2)-1`
-/

namespace A023515.P11244393407703252488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A008578 (n + 2) - 1

end

end A023515.P11244393407703252488

namespace A023515

/-- `A008578(n+1)*A008578(n+2)-1` -/
def P11244393407703252488.Spec : Prop :=
  ∀ n, P11244393407703252488.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P7230560215262132358

`A028815(n)*A182986(n+2)-A028815(n+1)`
-/

namespace A023515.P7230560215262132358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n * A182986 (n + 2) - A028815 (n + 1)

end

end A023515.P7230560215262132358

namespace A023515

/-- `A028815(n)*A182986(n+2)-A028815(n+1)` -/
def P7230560215262132358.Spec : Prop :=
  ∀ n, P7230560215262132358.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P10163901579939118407

`A000040(n+1)*record[A028691(n+1)]-1`
-/

namespace A023515.P10163901579939118407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A023515.P10163901579939118407

namespace A023515

/-- `A000040(n+1)*record[A028691(n+1)]-1` -/
def P10163901579939118407.Spec : Prop :=
  ∀ n, P10163901579939118407.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P355090491804195354

`A000040(n+1)*record[A025473(n+1)]-1`
-/

namespace A023515.P355090491804195354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A023515.P355090491804195354

namespace A023515

/-- `A000040(n+1)*record[A025473(n+1)]-1` -/
def P355090491804195354.Spec : Prop :=
  ∀ n, P355090491804195354.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P5908952584327755138

`record[lcm(A151800(n+1), A151800(n))-1]`
-/

namespace A023515.P5908952584327755138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A151800 (n + 1)) (A151800 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023515.P5908952584327755138

namespace A023515

/-- `record[lcm(A151800(n+1), A151800(n))-1]` -/
def P5908952584327755138.Spec : Prop :=
  ∀ n, P5908952584327755138.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P2107837702105015652

`A000040(n+1)*record[A006530(n+1)]-1`
-/

namespace A023515.P2107837702105015652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A023515.P2107837702105015652

namespace A023515

/-- `A000040(n+1)*record[A006530(n+1)]-1` -/
def P2107837702105015652.Spec : Prop :=
  ∀ n, P2107837702105015652.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P15027746431650158150

`A000040(n+1)*record[A020639(n+1)]-1`
-/

namespace A023515.P15027746431650158150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A023515.P15027746431650158150

namespace A023515

/-- `A000040(n+1)*record[A020639(n+1)]-1` -/
def P15027746431650158150.Spec : Prop :=
  ∀ n, P15027746431650158150.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P2690910516097034628

`A000040(n+1)*A026239(A018252(n+1))-1`
-/

namespace A023515.P2690910516097034628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A026239 (A018252 (n + 1)).toNat - 1

end

end A023515.P2690910516097034628

namespace A023515

/-- `A000040(n+1)*A026239(A018252(n+1))-1` -/
def P2690910516097034628.Spec : Prop :=
  ∀ n, P2690910516097034628.a n = A023515 (n + 1)

end A023515

/-! ## A023515.P7775232021492306938

`A057602(Δ[n²])-1`
-/

namespace A023515.P7775232021492306938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A023515.P7775232021492306938

namespace A023515

/-- `A057602(Δ[n²])-1` -/
def P7775232021492306938.Spec : Prop :=
  ∀ n, P7775232021492306938.a n = A023515 (n + 1)

end A023515

/-!
# A023516: Number of distinct prime divisors of prime(n)*prime(n-1) - 1.

The programs for A023516, the canonical program `A023516.P15735167272608923564` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023516 has offset 1).

The definition of A023516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023516.P15735167272608923564

`A001221(A023515(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023516

/-- `A001221(A023515(n+1))` -/
def P15735167272608923564.Spec : Prop :=
  ∀ n, P15735167272608923564.a n = A023516 (n + 1)

theorem P15735167272608923564.correct : P15735167272608923564.Spec := by
  intro n
  simp only [A023516, Nat.add_sub_cancel]

end A023516

/-! ## A023516.P10042839127355831154

`∑{e}[A023515(n+1), A000164(#)]`
-/

namespace A023516.P10042839127355831154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000164 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P10042839127355831154

namespace A023516

/-- `∑{e}[A023515(n+1), A000164(#)]` -/
def P10042839127355831154.Spec : Prop :=
  ∀ n, P10042839127355831154.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P767601161764287428

`∑{e}[A023515(n+1), A000377(#)]`
-/

namespace A023516.P767601161764287428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000377 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P767601161764287428

namespace A023516

/-- `∑{e}[A023515(n+1), A000377(#)]` -/
def P767601161764287428.Spec : Prop :=
  ∀ n, P767601161764287428.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P16063087453798790578

`∑{e}[A023515(n+1), A001263(#)]`
-/

namespace A023516.P16063087453798790578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001263 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P16063087453798790578

namespace A023516

/-- `∑{e}[A023515(n+1), A001263(#)]` -/
def P16063087453798790578.Spec : Prop :=
  ∀ n, P16063087453798790578.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P2736690756437195868

`∑{e}[A023515(n+1), A001826(#)]`
-/

namespace A023516.P2736690756437195868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001826 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P2736690756437195868

namespace A023516

/-- `∑{e}[A023515(n+1), A001826(#)]` -/
def P2736690756437195868.Spec : Prop :=
  ∀ n, P2736690756437195868.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P2386184129561288794

`∑{e}[A023515(n+1), A003983(#)]`
-/

namespace A023516.P2386184129561288794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003983 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P2386184129561288794

namespace A023516

/-- `∑{e}[A023515(n+1), A003983(#)]` -/
def P2386184129561288794.Spec : Prop :=
  ∀ n, P2386184129561288794.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P7454964476703565974

`∑{e}[A023515(n+1), A007732(#)]`
-/

namespace A023516.P7454964476703565974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007732 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P7454964476703565974

namespace A023516

/-- `∑{e}[A023515(n+1), A007732(#)]` -/
def P7454964476703565974.Spec : Prop :=
  ∀ n, P7454964476703565974.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P16070977757318141576

`∑{e}[A023515(n+1), A008277(#)]`
-/

namespace A023516.P16070977757318141576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008277 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P16070977757318141576

namespace A023516

/-- `∑{e}[A023515(n+1), A008277(#)]` -/
def P16070977757318141576.Spec : Prop :=
  ∀ n, P16070977757318141576.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P10960157964431126161

`∑{e}[A023515(n+1), A008278(#)]`
-/

namespace A023516.P10960157964431126161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008278 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P10960157964431126161

namespace A023516

/-- `∑{e}[A023515(n+1), A008278(#)]` -/
def P10960157964431126161.Spec : Prop :=
  ∀ n, P10960157964431126161.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P4862110706713012053

`∑{e}[A023515(n+1), A008292(#)]`
-/

namespace A023516.P4862110706713012053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008292 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P4862110706713012053

namespace A023516

/-- `∑{e}[A023515(n+1), A008292(#)]` -/
def P4862110706713012053.Spec : Prop :=
  ∀ n, P4862110706713012053.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P1255544786931880187

`∑{e}[A023515(n+1), A010227(#)]`
-/

namespace A023516.P1255544786931880187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010227 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P1255544786931880187

namespace A023516

/-- `∑{e}[A023515(n+1), A010227(#)]` -/
def P1255544786931880187.Spec : Prop :=
  ∀ n, P1255544786931880187.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P8387624028408585869

`∑{e}[A023515(n+1), A010554(#)]`
-/

namespace A023516.P8387624028408585869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010554 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P8387624028408585869

namespace A023516

/-- `∑{e}[A023515(n+1), A010554(#)]` -/
def P8387624028408585869.Spec : Prop :=
  ∀ n, P8387624028408585869.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P4243935940287367082

`∑{e}[A023515(n+1), A023582(#)]`
-/

namespace A023516.P4243935940287367082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A023582 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P4243935940287367082

namespace A023516

/-- `∑{e}[A023515(n+1), A023582(#)]` -/
def P4243935940287367082.Spec : Prop :=
  ∀ n, P4243935940287367082.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P13908103742635944899

`∑{e}[A023515(n+1), A025454(#)]`
-/

namespace A023516.P13908103742635944899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A025454 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P13908103742635944899

namespace A023516

/-- `∑{e}[A023515(n+1), A025454(#)]` -/
def P13908103742635944899.Spec : Prop :=
  ∀ n, P13908103742635944899.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P2780234857144478235

`∑{e}[A023515(n+1), A034380(#)]`
-/

namespace A023516.P2780234857144478235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034380 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P2780234857144478235

namespace A023516

/-- `∑{e}[A023515(n+1), A034380(#)]` -/
def P2780234857144478235.Spec : Prop :=
  ∀ n, P2780234857144478235.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P8218850074565450205

`∑{e}[A023515(n+1), A034799(#)]`
-/

namespace A023516.P8218850074565450205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034799 (Nat.factorization (f1 n).natAbs p)

end

end A023516.P8218850074565450205

namespace A023516

/-- `∑{e}[A023515(n+1), A034799(#)]` -/
def P8218850074565450205.Spec : Prop :=
  ∀ n, P8218850074565450205.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P9361527285193108818

`∑{e}[A023515(n+1), A000010(A000010(#))]`
-/

namespace A023516.P9361527285193108818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023516.P9361527285193108818

namespace A023516

/-- `∑{e}[A023515(n+1), A000010(A000010(#))]` -/
def P9361527285193108818.Spec : Prop :=
  ∀ n, P9361527285193108818.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P6710133361219580657

`∑{e}[A023515(n+1), A007318(A007318(#))]`
-/

namespace A023516.P6710133361219580657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (A007318 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023516.P6710133361219580657

namespace A023516

/-- `∑{e}[A023515(n+1), A007318(A007318(#))]` -/
def P6710133361219580657.Spec : Prop :=
  ∀ n, P6710133361219580657.a n = A023516 (n + 1)

end A023516

/-! ## A023516.P9918117464492789970

`A001222(∏{e}[A023515(n+1), A000040(#)])`
-/

namespace A023516.P9918117464492789970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023516.P9918117464492789970

namespace A023516

/-- `A001222(∏{e}[A023515(n+1), A000040(#)])` -/
def P9918117464492789970.Spec : Prop :=
  ∀ n, P9918117464492789970.a n = A023516 (n + 1)

end A023516

/-!
# A023517: Greatest prime divisor of prime(n)*prime(n-1) - 1.

The programs for A023517, there is no canonical definition to state claims against.
-/

/-! ## A023517.P12368611932992421448

`A006530(A023515(n+2)/A043529(n))`
-/

namespace A023517.P12368611932992421448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023515 (n + 2) : ℚ) / (A043529 n : ℚ))).toNat

end

end A023517.P12368611932992421448

/-! ## A023517.P13656493659709171068

`A006530(A023515(n+2)/A329683(n))`
-/

namespace A023517.P13656493659709171068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023515 (n + 2) : ℚ) / (A329683 n : ℚ))).toNat

end

end A023517.P13656493659709171068

/-! ## A023517.P9904974900279186596

`A006530(A023515(n+2)/A040001(2*n))`
-/

namespace A023517.P9904974900279186596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023515 (n + 2) : ℚ) / (A040001 (2 * n) : ℚ))).toNat

end

end A023517.P9904974900279186596

/-! ## A023517.P5707640340088297284

`A006530(A023515(n+2)/A001285(2*n+3))`
-/

namespace A023517.P5707640340088297284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023515 (n + 2) : ℚ) / (A001285 (2 * n + 3) : ℚ))).toNat

end

end A023517.P5707640340088297284

/-! ## A023517.P8576596448912286394

`A006530(A023515(n+2))`
-/

namespace A023517.P8576596448912286394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023515 (n + 2)).toNat

end

end A023517.P8576596448912286394

/-! ## A023517.P771470392961822951

`A006530(record[A116570(n)-1])`
-/

namespace A023517.P771470392961822951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023517.P771470392961822951

/-! ## A023517.P3096609386433901521

`A006530(A124669(n+1)+1)`
-/

namespace A023517.P3096609386433901521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124669 (n + 1) + 1).toNat

end

end A023517.P3096609386433901521

/-! ## A023517.P4954082595805664650

`A006530(A006094(n+1)-1)`
-/

namespace A023517.P4954082595805664650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006094 (n + 1) - 1).toNat

end

end A023517.P4954082595805664650

/-! ## A023517.P9505098457297773298

`A006530(A023523(n+2)-2)`
-/

namespace A023517.P9505098457297773298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023523 (n + 2) - 2).toNat

end

end A023517.P9505098457297773298

/-!
# A023518: Greatest exponent in prime-power factorization of prime(n)*prime(n-1) - 1; a(1) = 0.

The programs for A023518, there is no canonical definition to state claims against.
-/

/-! ## A023518.P10021540487526343479

`A051903(A023515(n+1))`
-/

namespace A023518.P10021540487526343479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A023515 (n + 1)).toNat

end

end A023518.P10021540487526343479

/-! ## A023518.P12918202962953522014

`A051903(A023523(n+1)-2)`
-/

namespace A023518.P12918202962953522014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A023523 (n + 1) - 2).toNat

end

end A023518.P12918202962953522014

/-! ## A023518.P11780771109343833483

`A051903(record[A119416(n+1)-1])`
-/

namespace A023518.P11780771109343833483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023518.P11780771109343833483

/-! ## A023518.P13081209999043969691

`A051903(record[A063041(n+2)-2])`
-/

namespace A023518.P13081209999043969691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023518.P13081209999043969691

/-! ## A023518.P4286538694739186238

`A062977(A023515(n+1))+A057427(n)`
-/

namespace A023518.P4286538694739186238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A023515 (n + 1)).toNat + A057427 n

end

end A023518.P4286538694739186238

/-! ## A023518.P3573047136437530838

`A062977(A023515(n+1))-A057428(n)`
-/

namespace A023518.P3573047136437530838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A023515 (n + 1)).toNat - A057428 n

end

end A023518.P3573047136437530838

/-!
# A023519: Least odd prime divisor of prime(n)*prime(n-1) - 1, or 1 if prime(n)*prime(n-1) - 1 is a power of 2.

The programs for A023519, there is no canonical definition to state claims against.
-/

/-! ## A023519.P5382723537808427198

`A078701(A023515(n+1))`
-/

namespace A023519.P5382723537808427198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A023515 (n + 1)).toNat

end

end A023519.P5382723537808427198

/-! ## A023519.P18269786144126931692

`A020639(∏{p}[A023515(n+1), A000265(#)])`
-/

namespace A023519.P18269786144126931692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p).toNat

end

end A023519.P18269786144126931692

/-! ## A023519.P15684174924614175421

`A020639(A000265(A023523(n+1)-2))`
-/

namespace A023519.P15684174924614175421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A023523 (n + 1) - 2).toNat).toNat

end

end A023519.P15684174924614175421

/-! ## A023519.P11614804069978985589

`A020639(A000265(record[A063041(n+2)-2]))`
-/

namespace A023519.P11614804069978985589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A023519.P11614804069978985589

/-! ## A023519.P7094019329174292741

`A067695(∏{p}[A023515(n+1), A000265(#)])`
-/

namespace A023519.P7094019329174292741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p).toNat

end

end A023519.P7094019329174292741

/-!
# A023520: Exponent of 2 in prime factorization of prime(n)*prime(n-1) - 1.

The programs for A023520, the canonical program `A023520.P5755508264215607282` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023520 has offset 2).

The definition of A023520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023520.P7286685994520341285

`val(A000040(n+2)*A000040(n+1)-1, 2)`
-/

namespace A023520.P7286685994520341285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 2) * A000040 (n + 1) - 1).toNat 2

end

end A023520.P7286685994520341285

namespace A023520

/-- `val(A000040(n+2)*A000040(n+1)-1, 2)` -/
def P7286685994520341285.Spec : Prop :=
  ∀ n, (P7286685994520341285.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P5755508264215607282

`A007814(A023515(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023520

/-- `A007814(A023515(n+2))` -/
def P5755508264215607282.Spec : Prop :=
  ∀ n, P5755508264215607282.a n = A023520 (n + 2)

theorem P5755508264215607282.correct : P5755508264215607282.Spec := by
  intro n
  simp only [A023520, Nat.add_sub_cancel]

end A023520

/-! ## A023520.P1585713952069901290

`val(A006094(n+1)-1, 2)`
-/

namespace A023520.P1585713952069901290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006094 (n + 1) - 1).toNat 2

end

end A023520.P1585713952069901290

namespace A023520

/-- `val(A006094(n+1)-1, 2)` -/
def P1585713952069901290.Spec : Prop :=
  ∀ n, (P1585713952069901290.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P11090159554819639438

`val(A023523(n+2)-2, 2)`
-/

namespace A023520.P11090159554819639438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023523 (n + 2) - 2).toNat 2

end

end A023520.P11090159554819639438

namespace A023520

/-- `val(A023523(n+2)-2, 2)` -/
def P11090159554819639438.Spec : Prop :=
  ∀ n, (P11090159554819639438.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P15491163749936053430

`val(A333747(2*n+1)-1, 2)`
-/

namespace A023520.P15491163749936053430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A333747 (2 * n + 1) - 1).toNat 2

end

end A023520.P15491163749936053430

namespace A023520

/-- `val(A333747(2*n+1)-1, 2)` -/
def P15491163749936053430.Spec : Prop :=
  ∀ n, (P15491163749936053430.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P11933989901912012177

`val(A124669(n+1)+1, 2)`
-/

namespace A023520.P11933989901912012177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124669 (n + 1) + 1).toNat 2

end

end A023520.P11933989901912012177

namespace A023520

/-- `val(A124669(n+1)+1, 2)` -/
def P11933989901912012177.Spec : Prop :=
  ∀ n, (P11933989901912012177.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P14270361746804440381

`val(A001223(n+1)*A156724(n+1), 2)`
-/

namespace A023520.P14270361746804440381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001223 (n + 1) * A156724 (n + 1)).toNat 2

end

end A023520.P14270361746804440381

namespace A023520

/-- `val(A001223(n+1)*A156724(n+1), 2)` -/
def P14270361746804440381.Spec : Prop :=
  ∀ n, (P14270361746804440381.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P2398074392884431089

`val(A001223(n+1), A000034(A156724(n+1)))`
-/

namespace A023520.P2398074392884431089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001223 (n + 1)).toNat (A000034 (A156724 (n + 1)).toNat).toNat

end

end A023520.P2398074392884431089

namespace A023520

/-- `val(A001223(n+1), A000034(A156724(n+1)))` -/
def P2398074392884431089.Spec : Prop :=
  ∀ n, (P2398074392884431089.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P9577553472408056962

`val(A054541(n+2), A000034(A156724(n+1)))`
-/

namespace A023520.P9577553472408056962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054541 (n + 2)).toNat (A000034 (A156724 (n + 1)).toNat).toNat

end

end A023520.P9577553472408056962

namespace A023520

/-- `val(A054541(n+2), A000034(A156724(n+1)))` -/
def P9577553472408056962.Spec : Prop :=
  ∀ n, (P9577553472408056962.a n : ℤ) = A023520 (n + 2)

end A023520

/-! ## A023520.P14251755190457341403

`val(A001223(n+1), A331580(A151800(n)))`
-/

namespace A023520.P14251755190457341403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001223 (n + 1)).toNat (A331580 (A151800 n).toNat).toNat

end

end A023520.P14251755190457341403

namespace A023520

/-- `val(A001223(n+1), A331580(A151800(n)))` -/
def P14251755190457341403.Spec : Prop :=
  ∀ n, (P14251755190457341403.a n : ℤ) = A023520 (n + 2)

end A023520

/-!
# A023521: Sum of distinct prime divisors of prime(n)*prime(n-1) - 1.

The programs for A023521, the canonical program `A023521.P8353557815363639841` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023521 has offset 2).

The definition of A023521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023521.P8353557815363639841

`A008472(A023515(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023521

/-- `A008472(A023515(n+2))` -/
def P8353557815363639841.Spec : Prop :=
  ∀ n, P8353557815363639841.a n = A023521 (n + 2)

theorem P8353557815363639841.correct : P8353557815363639841.Spec := by
  intro n
  simp only [A023521, Nat.add_sub_cancel]

end A023521

/-! ## A023521.P13037362256030911794

`A008472(A000040(n+2)*A000040(n+1)-1)`
-/

namespace A023521.P13037362256030911794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 2) * A000040 (n + 1) - 1).toNat

end

end A023521.P13037362256030911794

namespace A023521

/-- `A008472(A000040(n+2)*A000040(n+1)-1)` -/
def P13037362256030911794.Spec : Prop :=
  ∀ n, P13037362256030911794.a n = A023521 (n + 2)

end A023521

/-! ## A023521.P451787411278645450

`∑{p}[1-record[A116570(n)], #]`
-/

namespace A023521.P451787411278645450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P451787411278645450

namespace A023521

/-- `∑{p}[1-record[A116570(n)], #]` -/
def P451787411278645450.Spec : Prop :=
  ∀ n, (P451787411278645450.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P14581462465062941497

`∑{p}[A124669(n+1)+1, #]`
-/

namespace A023521.P14581462465062941497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P14581462465062941497

namespace A023521

/-- `∑{p}[A124669(n+1)+1, #]` -/
def P14581462465062941497.Spec : Prop :=
  ∀ n, (P14581462465062941497.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P8950345732530047488

`∑{p}[1-A006094(n+1), #]`
-/

namespace A023521.P8950345732530047488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P8950345732530047488

namespace A023521

/-- `∑{p}[1-A006094(n+1), #]` -/
def P8950345732530047488.Spec : Prop :=
  ∀ n, (P8950345732530047488.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P14835823560252548966

`∑{p}[2-A023523(n+2), #]`
-/

namespace A023521.P14835823560252548966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A023523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P14835823560252548966

namespace A023521

/-- `∑{p}[2-A023523(n+2), #]` -/
def P14835823560252548966.Spec : Prop :=
  ∀ n, (P14835823560252548966.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P234728565681771226

`∑{p}[1-A116570(2*n), #]`
-/

namespace A023521.P234728565681771226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A116570 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P234728565681771226

namespace A023521

/-- `∑{p}[1-A116570(2*n), #]` -/
def P234728565681771226.Spec : Prop :=
  ∀ n, (P234728565681771226.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P7523565002349725659

`∑{p}[1-sqrt(A166329(n+1)), #]`
-/

namespace A023521.P7523565002349725659
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A166329 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A023521.P7523565002349725659

namespace A023521

/-- `∑{p}[1-sqrt(A166329(n+1)), #]` -/
def P7523565002349725659.Spec : Prop :=
  ∀ n, (P7523565002349725659.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P16518163422493050366

`∑{p}[1-A033476(2*n+1), #]`
-/

namespace A023521.P16518163422493050366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033476 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P16518163422493050366

namespace A023521

/-- `∑{p}[1-A033476(2*n+1), #]` -/
def P16518163422493050366.Spec : Prop :=
  ∀ n, (P16518163422493050366.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P2720672984502868200

`∑{p}[A037166(n+1)+A006093(n+1), #]`
-/

namespace A023521.P2720672984502868200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P2720672984502868200

namespace A023521

/-- `∑{p}[A037166(n+1)+A006093(n+1), #]` -/
def P2720672984502868200.Spec : Prop :=
  ∀ n, (P2720672984502868200.a n : ℤ) = A023521 (n + 2)

end A023521

/-! ## A023521.P11637415686088117421

`∑{p}[A008864(n+1)-A123134(n+1), #]`
-/

namespace A023521.P11637415686088117421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A123134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023521.P11637415686088117421

namespace A023521

/-- `∑{p}[A008864(n+1)-A123134(n+1), #]` -/
def P11637415686088117421.Spec : Prop :=
  ∀ n, (P11637415686088117421.a n : ℤ) = A023521 (n + 2)

end A023521

/-!
# A023522: Sum of exponents in prime-power factorization of p(n)*p(n-1) - 1.

The programs for A023522, the canonical program `A023522.P7974521389471002608` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023522 has offset 2).

The definition of A023522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023522.P7974521389471002608

`A001222(A023515(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023522

/-- `A001222(A023515(n+2))` -/
def P7974521389471002608.Spec : Prop :=
  ∀ n, P7974521389471002608.a n = A023522 (n + 2)

theorem P7974521389471002608.correct : P7974521389471002608.Spec := by
  intro n
  simp only [A023522, Nat.add_sub_cancel]

end A023522

/-! ## A023522.P4609063214373500802

`A001222(A000040(n+2)*A000040(n+1)-1)`
-/

namespace A023522.P4609063214373500802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 2) * A000040 (n + 1) - 1).toNat

end

end A023522.P4609063214373500802

namespace A023522

/-- `A001222(A000040(n+2)*A000040(n+1)-1)` -/
def P4609063214373500802.Spec : Prop :=
  ∀ n, P4609063214373500802.a n = A023522 (n + 2)

end A023522

/-! ## A023522.P1819505355979715883

`∑{e}[1-p?[xor(1, n)+1]*p?[2*n+1], #]`
-/

namespace A023522.P1819505355979715883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P1819505355979715883

namespace A023522

/-- `∑{e}[1-p?[xor(1, n)+1]*p?[2*n+1], #]` -/
def P1819505355979715883.Spec : Prop :=
  ∀ n, (P1819505355979715883.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P5213892255242180960

`∑{e}[1-record[A116570(n)], #]`
-/

namespace A023522.P5213892255242180960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P5213892255242180960

namespace A023522

/-- `∑{e}[1-record[A116570(n)], #]` -/
def P5213892255242180960.Spec : Prop :=
  ∀ n, (P5213892255242180960.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P12398467206963476672

`∑{e}[A124669(n+1)+1, #]`
-/

namespace A023522.P12398467206963476672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P12398467206963476672

namespace A023522

/-- `∑{e}[A124669(n+1)+1, #]` -/
def P12398467206963476672.Spec : Prop :=
  ∀ n, (P12398467206963476672.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P12129333506721116836

`∑{e}[1-A006094(n+1), #]`
-/

namespace A023522.P12129333506721116836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P12129333506721116836

namespace A023522

/-- `∑{e}[1-A006094(n+1), #]` -/
def P12129333506721116836.Spec : Prop :=
  ∀ n, (P12129333506721116836.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P3480290512299792915

`∑{e}[2-A023523(n+2), #]`
-/

namespace A023522.P3480290512299792915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A023523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P3480290512299792915

namespace A023522

/-- `∑{e}[2-A023523(n+2), #]` -/
def P3480290512299792915.Spec : Prop :=
  ∀ n, (P3480290512299792915.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P17091417230015235483

`∑{e}[1-A116570(2*n), #]`
-/

namespace A023522.P17091417230015235483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A116570 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P17091417230015235483

namespace A023522

/-- `∑{e}[1-A116570(2*n), #]` -/
def P17091417230015235483.Spec : Prop :=
  ∀ n, (P17091417230015235483.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P4382886719147896160

`∑{e}[record[A063041(n+3)-2], #]`
-/

namespace A023522.P4382886719147896160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 3) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P4382886719147896160

namespace A023522

/-- `∑{e}[record[A063041(n+3)-2], #]` -/
def P4382886719147896160.Spec : Prop :=
  ∀ n, (P4382886719147896160.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P425409364128710998

`∑{e}[1-A333747(2*n+1), #]`
-/

namespace A023522.P425409364128710998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A333747 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P425409364128710998

namespace A023522

/-- `∑{e}[1-A333747(2*n+1), #]` -/
def P425409364128710998.Spec : Prop :=
  ∀ n, (P425409364128710998.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P5392472850411178470

`∑{e}[record[A093074(n+1)]*p?[2*n+1]-1, #]`
-/

namespace A023522.P5392472850411178470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P5392472850411178470

namespace A023522

/-- `∑{e}[record[A093074(n+1)]*p?[2*n+1]-1, #]` -/
def P5392472850411178470.Spec : Prop :=
  ∀ n, (P5392472850411178470.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P12416565715824828595

`∑{e}[A116570(A005843(n))-1, #]`
-/

namespace A023522.P12416565715824828595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (A005843 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P12416565715824828595

namespace A023522

/-- `∑{e}[A116570(A005843(n))-1, #]` -/
def P12416565715824828595.Spec : Prop :=
  ∀ n, (P12416565715824828595.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P17927429228384864401

`A065881(∑{e}[xor(1, A006094(n+1)), #])`
-/

namespace A023522.P17927429228384864401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006094 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A023522.P17927429228384864401

namespace A023522

/-- `A065881(∑{e}[xor(1, A006094(n+1)), #])` -/
def P17927429228384864401.Spec : Prop :=
  ∀ n, P17927429228384864401.a n = A023522 (n + 2)

end A023522

/-! ## A023522.P1952018139040600582

`∏{e}[∏{e}[A023515(n+2), A000079(#)], #]`
-/

namespace A023522.P1952018139040600582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000079 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P1952018139040600582

namespace A023522

/-- `∏{e}[∏{e}[A023515(n+2), A000079(#)], #]` -/
def P1952018139040600582.Spec : Prop :=
  ∀ n, (P1952018139040600582.a n : ℤ) = A023522 (n + 2)

end A023522

/-! ## A023522.P10390644596498921217

`∑{e}[lcm(A000040(2*n-(n-1)), A000040(2*n-(n-2)))-1, #]`
-/

namespace A023522.P10390644596498921217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) (A000040 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023522.P10390644596498921217

namespace A023522

/-- `∑{e}[lcm(A000040(2*n-(n-1)), A000040(2*n-(n-2)))-1, #]` -/
def P10390644596498921217.Spec : Prop :=
  ∀ n, (P10390644596498921217.a n : ℤ) = A023522 (n + 2)

end A023522

/-!
# A023523: a(n) = prime(n)*prime(n-1) + 1.

The programs for A023523, the canonical program `A023523.P8224990368586558717` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023523 has offset 1).

The definition of A023523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023523.P8224990368586558717

`A023515(n+1)+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023523

/-- `A023515(n+1)+2` -/
def P8224990368586558717.Spec : Prop :=
  ∀ n, P8224990368586558717.a n = A023523 (n + 1)

theorem P8224990368586558717.correct : P8224990368586558717.Spec := by
  intro n
  simp only [A023523, Nat.add_sub_cancel]

end A023523

/-! ## A023523.P1478276057729527620

`Δ[A007504(n)]*A008578(n+1)+1`
-/

namespace A023523.P1478276057729527620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008578 (n + 1) + 1

end

end A023523.P1478276057729527620

namespace A023523

/-- `Δ[A007504(n)]*A008578(n+1)+1` -/
def P1478276057729527620.Spec : Prop :=
  ∀ n, P1478276057729527620.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P998550058727152763

`A000040(n+1)*A008578(n+1)+1`
-/

namespace A023523.P998550058727152763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008578 (n + 1) + 1

end

end A023523.P998550058727152763

namespace A023523

/-- `A000040(n+1)*A008578(n+1)+1` -/
def P998550058727152763.Spec : Prop :=
  ∀ n, P998550058727152763.a n = A023523 (n + 1)

theorem P998550058727152763.correct : P998550058727152763.Spec := by
  intro n
  simp only [A023523, Nat.add_sub_cancel, A023523.P998550058727152763.a, A023523.P8224990368586558717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A023515, A023515.P16950231091882071862.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023523

/-! ## A023523.P13096718130856915268

`abs(Δ[A022837(n)])*A008578(n+1)+1`
-/

namespace A023523.P13096718130856915268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A008578 (n + 1) + 1

end

end A023523.P13096718130856915268

namespace A023523

/-- `abs(Δ[A022837(n)])*A008578(n+1)+1` -/
def P13096718130856915268.Spec : Prop :=
  ∀ n, P13096718130856915268.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P11077860194072358129

`sqrt(A001248(n+1))*A008578(n+1)+1`
-/

namespace A023523.P11077860194072358129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A008578 (n + 1) : ℝ) + 1

end

end A023523.P11077860194072358129

namespace A023523

/-- `sqrt(A001248(n+1))*A008578(n+1)+1` -/
def P11077860194072358129.Spec : Prop :=
  ∀ n, P11077860194072358129.a n = (A023523 (n + 1) : ℝ)

end A023523

/-! ## A023523.P17686705956557375452

`sqrt(A280076(n+1))*A000040(n+1)+1`
-/

namespace A023523.P17686705956557375452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ) + 1

end

end A023523.P17686705956557375452

namespace A023523

/-- `sqrt(A280076(n+1))*A000040(n+1)+1` -/
def P17686705956557375452.Spec : Prop :=
  ∀ n, P17686705956557375452.a n = (A023523 (n + 1) : ℝ)

end A023523

/-! ## A023523.P2958160457845904437

`∑[A054541(n+1)]*A008578(n+1)+1`
-/

namespace A023523.P2958160457845904437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008578 (n + 1) + 1

end

end A023523.P2958160457845904437

namespace A023523

/-- `∑[A054541(n+1)]*A008578(n+1)+1` -/
def P2958160457845904437.Spec : Prop :=
  ∀ n, P2958160457845904437.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P6261725695343157482

`(A052147(n+1)-2)*A008578(n+1)+1`
-/

namespace A023523.P6261725695343157482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A008578 (n + 1) + 1

end

end A023523.P6261725695343157482

namespace A023523

/-- `(A052147(n+1)-2)*A008578(n+1)+1` -/
def P6261725695343157482.Spec : Prop :=
  ∀ n, P6261725695343157482.a n = A023523 (n + 1)

theorem P6261725695343157482.correct : P6261725695343157482.Spec := by
  intro n
  simp only [A023523, Nat.add_sub_cancel, A023523.P6261725695343157482.a, A023523.P8224990368586558717.a, A008578, A008578.P3639467937083264764.a, A023515, A023515.P16950231091882071862.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023523

/-! ## A023523.P10931478783137721099

`A028815(n)+A006093(n+1)*A008578(n+1)`
-/

namespace A023523.P10931478783137721099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A006093 (n + 1) * A008578 (n + 1)

end

end A023523.P10931478783137721099

namespace A023523

/-- `A028815(n)+A006093(n+1)*A008578(n+1)` -/
def P10931478783137721099.Spec : Prop :=
  ∀ n, P10931478783137721099.a n = A023523 (n + 1)

theorem P10931478783137721099.correct : P10931478783137721099.Spec := by
  intro n
  simp only [A023523, Nat.add_sub_cancel, A023523.P10931478783137721099.a, A023523.P8224990368586558717.a, A006093, A006093.P2906174024863549003.a, A008578, A008578.P3639467937083264764.a, A023515, A023515.P16950231091882071862.a, A028815, A028815.P810525423351225743.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023523

/-! ## A023523.P1287713622219861316

`1+A008578(n+1)*A008578(n+2)`
-/

namespace A023523.P1287713622219861316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008578 (n + 1) * A008578 (n + 2)

end

end A023523.P1287713622219861316

namespace A023523

/-- `1+A008578(n+1)*A008578(n+2)` -/
def P1287713622219861316.Spec : Prop :=
  ∀ n, P1287713622219861316.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P13683145578744723046

`A000040(n+1)*A158611(n+2)+1`
-/

namespace A023523.P13683145578744723046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (n + 2) + 1

end

end A023523.P13683145578744723046

namespace A023523

/-- `A000040(n+1)*A158611(n+2)+1` -/
def P13683145578744723046.Spec : Prop :=
  ∀ n, P13683145578744723046.a n = A023523 (n + 1)

theorem P13683145578744723046.correct : P13683145578744723046.Spec := by
  intro n
  simp only [A023523, Nat.add_sub_cancel, A023523.P13683145578744723046.a, A023523.P8224990368586558717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023515, A023515.P16950231091882071862.a, A158611, A158611.P9275629407611603775.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023523

/-! ## A023523.P15585524483244645566

`A000040(n+1)*record[A028691(n+1)]+1`
-/

namespace A023523.P15585524483244645566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A023523.P15585524483244645566

namespace A023523

/-- `A000040(n+1)*record[A028691(n+1)]+1` -/
def P15585524483244645566.Spec : Prop :=
  ∀ n, P15585524483244645566.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P18262191289278643458

`A000040(n+1)*record[A025473(n+1)]+1`
-/

namespace A023523.P18262191289278643458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A023523.P18262191289278643458

namespace A023523

/-- `A000040(n+1)*record[A025473(n+1)]+1` -/
def P18262191289278643458.Spec : Prop :=
  ∀ n, P18262191289278643458.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P14650052679497850478

`A000040(n+1)*record[A006530(n+1)]+1`
-/

namespace A023523.P14650052679497850478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A023523.P14650052679497850478

namespace A023523

/-- `A000040(n+1)*record[A006530(n+1)]+1` -/
def P14650052679497850478.Spec : Prop :=
  ∀ n, P14650052679497850478.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P8696662484249573329

`A000040(n+1)*record[A020639(n+1)]+1`
-/

namespace A023523.P8696662484249573329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A023523.P8696662484249573329

namespace A023523

/-- `A000040(n+1)*record[A020639(n+1)]+1` -/
def P8696662484249573329.Spec : Prop :=
  ∀ n, P8696662484249573329.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P9596242627930849548

`(A006093(n+1)+1)*record[A020639(n+1)]+1`
-/

namespace A023523.P9596242627930849548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A023523.P9596242627930849548

namespace A023523

/-- `(A006093(n+1)+1)*record[A020639(n+1)]+1` -/
def P9596242627930849548.Spec : Prop :=
  ∀ n, P9596242627930849548.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P1325174019864706116

`A000040(n+1)*A026239(A018252(n+1))+1`
-/

namespace A023523.P1325174019864706116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A026239 (A018252 (n + 1)).toNat + 1

end

end A023523.P1325174019864706116

namespace A023523

/-- `A000040(n+1)*A026239(A018252(n+1))+1` -/
def P1325174019864706116.Spec : Prop :=
  ∀ n, P1325174019864706116.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P15365901025097901070

`A057602(Δ[n²])+1`
-/

namespace A023523.P15365901025097901070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A023523.P15365901025097901070

namespace A023523

/-- `A057602(Δ[n²])+1` -/
def P15365901025097901070.Spec : Prop :=
  ∀ n, P15365901025097901070.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P8495903801135631223

`∑{d}[A000040(n+1), #*A268674(#)]`
-/

namespace A023523.P8495903801135631223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A268674 d

end

end A023523.P8495903801135631223

namespace A023523

/-- `∑{d}[A000040(n+1), #*A268674(#)]` -/
def P8495903801135631223.Spec : Prop :=
  ∀ n, P8495903801135631223.a n = A023523 (n + 1)

end A023523

/-! ## A023523.P302728477833282565

`A000040(n+1)*record[A166333(n)]+1`
-/

namespace A023523.P302728477833282565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A023523.P302728477833282565

namespace A023523

/-- `A000040(n+1)*record[A166333(n)]+1` -/
def P302728477833282565.Spec : Prop :=
  ∀ n, P302728477833282565.a n = A023523 (n + 1)

end A023523

/-!
# A023524: Number of distinct prime divisors of prime(n)*prime(n-1) + 1.

The programs for A023524, the canonical program `A023524.P17182310907286821232` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023524 has offset 1).

The definition of A023524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023524.P17182310907286821232

`∑{e}[A023523(n+1), gcd(11, #)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023524

/-- `∑{e}[A023523(n+1), gcd(11, #)]` -/
def P17182310907286821232.Spec : Prop :=
  ∀ n, (P17182310907286821232.a n : ℤ) = A023524 (n + 1)

theorem P17182310907286821232.correct : P17182310907286821232.Spec := by
  intro n
  simp only [A023524, Nat.add_sub_cancel]

end A023524

/-! ## A023524.P16377201119901903003

`∑{e}[∏{p}[A023515(n+1)+2, #], #]`
-/

namespace A023524.P16377201119901903003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A023524.P16377201119901903003

namespace A023524

/-- `∑{e}[∏{p}[A023515(n+1)+2, #], #]` -/
def P16377201119901903003.Spec : Prop :=
  ∀ n, (P16377201119901903003.a n : ℤ) = A023524 (n + 1)

end A023524

/-! ## A023524.P2721768141452864189

`∑{e}[A023523(n+1), A000164(#)]`
-/

namespace A023524.P2721768141452864189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000164 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P2721768141452864189

namespace A023524

/-- `∑{e}[A023523(n+1), A000164(#)]` -/
def P2721768141452864189.Spec : Prop :=
  ∀ n, P2721768141452864189.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P13997041075277819049

`∑{e}[A023523(n+1), A007732(#)]`
-/

namespace A023524.P13997041075277819049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007732 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P13997041075277819049

namespace A023524

/-- `∑{e}[A023523(n+1), A007732(#)]` -/
def P13997041075277819049.Spec : Prop :=
  ∀ n, P13997041075277819049.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P82856221163825191

`∑{e}[A023523(n+1), A010143(#)]`
-/

namespace A023524.P82856221163825191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010143 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P82856221163825191

namespace A023524

/-- `∑{e}[A023523(n+1), A010143(#)]` -/
def P82856221163825191.Spec : Prop :=
  ∀ n, P82856221163825191.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P16489855328098302912

`∑{e}[A023523(n+1), A011597(#)]`
-/

namespace A023524.P16489855328098302912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011597 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P16489855328098302912

namespace A023524

/-- `∑{e}[A023523(n+1), A011597(#)]` -/
def P16489855328098302912.Spec : Prop :=
  ∀ n, P16489855328098302912.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P9377771170320521072

`∑{e}[A023523(n+1), A014638(#)]`
-/

namespace A023524.P9377771170320521072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014638 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P9377771170320521072

namespace A023524

/-- `∑{e}[A023523(n+1), A014638(#)]` -/
def P9377771170320521072.Spec : Prop :=
  ∀ n, P9377771170320521072.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P18128129656389020460

`∑{e}[A023523(n+1), A014722(#)]`
-/

namespace A023524.P18128129656389020460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014722 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P18128129656389020460

namespace A023524

/-- `∑{e}[A023523(n+1), A014722(#)]` -/
def P18128129656389020460.Spec : Prop :=
  ∀ n, P18128129656389020460.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P3841493381330915785

`∑{e}[A023523(n+1), A014932(#)]`
-/

namespace A023524.P3841493381330915785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014932 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P3841493381330915785

namespace A023524

/-- `∑{e}[A023523(n+1), A014932(#)]` -/
def P3841493381330915785.Spec : Prop :=
  ∀ n, P3841493381330915785.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P7069618145424570308

`∑{e}[A023523(n+1), A015036(#)]`
-/

namespace A023524.P7069618145424570308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A015036 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P7069618145424570308

namespace A023524

/-- `∑{e}[A023523(n+1), A015036(#)]` -/
def P7069618145424570308.Spec : Prop :=
  ∀ n, P7069618145424570308.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P18069492712545826065

`∑{e}[A023523(n+1), A015137(#)]`
-/

namespace A023524.P18069492712545826065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A015137 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P18069492712545826065

namespace A023524

/-- `∑{e}[A023523(n+1), A015137(#)]` -/
def P18069492712545826065.Spec : Prop :=
  ∀ n, P18069492712545826065.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P4384018786704219684

`∑{e}[A023523(n+1), A016056(#)]`
-/

namespace A023524.P4384018786704219684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A016056 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P4384018786704219684

namespace A023524

/-- `∑{e}[A023523(n+1), A016056(#)]` -/
def P4384018786704219684.Spec : Prop :=
  ∀ n, P4384018786704219684.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P5425634404565185666

`∑{e}[A023523(n+1), A023126(#)]`
-/

namespace A023524.P5425634404565185666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A023126 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P5425634404565185666

namespace A023524

/-- `∑{e}[A023523(n+1), A023126(#)]` -/
def P5425634404565185666.Spec : Prop :=
  ∀ n, P5425634404565185666.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P3756945510510676026

`∑{e}[A023523(n+1), A032548(#)]`
-/

namespace A023524.P3756945510510676026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032548 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P3756945510510676026

namespace A023524

/-- `∑{e}[A023523(n+1), A032548(#)]` -/
def P3756945510510676026.Spec : Prop :=
  ∀ n, P3756945510510676026.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P5841433896658488855

`∑{e}[A023523(n+1), A043284(#)]`
-/

namespace A023524.P5841433896658488855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A043284 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P5841433896658488855

namespace A023524

/-- `∑{e}[A023523(n+1), A043284(#)]` -/
def P5841433896658488855.Spec : Prop :=
  ∀ n, P5841433896658488855.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P17310771167798215132

`∑{e}[A023523(n+1), A046213(#)]`
-/

namespace A023524.P17310771167798215132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046213 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P17310771167798215132

namespace A023524

/-- `∑{e}[A023523(n+1), A046213(#)]` -/
def P17310771167798215132.Spec : Prop :=
  ∀ n, P17310771167798215132.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P8692476846534641924

`∑{e}[A023523(n+1), A053164(#)]`
-/

namespace A023524.P8692476846534641924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053164 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P8692476846534641924

namespace A023524

/-- `∑{e}[A023523(n+1), A053164(#)]` -/
def P8692476846534641924.Spec : Prop :=
  ∀ n, P8692476846534641924.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P4811869631004438929

`∑{e}[A023523(n+1), A000034(2^#)]`
-/

namespace A023524.P4811869631004438929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 (2 ^ Nat.factorization (f1 n).natAbs p)

end

end A023524.P4811869631004438929

namespace A023524

/-- `∑{e}[A023523(n+1), A000034(2^#)]` -/
def P4811869631004438929.Spec : Prop :=
  ∀ n, P4811869631004438929.a n = A023524 (n + 1)

end A023524

/-! ## A023524.P4542267835532239321

`∑{e}[A023523(n+1), A001227(A000010(#))]`
-/

namespace A023524.P4542267835532239321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001227 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023524.P4542267835532239321

namespace A023524

/-- `∑{e}[A023523(n+1), A001227(A000010(#))]` -/
def P4542267835532239321.Spec : Prop :=
  ∀ n, P4542267835532239321.a n = A023524 (n + 1)

end A023524

/-!
# A023525: Greatest prime divisor of prime(n)*prime(n-1) + 1.

The programs for A023525, the canonical program `A023525.P12971342342399725470` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023525 has offset 1).

The definition of A023525 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A023523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023525.P12971342342399725470

`A006530(A023523(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023525

/-- `A006530(A023523(n+1))` -/
def P12971342342399725470.Spec : Prop :=
  ∀ n, P12971342342399725470.a n = A023525 (n + 1)

theorem P12971342342399725470.correct : P12971342342399725470.Spec := by
  intro n
  simp only [A023525, Nat.add_sub_cancel]

end A023525

/-! ## A023525.P16870692953949236310

`A006530((A023515(n+1)+2)/A043529(n))`
-/

namespace A023525.P16870692953949236310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023515 (n + 1) + 2 : ℚ) / (A043529 n : ℚ))).toNat

end

end A023525.P16870692953949236310

namespace A023525

/-- `A006530((A023515(n+1)+2)/A043529(n))` -/
def P16870692953949236310.Spec : Prop :=
  ∀ n, P16870692953949236310.a n = A023525 (n + 1)

end A023525

/-! ## A023525.P9791121436152385893

`A006530((A023515(n+1)+2)/A329683(n))`
-/

namespace A023525.P9791121436152385893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023515 (n + 1) + 2 : ℚ) / (A329683 n : ℚ))).toNat

end

end A023525.P9791121436152385893

namespace A023525

/-- `A006530((A023515(n+1)+2)/A329683(n))` -/
def P9791121436152385893.Spec : Prop :=
  ∀ n, P9791121436152385893.a n = A023525 (n + 1)

end A023525

/-! ## A023525.P7265559052671166965

`A006530(record[A119416(n+1)+1]/A043529(n))`
-/

namespace A023525.P7265559052671166965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A043529 n : ℚ))).toNat

end

end A023525.P7265559052671166965

namespace A023525

/-- `A006530(record[A119416(n+1)+1]/A043529(n))` -/
def P7265559052671166965.Spec : Prop :=
  ∀ n, P7265559052671166965.a n = A023525 (n + 1)

end A023525

/-! ## A023525.P6089280643823084296

`A006530(record[A119416(n+1)+1]/A329683(n))`
-/

namespace A023525.P6089280643823084296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A329683 n : ℚ))).toNat

end

end A023525.P6089280643823084296

namespace A023525

/-- `A006530(record[A119416(n+1)+1]/A329683(n))` -/
def P6089280643823084296.Spec : Prop :=
  ∀ n, P6089280643823084296.a n = A023525 (n + 1)

end A023525

/-! ## A023525.P17109265666985040952

`A006530((A000040(n+1)*A008578(n+1)+1)/A043529(n))`
-/

namespace A023525.P17109265666985040952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000040 (n + 1) * A008578 (n + 1) + 1 : ℚ) / (A043529 n : ℚ))).toNat

end

end A023525.P17109265666985040952

namespace A023525

/-- `A006530((A000040(n+1)*A008578(n+1)+1)/A043529(n))` -/
def P17109265666985040952.Spec : Prop :=
  ∀ n, P17109265666985040952.a n = A023525 (n + 1)

end A023525

/-! ## A023525.P11823429969795049148

`A006530(A023515(n+1)+2)`
-/

namespace A023525.P11823429969795049148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023515 (n + 1) + 2).toNat

end

end A023525.P11823429969795049148

namespace A023525

/-- `A006530(A023515(n+1)+2)` -/
def P11823429969795049148.Spec : Prop :=
  ∀ n, P11823429969795049148.a n = A023525 (n + 1)

end A023525

/-!
# A023526: Greatest exponent in prime-power factorization of prime(n)*prime(n-1) + 1; a(1) = 1.

The programs for A023526, there is no canonical definition to state claims against.
-/

/-! ## A023526.P14062918007433988301

`A051903(A023523(n+1))`
-/

namespace A023526.P14062918007433988301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A023523 (n + 1)).toNat

end

end A023526.P14062918007433988301

/-! ## A023526.P11099304647613651892

`A051903(record[A063041(n+2)])`
-/

namespace A023526.P11099304647613651892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023526.P11099304647613651892

/-! ## A023526.P2310023964022666389

`A051903(A023515(n+1)+2)`
-/

namespace A023526.P2310023964022666389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A023515 (n + 1) + 2).toNat

end

end A023526.P2310023964022666389

/-! ## A023526.P1222841790973652218

`A051903(record[A119416(n+1)+1])`
-/

namespace A023526.P1222841790973652218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023526.P1222841790973652218

/-! ## A023526.P14222169756579551251

`A051903(A063041(p?[A004442(n)]))`
-/

namespace A023526.P14222169756579551251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A063041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A023526.P14222169756579551251

/-! ## A023526.P15179368362549773239

`A051903(A063041(p?[A064429(n)]))`
-/

namespace A023526.P15179368362549773239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A063041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A023526.P15179368362549773239

/-!
# A023527: Least odd prime divisor of p(n)*p(n-1) + 1, or 1 if p(n)*p(n-1) + 1 is a power of 2.

The programs for A023527, there is no canonical definition to state claims against.
-/

/-! ## A023527.P12219371677840262047

`A020639(A023523(n+1)/A000079(A023528(n+1)))`
-/

namespace A023527.P12219371677840262047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A023523 (n + 1) : ℚ) / (A000079 (A023528 (n + 1)).toNat : ℚ))).toNat

end

end A023527.P12219371677840262047

/-! ## A023527.P6471117809028510052

`A020639(A000265(A023523(n+1)))`
-/

namespace A023527.P6471117809028510052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A023523 (n + 1)).toNat).toNat

end

end A023527.P6471117809028510052

/-! ## A023527.P3756162550524679945

`A020639(A000265(record[A063041(n+2)]))`
-/

namespace A023527.P3756162550524679945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A023527.P3756162550524679945

/-! ## A023527.P10861602931976297638

`A020639(A000265(A023515(n+1)+2))`
-/

namespace A023527.P10861602931976297638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A023515 (n + 1) + 2).toNat).toNat

end

end A023527.P10861602931976297638

/-! ## A023527.P9658188964551671127

`A020639(A000265(A000040(n+1)*A008578(n+1)+1))`
-/

namespace A023527.P9658188964551671127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A000040 (n + 1) * A008578 (n + 1) + 1).toNat).toNat

end

end A023527.P9658188964551671127

/-! ## A023527.P13907236303277066441

`A020639(A000265(A008578(n+2)*A008578(n+1)+1))`
-/

namespace A023527.P13907236303277066441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A008578 (n + 2) * A008578 (n + 1) + 1).toNat).toNat

end

end A023527.P13907236303277066441

/-!
# A023528: Exponent of 2 in prime factorization of prime(n)*prime(n-1) + 1.

The programs for A023528, the canonical program `A023528.P14073637690515097702` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023528 has offset 1).

The definition of A023528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023528.P14073637690515097702

`A007814(A023523(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023528

/-- `A007814(A023523(n+1))` -/
def P14073637690515097702.Spec : Prop :=
  ∀ n, P14073637690515097702.a n = A023528 (n + 1)

theorem P14073637690515097702.correct : P14073637690515097702.Spec := by
  intro n
  simp only [A023528, Nat.add_sub_cancel]

end A023528

/-! ## A023528.P9118759273710600493

`val(A023515(n+1)+2, 2)`
-/

namespace A023528.P9118759273710600493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023515 (n + 1) + 2).toNat 2

end

end A023528.P9118759273710600493

namespace A023528

/-- `val(A023515(n+1)+2, 2)` -/
def P9118759273710600493.Spec : Prop :=
  ∀ n, (P9118759273710600493.a n : ℤ) = A023528 (n + 1)

end A023528

/-! ## A023528.P5777273966796268419

`val(A000040(n+1)*A008578(n+1)+1, 2)`
-/

namespace A023528.P5777273966796268419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) * A008578 (n + 1) + 1).toNat 2

end

end A023528.P5777273966796268419

namespace A023528

/-- `val(A000040(n+1)*A008578(n+1)+1, 2)` -/
def P5777273966796268419.Spec : Prop :=
  ∀ n, (P5777273966796268419.a n : ℤ) = A023528 (n + 1)

end A023528

/-! ## A023528.P7524990819240268754

`val(A000040(n+1)*A158611(n+2)+1, 2)`
-/

namespace A023528.P7524990819240268754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) * A158611 (n + 2) + 1).toNat 2

end

end A023528.P7524990819240268754

namespace A023528

/-- `val(A000040(n+1)*A158611(n+2)+1, 2)` -/
def P7524990819240268754.Spec : Prop :=
  ∀ n, (P7524990819240268754.a n : ℤ) = A023528 (n + 1)

end A023528

/-! ## A023528.P16633450137646298186

`val(record[A063041(n+2)], 2)`
-/

namespace A023528.P16633450137646298186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A023528.P16633450137646298186

namespace A023528

/-- `val(record[A063041(n+2)], 2)` -/
def P16633450137646298186.Spec : Prop :=
  ∀ n, (P16633450137646298186.a n : ℤ) = A023528 (n + 1)

end A023528

/-! ## A023528.P16778200374545270454

`val(A063041(A000040(n+1)), 2)`
-/

namespace A023528.P16778200374545270454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063041 (A000040 (n + 1)).toNat).toNat 2

end

end A023528.P16778200374545270454

namespace A023528

/-- `val(A063041(A000040(n+1)), 2)` -/
def P16778200374545270454.Spec : Prop :=
  ∀ n, (P16778200374545270454.a n : ℤ) = A023528 (n + 1)

end A023528

/-! ## A023528.P2018559917828581495

`val(A063041(A040976(n+1)+2), 2)`
-/

namespace A023528.P2018559917828581495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063041 (A040976 (n + 1) + 2).toNat).toNat 2

end

end A023528.P2018559917828581495

namespace A023528

/-- `val(A063041(A040976(n+1)+2), 2)` -/
def P2018559917828581495.Spec : Prop :=
  ∀ n, (P2018559917828581495.a n : ℤ) = A023528 (n + 1)

end A023528

/-!
# A023529: Sum of distinct prime divisors of p(n)*p(n-1) + 1.

The programs for A023529, the canonical program `A023529.P12403804853711803308` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023529 has offset 1).

The definition of A023529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023529.P12403804853711803308

`∑{p}[A023523(n+1), #]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023529

/-- `∑{p}[A023523(n+1), #]` -/
def P12403804853711803308.Spec : Prop :=
  ∀ n, (P12403804853711803308.a n : ℤ) = A023529 (n + 1)

theorem P12403804853711803308.correct : P12403804853711803308.Spec := by
  intro n
  simp only [A023529, Nat.add_sub_cancel]

end A023529

/-! ## A023529.P882319489521969669

`∑{p}[record[A063041(n+2)], #]`
-/

namespace A023529.P882319489521969669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P882319489521969669

namespace A023529

/-- `∑{p}[record[A063041(n+2)], #]` -/
def P882319489521969669.Spec : Prop :=
  ∀ n, (P882319489521969669.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P9392757762204652131

`∑{p}[A023515(n+1)+2, #]`
-/

namespace A023529.P9392757762204652131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P9392757762204652131

namespace A023529

/-- `∑{p}[A023515(n+1)+2, #]` -/
def P9392757762204652131.Spec : Prop :=
  ∀ n, (P9392757762204652131.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P15827661699221229209

`∑{p}[A057602(2*n+1)+1, #]`
-/

namespace A023529.P15827661699221229209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P15827661699221229209

namespace A023529

/-- `∑{p}[A057602(2*n+1)+1, #]` -/
def P15827661699221229209.Spec : Prop :=
  ∀ n, (P15827661699221229209.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P11677901605714551743

`∑{p}[A063041(p?[round(8*n/7)]), #]`
-/

namespace A023529.P11677901605714551743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P11677901605714551743

namespace A023529

/-- `∑{p}[A063041(p?[round(8*n/7)]), #]` -/
def P11677901605714551743.Spec : Prop :=
  ∀ n, (P11677901605714551743.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P5737842943928231593

`∑{p}[A063041(A000040(n+1)), #]`
-/

namespace A023529.P5737842943928231593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P5737842943928231593

namespace A023529

/-- `∑{p}[A063041(A000040(n+1)), #]` -/
def P5737842943928231593.Spec : Prop :=
  ∀ n, (P5737842943928231593.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P9534576388784030666

`∑{p}[A000040(n+1)*A158611(n+2)+1, #]`
-/

namespace A023529.P9534576388784030666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P9534576388784030666

namespace A023529

/-- `∑{p}[A000040(n+1)*A158611(n+2)+1, #]` -/
def P9534576388784030666.Spec : Prop :=
  ∀ n, (P9534576388784030666.a n : ℤ) = A023529 (n + 1)

theorem P9534576388784030666.correct : P9534576388784030666.Spec := by
  intro n
  simp only [A023529, Nat.add_sub_cancel, A023529.P9534576388784030666.f1, A023529.P9534576388784030666.a, A023529.P12403804853711803308.f1, A023529.P12403804853711803308.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023523, A023523.P8224990368586558717.a, A158611, A158611.P9275629407611603775.a, A023515, A023515.P16950231091882071862.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023529

/-! ## A023529.P13190056150717674201

`∑{p}[A000040(n+1)*record[A006530(n+1)]+1, #]`
-/

namespace A023529.P13190056150717674201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P13190056150717674201

namespace A023529

/-- `∑{p}[A000040(n+1)*record[A006530(n+1)]+1, #]` -/
def P13190056150717674201.Spec : Prop :=
  ∀ n, (P13190056150717674201.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P18146108798231328756

`∑{p}[A000040(n+1)*record[A014963(n+1)]+1, #]`
-/

namespace A023529.P18146108798231328756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P18146108798231328756

namespace A023529

/-- `∑{p}[A000040(n+1)*record[A014963(n+1)]+1, #]` -/
def P18146108798231328756.Spec : Prop :=
  ∀ n, (P18146108798231328756.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P14303761952226058232

`∑{p}[A000040(n+1)*record[A020639(n+1)]+1, #]`
-/

namespace A023529.P14303761952226058232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P14303761952226058232

namespace A023529

/-- `∑{p}[A000040(n+1)*record[A020639(n+1)]+1, #]` -/
def P14303761952226058232.Spec : Prop :=
  ∀ n, (P14303761952226058232.a n : ℤ) = A023529 (n + 1)

end A023529

/-! ## A023529.P16388280229011158479

`∑{p}[record[A014963(n+2)]*A008578(n+1)+1, #]`
-/

namespace A023529.P16388280229011158479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A008578 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P16388280229011158479

namespace A023529

/-- `∑{p}[record[A014963(n+2)]*A008578(n+1)+1, #]` -/
def P16388280229011158479.Spec : Prop :=
  ∀ n, (P16388280229011158479.a n : ℤ) = A023529 (n + 1)

end A023529

/-!
# A023530: Sum of exponents in prime-power factorization of prime(n)*prime(n-1) + 1; a(1) = 1.

The programs for A023530, the canonical program `A023530.P5575461043592975846` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023530 has offset 1).

The definition of A023530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023530.P11268128075715751477

`∑{e}[A023523(n+1), #]`
-/

namespace A023530.P11268128075715751477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P11268128075715751477

namespace A023530

/-- `∑{e}[A023523(n+1), #]` -/
def P11268128075715751477.Spec : Prop :=
  ∀ n, (P11268128075715751477.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P15535405825541586486

`∑{e}[record[A063041(n+2)], #]`
-/

namespace A023530.P15535405825541586486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P15535405825541586486

namespace A023530

/-- `∑{e}[record[A063041(n+2)], #]` -/
def P15535405825541586486.Spec : Prop :=
  ∀ n, (P15535405825541586486.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P14962018943769362690

`∑{e}[A023515(n+1)+2, #]`
-/

namespace A023530.P14962018943769362690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P14962018943769362690

namespace A023530

/-- `∑{e}[A023515(n+1)+2, #]` -/
def P14962018943769362690.Spec : Prop :=
  ∀ n, (P14962018943769362690.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P16660752968832169852

`∑{e}[A057602(2*n+1)+1, #]`
-/

namespace A023530.P16660752968832169852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P16660752968832169852

namespace A023530

/-- `∑{e}[A057602(2*n+1)+1, #]` -/
def P16660752968832169852.Spec : Prop :=
  ∀ n, (P16660752968832169852.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P12668197836307864467

`∑{e}[A063041(Δ[A007504(n)]), #]`
-/

namespace A023530.P12668197836307864467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P12668197836307864467

namespace A023530

/-- `∑{e}[A063041(Δ[A007504(n)]), #]` -/
def P12668197836307864467.Spec : Prop :=
  ∀ n, (P12668197836307864467.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P1189521366601020336

`∑{e}[A063041(p?[A091203(n)]), #]`
-/

namespace A023530.P1189521366601020336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P1189521366601020336

namespace A023530

/-- `∑{e}[A063041(p?[A091203(n)]), #]` -/
def P1189521366601020336.Spec : Prop :=
  ∀ n, (P1189521366601020336.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P11202034377627849664

`∑{e}[A063041(p?[A344180(n)]), #]`
-/

namespace A023530.P11202034377627849664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P11202034377627849664

namespace A023530

/-- `∑{e}[A063041(p?[A344180(n)]), #]` -/
def P11202034377627849664.Spec : Prop :=
  ∀ n, (P11202034377627849664.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P2788024056445652083

`∑{e}[A063041(A000040(n+1)), #]`
-/

namespace A023530.P2788024056445652083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P2788024056445652083

namespace A023530

/-- `∑{e}[A063041(A000040(n+1)), #]` -/
def P2788024056445652083.Spec : Prop :=
  ∀ n, (P2788024056445652083.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P11052562072737308072

`∑{e}[A000040(n+1)*A158611(n+2)+1, #]`
-/

namespace A023530.P11052562072737308072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P11052562072737308072

namespace A023530

/-- `∑{e}[A000040(n+1)*A158611(n+2)+1, #]` -/
def P11052562072737308072.Spec : Prop :=
  ∀ n, (P11052562072737308072.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P7433515871147477722

`∑{e}[A000040(n+1)*record[A006530(n+1)]+1, #]`
-/

namespace A023530.P7433515871147477722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P7433515871147477722

namespace A023530

/-- `∑{e}[A000040(n+1)*record[A006530(n+1)]+1, #]` -/
def P7433515871147477722.Spec : Prop :=
  ∀ n, (P7433515871147477722.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P13848546389240884515

`∑{e}[A000040(n+1)*record[A014963(n+1)]+1, #]`
-/

namespace A023530.P13848546389240884515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P13848546389240884515

namespace A023530

/-- `∑{e}[A000040(n+1)*record[A014963(n+1)]+1, #]` -/
def P13848546389240884515.Spec : Prop :=
  ∀ n, (P13848546389240884515.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P8372764417724749455

`∑{e}[A000040(n+1)*record[A020639(n+1)]+1, #]`
-/

namespace A023530.P8372764417724749455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023530.P8372764417724749455

namespace A023530

/-- `∑{e}[A000040(n+1)*record[A020639(n+1)]+1, #]` -/
def P8372764417724749455.Spec : Prop :=
  ∀ n, (P8372764417724749455.a n : ℤ) = A023530 (n + 1)

end A023530

/-! ## A023530.P5575461043592975846

`∑{e}[A000040(A028310(n))*A000040(n+1)+1, #]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023530

/-- `∑{e}[A000040(A028310(n))*A000040(n+1)+1, #]` -/
def P5575461043592975846.Spec : Prop :=
  ∀ n, (P5575461043592975846.a n : ℤ) = A023530 (n + 1)

theorem P5575461043592975846.correct : P5575461043592975846.Spec := by
  intro n
  simp only [A023530, Nat.add_sub_cancel]

end A023530

/-!
# A023531: a(n) = 1 if n is of the form m(m+3)/2, otherwise 0.

The programs for A023531, the canonical program `A023531.P13036811505051547859` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023531 has offset 0).

The definition of A023531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023531.P15157442339626922288

`round(sqrt(2*n+3))-round(sqrt(2*n+2))`
-/

namespace A023531.P15157442339626922288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 3 : ℝ)) - SequenceMachineLib.roundAway (Real.sqrt (2 * n + 2 : ℝ))

end

end A023531.P15157442339626922288

namespace A023531

/-- `round(sqrt(2*n+3))-round(sqrt(2*n+2))` -/
def P15157442339626922288.Spec : Prop :=
  ∀ n, P15157442339626922288.a n = A023531 n

end A023531

/-! ## A023531.P13036811505051547859

`A010054(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023531

/-- `A010054(n+1)` -/
def P13036811505051547859.Spec : Prop :=
  ∀ n, P13036811505051547859.a n = A023531 n

theorem P13036811505051547859.correct : P13036811505051547859.Spec := by
  intro n
  simp only [A023531]

end A023531

/-! ## A023531.P483707207123474839

`A010052(8*n+9)`
-/

namespace A023531.P483707207123474839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (8 * n + 9)

end

end A023531.P483707207123474839

namespace A023531

/-- `A010052(8*n+9)` -/
def P483707207123474839.Spec : Prop :=
  ∀ n, P483707207123474839.a n = A023531 n

end A023531

/-! ## A023531.P3373591666877263547

`T(n-1,k-1)` with `a(0)=1`
-/

namespace A023531.P3373591666877263547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n

end

end A023531.P3373591666877263547

namespace A023531

/-- `T(n-1,k-1)` -/
def P3373591666877263547.Spec : Prop :=
  ∀ n, (P3373591666877263547.a n : ℤ) = A023531 n

end A023531

/-! ## A023531.P7814306195813664120

`C(col(n), row(n))`
-/

namespace A023531.P7814306195813664120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)

end

end A023531.P7814306195813664120

namespace A023531

/-- `C(col(n), row(n))` -/
def P7814306195813664120.Spec : Prop :=
  ∀ n, (P7814306195813664120.a n : ℤ) = A023531 n

end A023531

/-! ## A023531.P6004593106241776253

`and(1, char[∑[n-1]])`
-/

namespace A023531.P6004593106241776253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A023531.P6004593106241776253

namespace A023531

/-- `and(1, char[∑[n-1]])` -/
def P6004593106241776253.Spec : Prop :=
  ∀ n, (P6004593106241776253.a n : ℤ) = A023531 n

end A023531

/-! ## A023531.P6549798328841687372

`Δ[round(sqrt(or(1, 2*n)))]`
-/

namespace A023531.P6549798328841687372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (2 * n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023531.P6549798328841687372

namespace A023531

/-- `Δ[round(sqrt(or(1, 2*n)))]` -/
def P6549798328841687372.Spec : Prop :=
  ∀ n, P6549798328841687372.a n = A023531 n

end A023531

/-! ## A023531.P246624225799272341

`Δ[round(sqrt(xor(1, 2*n)))]`
-/

namespace A023531.P246624225799272341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 (2 * n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023531.P246624225799272341

namespace A023531

/-- `Δ[round(sqrt(xor(1, 2*n)))]` -/
def P246624225799272341.Spec : Prop :=
  ∀ n, P246624225799272341.a n = A023531 n

end A023531

/-! ## A023531.P16642338343501640145

`or(char[2], char[∑[n-1]])`
-/

namespace A023531.P16642338343501640145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A023531.P16642338343501640145

namespace A023531

/-- `or(char[2], char[∑[n-1]])` -/
def P16642338343501640145.Spec : Prop :=
  ∀ n, (P16642338343501640145.a n : ℤ) = A023531 n

end A023531

/-! ## A023531.P7535967185404043790

`and(1, char[∑[n]+n])²`
-/

namespace A023531.P7535967185404043790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0) ^ 2

end

end A023531.P7535967185404043790

namespace A023531

/-- `and(1, char[∑[n]+n])²` -/
def P7535967185404043790.Spec : Prop :=
  ∀ n, (P7535967185404043790.a n : ℤ) = A023531 n

end A023531

/-! ## A023531.P1521257063351266689

`floor(9^(col(n)-row(n)))`
-/

namespace A023531.P1521257063351266689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) : ℤ)⌋

end

end A023531.P1521257063351266689

namespace A023531

/-- `floor(9^(col(n)-row(n)))` -/
def P1521257063351266689.Spec : Prop :=
  ∀ n, P1521257063351266689.a n = A023531 n

end A023531

/-! ## A023531.P2157488863109292326

`dr(Δ[round(sqrt(2*n+1))])`
-/

namespace A023531.P2157488863109292326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A023531.P2157488863109292326

namespace A023531

/-- `dr(Δ[round(sqrt(2*n+1))])` -/
def P2157488863109292326.Spec : Prop :=
  ∀ n, (P2157488863109292326.a n : ℤ) = A023531 n

end A023531

/-! ## A023531.P14560576791856251951

`(2^(row(n)-col(n)))%2`
-/

namespace A023531.P14560576791856251951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))) 2

end

end A023531.P14560576791856251951

namespace A023531

/-- `(2^(row(n)-col(n)))%2` -/
def P14560576791856251951.Spec : Prop :=
  ∀ n, P14560576791856251951.a n = A023531 n

end A023531

/-! ## A023531.P18302658809157400909

`Δ[round(sqrt(2*n+1))]%2`
-/

namespace A023531.P18302658809157400909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A023531.P18302658809157400909

namespace A023531

/-- `Δ[round(sqrt(2*n+1))]%2` -/
def P18302658809157400909.Spec : Prop :=
  ∀ n, P18302658809157400909.a n = A023531 n

end A023531

/-! ## A023531.P1004711825525983828

`ceil(sin(Δ[round(sqrt(2*n+1))]))`
-/

namespace A023531.P1004711825525983828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A023531.P1004711825525983828

namespace A023531

/-- `ceil(sin(Δ[round(sqrt(2*n+1))]))` -/
def P1004711825525983828.Spec : Prop :=
  ∀ n, P1004711825525983828.a n = A023531 n

end A023531

/-! ## A023531.P10311231732935922591

`floor(tan(Δ[round(sqrt(2*n+1))]))`
-/

namespace A023531.P10311231732935922591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A023531.P10311231732935922591

namespace A023531

/-- `floor(tan(Δ[round(sqrt(2*n+1))]))` -/
def P10311231732935922591.Spec : Prop :=
  ∀ n, P10311231732935922591.a n = A023531 n

end A023531

/-!
# A023532: a(n) = 0 if n is of the form m*(m+3)/2, otherwise 1.

The programs for A023532, the canonical program `A023532.P12646681522116481213` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023532 has offset 0).

The definition of A023532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023532.P12646681522116481213

`1-floor((sqrt(9+8*n)-1)/2)+floor((sqrt(1+8*n)-1)/2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023532

/-- `1-floor((sqrt(9+8*n)-1)/2)+floor((sqrt(1+8*n)-1)/2)` -/
def P12646681522116481213.Spec : Prop :=
  ∀ n, P12646681522116481213.a n = A023532 n

theorem P12646681522116481213.correct : P12646681522116481213.Spec := by
  intro n
  simp only [A023532]

end A023532

/-! ## A023532.P4974302960209375443

`xor(1, char[∑[n-1]])`
-/

namespace A023532.P4974302960209375443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A023532.P4974302960209375443

namespace A023532

/-- `xor(1, char[∑[n-1]])` -/
def P4974302960209375443.Spec : Prop :=
  ∀ n, (P4974302960209375443.a n : ℤ) = A023532 n

end A023532

/-! ## A023532.P7488581435829143628

`floor(cos(char[∑[n-1]]))`
-/

namespace A023532.P7488581435829143628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌋

end

end A023532.P7488581435829143628

namespace A023532

/-- `floor(cos(char[∑[n-1]]))` -/
def P7488581435829143628.Spec : Prop :=
  ∀ n, P7488581435829143628.a n = A023532 n

end A023532

/-! ## A023532.P18222576267839270761

`floor(acos(char[∑[n-1]]))`
-/

namespace A023532.P18222576267839270761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌋

end

end A023532.P18222576267839270761

namespace A023532

/-- `floor(acos(char[∑[n-1]]))` -/
def P18222576267839270761.Spec : Prop :=
  ∀ n, P18222576267839270761.a n = A023532 n

end A023532

/-! ## A023532.P5442480502953819312

`floor(acot(char[∑[n-1]]))`
-/

namespace A023532.P5442480502953819312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌋

end

end A023532.P5442480502953819312

namespace A023532

/-- `floor(acot(char[∑[n-1]]))` -/
def P5442480502953819312.Spec : Prop :=
  ∀ n, P5442480502953819312.a n = A023532 n

end A023532

/-! ## A023532.P3785975160803170210

`sin(acos(char[∑[n-1]]))`
-/

namespace A023532.P3785975160803170210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A023532.P3785975160803170210

namespace A023532

/-- `sin(acos(char[∑[n-1]]))` -/
def P3785975160803170210.Spec : Prop :=
  ∀ n, P3785975160803170210.a n = (A023532 n : ℝ)

end A023532

/-! ## A023532.P11151669167187395441

`cos(asin(char[∑[n-1]]))`
-/

namespace A023532.P11151669167187395441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A023532.P11151669167187395441

namespace A023532

/-- `cos(asin(char[∑[n-1]]))` -/
def P11151669167187395441.Spec : Prop :=
  ∀ n, P11151669167187395441.a n = (A023532 n : ℝ)

end A023532

/-! ## A023532.P14761324301171488256

`dr(1-char[∑[n-1]])`
-/

namespace A023532.P14761324301171488256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A023532.P14761324301171488256

namespace A023532

/-- `dr(1-char[∑[n-1]])` -/
def P14761324301171488256.Spec : Prop :=
  ∀ n, (P14761324301171488256.a n : ℤ) = A023532 n

end A023532

/-! ## A023532.P17728972277883198834

`comp[2*comp[∑[n]]]%2`
-/

namespace A023532.P17728972277883198834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A023532.P17728972277883198834

namespace A023532

/-- `comp[2*comp[∑[n]]]%2` -/
def P17728972277883198834.Spec : Prop :=
  ∀ n, (P17728972277883198834.a n : ℤ) = A023532 n

end A023532

/-! ## A023532.P10305180109644715447

`and(1, comp[2*comp[∑[n]]])`
-/

namespace A023532.P10305180109644715447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A023532.P10305180109644715447

namespace A023532

/-- `and(1, comp[2*comp[∑[n]]])` -/
def P10305180109644715447.Spec : Prop :=
  ∀ n, (P10305180109644715447.a n : ℤ) = A023532 n

end A023532

/-! ## A023532.P1818921175832828834

`xor(1, char[∑[n]+n])²`
-/

namespace A023532.P1818921175832828834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) ^ 2

end

end A023532.P1818921175832828834

namespace A023532

/-- `xor(1, char[∑[n]+n])²` -/
def P1818921175832828834.Spec : Prop :=
  ∀ n, (P1818921175832828834.a n : ℤ) = A023532 n

end A023532

/-! ## A023532.P54424850578688910

`round(cos(char[∑[n-1]])²)`
-/

namespace A023532.P54424850578688910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) ^ 2)

end

end A023532.P54424850578688910

namespace A023532

/-- `round(cos(char[∑[n-1]])²)` -/
def P54424850578688910.Spec : Prop :=
  ∀ n, P54424850578688910.a n = A023532 n

end A023532

/-! ## A023532.P12098490707687671015

`round(sqrt(acos(char[∑[n-1]])))`
-/

namespace A023532.P12098490707687671015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arccos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)))

end

end A023532.P12098490707687671015

namespace A023532

/-- `round(sqrt(acos(char[∑[n-1]])))` -/
def P12098490707687671015.Spec : Prop :=
  ∀ n, P12098490707687671015.a n = A023532 n

end A023532

/-! ## A023532.P2254667917426750028

`ceil(log(acot(char[∑[n-1]])))`
-/

namespace A023532.P2254667917426750028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))⌉

end

end A023532.P2254667917426750028

namespace A023532

/-- `ceil(log(acot(char[∑[n-1]])))` -/
def P2254667917426750028.Spec : Prop :=
  ∀ n, P2254667917426750028.a n = A023532 n

end A023532

/-! ## A023532.P10316560228421487633

`ceil(log2(acot(char[∑[n-1]])))`
-/

namespace A023532.P10316560228421487633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))⌉

end

end A023532.P10316560228421487633

namespace A023532

/-- `ceil(log2(acot(char[∑[n-1]])))` -/
def P10316560228421487633.Spec : Prop :=
  ∀ n, P10316560228421487633.a n = A023532 n

end A023532

/-! ## A023532.P17483002429500309985

`round(log2(acot(char[∑[n-1]])))`
-/

namespace A023532.P17483002429500309985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)))

end

end A023532.P17483002429500309985

namespace A023532

/-- `round(log2(acot(char[∑[n-1]])))` -/
def P17483002429500309985.Spec : Prop :=
  ∀ n, P17483002429500309985.a n = A023532 n

end A023532

/-! ## A023532.P17224641769434576565

`round(cos(tan(char[∑[n-1]])))`
-/

namespace A023532.P17224641769434576565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Real.tan ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)))

end

end A023532.P17224641769434576565

namespace A023532

/-- `round(cos(tan(char[∑[n-1]])))` -/
def P17224641769434576565.Spec : Prop :=
  ∀ n, P17224641769434576565.a n = A023532 n

end A023532

/-! ## A023532.P15125948092431011674

`round(atan(cos(char[∑[n-1]])))`
-/

namespace A023532.P15125948092431011674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.cos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)))

end

end A023532.P15125948092431011674

namespace A023532

/-- `round(atan(cos(char[∑[n-1]])))` -/
def P15125948092431011674.Spec : Prop :=
  ∀ n, P15125948092431011674.a n = A023532 n

end A023532

/-! ## A023532.P13144574911774337420

`round(cos(cosh(char[∑[n-1]])))`
-/

namespace A023532.P13144574911774337420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Real.cosh ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)))

end

end A023532.P13144574911774337420

namespace A023532

/-- `round(cos(cosh(char[∑[n-1]])))` -/
def P13144574911774337420.Spec : Prop :=
  ∀ n, P13144574911774337420.a n = A023532 n

end A023532

/-! ## A023532.P2050043091487850519

`round(cos(sinh(char[∑[n-1]])))`
-/

namespace A023532.P2050043091487850519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Real.sinh ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)))

end

end A023532.P2050043091487850519

namespace A023532

/-- `round(cos(sinh(char[∑[n-1]])))` -/
def P2050043091487850519.Spec : Prop :=
  ∀ n, P2050043091487850519.a n = A023532 n

end A023532

/-!
# A023533: a(n) = 1 if n is of the form m(m+1)(m+2)/6, and 0 otherwise.

The programs for A023533, the canonical program `A023533.P16553737014273247425` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023533 has offset 0).

The definition of A023533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023533.P16553737014273247425

`1-A014306(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023533

/-- `1-A014306(n)` -/
def P16553737014273247425.Spec : Prop :=
  ∀ n, P16553737014273247425.a n = A023533 n

theorem P16553737014273247425.correct : P16553737014273247425.Spec := by
  intro n
  simp only [A023533]

end A023533

/-! ## A023533.P10727224025655374846

`char[C(n, 3)]`
-/

namespace A023533.P10727224025655374846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A023533.P10727224025655374846

namespace A023533

/-- `char[C(n, 3)]` -/
def P10727224025655374846.Spec : Prop :=
  ∀ n, (P10727224025655374846.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P3641739408683323222

`char[∑[∑[n]]]`
-/

namespace A023533.P3641739408683323222
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A023533.P3641739408683323222

namespace A023533

/-- `char[∑[∑[n]]]` -/
def P3641739408683323222.Spec : Prop :=
  ∀ n, (P3641739408683323222.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P13047507048235249360

`A261357(n)%2`
-/

namespace A023533.P13047507048235249360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261357 n) 2

end

end A023533.P13047507048235249360

namespace A023533

/-- `A261357(n)%2` -/
def P13047507048235249360.Spec : Prop :=
  ∀ n, P13047507048235249360.a n = A023533 n

end A023533

/-! ## A023533.P2071382251731635259

`A331919(n)%2`
-/

namespace A023533.P2071382251731635259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331919 n) 2

end

end A023533.P2071382251731635259

namespace A023533

/-- `A331919(n)%2` -/
def P2071382251731635259.Spec : Prop :=
  ∀ n, P2071382251731635259.a n = A023533 n

end A023533

/-! ## A023533.P2357548925596045449

`and(1, char[A000292(n)])`
-/

namespace A023533.P2357548925596045449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A023533.P2357548925596045449

namespace A023533

/-- `and(1, char[A000292(n)])` -/
def P2357548925596045449.Spec : Prop :=
  ∀ n, (P2357548925596045449.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P10184831506001295293

`C(2, A194848(n)+1)`
-/

namespace A023533.P10184831506001295293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A194848 n + 1).toNat

end

end A023533.P10184831506001295293

namespace A023533

/-- `C(2, A194848(n)+1)` -/
def P10184831506001295293.Spec : Prop :=
  ∀ n, (P10184831506001295293.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P10560513693401481721

`C(2, A056557(n)+2)`
-/

namespace A023533.P10560513693401481721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A056557 n + 2).toNat

end

end A023533.P10560513693401481721

namespace A023533

/-- `C(2, A056557(n)+2)` -/
def P10560513693401481721.Spec : Prop :=
  ∀ n, (P10560513693401481721.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P675892686586883421

`val(A382873(n+1), 6)`
-/

namespace A023533.P675892686586883421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A382873 (n + 1)).toNat 6

end

end A023533.P675892686586883421

namespace A023533

/-- `val(A382873(n+1), 6)` -/
def P675892686586883421.Spec : Prop :=
  ∀ n, (P675892686586883421.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P10876636024668426422

`val(A369979(n+1), 9)`
-/

namespace A023533.P10876636024668426422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369979 (n + 1)).toNat 9

end

end A023533.P10876636024668426422

namespace A023533

/-- `val(A369979(n+1), 9)` -/
def P10876636024668426422.Spec : Prop :=
  ∀ n, (P10876636024668426422.a n : ℤ) = A023533 n

end A023533

/-! ## A023533.P7236493303829988393

`floor(1/A350604(n+1))`
-/

namespace A023533.P7236493303829988393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A350604 (n + 1) : ℚ)⌋

end

end A023533.P7236493303829988393

namespace A023533

/-- `floor(1/A350604(n+1))` -/
def P7236493303829988393.Spec : Prop :=
  ∀ n, P7236493303829988393.a n = A023533 n

end A023533

/-! ## A023533.P2194514296577046812

`A000007(A056557(n))`
-/

namespace A023533.P2194514296577046812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A056557 n).toNat

end

end A023533.P2194514296577046812

namespace A023533

/-- `A000007(A056557(n))` -/
def P2194514296577046812.Spec : Prop :=
  ∀ n, P2194514296577046812.a n = A023533 n

end A023533

/-! ## A023533.P13124758145359368777

`A000007(A332663(n))`
-/

namespace A023533.P13124758145359368777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A332663 n).toNat

end

end A023533.P13124758145359368777

namespace A023533

/-- `A000007(A332663(n))` -/
def P13124758145359368777.Spec : Prop :=
  ∀ n, P13124758145359368777.a n = A023533 n

end A023533

/-! ## A023533.P17201325192633237780

`A000007(n*A014306(n))`
-/

namespace A023533.P17201325192633237780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A014306 n).toNat

end

end A023533.P17201325192633237780

namespace A023533

/-- `A000007(n*A014306(n))` -/
def P17201325192633237780.Spec : Prop :=
  ∀ n, P17201325192633237780.a n = A023533 n

end A023533

/-! ## A023533.P1105632957079230130

`A040020(n)%A073645(n+1)`
-/

namespace A023533.P1105632957079230130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040020 n) (A073645 (n + 1))

end

end A023533.P1105632957079230130

namespace A023533

/-- `A040020(n)%A073645(n+1)` -/
def P1105632957079230130.Spec : Prop :=
  ∀ n, P1105632957079230130.a n = A023533 n

end A023533

/-! ## A023533.P6311839116405150618

`A040110(n)%A073645(n+1)`
-/

namespace A023533.P6311839116405150618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040110 n) (A073645 (n + 1))

end

end A023533.P6311839116405150618

namespace A023533

/-- `A040110(n)%A073645(n+1)` -/
def P6311839116405150618.Spec : Prop :=
  ∀ n, P6311839116405150618.a n = A023533 n

end A023533

/-! ## A023533.P2713694897158149570

`A040272(n)%A073645(n+1)`
-/

namespace A023533.P2713694897158149570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040272 n) (A073645 (n + 1))

end

end A023533.P2713694897158149570

namespace A023533

/-- `A040272(n)%A073645(n+1)` -/
def P2713694897158149570.Spec : Prop :=
  ∀ n, P2713694897158149570.a n = A023533 n

end A023533

/-! ## A023533.P4527410386412191054

`A040506(n)%A073645(n+1)`
-/

namespace A023533.P4527410386412191054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040506 n) (A073645 (n + 1))

end

end A023533.P4527410386412191054

namespace A023533

/-- `A040506(n)%A073645(n+1)` -/
def P4527410386412191054.Spec : Prop :=
  ∀ n, P4527410386412191054.a n = A023533 n

end A023533

/-!
# A023534: Numbers k such that the largest power of 2 dividing k equals 2^omega(k).

The programs for A023534, the canonical program `A023534.P15990485128086430200` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023534 has offset 1).

The definition of A023534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023534.P15990485128086430200

`eq[val(n+1, 2), A001221(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023534

/-- `eq[val(n+1, 2), A001221(n+1)]+1` -/
def P15990485128086430200.Spec : Prop :=
  ∀ n, (P15990485128086430200.a n : ℤ) = A023534 (n + 1)

theorem P15990485128086430200.correct : P15990485128086430200.Spec := by
  intro n
  simp only [A023534, Nat.add_sub_cancel]

end A023534

/-! ## A023534.P14455284314417266676

`eq[val(n+1, 2), A001222(A007947(n+1))]+1`
-/

namespace A023534.P14455284314417266676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023534.P14455284314417266676

namespace A023534

/-- `eq[val(n+1, 2), A001222(A007947(n+1))]+1` -/
def P14455284314417266676.Spec : Prop :=
  ∀ n, (P14455284314417266676.a n : ℤ) = A023534 (n + 1)

end A023534

/-! ## A023534.P9179638166116659065

`eq[A000120(n), A035531(n+1)]+1`
-/

namespace A023534.P9179638166116659065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023534.P9179638166116659065

namespace A023534

/-- `eq[A000120(n), A035531(n+1)]+1` -/
def P9179638166116659065.Spec : Prop :=
  ∀ n, (P9179638166116659065.a n : ℤ) = A023534 (n + 1)

end A023534

/-! ## A023534.P5005118123717634007

`eq[A001221(n+1), A007814(n+1)]+1`
-/

namespace A023534.P5005118123717634007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023534.P5005118123717634007

namespace A023534

/-- `eq[A001221(n+1), A007814(n+1)]+1` -/
def P5005118123717634007.Spec : Prop :=
  ∀ n, (P5005118123717634007.a n : ℤ) = A023534 (n + 1)

end A023534

/-! ## A023534.P16219356958506067331

`eq[A028233(n+1), A034444(n+1)]+1`
-/

namespace A023534.P16219356958506067331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023534.P16219356958506067331

namespace A023534

/-- `eq[A028233(n+1), A034444(n+1)]+1` -/
def P16219356958506067331.Spec : Prop :=
  ∀ n, (P16219356958506067331.a n : ℤ) = A023534 (n + 1)

end A023534

/-! ## A023534.P3174425937856465637

`eq[A001222(A006519(n+1)), A001221(n+1)]+1`
-/

namespace A023534.P3174425937856465637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006519 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023534.P3174425937856465637

namespace A023534

/-- `eq[A001222(A006519(n+1)), A001221(n+1)]+1` -/
def P3174425937856465637.Spec : Prop :=
  ∀ n, (P3174425937856465637.a n : ℤ) = A023534 (n + 1)

end A023534

/-! ## A023534.P9462745868448427669

`eq[A001222(A181819(n+1)), A007814(n+1)]+1`
-/

namespace A023534.P9462745868448427669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181819 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023534.P9462745868448427669

namespace A023534

/-- `eq[A001222(A181819(n+1)), A007814(n+1)]+1` -/
def P9462745868448427669.Spec : Prop :=
  ∀ n, (P9462745868448427669.a n : ℤ) = A023534 (n + 1)

end A023534

/-!
# A023535: Convolution of natural numbers with A023531.

The programs for A023535, the canonical program `A023535.P15152860963191410787` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023535 has offset 1).

The definition of A023535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023535.P18098605739165540427

`∑[∑[char[∑[n]-2]]]`
-/

namespace A023535.P18098605739165540427
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023535.P18098605739165540427

namespace A023535

/-- `∑[∑[char[∑[n]-2]]]` -/
def P18098605739165540427.Spec : Prop :=
  ∀ n, (P18098605739165540427.a n : ℤ) = A023535 (n + 1)

end A023535

/-! ## A023535.P13321680081145243274

`∑[n+1]-A023536(n+1)`
-/

namespace A023535.P13321680081145243274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023536 (n + 1)

end

end A023535.P13321680081145243274

namespace A023535

/-- `∑[n+1]-A023536(n+1)` -/
def P13321680081145243274.Spec : Prop :=
  ∀ n, P13321680081145243274.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P15152860963191410787

`A023562(n+1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023535

/-- `A023562(n+1)-a(n-1)` -/
def P15152860963191410787.Spec : Prop :=
  ∀ n, P15152860963191410787.a n = A023535 (n + 1)

theorem P15152860963191410787.correct : P15152860963191410787.Spec := by
  intro n
  simp only [A023535, Nat.add_sub_cancel]

end A023535

/-! ## A023535.P421877521445869106

`A253145(n)%A023536(n+1)`
-/

namespace A023535.P421877521445869106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A023536 (n + 1))

end

end A023535.P421877521445869106

namespace A023535

/-- `A253145(n)%A023536(n+1)` -/
def P421877521445869106.Spec : Prop :=
  ∀ n, P421877521445869106.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P3655453293372474415

`A023564(n+1)-A023563(n+1)`
-/

namespace A023535.P3655453293372474415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023564 (n + 1) - A023563 (n + 1)

end

end A023535.P3655453293372474415

namespace A023535

/-- `A023564(n+1)-A023563(n+1)` -/
def P3655453293372474415.Spec : Prop :=
  ∀ n, P3655453293372474415.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P13336656492406460633

`∑[∑[A129184(n+1)]]*A057427(n)`
-/

namespace A023535.P13336656492406460633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A023535.P13336656492406460633

namespace A023535

/-- `∑[∑[A129184(n+1)]]*A057427(n)` -/
def P13336656492406460633.Spec : Prop :=
  ∀ n, P13336656492406460633.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P1615361501384860619

`∑[A000027(n+1)]%A023536(n+1)`
-/

namespace A023535.P1615361501384860619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A023536 (n + 1))

end

end A023535.P1615361501384860619

namespace A023535

/-- `∑[A000027(n+1)]%A023536(n+1)` -/
def P1615361501384860619.Spec : Prop :=
  ∀ n, P1615361501384860619.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P1273530246648583599

`∑[A003056(n+2)]-(n+1)`
-/

namespace A023535.P1273530246648583599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A023535.P1273530246648583599

namespace A023535

/-- `∑[A003056(n+2)]-(n+1)` -/
def P1273530246648583599.Spec : Prop :=
  ∀ n, P1273530246648583599.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P6826696532258059624

`abs(∑[∑[A010054(n+2)]]-n)+n`
-/

namespace A023535.P6826696532258059624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)| + (n : ℤ)

end

end A023535.P6826696532258059624

namespace A023535

/-- `abs(∑[∑[A010054(n+2)]]-n)+n` -/
def P6826696532258059624.Spec : Prop :=
  ∀ n, P6826696532258059624.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P2385326601473920396

`∑[∑[A010054(n+2)]]%A242658(n)`
-/

namespace A023535.P2385326601473920396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A242658 n)

end

end A023535.P2385326601473920396

namespace A023535

/-- `∑[∑[A010054(n+2)]]%A242658(n)` -/
def P2385326601473920396.Spec : Prop :=
  ∀ n, P2385326601473920396.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P8565135043743293316

`∑[∑[A010054(n+2)]]-A000007(n+1)`
-/

namespace A023535.P8565135043743293316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 (n + 1)

end

end A023535.P8565135043743293316

namespace A023535

/-- `∑[∑[A010054(n+2)]]-A000007(n+1)` -/
def P8565135043743293316.Spec : Prop :=
  ∀ n, P8565135043743293316.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P17028981512375850255

`A006463(n+3)-(n+2)`
-/

namespace A023535.P17028981512375850255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 3) - (n + 2 : ℤ)

end

end A023535.P17028981512375850255

namespace A023535

/-- `A006463(n+3)-(n+2)` -/
def P17028981512375850255.Spec : Prop :=
  ∀ n, P17028981512375850255.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P14623023766262497531

`A060432(n+3)-(2*n+5)`
-/

namespace A023535.P14623023766262497531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 3) - (2 * n + 5 : ℤ)

end

end A023535.P14623023766262497531

namespace A023535

/-- `A060432(n+3)-(2*n+5)` -/
def P14623023766262497531.Spec : Prop :=
  ∀ n, P14623023766262497531.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P7330929570577908870

`A347737(n+2)+A248517(n+2)`
-/

namespace A023535.P7330929570577908870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347737 (n + 2) + A248517 (n + 2)

end

end A023535.P7330929570577908870

namespace A023535

/-- `A347737(n+2)+A248517(n+2)` -/
def P7330929570577908870.Spec : Prop :=
  ∀ n, P7330929570577908870.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P17306388643763569955

`A360072(n+2)-A000005(n+2)`
-/

namespace A023535.P17306388643763569955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360072 (n + 2) - A000005 (n + 2)

end

end A023535.P17306388643763569955

namespace A023535

/-- `A360072(n+2)-A000005(n+2)` -/
def P17306388643763569955.Spec : Prop :=
  ∀ n, P17306388643763569955.a n = A023535 (n + 1)

end A023535

/-! ## A023535.P13100927450420894593

`eq[1, A218828(eq[2, A218828(n+1)])]`
-/

namespace A023535.P13100927450420894593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023535.P13100927450420894593

namespace A023535

/-- `eq[1, A218828(eq[2, A218828(n+1)])]` -/
def P13100927450420894593.Spec : Prop :=
  ∀ n, (P13100927450420894593.a n : ℤ) = A023535 (n + 1)

end A023535

/-! ## A023535.P5298453776458559466

`lt[A060016(lt[1, A060016(n+1)]), 2]`
-/

namespace A023535.P5298453776458559466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A023535.P5298453776458559466

namespace A023535

/-- `lt[A060016(lt[1, A060016(n+1)]), 2]` -/
def P5298453776458559466.Spec : Prop :=
  ∀ n, (P5298453776458559466.a n : ℤ) = A023535 (n + 1)

end A023535

/-!
# A023536: Convolution of natural numbers with A023532.

The programs for A023536, the canonical program `A023536.P17768721522352995612` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023536 has offset 1).

The definition of A023536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023536.P3184231410962430121

`∑[∑[char[comp[∑[n]-2]]]]`
-/

namespace A023536.P3184231410962430121
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023536.P3184231410962430121

namespace A023536

/-- `∑[∑[char[comp[∑[n]-2]]]]` -/
def P3184231410962430121.Spec : Prop :=
  ∀ n, (P3184231410962430121.a n : ℤ) = A023536 (n + 1)

end A023536

/-! ## A023536.P17768721522352995612

`-∑[∑[∑[A103452(n+1)]]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023536

/-- `-∑[∑[∑[A103452(n+1)]]]` -/
def P17768721522352995612.Spec : Prop :=
  ∀ n, P17768721522352995612.a n = A023536 (n + 1)

theorem P17768721522352995612.correct : P17768721522352995612.Spec := by
  intro n
  simp only [A023536, Nat.add_sub_cancel]

end A023536

/-! ## A023536.P1006560470138428553

`∑[n+1]-A023535(n+1)`
-/

namespace A023536.P1006560470138428553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023535 (n + 1)

end

end A023536.P1006560470138428553

namespace A023536

/-- `∑[n+1]-A023535(n+1)` -/
def P1006560470138428553.Spec : Prop :=
  ∀ n, P1006560470138428553.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P4807864498086071079

`A023601(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023536.P4807864498086071079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023601 (n + 1) - a (n - 1)

end

end A023536.P4807864498086071079

namespace A023536

/-- `A023601(n+1)-a(n-1)` -/
def P4807864498086071079.Spec : Prop :=
  ∀ n, P4807864498086071079.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P16903126377335790572

`∑[∑[1-A073424(n+2)]-1]+n+1`
-/

namespace A023536.P16903126377335790572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073424 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A023536.P16903126377335790572

namespace A023536

/-- `∑[∑[1-A073424(n+2)]-1]+n+1` -/
def P16903126377335790572.Spec : Prop :=
  ∀ n, P16903126377335790572.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P16687808308227278569

`∑[∑[ceil(atan(A007318(n+1)))]]-a(n-1)` with `a(0)=1`
-/

namespace A023536.P16687808308227278569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A007318 (n + 1) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023536.P16687808308227278569

namespace A023536

/-- `∑[∑[ceil(atan(A007318(n+1)))]]-a(n-1)` -/
def P16687808308227278569.Spec : Prop :=
  ∀ n, P16687808308227278569.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P17912845705683194974

`A023603(n+1)-A023602(n+1)`
-/

namespace A023536.P17912845705683194974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023603 (n + 1) - A023602 (n + 1)

end

end A023536.P17912845705683194974

namespace A023536

/-- `A023603(n+1)-A023602(n+1)` -/
def P17912845705683194974.Spec : Prop :=
  ∀ n, P17912845705683194974.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P17435322764232482502

`A083920(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A023536.P17435322764232482502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083920 (n + 2) + a (n - 1)

end

end A023536.P17435322764232482502

namespace A023536

/-- `A083920(n+2)+a(n-1)` -/
def P17435322764232482502.Spec : Prop :=
  ∀ n, P17435322764232482502.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P2494083672326634486

`∑[abs(A003056(n+2)-(n+1))]+n+1`
-/

namespace A023536.P2494083672326634486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 (n + 2) - (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A023536.P2494083672326634486

namespace A023536

/-- `∑[abs(A003056(n+2)-(n+1))]+n+1` -/
def P2494083672326634486.Spec : Prop :=
  ∀ n, P2494083672326634486.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P18213781797510102802

`A000217(n+1)-∑[∑[A010054(n+2)]]`
-/

namespace A023536.P18213781797510102802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023536.P18213781797510102802

namespace A023536

/-- `A000217(n+1)-∑[∑[A010054(n+2)]]` -/
def P18213781797510102802.Spec : Prop :=
  ∀ n, P18213781797510102802.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P7609595024057723777

`A125811(n+3)-1`
-/

namespace A023536.P7609595024057723777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 (n + 3) - 1

end

end A023536.P7609595024057723777

namespace A023536

/-- `A125811(n+3)-1` -/
def P7609595024057723777.Spec : Prop :=
  ∀ n, P7609595024057723777.a n = A023536 (n + 1)

end A023536

/-! ## A023536.P7385045931474874079

`∑[A024372(2*n+1)]/(2*n+1)`
-/

namespace A023536.P7385045931474874079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024372 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 1 : ℚ)

end

end A023536.P7385045931474874079

namespace A023536

/-- `∑[A024372(2*n+1)]/(2*n+1)` -/
def P7385045931474874079.Spec : Prop :=
  ∀ n, P7385045931474874079.a n = (A023536 (n + 1) : ℚ)

end A023536

/-! ## A023536.P8931727908023303669

`A000027(∑[A083920(n+2)])`
-/

namespace A023536.P8931727908023303669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023536.P8931727908023303669

namespace A023536

/-- `A000027(∑[A083920(n+2)])` -/
def P8931727908023303669.Spec : Prop :=
  ∀ n, P8931727908023303669.a n = A023536 (n + 1)

end A023536

/-!
# A023537: a(n) = Lucas(n+4) - (3*n+7).

The programs for A023537, the canonical program `A023537.P8170499368705976005` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023537 has offset 1).

The definition of A023537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+5)-(3*(n+1)+7)` (program `A023537.P8170499368705976005`, by `A023537.P8170499368705976005.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023537.P8353153649515717979

`a(n-1)+a(n-2)+3*(n+1)-2` with `a(0)=1, a(1)=5`
-/

namespace A023537.P8353153649515717979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) + (3 * (n + 1) : ℤ) - 2

end

end A023537.P8353153649515717979

namespace A023537

/-- `a(n-1)+a(n-2)+3*(n+1)-2` -/
def P8353153649515717979.Spec : Prop :=
  ∀ n, P8353153649515717979.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P8170499368705976005

`A000032(n+5)-(3*(n+1)+7)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023537

/-- `A000032(n+5)-(3*(n+1)+7)` -/
def P8170499368705976005.Spec : Prop :=
  ∀ n, P8170499368705976005.a n = A023537 (n + 1)

theorem P8170499368705976005.correct : P8170499368705976005.Spec := by
  intro n
  simp only [A023537, Nat.add_sub_cancel]

end A023537

/-! ## A023537.P12744874101947755493

`7*(A000045(n+2)-1)+4*A000045(n+1)-3*(n+1)`
-/

namespace A023537.P12744874101947755493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A000045 (n + 2) - 1) + 4 * A000045 (n + 1) - (3 * (n + 1) : ℤ)

end

end A023537.P12744874101947755493

namespace A023537

/-- `7*(A000045(n+2)-1)+4*A000045(n+1)-3*(n+1)` -/
def P12744874101947755493.Spec : Prop :=
  ∀ n, P12744874101947755493.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P16073797985711464306

`∑[floor(∑[ϕ^(n+1)])]`
-/

namespace A023537.P16073797985711464306
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023537.P16073797985711464306

namespace A023537

/-- `∑[floor(∑[ϕ^(n+1)])]` -/
def P16073797985711464306.Spec : Prop :=
  ∀ n, P16073797985711464306.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P15323299402436004803

`ogf((1+2x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023537.P15323299402436004803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 2, 1, -1] n

end

end A023537.P15323299402436004803

namespace A023537

/-- `ogf((1+2x)/(1-3x+2x^2+x^3-x^4))` -/
def P15323299402436004803.Spec : Prop :=
  ∀ n, P15323299402436004803.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P10127390325449433968

`A192978(n)+(n+1)²`
-/

namespace A023537.P10127390325449433968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n + ((n + 1) ^ 2 : ℤ)

end

end A023537.P10127390325449433968

namespace A023537

/-- `A192978(n)+(n+1)²` -/
def P10127390325449433968.Spec : Prop :=
  ∀ n, P10127390325449433968.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P10456628931175981000

`A023550(n+1)-(n+1)`
-/

namespace A023537.P10456628931175981000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023550 (n + 1) - (n + 1 : ℤ)

end

end A023537.P10456628931175981000

namespace A023537

/-- `A023550(n+1)-(n+1)` -/
def P10456628931175981000.Spec : Prop :=
  ∀ n, P10456628931175981000.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P14066070511656132820

`A027181(n+1)-(n+2)`
-/

namespace A023537.P14066070511656132820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (n + 1) - (n + 2 : ℤ)

end

end A023537.P14066070511656132820

namespace A023537

/-- `A027181(n+1)-(n+2)` -/
def P14066070511656132820.Spec : Prop :=
  ∀ n, P14066070511656132820.a n = A023537 (n + 1)

theorem P14066070511656132820.correct : P14066070511656132820.Spec := by
  intro n
  simp only [A023537, Nat.add_sub_cancel, A023537.P14066070511656132820.a, A023537.P8170499368705976005.a, A000032, A000032.P8352177345629330861.a, A027181, A027181.P222487844041274355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023537

/-! ## A023537.P12483894534678497071

`A027961(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A023537.P12483894534678497071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027961 (n + 1) + a (n - 1)

end

end A023537.P12483894534678497071

namespace A023537

/-- `A027961(n+1)+a(n-1)` -/
def P12483894534678497071.Spec : Prop :=
  ∀ n, P12483894534678497071.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P3968368187483147565

`a(n-1)+A000032(n+3)-3` with `a(0)=1`
-/

namespace A023537.P3968368187483147565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000032 (n + 3) - 3)

end

end A023537.P3968368187483147565

namespace A023537

/-- `a(n-1)+A000032(n+3)-3` -/
def P3968368187483147565.Spec : Prop :=
  ∀ n, P3968368187483147565.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P14125362304268280059

`-∑[3-A000032(2*n-(n-3))]`
-/

namespace A023537.P14125362304268280059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000032 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023537.P14125362304268280059

namespace A023537

/-- `-∑[3-A000032(2*n-(n-3))]` -/
def P14125362304268280059.Spec : Prop :=
  ∀ n, P14125362304268280059.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P13861905355130018168

`A001924(n)+A001891(n+1)`
-/

namespace A023537.P13861905355130018168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + A001891 (n + 1)

end

end A023537.P13861905355130018168

namespace A023537

/-- `A001924(n)+A001891(n+1)` -/
def P13861905355130018168.Spec : Prop :=
  ∀ n, P13861905355130018168.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P12607389491975902883

`A192973(n+1)+A002062(n)`
-/

namespace A023537.P12607389491975902883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (n + 1) + A002062 n

end

end A023537.P12607389491975902883

namespace A023537

/-- `A192973(n+1)+A002062(n)` -/
def P12607389491975902883.Spec : Prop :=
  ∀ n, P12607389491975902883.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P4820834093946854422

`A192389(n)+A132922(n+1)`
-/

namespace A023537.P4820834093946854422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 n + A132922 (n + 1)

end

end A023537.P4820834093946854422

namespace A023537

/-- `A192389(n)+A132922(n+1)` -/
def P4820834093946854422.Spec : Prop :=
  ∀ n, P4820834093946854422.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P16354219918370600684

`A033937(n)-A000071(n+3)`
-/

namespace A023537.P16354219918370600684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n - A000071 (n + 3)

end

end A023537.P16354219918370600684

namespace A023537

/-- `A033937(n)-A000071(n+3)` -/
def P16354219918370600684.Spec : Prop :=
  ∀ n, P16354219918370600684.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P5841141921668162867

`record[A000032(n)-(A296515(n)+1)]`
-/

namespace A023537.P5841141921668162867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (A296515 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023537.P5841141921668162867

namespace A023537

/-- `record[A000032(n)-(A296515(n)+1)]` -/
def P5841141921668162867.Spec : Prop :=
  ∀ n, P5841141921668162867.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P14798933452667874500

`A192951(n+1)+A019274(n+2)`
-/

namespace A023537.P14798933452667874500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) + A019274 (n + 2)

end

end A023537.P14798933452667874500

namespace A023537

/-- `A192951(n+1)+A019274(n+2)` -/
def P14798933452667874500.Spec : Prop :=
  ∀ n, P14798933452667874500.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P18070809888708408764

`A001924(n+1)+2*A001924(n)`
-/

namespace A023537.P18070809888708408764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) + 2 * A001924 n

end

end A023537.P18070809888708408764

namespace A023537

/-- `A001924(n+1)+2*A001924(n)` -/
def P18070809888708408764.Spec : Prop :=
  ∀ n, P18070809888708408764.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P6185704113504160564

`A192952(n+2)-A000045(n+2)`
-/

namespace A023537.P6185704113504160564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 (n + 2) - A000045 (n + 2)

end

end A023537.P6185704113504160564

namespace A023537

/-- `A192952(n+2)-A000045(n+2)` -/
def P6185704113504160564.Spec : Prop :=
  ∀ n, P6185704113504160564.a n = A023537 (n + 1)

end A023537

/-! ## A023537.P2093525816849365411

`A167616(n+5)+A116730(n+1)`
-/

namespace A023537.P2093525816849365411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 5) + A116730 (n + 1)

end

end A023537.P2093525816849365411

namespace A023537

/-- `A167616(n+5)+A116730(n+1)` -/
def P2093525816849365411.Spec : Prop :=
  ∀ n, P2093525816849365411.a n = A023537 (n + 1)

end A023537

/-!
# A023538: Convolution of natural numbers with (1, p(1), p(2), ... ), where p(k) is the k-th prime.

The programs for A023538, the canonical program `A023538.P2498540562425885631` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023538 has offset 1).

The definition of A023538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023538.P12580013288458955675

`∑[A007504(n)+1]`
-/

namespace A023538.P12580013288458955675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P12580013288458955675

namespace A023538

/-- `∑[A007504(n)+1]` -/
def P12580013288458955675.Spec : Prop :=
  ∀ n, P12580013288458955675.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P13439033984512335310

`∑[A014284(n+1)]`
-/

namespace A023538.P13439033984512335310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P13439033984512335310

namespace A023538

/-- `∑[A014284(n+1)]` -/
def P13439033984512335310.Spec : Prop :=
  ∀ n, P13439033984512335310.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P10388576671484920015

`∑[∑[A008578(n+1)]]`
-/

namespace A023538.P10388576671484920015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P10388576671484920015

namespace A023538

/-- `∑[∑[A008578(n+1)]]` -/
def P10388576671484920015.Spec : Prop :=
  ∀ n, P10388576671484920015.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P6694168804836900480

`∑[∑[A028815(n)-1]]`
-/

namespace A023538.P6694168804836900480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P6694168804836900480

namespace A023538

/-- `∑[∑[A028815(n)-1]]` -/
def P6694168804836900480.Spec : Prop :=
  ∀ n, P6694168804836900480.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P12850492721080301240

`∑[A036439(n+1)-1]`
-/

namespace A023538.P12850492721080301240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P12850492721080301240

namespace A023538

/-- `∑[A036439(n+1)-1]` -/
def P12850492721080301240.Spec : Prop :=
  ∀ n, P12850492721080301240.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P2317667139212097984

`∑[A227547(n+1)-2]`
-/

namespace A023538.P2317667139212097984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P2317667139212097984

namespace A023538

/-- `∑[A227547(n+1)-2]` -/
def P2317667139212097984.Spec : Prop :=
  ∀ n, P2317667139212097984.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P7685115453843142435

`∑[A110895(n+1)-n]`
-/

namespace A023538.P7685115453843142435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P7685115453843142435

namespace A023538

/-- `∑[A110895(n+1)-n]` -/
def P7685115453843142435.Spec : Prop :=
  ∀ n, P7685115453843142435.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P5575733224062274975

`∑[∑[sqrt(A280076(n+1))]]`
-/

namespace A023538.P5575733224062274975
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P5575733224062274975

namespace A023538

/-- `∑[∑[sqrt(A280076(n+1))]]` -/
def P5575733224062274975.Spec : Prop :=
  ∀ n, P5575733224062274975.a n = (A023538 (n + 1) : ℝ)

end A023538

/-! ## A023538.P17824401852572251170

`∑[∑[A182986(n+1)]+1]`
-/

namespace A023538.P17824401852572251170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P17824401852572251170

namespace A023538

/-- `∑[∑[A182986(n+1)]+1]` -/
def P17824401852572251170.Spec : Prop :=
  ∀ n, P17824401852572251170.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P405553215694122626

`∑[∑[A001747(n+1)/2]]`
-/

namespace A023538.P405553215694122626
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P405553215694122626

namespace A023538

/-- `∑[∑[A001747(n+1)/2]]` -/
def P405553215694122626.Spec : Prop :=
  ∀ n, P405553215694122626.a n = (A023538 (n + 1) : ℚ)

end A023538

/-! ## A023538.P6739809016431012981

`∑[∑[A167136(n+1)-n]]`
-/

namespace A023538.P6739809016431012981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P6739809016431012981

namespace A023538

/-- `∑[∑[A167136(n+1)-n]]` -/
def P6739809016431012981.Spec : Prop :=
  ∀ n, P6739809016431012981.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P9676091884569620508

`∑[∑[A299763(n+1)]-n]`
-/

namespace A023538.P9676091884569620508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P9676091884569620508

namespace A023538

/-- `∑[∑[A299763(n+1)]-n]` -/
def P9676091884569620508.Spec : Prop :=
  ∀ n, P9676091884569620508.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P2498540562425885631

`∑[A000040(n)+a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023538

/-- `∑[A000040(n)+a(n-1)]` -/
def P2498540562425885631.Spec : Prop :=
  ∀ n, P2498540562425885631.a n = A023538 (n + 1)

theorem P2498540562425885631.correct : P2498540562425885631.Spec := by
  intro n
  simp only [A023538, Nat.add_sub_cancel]

end A023538

/-! ## A023538.P8135355589509315167

`∑[∑[A000040(A028310(n))]-1]`
-/

namespace A023538.P8135355589509315167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P8135355589509315167

namespace A023538

/-- `∑[∑[A000040(A028310(n))]-1]` -/
def P8135355589509315167.Spec : Prop :=
  ∀ n, P8135355589509315167.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P10290660951517647026

`A014148(n+1)-A101301(n+1)`
-/

namespace A023538.P10290660951517647026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) - A101301 (n + 1)

end

end A023538.P10290660951517647026

namespace A023538

/-- `A014148(n+1)-A101301(n+1)` -/
def P10290660951517647026.Spec : Prop :=
  ∀ n, P10290660951517647026.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P911464391518896460

`∑[∑[A000040(n+1)]-A006093(n+1)]`
-/

namespace A023538.P911464391518896460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P911464391518896460

namespace A023538

/-- `∑[∑[A000040(n+1)]-A006093(n+1)]` -/
def P911464391518896460.Spec : Prop :=
  ∀ n, P911464391518896460.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P15169592883283856291

`∑[∑[A000040(n+1)]]-A101301(n+1)`
-/

namespace A023538.P15169592883283856291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101301 (n + 1)

end

end A023538.P15169592883283856291

namespace A023538

/-- `∑[∑[A000040(n+1)]]-A101301(n+1)` -/
def P15169592883283856291.Spec : Prop :=
  ∀ n, P15169592883283856291.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P9638438810011059910

`A014148(n+1)+∑[1-A000040(n+1)]`
-/

namespace A023538.P9638438810011059910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P9638438810011059910

namespace A023538

/-- `A014148(n+1)+∑[1-A000040(n+1)]` -/
def P9638438810011059910.Spec : Prop :=
  ∀ n, P9638438810011059910.a n = A023538 (n + 1)

end A023538

/-! ## A023538.P203059158235196660

`∑[A339194(n+1)/A000040(n+1)+1]`
-/

namespace A023538.P203059158235196660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339194 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P203059158235196660

namespace A023538

/-- `∑[A339194(n+1)/A000040(n+1)+1]` -/
def P203059158235196660.Spec : Prop :=
  ∀ n, P203059158235196660.a n = (A023538 (n + 1) : ℚ)

end A023538

/-! ## A023538.P625344477927405250

`∑[∑[A158611(n+2)]]`
-/

namespace A023538.P625344477927405250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P625344477927405250

namespace A023538

/-- `∑[∑[A158611(n+2)]]` -/
def P625344477927405250.Spec : Prop :=
  ∀ n, P625344477927405250.a n = A023538 (n + 1)

end A023538

/-!
# A023539: Convolution of natural numbers with composite numbers.

The programs for A023539, the canonical program `A023539.P1591536743945207454` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023539 has offset 1).

The definition of A023539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023539.P456799399250166291

`∑[A053767(n+1)]`
-/

namespace A023539.P456799399250166291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P456799399250166291

namespace A023539

/-- `∑[A053767(n+1)]` -/
def P456799399250166291.Spec : Prop :=
  ∀ n, P456799399250166291.a n = A023539 (n + 1)

end A023539

/-! ## A023539.P2792527341007369091

`∑[∑[comp[A351078(n)]]]`
-/

namespace A023539.P2792527341007369091
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P2792527341007369091

namespace A023539

/-- `∑[∑[comp[A351078(n)]]]` -/
def P2792527341007369091.Spec : Prop :=
  ∀ n, (P2792527341007369091.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P1591536743945207454

`∑[∑[A002808(n+1)]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023539

/-- `∑[∑[A002808(n+1)]]` -/
def P1591536743945207454.Spec : Prop :=
  ∀ n, P1591536743945207454.a n = A023539 (n + 1)

theorem P1591536743945207454.correct : P1591536743945207454.Spec := by
  intro n
  simp only [A023539, Nat.add_sub_cancel]

end A023539

/-! ## A023539.P850229629106312042

`∑[∑[A018252(n+2)]]`
-/

namespace A023539.P850229629106312042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P850229629106312042

namespace A023539

/-- `∑[∑[A018252(n+2)]]` -/
def P850229629106312042.Spec : Prop :=
  ∀ n, P850229629106312042.a n = A023539 (n + 1)

end A023539

/-! ## A023539.P748488607327111903

`∑[∑[A141468(n+3)]]`
-/

namespace A023539.P748488607327111903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P748488607327111903

namespace A023539

/-- `∑[∑[A141468(n+3)]]` -/
def P748488607327111903.Spec : Prop :=
  ∀ n, P748488607327111903.a n = A023539 (n + 1)

end A023539

/-! ## A023539.P11766241356677876130

`∑[∑[lt[1, A074206(n)]]]`
-/

namespace A023539.P11766241356677876130
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P11766241356677876130

namespace A023539

/-- `∑[∑[lt[1, A074206(n)]]]` -/
def P11766241356677876130.Spec : Prop :=
  ∀ n, (P11766241356677876130.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P325611109481496231

`∑[∑[lt[1, A107463(n)]]]`
-/

namespace A023539.P325611109481496231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P325611109481496231

namespace A023539

/-- `∑[∑[lt[1, A107463(n)]]]` -/
def P325611109481496231.Spec : Prop :=
  ∀ n, (P325611109481496231.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P17770665727523161590

`∑[∑[comp[A158611(n+1)]]]`
-/

namespace A023539.P17770665727523161590
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P17770665727523161590

namespace A023539

/-- `∑[∑[comp[A158611(n+1)]]]` -/
def P17770665727523161590.Spec : Prop :=
  ∀ n, (P17770665727523161590.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P16336154254335812680

`∑[∑[A072668(n+1)+1]]`
-/

namespace A023539.P16336154254335812680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P16336154254335812680

namespace A023539

/-- `∑[∑[A072668(n+1)+1]]` -/
def P16336154254335812680.Spec : Prop :=
  ∀ n, P16336154254335812680.a n = A023539 (n + 1)

theorem P16336154254335812680.correct : P16336154254335812680.Spec := by
  intro n
  simp only [A023539, Nat.add_sub_cancel, A023539.P16336154254335812680.f2, A023539.P16336154254335812680.f1, A023539.P16336154254335812680.a, A023539.P1591536743945207454.f2, A023539.P1591536743945207454.f1, A023539.P1591536743945207454.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A072668, A072668.P5648318357023435289.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023539

/-! ## A023539.P12905929860448875324

`∑[∑[A079696(n+1)-1]]`
-/

namespace A023539.P12905929860448875324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P12905929860448875324

namespace A023539

/-- `∑[∑[A079696(n+1)-1]]` -/
def P12905929860448875324.Spec : Prop :=
  ∀ n, P12905929860448875324.a n = A023539 (n + 1)

theorem P12905929860448875324.correct : P12905929860448875324.Spec := by
  intro n
  simp only [A023539, Nat.add_sub_cancel, A023539.P12905929860448875324.f2, A023539.P12905929860448875324.f1, A023539.P12905929860448875324.a, A023539.P1591536743945207454.f2, A023539.P1591536743945207454.f1, A023539.P1591536743945207454.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A079696, A079696.P2621453534582977077.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023539

/-! ## A023539.P10621639572058212226

`∑[∑[comp[A040976(n+1)]+2]]`
-/

namespace A023539.P10621639572058212226
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P10621639572058212226

namespace A023539

/-- `∑[∑[comp[A040976(n+1)]+2]]` -/
def P10621639572058212226.Spec : Prop :=
  ∀ n, (P10621639572058212226.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P7399127854441984959

`A023650(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A023539.P7399127854441984959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A023650 (n + 1) - a (n - 1)

end

end A023539.P7399127854441984959

namespace A023539

/-- `A023650(n+1)-a(n-1)` -/
def P7399127854441984959.Spec : Prop :=
  ∀ n, P7399127854441984959.a n = A023539 (n + 1)

end A023539

/-! ## A023539.P10681392332204786296

`∑[∑[lt[1, A001222(n+1)]+1]]`
-/

namespace A023539.P10681392332204786296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P10681392332204786296

namespace A023539

/-- `∑[∑[lt[1, A001222(n+1)]+1]]` -/
def P10681392332204786296.Spec : Prop :=
  ∀ n, (P10681392332204786296.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P13619623951393626588

`∑[∑[lt[2, A000005(n+1)]+1]]`
-/

namespace A023539.P13619623951393626588
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P13619623951393626588

namespace A023539

/-- `∑[∑[lt[2, A000005(n+1)]+1]]` -/
def P13619623951393626588.Spec : Prop :=
  ∀ n, (P13619623951393626588.a n : ℤ) = A023539 (n + 1)

theorem P13619623951393626588.correct : P13619623951393626588.Spec := by
  intro n
  simp only [A023539, Nat.add_sub_cancel, A023539.P13619623951393626588.f3, A023539.P13619623951393626588.f4, A023539.P13619623951393626588.f2, A023539.P13619623951393626588.f1, A023539.P13619623951393626588.a, A023539.P1591536743945207454.f2, A023539.P1591536743945207454.f1, A023539.P1591536743945207454.a, A000005, A000005.P16091521709108585461.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023539

/-! ## A023539.P10159010300256916603

`∑[∑[lt[2, A351235(n+1)]+1]]`
-/

namespace A023539.P10159010300256916603
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351235 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P10159010300256916603

namespace A023539

/-- `∑[∑[lt[2, A351235(n+1)]+1]]` -/
def P10159010300256916603.Spec : Prop :=
  ∀ n, (P10159010300256916603.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P15930076827207532521

`∑[∑[lt[A000010(n+1), n]+1]]`
-/

namespace A023539.P15930076827207532521
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P15930076827207532521

namespace A023539

/-- `∑[∑[lt[A000010(n+1), n]+1]]` -/
def P15930076827207532521.Spec : Prop :=
  ∀ n, (P15930076827207532521.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P12483401745728887922

`∑[∑[lt[A006530(n+1), n]+1]]`
-/

namespace A023539.P12483401745728887922
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P12483401745728887922

namespace A023539

/-- `∑[∑[lt[A006530(n+1), n]+1]]` -/
def P12483401745728887922.Spec : Prop :=
  ∀ n, (P12483401745728887922.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P9992724090893183261

`∑[∑[lt[A020639(n+1), n]+1]]`
-/

namespace A023539.P9992724090893183261
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P9992724090893183261

namespace A023539

/-- `∑[∑[lt[A020639(n+1), n]+1]]` -/
def P9992724090893183261.Spec : Prop :=
  ∀ n, (P9992724090893183261.a n : ℤ) = A023539 (n + 1)

end A023539

/-! ## A023539.P16344651399130254736

`∑[∑[A000040(n+1)]-A072476(n+1)]`
-/

namespace A023539.P16344651399130254736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A072476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P16344651399130254736

namespace A023539

/-- `∑[∑[A000040(n+1)]-A072476(n+1)]` -/
def P16344651399130254736.Spec : Prop :=
  ∀ n, P16344651399130254736.a n = A023539 (n + 1)

end A023539

/-! ## A023539.P11575803935272183625

`∑[A051349(n+2)-1]`
-/

namespace A023539.P11575803935272183625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023539.P11575803935272183625

namespace A023539

/-- `∑[A051349(n+2)-1]` -/
def P11575803935272183625.Spec : Prop :=
  ∀ n, P11575803935272183625.a n = A023539 (n + 1)

end A023539

/-!
# A023540: Expansion of 1/((1-x)(1-5x)(1-9x)(1-11x)).

The programs for A023540, the canonical program `A023540.P4005493772628957832` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023540 has offset 0).

The definition of A023540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023540.P4005493772628957832

`(8*11^(n+3)-15*9^(n+3)+10*5^(n+3)-3)/960`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023540

/-- `(8*11^(n+3)-15*9^(n+3)+10*5^(n+3)-3)/960` -/
def P4005493772628957832.Spec : Prop :=
  ∀ n, P4005493772628957832.a n = (A023540 n : ℚ)

end A023540

/-! ## A023540.P6483255610751108321

`∑[A020499(n)]`
-/

namespace A023540.P6483255610751108321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023540.P6483255610751108321

namespace A023540

/-- `∑[A020499(n)]` -/
def P6483255610751108321.Spec : Prop :=
  ∀ n, P6483255610751108321.a n = A023540 n

end A023540

/-! ## A023540.P15460852950578908437

`A016262(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A023540.P15460852950578908437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016262 n + 5 * a (n - 1)

end

end A023540.P15460852950578908437

namespace A023540

/-- `A016262(n)+5*a(n-1)` -/
def P15460852950578908437.Spec : Prop :=
  ∀ n, P15460852950578908437.a n = A023540 n

end A023540

/-! ## A023540.P1918226146971137013

`A020499(C(n+1, n+2)+n)+a(n-1)` with `a(0)=1`
-/

namespace A023540.P1918226146971137013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020499 (Nat.choose (n + 1) (n + 2) + n) + a (n - 1)

end

end A023540.P1918226146971137013

namespace A023540

/-- `A020499(C(n+1, n+2)+n)+a(n-1)` -/
def P1918226146971137013.Spec : Prop :=
  ∀ n, P1918226146971137013.a n = A023540 n

end A023540

/-! ## A023540.P17603911096814932761

`2*A022455(n)-A022453(n)`
-/

namespace A023540.P17603911096814932761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022455 n - A022453 n

end

end A023540.P17603911096814932761

namespace A023540

/-- `2*A022455(n)-A022453(n)` -/
def P17603911096814932761.Spec : Prop :=
  ∀ n, P17603911096814932761.a n = A023540 n

end A023540

/-! ## A023540.P632227179807144462

`a(n-1)+A106400(n)²*A020499(n)` with `a(0)=1`
-/

namespace A023540.P632227179807144462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A106400 n ^ 2 * A020499 n

end

end A023540.P632227179807144462

namespace A023540

/-- `a(n-1)+A106400(n)²*A020499(n)` -/
def P632227179807144462.Spec : Prop :=
  ∀ n, P632227179807144462.a n = A023540 n

end A023540

/-! ## A023540.P15802478557264150153

`A020499(A000007(n+1)+n)+a(n-1)` with `a(0)=1`
-/

namespace A023540.P15802478557264150153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020499 (A000007 (n + 1) + (n : ℤ)).toNat + a (n - 1)

end

end A023540.P15802478557264150153

namespace A023540

/-- `A020499(A000007(n+1)+n)+a(n-1)` -/
def P15802478557264150153.Spec : Prop :=
  ∀ n, P15802478557264150153.a n = A023540 n

end A023540

/-! ## A023540.P14854486445162386980

`A021474(n)+A021694(n)-A021454(n)`
-/

namespace A023540.P14854486445162386980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021474 n + (A021694 n - A021454 n)

end

end A023540.P14854486445162386980

namespace A023540

/-- `A021474(n)+A021694(n)-A021454(n)` -/
def P14854486445162386980.Spec : Prop :=
  ∀ n, P14854486445162386980.a n = A023540 n

end A023540

/-!
# A023541: Convolution of natural numbers with Beatty sequence for the golden mean A000201.

The programs for A023541, the canonical program `A023541.P11789173281518141242` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023541 has offset 1).

The definition of A023541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023541.P8312983100188663939

`∑[∑[floor(ϕ*(n+1))]]`
-/

namespace A023541.P8312983100188663939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023541.P8312983100188663939

namespace A023541

/-- `∑[∑[floor(ϕ*(n+1))]]` -/
def P8312983100188663939.Spec : Prop :=
  ∀ n, P8312983100188663939.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P2410884595341892967

`-∑[∑[ceil(ϕ*xor(n, -1))]]`
-/

namespace A023541.P2410884595341892967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023541.P2410884595341892967

namespace A023541

/-- `-∑[∑[ceil(ϕ*xor(n, -1))]]` -/
def P2410884595341892967.Spec : Prop :=
  ∀ n, P2410884595341892967.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P9852059002963778316

`∑[∑[A283233(n+1)]]/2`
-/

namespace A023541.P9852059002963778316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A023541.P9852059002963778316

namespace A023541

/-- `∑[∑[A283233(n+1)]]/2` -/
def P9852059002963778316.Spec : Prop :=
  ∀ n, P9852059002963778316.a n = (A023541 (n + 1) : ℚ)

end A023541

/-! ## A023541.P11789173281518141242

`abs(∑[∑[A004956(n+1)-1]])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023541

/-- `abs(∑[∑[A004956(n+1)-1]])` -/
def P11789173281518141242.Spec : Prop :=
  ∀ n, P11789173281518141242.a n = A023541 (n + 1)

theorem P11789173281518141242.correct : P11789173281518141242.Spec := by
  intro n
  simp only [A023541, Nat.add_sub_cancel]

end A023541

/-! ## A023541.P14902904491352490726

`A054347(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A023541.P14902904491352490726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054347 (n + 1) + a (n - 1)

end

end A023541.P14902904491352490726

namespace A023541

/-- `A054347(n+1)+a(n-1)` -/
def P14902904491352490726.Spec : Prop :=
  ∀ n, P14902904491352490726.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P11997186376156877763

`A023658(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023541.P11997186376156877763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023658 (n + 1) - a (n - 1)

end

end A023541.P11997186376156877763

namespace A023541

/-- `A023658(n+1)-a(n-1)` -/
def P11997186376156877763.Spec : Prop :=
  ∀ n, P11997186376156877763.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P11954159255915795689

`∑[∑[A075317(n+1)+1]]/2`
-/

namespace A023541.P11954159255915795689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A023541.P11954159255915795689

namespace A023541

/-- `∑[∑[A075317(n+1)+1]]/2` -/
def P11954159255915795689.Spec : Prop :=
  ∀ n, P11954159255915795689.a n = (A023541 (n + 1) : ℚ)

end A023541

/-! ## A023541.P6582531544229186025

`∑[∑[A022342(n+1)]+n]+n+1`
-/

namespace A023541.P6582531544229186025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A023541.P6582531544229186025

namespace A023541

/-- `∑[∑[A022342(n+1)]+n]+n+1` -/
def P6582531544229186025.Spec : Prop :=
  ∀ n, P6582531544229186025.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P654790382171355541

`∑[∑[A001950(n+1)-1-n]-1]+n+1`
-/

namespace A023541.P654790382171355541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - 1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A023541.P654790382171355541

namespace A023541

/-- `∑[∑[A001950(n+1)-1-n]-1]+n+1` -/
def P654790382171355541.Spec : Prop :=
  ∀ n, P654790382171355541.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P6527625110001309290

`A023664(n+1)-A023663(n+1)`
-/

namespace A023541.P6527625110001309290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023664 (n + 1) - A023663 (n + 1)

end

end A023541.P6527625110001309290

namespace A023541

/-- `A023664(n+1)-A023663(n+1)` -/
def P6527625110001309290.Spec : Prop :=
  ∀ n, P6527625110001309290.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P160584995551613504

`∑[∑[A003623(n+1)]]-A023542(n+1)`
-/

namespace A023541.P160584995551613504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023542 (n + 1)

end

end A023541.P160584995551613504

namespace A023541

/-- `∑[∑[A003623(n+1)]]-A023542(n+1)` -/
def P160584995551613504.Spec : Prop :=
  ∀ n, P160584995551613504.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P5429713013063722591

`∑[∑[A000201(n+1)]]%A000032(n+5)`
-/

namespace A023541.P5429713013063722591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000032 (n + 5))

end

end A023541.P5429713013063722591

namespace A023541

/-- `∑[∑[A000201(n+1)]]%A000032(n+5)` -/
def P5429713013063722591.Spec : Prop :=
  ∀ n, P5429713013063722591.a n = A023541 (n + 1)

end A023541

/-! ## A023541.P2585189144312226234

`A000027(∑[∑[A000201(n+1)]])`
-/

namespace A023541.P2585189144312226234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023541.P2585189144312226234

namespace A023541

/-- `A000027(∑[∑[A000201(n+1)]])` -/
def P2585189144312226234.Spec : Prop :=
  ∀ n, P2585189144312226234.a n = A023541 (n + 1)

end A023541

/-!
# A023542: Convolution of natural numbers with Beatty sequence for tau^2 A001950.

The programs for A023542, the canonical program `A023542.P14919059629026645152` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023542 has offset 1).

The definition of A023542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023542.P7952970181633215521

`∑[∑[comp[floor(ϕ*n)]]]`
-/

namespace A023542.P7952970181633215521
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023542.P7952970181633215521

namespace A023542

/-- `∑[∑[comp[floor(ϕ*n)]]]` -/
def P7952970181633215521.Spec : Prop :=
  ∀ n, (P7952970181633215521.a n : ℤ) = A023542 (n + 1)

end A023542

/-! ## A023542.P16404099625677530333

`∑[floor((n+1)*ϕ²)]+a(n-1)` with `a(0)=2`
-/

namespace A023542.P16404099625677530333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A023542.P16404099625677530333

namespace A023542

/-- `∑[floor((n+1)*ϕ²)]+a(n-1)` -/
def P16404099625677530333.Spec : Prop :=
  ∀ n, P16404099625677530333.a n = A023542 (n + 1)

end A023542

/-! ## A023542.P14919059629026645152

`abs(∑[∑[A004957(n+1)-1]])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023542

/-- `abs(∑[∑[A004957(n+1)-1]])` -/
def P14919059629026645152.Spec : Prop :=
  ∀ n, P14919059629026645152.a n = A023542 (n + 1)

theorem P14919059629026645152.correct : P14919059629026645152.Spec := by
  intro n
  simp only [A023542, Nat.add_sub_cancel]

end A023542

/-! ## A023542.P11145187496476222559

`2*∑[∑[A001950(n+1)/2]]`
-/

namespace A023542.P11145187496476222559
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001950 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023542.P11145187496476222559

namespace A023542

/-- `2*∑[∑[A001950(n+1)/2]]` -/
def P11145187496476222559.Spec : Prop :=
  ∀ n, P11145187496476222559.a n = (A023542 (n + 1) : ℚ)

end A023542

/-! ## A023542.P1847578478852618905

`∑[∑[5*∑[A096270(n)+2]]]/5`
-/

namespace A023542.P1847578478852618905
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A023542.P1847578478852618905

namespace A023542

/-- `∑[∑[5*∑[A096270(n)+2]]]/5` -/
def P1847578478852618905.Spec : Prop :=
  ∀ n, P1847578478852618905.a n = (A023542 (n + 1) : ℚ)

end A023542

/-! ## A023542.P17062118567788478865

`A000292(n)+∑[∑[ceil(ϕ*(n+1))]]`
-/

namespace A023542.P17062118567788478865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023542.P17062118567788478865

namespace A023542

/-- `A000292(n)+∑[∑[ceil(ϕ*(n+1))]]` -/
def P17062118567788478865.Spec : Prop :=
  ∀ n, P17062118567788478865.a n = A023542 (n + 1)

end A023542

/-! ## A023542.P10811798520758156809

`∑[∑[A003622(n+1)]+n]+n+1`
-/

namespace A023542.P10811798520758156809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A023542.P10811798520758156809

namespace A023542

/-- `∑[∑[A003622(n+1)]+n]+n+1` -/
def P10811798520758156809.Spec : Prop :=
  ∀ n, P10811798520758156809.a n = A023542 (n + 1)

end A023542

/-! ## A023542.P5180642730321330192

`A023667(n+1)-A023664(n+1)`
-/

namespace A023542.P5180642730321330192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 1) - A023664 (n + 1)

end

end A023542.P5180642730321330192

namespace A023542

/-- `A023667(n+1)-A023664(n+1)` -/
def P5180642730321330192.Spec : Prop :=
  ∀ n, P5180642730321330192.a n = A023542 (n + 1)

end A023542

/-! ## A023542.P6832830773124867049

`A088207(n+1)+∑[A088207(n)]`
-/

namespace A023542.P6832830773124867049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023542.P6832830773124867049

namespace A023542

/-- `A088207(n+1)+∑[A088207(n)]` -/
def P6832830773124867049.Spec : Prop :=
  ∀ n, P6832830773124867049.a n = A023542 (n + 1)

end A023542

/-! ## A023542.P2697497894427933496

`∑[∑[A001950(n+1)]]%A207840(n+1)`
-/

namespace A023542.P2697497894427933496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A207840 (n + 1))

end

end A023542.P2697497894427933496

namespace A023542

/-- `∑[∑[A001950(n+1)]]%A207840(n+1)` -/
def P2697497894427933496.Spec : Prop :=
  ∀ n, P2697497894427933496.a n = A023542 (n + 1)

end A023542

/-! ## A023542.P17832689079341980965

`A000027(∑[∑[floor((n+1)*ϕ²)]])`
-/

namespace A023542.P17832689079341980965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023542.P17832689079341980965

namespace A023542

/-- `A000027(∑[∑[floor((n+1)*ϕ²)]])` -/
def P17832689079341980965.Spec : Prop :=
  ∀ n, P17832689079341980965.a n = A023542 (n + 1)

end A023542

/-!
# A023543: Convolution of natural numbers with A023533.

The programs for A023543, the canonical program `A023543.P14152490566558709800` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023543 has offset 1).

The definition of A023543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023543.P14665402990306430027

`∑[∑[char[C(n, 3)-1]]]`
-/

namespace A023543.P14665402990306430027
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023543.P14665402990306430027

namespace A023543

/-- `∑[∑[char[C(n, 3)-1]]]` -/
def P14665402990306430027.Spec : Prop :=
  ∀ n, (P14665402990306430027.a n : ℤ) = A023543 (n + 1)

end A023543

/-! ## A023543.P8285515652614106575

`∑[∑[char[∑[∑[n]]-1]]]`
-/

namespace A023543.P8285515652614106575
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023543.P8285515652614106575

namespace A023543

/-- `∑[∑[char[∑[∑[n]]-1]]]` -/
def P8285515652614106575.Spec : Prop :=
  ∀ n, (P8285515652614106575.a n : ℤ) = A023543 (n + 1)

end A023543

/-! ## A023543.P15317257291528025462

`∑[n+1]-A023544(n+1)`
-/

namespace A023543.P15317257291528025462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023544 (n + 1)

end

end A023543.P15317257291528025462

namespace A023543

/-- `∑[n+1]-A023544(n+1)` -/
def P15317257291528025462.Spec : Prop :=
  ∀ n, P15317257291528025462.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P5182026709262256192

`A023660(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023543.P5182026709262256192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023660 (n + 1) - a (n - 1)

end

end A023543.P5182026709262256192

namespace A023543

/-- `A023660(n+1)-a(n-1)` -/
def P5182026709262256192.Spec : Prop :=
  ∀ n, P5182026709262256192.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P12518880096954624332

`log2(4/2)*∑[∑[A023533(n+1)]]`
-/

namespace A023543.P12518880096954624332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A023543.P12518880096954624332

namespace A023543

/-- `log2(4/2)*∑[∑[A023533(n+1)]]` -/
def P12518880096954624332.Spec : Prop :=
  ∀ n, P12518880096954624332.a n = (A023543 (n + 1) : ℝ)

end A023543

/-! ## A023543.P14152490566558709800

`∑[n+1]-∑[∑[A014306(n+1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023543

/-- `∑[n+1]-∑[∑[A014306(n+1)]]` -/
def P14152490566558709800.Spec : Prop :=
  ∀ n, P14152490566558709800.a n = A023543 (n + 1)

theorem P14152490566558709800.correct : P14152490566558709800.Spec := by
  intro n
  simp only [A023543, Nat.add_sub_cancel]

end A023543

/-! ## A023543.P5377183630434080298

`A000027(∑[∑[A023533(n+1)]])`
-/

namespace A023543.P5377183630434080298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023543.P5377183630434080298

namespace A023543

/-- `A000027(∑[∑[A023533(n+1)]])` -/
def P5377183630434080298.Spec : Prop :=
  ∀ n, P5377183630434080298.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P18180333490624682062

`A023668(n+1)-A023665(n+1)`
-/

namespace A023543.P18180333490624682062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023668 (n + 1) - A023665 (n + 1)

end

end A023543.P18180333490624682062

namespace A023543

/-- `A023668(n+1)-A023665(n+1)` -/
def P18180333490624682062.Spec : Prop :=
  ∀ n, P18180333490624682062.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P14093284435886152352

`A000292(n+1)-(A023544(n+1)+A000292(n))`
-/

namespace A023543.P14093284435886152352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A023544 (n + 1) + A000292 n)

end

end A023543.P14093284435886152352

namespace A023543

/-- `A000292(n+1)-(A023544(n+1)+A000292(n))` -/
def P14093284435886152352.Spec : Prop :=
  ∀ n, P14093284435886152352.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P11531565538011121943

`A056556(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A023543.P11531565538011121943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056556 (n + 1) + a (n - 1)

end

end A023543.P11531565538011121943

namespace A023543

/-- `A056556(n+1)+a(n-1)` -/
def P11531565538011121943.Spec : Prop :=
  ∀ n, P11531565538011121943.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P16465076015994589220

`A000027(∑[A056556(n+1)])`
-/

namespace A023543.P16465076015994589220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023543.P16465076015994589220

namespace A023543

/-- `A000027(∑[A056556(n+1)])` -/
def P16465076015994589220.Spec : Prop :=
  ∀ n, P16465076015994589220.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P10936404299671899824

`A056556(n+1)+∑[A056556(n)]`
-/

namespace A023543.P10936404299671899824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023543.P10936404299671899824

namespace A023543

/-- `A056556(n+1)+∑[A056556(n)]` -/
def P10936404299671899824.Spec : Prop :=
  ∀ n, P10936404299671899824.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P301188263417604828

`A000035(2*n)+∑[∑[A023533(n+1)]]`
-/

namespace A023543.P301188263417604828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023543.P301188263417604828

namespace A023543

/-- `A000035(2*n)+∑[∑[A023533(n+1)]]` -/
def P301188263417604828.Spec : Prop :=
  ∀ n, P301188263417604828.a n = A023543 (n + 1)

end A023543

/-! ## A023543.P1649393946542483343

`A004525(2*∑[∑[A023533(n+1)]])`
-/

namespace A023543.P1649393946542483343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A023543.P1649393946542483343

namespace A023543

/-- `A004525(2*∑[∑[A023533(n+1)]])` -/
def P1649393946542483343.Spec : Prop :=
  ∀ n, P1649393946542483343.a n = A023543 (n + 1)

end A023543

/-!
# A023544: Convolution of natural numbers with A014306.

The programs for A023544, the canonical program `A023544.P4498546519026709669` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023544 has offset 1).

The definition of A023544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023544.P9437845794270676307

`∑[∑[1-char[C(n, 3)-1]]]`
-/

namespace A023544.P9437845794270676307
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P9437845794270676307

namespace A023544

/-- `∑[∑[1-char[C(n, 3)-1]]]` -/
def P9437845794270676307.Spec : Prop :=
  ∀ n, P9437845794270676307.a n = A023544 (n + 1)

end A023544

/-! ## A023544.P4498546519026709669

`∑[∑[A014306(n+1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023544

/-- `∑[∑[A014306(n+1)]]` -/
def P4498546519026709669.Spec : Prop :=
  ∀ n, P4498546519026709669.a n = A023544 (n + 1)

theorem P4498546519026709669.correct : P4498546519026709669.Spec := by
  intro n
  simp only [A023544, Nat.add_sub_cancel]

end A023544

/-! ## A023544.P9928847579562696

`∑[∑[1-A023533(n+1)]]`
-/

namespace A023544.P9928847579562696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P9928847579562696

namespace A023544

/-- `∑[∑[1-A023533(n+1)]]` -/
def P9928847579562696.Spec : Prop :=
  ∀ n, P9928847579562696.a n = A023544 (n + 1)

theorem P9928847579562696.correct : P9928847579562696.Spec := by
  intro n
  simp only [A023544, Nat.add_sub_cancel, A023544.P9928847579562696.f2, A023544.P9928847579562696.f1, A023544.P9928847579562696.a, A023544.P4498546519026709669.f2, A023544.P4498546519026709669.f1, A023544.P4498546519026709669.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, A023533, A023533.P16553737014273247425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A023544

/-! ## A023544.P6110999375637503514

`∑[n+1]-A023543(n+1)`
-/

namespace A023544.P6110999375637503514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023543 (n + 1)

end

end A023544.P6110999375637503514

namespace A023544

/-- `∑[n+1]-A023543(n+1)` -/
def P6110999375637503514.Spec : Prop :=
  ∀ n, P6110999375637503514.a n = A023544 (n + 1)

theorem P6110999375637503514.correct : P6110999375637503514.Spec := by
  intro n
  simp only [A023544, Nat.add_sub_cancel, A023544.P6110999375637503514.f1, A023544.P6110999375637503514.a, A023544.P4498546519026709669.f2, A023544.P4498546519026709669.f1, A023544.P4498546519026709669.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, A023543, A023543.P14152490566558709800.f1, A023543.P14152490566558709800.f3, A023543.P14152490566558709800.f2, A023543.P14152490566558709800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A023544

/-! ## A023544.P17822048076261854309

`A023661(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A023544.P17822048076261854309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023661 (n + 1) - a (n - 1)

end

end A023544.P17822048076261854309

namespace A023544

/-- `A023661(n+1)-a(n-1)` -/
def P17822048076261854309.Spec : Prop :=
  ∀ n, P17822048076261854309.a n = A023544 (n + 1)

end A023544

/-! ## A023544.P10003842291408611243

`A023669(n+1)-A023666(n+1)`
-/

namespace A023544.P10003842291408611243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023669 (n + 1) - A023666 (n + 1)

end

end A023544.P10003842291408611243

namespace A023544

/-- `A023669(n+1)-A023666(n+1)` -/
def P10003842291408611243.Spec : Prop :=
  ∀ n, P10003842291408611243.a n = A023544 (n + 1)

end A023544

/-! ## A023544.P2373571318713880785

`A000292(n+1)-(A023543(n+1)+A000292(n))`
-/

namespace A023544.P2373571318713880785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A023543 (n + 1) + A000292 n)

end

end A023544.P2373571318713880785

namespace A023544

/-- `A000292(n+1)-(A023543(n+1)+A000292(n))` -/
def P2373571318713880785.Spec : Prop :=
  ∀ n, P2373571318713880785.a n = A023544 (n + 1)

end A023544

/-! ## A023544.P18186355436778389867

`∑[n+1-A056556(n+1)]`
-/

namespace A023544.P18186355436778389867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A056556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P18186355436778389867

namespace A023544

/-- `∑[n+1-A056556(n+1)]` -/
def P18186355436778389867.Spec : Prop :=
  ∀ n, P18186355436778389867.a n = A023544 (n + 1)

end A023544

/-! ## A023544.P2686889692236938678

`∑[n+3-A194847(n+1)]`
-/

namespace A023544.P2686889692236938678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A194847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P2686889692236938678

namespace A023544

/-- `∑[n+3-A194847(n+1)]` -/
def P2686889692236938678.Spec : Prop :=
  ∀ n, P2686889692236938678.a n = A023544 (n + 1)

end A023544

/-! ## A023544.P8975449366654651986

`∑[∑[A023532(A120565(n))]]`
-/

namespace A023544.P8975449366654651986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A120565 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P8975449366654651986

namespace A023544

/-- `∑[∑[A023532(A120565(n))]]` -/
def P8975449366654651986.Spec : Prop :=
  ∀ n, P8975449366654651986.a n = A023544 (n + 1)

end A023544

/-!
# A023545: Convolution of natural numbers >= 2 and natural numbers >= 3.

The programs for A023545, the canonical program `A023545.P13939464609245961382` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023545 has offset 1).

The definition of A023545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023545.P3720348517996106286

`(n+1)*((n+1)²+12*(n+1)+23)/6`
-/

namespace A023545.P3720348517996106286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2 + 12 * (n + 1) + 23) : ℚ) / 6

end

end A023545.P3720348517996106286

namespace A023545

/-- `(n+1)*((n+1)²+12*(n+1)+23)/6` -/
def P3720348517996106286.Spec : Prop :=
  ∀ n, P3720348517996106286.a n = (A023545 (n + 1) : ℚ)

theorem P3720348517996106286.correct : P3720348517996106286.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A023545, Nat.add_sub_cancel, A023545.P3720348517996106286.a, A023545.P13939464609245961382.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A023545, Nat.add_sub_cancel, A023545.P3720348517996106286.a, A023545.P13939464609245961382.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A023545

/-! ## A023545.P13939464609245961382

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=17, a(2)=34, a(3)=58`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023545

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13939464609245961382.Spec : Prop :=
  ∀ n, P13939464609245961382.a n = A023545 (n + 1)

theorem P13939464609245961382.correct : P13939464609245961382.Spec := by
  intro n
  simp only [A023545, Nat.add_sub_cancel]

end A023545

/-! ## A023545.P3649888922819464853

`floor(∑[2-∑[a(n-1)-1]])` with `a(0)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A023545.P3649888922819464853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023545.P3649888922819464853

namespace A023545

/-- `floor(∑[2-∑[a(n-1)-1]])` -/
def P3649888922819464853.Spec : Prop :=
  ∀ n, P3649888922819464853.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P16684145022379581411

`∑[∑[ogf((6-6x+x^2)/(1-2x+x^2))]]-∑[n]`
-/

namespace A023545.P16684145022379581411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -6, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A023545.P16684145022379581411

namespace A023545

/-- `∑[∑[ogf((6-6x+x^2)/(1-2x+x^2))]]-∑[n]` -/
def P16684145022379581411.Spec : Prop :=
  ∀ n, P16684145022379581411.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P16029665142925922569

`Δ[A387204(n)]`
-/

namespace A023545.P16029665142925922569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023545.P16029665142925922569

namespace A023545

/-- `Δ[A387204(n)]` -/
def P16029665142925922569.Spec : Prop :=
  ∀ n, P16029665142925922569.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P14149122736466082827

`A264443(n)+6`
-/

namespace A023545.P14149122736466082827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + 6

end

end A023545.P14149122736466082827

namespace A023545

/-- `A264443(n)+6` -/
def P14149122736466082827.Spec : Prop :=
  ∀ n, P14149122736466082827.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P4746738203253643628

`∑[A155212(n)+4]`
-/

namespace A023545.P4746738203253643628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023545.P4746738203253643628

namespace A023545

/-- `∑[A155212(n)+4]` -/
def P4746738203253643628.Spec : Prop :=
  ∀ n, P4746738203253643628.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P7687446683356414480

`A111396(n)+6-n`
-/

namespace A023545.P7687446683356414480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n + (6 - (n : ℤ))

end

end A023545.P7687446683356414480

namespace A023545

/-- `A111396(n)+6-n` -/
def P7687446683356414480.Spec : Prop :=
  ∀ n, P7687446683356414480.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P12041375229044906256

`A101853(n+1)-∑[n]`
-/

namespace A023545.P12041375229044906256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023545.P12041375229044906256

namespace A023545

/-- `A101853(n+1)-∑[n]` -/
def P12041375229044906256.Spec : Prop :=
  ∀ n, P12041375229044906256.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P10528453717822062120

`A096941(n)-∑[n-1]`
-/

namespace A023545.P10528453717822062120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023545.P10528453717822062120

namespace A023545

/-- `A096941(n)-∑[n-1]` -/
def P10528453717822062120.Spec : Prop :=
  ∀ n, P10528453717822062120.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P6965427065894208640

`A096957(n)-∑[2*n]`
-/

namespace A023545.P6965427065894208640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023545.P6965427065894208640

namespace A023545

/-- `A096957(n)-∑[2*n]` -/
def P6965427065894208640.Spec : Prop :=
  ∀ n, P6965427065894208640.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P2734996770091289739

`A055831(n+4)+1+n`
-/

namespace A023545.P2734996770091289739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4) + 1 + (n : ℤ)

end

end A023545.P2734996770091289739

namespace A023545

/-- `A055831(n+4)+1+n` -/
def P2734996770091289739.Spec : Prop :=
  ∀ n, P2734996770091289739.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P11539128279270689136

`A240001(n+1)+(n+1)²`
-/

namespace A023545.P11539128279270689136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240001 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A023545.P11539128279270689136

namespace A023545

/-- `A240001(n+1)+(n+1)²` -/
def P11539128279270689136.Spec : Prop :=
  ∀ n, P11539128279270689136.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P8220134603582033331

`A060488(n+3)+2*(n+1)`
-/

namespace A023545.P8220134603582033331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3) + (2 * (n + 1) : ℤ)

end

end A023545.P8220134603582033331

namespace A023545

/-- `A060488(n+3)+2*(n+1)` -/
def P8220134603582033331.Spec : Prop :=
  ∀ n, P8220134603582033331.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P15958893906207624809

`A323221(n+1)-(2*n+3)`
-/

namespace A023545.P15958893906207624809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 (n + 1) - (2 * n + 3 : ℤ)

end

end A023545.P15958893906207624809

namespace A023545

/-- `A323221(n+1)-(2*n+3)` -/
def P15958893906207624809.Spec : Prop :=
  ∀ n, P15958893906207624809.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P5408328896250705091

`A104675(n)+A006503(n)`
-/

namespace A023545.P5408328896250705091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 n + A006503 n

end

end A023545.P5408328896250705091

namespace A023545

/-- `A104675(n)+A006503(n)` -/
def P5408328896250705091.Spec : Prop :=
  ∀ n, P5408328896250705091.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P17122094943576895378

`A108195(n+1)+A027378(n)`
-/

namespace A023545.P17122094943576895378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108195 (n + 1) + A027378 n

end

end A023545.P17122094943576895378

namespace A023545

/-- `A108195(n+1)+A027378(n)` -/
def P17122094943576895378.Spec : Prop :=
  ∀ n, P17122094943576895378.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P9816054225819348771

`A102305(n+1)+A092286(n)`
-/

namespace A023545.P9816054225819348771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (n + 1) + A092286 n

end

end A023545.P9816054225819348771

namespace A023545

/-- `A102305(n+1)+A092286(n)` -/
def P9816054225819348771.Spec : Prop :=
  ∀ n, P9816054225819348771.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P1977700759304119057

`A000292(n)+A268581(n)+1`
-/

namespace A023545.P1977700759304119057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A268581 n + 1)

end

end A023545.P1977700759304119057

namespace A023545

/-- `A000292(n)+A268581(n)+1` -/
def P1977700759304119057.Spec : Prop :=
  ∀ n, P1977700759304119057.a n = A023545 (n + 1)

end A023545

/-! ## A023545.P6874643903778047857

`A188554(n+1)+A090288(n)`
-/

namespace A023545.P6874643903778047857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 1) + A090288 n

end

end A023545.P6874643903778047857

namespace A023545

/-- `A188554(n+1)+A090288(n)` -/
def P6874643903778047857.Spec : Prop :=
  ∀ n, P6874643903778047857.a n = A023545 (n + 1)

end A023545

/-!
# A023546: Convolution of natural numbers >= 2 and A023531.

The programs for A023546, the canonical program `A023546.P15832084740815402753` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023546 has offset 1).

The definition of A023546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023546.P782352794600339979

`∑[1-∑[A251635(n)]]`
-/

namespace A023546.P782352794600339979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P782352794600339979

namespace A023546

/-- `∑[1-∑[A251635(n)]]` -/
def P782352794600339979.Spec : Prop :=
  ∀ n, P782352794600339979.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P8258366813179205333

`∑[n+2]-A023547(n+1)`
-/

namespace A023546.P8258366813179205333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023547 (n + 1)

end

end A023546.P8258366813179205333

namespace A023546

/-- `∑[n+2]-A023547(n+1)` -/
def P8258366813179205333.Spec : Prop :=
  ∀ n, P8258366813179205333.a n = A023546 (n + 1)

theorem P8258366813179205333.correct : P8258366813179205333.Spec := by
  intro n
  simp only [A023546, Nat.add_sub_cancel, A023546.P8258366813179205333.f1, A023546.P8258366813179205333.a, A023546.P15832084740815402753.f2, A023546.P15832084740815402753.f1, A023546.P15832084740815402753.a, A023547, A023547.P12137966802095583641.f1, A023547.P12137966802095583641.a, A028242, A028242.P334475472552892041.a, A097806, A097806.P6713740258379660295.a, A002260, A002260.P9170571874073898642.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A023546

/-! ## A023546.P15832084740815402753

`∑[A028242(∑[A097806(n)])]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023546

/-- `∑[A028242(∑[A097806(n)])]` -/
def P15832084740815402753.Spec : Prop :=
  ∀ n, P15832084740815402753.a n = A023546 (n + 1)

theorem P15832084740815402753.correct : P15832084740815402753.Spec := by
  intro n
  simp only [A023546, Nat.add_sub_cancel]

end A023546

/-! ## A023546.P204054942504771206

`∑[A028242(∑[A167374(n)²])]`
-/

namespace A023546.P204054942504771206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P204054942504771206

namespace A023546

/-- `∑[A028242(∑[A167374(n)²])]` -/
def P204054942504771206.Spec : Prop :=
  ∀ n, P204054942504771206.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P2336155419110986714

`∑[A023531(n+1)+∑[A023531(n+1)]]`
-/

namespace A023546.P2336155419110986714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P2336155419110986714

namespace A023546

/-- `∑[A023531(n+1)+∑[A023531(n+1)]]` -/
def P2336155419110986714.Spec : Prop :=
  ∀ n, P2336155419110986714.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P8599893050296603172

`∑[A129184(n+1)+∑[A129184(n+1)]]`
-/

namespace A023546.P8599893050296603172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P8599893050296603172

namespace A023546

/-- `∑[A129184(n+1)+∑[A129184(n+1)]]` -/
def P8599893050296603172.Spec : Prop :=
  ∀ n, P8599893050296603172.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P1254387688187564065

`A023535(n+2)-A023531(n+2)`
-/

namespace A023546.P1254387688187564065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023535 (n + 2) - A023531 (n + 2)

end

end A023546.P1254387688187564065

namespace A023546

/-- `A023535(n+2)-A023531(n+2)` -/
def P1254387688187564065.Spec : Prop :=
  ∀ n, P1254387688187564065.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P6973610288521199994

`A023535(n+2)-A073423(n+3)`
-/

namespace A023546.P6973610288521199994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023535 (n + 2) - A073423 (n + 3)

end

end A023546.P6973610288521199994

namespace A023546

/-- `A023535(n+2)-A073423(n+3)` -/
def P6973610288521199994.Spec : Prop :=
  ∀ n, P6973610288521199994.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P16809363871542139850

`A052146(n+2)+∑[A052146(n+2)]`
-/

namespace A023546.P16809363871542139850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P16809363871542139850

namespace A023546

/-- `A052146(n+2)+∑[A052146(n+2)]` -/
def P16809363871542139850.Spec : Prop :=
  ∀ n, P16809363871542139850.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P7859530981015065221

`∑[∑[A129186(n+1)]]-A129186(n+1)`
-/

namespace A023546.P7859530981015065221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129186 (n + 1)

end

end A023546.P7859530981015065221

namespace A023546

/-- `∑[∑[A129186(n+1)]]-A129186(n+1)` -/
def P7859530981015065221.Spec : Prop :=
  ∀ n, P7859530981015065221.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P12671024301500295451

`∑[A010054(n+2)+∑[A010054(n+2)]]`
-/

namespace A023546.P12671024301500295451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P12671024301500295451

namespace A023546

/-- `∑[A010054(n+2)+∑[A010054(n+2)]]` -/
def P12671024301500295451.Spec : Prop :=
  ∀ n, P12671024301500295451.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P12248873442721125646

`∑[A332026(n+3)-3]`
-/

namespace A023546.P12248873442721125646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332026 (n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P12248873442721125646

namespace A023546

/-- `∑[A332026(n+3)-3]` -/
def P12248873442721125646.Spec : Prop :=
  ∀ n, P12248873442721125646.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P11664281302969799543

`∑[A086520(∑[A134082(n)])]`
-/

namespace A023546.P11664281302969799543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P11664281302969799543

namespace A023546

/-- `∑[A086520(∑[A134082(n)])]` -/
def P11664281302969799543.Spec : Prop :=
  ∀ n, P11664281302969799543.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P14275002212308816397

`∑[A023416(A173786(n+1))]`
-/

namespace A023546.P14275002212308816397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A173786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P14275002212308816397

namespace A023546

/-- `∑[A023416(A173786(n+1))]` -/
def P14275002212308816397.Spec : Prop :=
  ∀ n, P14275002212308816397.a n = A023546 (n + 1)

end A023546

/-! ## A023546.P8427753913361488428

`∑[A023416(A048645(n+3))]`
-/

namespace A023546.P8427753913361488428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048645 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P8427753913361488428

namespace A023546

/-- `∑[A023416(A048645(n+3))]` -/
def P8427753913361488428.Spec : Prop :=
  ∀ n, P8427753913361488428.a n = A023546 (n + 1)

end A023546

/-!
# A023547: Convolution of natural numbers >= 2 and A023532.

The programs for A023547, the canonical program `A023547.P12137966802095583641` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023547 has offset 1).

The definition of A023547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023547.P1984369188887649218

`∑[∑[A251635(n)+1]]`
-/

namespace A023547.P1984369188887649218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251635 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P1984369188887649218

namespace A023547

/-- `∑[∑[A251635(n)+1]]` -/
def P1984369188887649218.Spec : Prop :=
  ∀ n, P1984369188887649218.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P12137966802095583641

`∑[n+2]-A023546(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023547

/-- `∑[n+2]-A023546(n+1)` -/
def P12137966802095583641.Spec : Prop :=
  ∀ n, P12137966802095583641.a n = A023547 (n + 1)

theorem P12137966802095583641.correct : P12137966802095583641.Spec := by
  intro n
  simp only [A023547, Nat.add_sub_cancel]

end A023547

/-! ## A023547.P3965552516805400252

`∑[∑[A195909(A104887(n+1))]]`
-/

namespace A023547.P3965552516805400252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (A104887 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P3965552516805400252

namespace A023547

/-- `∑[∑[A195909(A104887(n+1))]]` -/
def P3965552516805400252.Spec : Prop :=
  ∀ n, P3965552516805400252.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P14289593398183364010

`A023536(n+1)+∑[A023532(n+1)]`
-/

namespace A023547.P14289593398183364010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023536 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P14289593398183364010

namespace A023547

/-- `A023536(n+1)+∑[A023532(n+1)]` -/
def P14289593398183364010.Spec : Prop :=
  ∀ n, P14289593398183364010.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P14564478578832124709

`A083920(n+2)+∑[A083920(n+2)]`
-/

namespace A023547.P14564478578832124709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P14564478578832124709

namespace A023547

/-- `A083920(n+2)+∑[A083920(n+2)]` -/
def P14564478578832124709.Spec : Prop :=
  ∀ n, P14564478578832124709.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P8838604955336855314

`∑[n+5-A332026(n+3)]`
-/

namespace A023547.P8838604955336855314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A332026 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P8838604955336855314

namespace A023547

/-- `∑[n+5-A332026(n+3)]` -/
def P8838604955336855314.Spec : Prop :=
  ∀ n, P8838604955336855314.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P15834022480193672703

`A023536(n+2)-A023532(n+2)`
-/

namespace A023547.P15834022480193672703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023536 (n + 2) - A023532 (n + 2)

end

end A023547.P15834022480193672703

namespace A023547

/-- `A023536(n+2)-A023532(n+2)` -/
def P15834022480193672703.Spec : Prop :=
  ∀ n, P15834022480193672703.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P9251687832978176340

`∑[∑[A081729(A058213(n+1))]]`
-/

namespace A023547.P9251687832978176340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A058213 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P9251687832978176340

namespace A023547

/-- `∑[∑[A081729(A058213(n+1))]]` -/
def P9251687832978176340.Spec : Prop :=
  ∀ n, P9251687832978176340.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P515563750392608143

`∑[∑[A094267(A059268(n+2))]]`
-/

namespace A023547.P515563750392608143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A059268 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P515563750392608143

namespace A023547

/-- `∑[∑[A094267(A059268(n+2))]]` -/
def P515563750392608143.Spec : Prop :=
  ∀ n, P515563750392608143.a n = A023547 (n + 1)

end A023547

/-! ## A023547.P17053500136758017084

`∑[∑[A009531(A130321(n)+1)]]`
-/

namespace A023547.P17053500136758017084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A130321 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023547.P17053500136758017084

namespace A023547

/-- `∑[∑[A009531(A130321(n)+1)]]` -/
def P17053500136758017084.Spec : Prop :=
  ∀ n, P17053500136758017084.a n = A023547 (n + 1)

end A023547

/-!
# A023548: Convolution of natural numbers >= 2 and Fibonacci numbers.

The programs for A023548, the canonical program `A023548.P5104912419160239020` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023548 has offset 1).

The definition of A023548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023548.P5104912419160239020

`A000045(n+5)+A000045(n+3)-(n+5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023548

/-- `A000045(n+5)+A000045(n+3)-(n+5)` -/
def P5104912419160239020.Spec : Prop :=
  ∀ n, P5104912419160239020.a n = A023548 (n + 1)

theorem P5104912419160239020.correct : P5104912419160239020.Spec := by
  intro n
  simp only [A023548, Nat.add_sub_cancel]

end A023548

/-! ## A023548.P13116486389109860400

`ceil(∑[ϕ^(n+2)-1])`
-/

namespace A023548.P13116486389109860400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A023548.P13116486389109860400

namespace A023548

/-- `ceil(∑[ϕ^(n+2)-1])` -/
def P13116486389109860400.Spec : Prop :=
  ∀ n, P13116486389109860400.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P4117000713343993059

`∑[ogf((2-x)/(1-2x+x^3))]`
-/

namespace A023548.P4117000713343993059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P4117000713343993059

namespace A023548

/-- `∑[ogf((2-x)/(1-2x+x^3))]` -/
def P4117000713343993059.Spec : Prop :=
  ∀ n, P4117000713343993059.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P12809897769598661029

`ogf((2-x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023548.P12809897769598661029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, 2, 1, -1] n

end

end A023548.P12809897769598661029

namespace A023548

/-- `ogf((2-x)/(1-3x+2x^2+x^3-x^4))` -/
def P12809897769598661029.Spec : Prop :=
  ∀ n, P12809897769598661029.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P16639223173990539304

`record[round(ϕ^(n-3)-(n-2))]`
-/

namespace A023548.P16639223173990539304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n : ℤ) - 3 : ℤ) - ((n : ℤ) - 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023548.P16639223173990539304

namespace A023548

/-- `record[round(ϕ^(n-3)-(n-2))]` -/
def P16639223173990539304.Spec : Prop :=
  ∀ n, P16639223173990539304.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P16948570644081918238

`∑[round(ϕ^n)]+a(n-1)` with `a(0)=2`
-/

namespace A023548.P16948570644081918238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A023548.P16948570644081918238

namespace A023548

/-- `∑[round(ϕ^n)]+a(n-1)` -/
def P16948570644081918238.Spec : Prop :=
  ∀ n, P16948570644081918238.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P17138095885544498618

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=2, a(1)=1`
-/

namespace A023548.P17138095885544498618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P17138095885544498618

namespace A023548

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P17138095885544498618.Spec : Prop :=
  ∀ n, (P17138095885544498618.a n : ℤ) = A023548 (n + 1)

end A023548

/-! ## A023548.P4198419506290055246

`floor(ϕ*(a(n-1)+n)-(n-2))` with `a(0)=2`
-/

namespace A023548.P4198419506290055246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + (n : ℤ) : ℝ) - ((n : ℤ) - 2 : ℝ)⌋

end

end A023548.P4198419506290055246

namespace A023548

/-- `floor(ϕ*(a(n-1)+n)-(n-2))` -/
def P4198419506290055246.Spec : Prop :=
  ∀ n, P4198419506290055246.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P5051925909201455442

`∑[2*a(n-1)-a(n-3)]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A023548.P5051925909201455442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P5051925909201455442

namespace A023548

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P5051925909201455442.Spec : Prop :=
  ∀ n, P5051925909201455442.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P10296993562634457529

`a(n-1)+2+a(n-2)+n` with `a(0)=2, a(1)=5`
-/

namespace A023548.P10296993562634457529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + 2 + (a (n - 2) + n)

end

end A023548.P10296993562634457529

namespace A023548

/-- `a(n-1)+2+a(n-2)+n` -/
def P10296993562634457529.Spec : Prop :=
  ∀ n, (P10296993562634457529.a n : ℤ) = A023548 (n + 1)

end A023548

/-! ## A023548.P12870656465125415946

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A023548.P12870656465125415946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P12870656465125415946

namespace A023548

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P12870656465125415946.Spec : Prop :=
  ∀ n, P12870656465125415946.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P17701497260447055065

`∑[∑[A000032(n)]]`
-/

namespace A023548.P17701497260447055065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P17701497260447055065

namespace A023548

/-- `∑[∑[A000032(n)]]` -/
def P17701497260447055065.Spec : Prop :=
  ∀ n, P17701497260447055065.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P3995240651200630737

`∑[A001610(n+1)]`
-/

namespace A023548.P3995240651200630737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P3995240651200630737

namespace A023548

/-- `∑[A001610(n+1)]` -/
def P3995240651200630737.Spec : Prop :=
  ∀ n, P3995240651200630737.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P11021819751848769614

`∑[A014739(n)+1]`
-/

namespace A023548.P11021819751848769614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P11021819751848769614

namespace A023548

/-- `∑[A014739(n)+1]` -/
def P11021819751848769614.Spec : Prop :=
  ∀ n, P11021819751848769614.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P10733186269769035968

`∑[A324015(n+2)]`
-/

namespace A023548.P10733186269769035968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P10733186269769035968

namespace A023548

/-- `∑[A324015(n+2)]` -/
def P10733186269769035968.Spec : Prop :=
  ∀ n, P10733186269769035968.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P1778993583394291946

`∑[A288219(n)]-n`
-/

namespace A023548.P1778993583394291946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A023548.P1778993583394291946

namespace A023548

/-- `∑[A288219(n)]-n` -/
def P1778993583394291946.Spec : Prop :=
  ∀ n, P1778993583394291946.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P10847526581357750233

`A066982(n+3)-1`
-/

namespace A023548.P10847526581357750233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 3) - 1

end

end A023548.P10847526581357750233

namespace A023548

/-- `A066982(n+3)-1` -/
def P10847526581357750233.Spec : Prop :=
  ∀ n, P10847526581357750233.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P14211893797542884662

`A133641(n+2)-3`
-/

namespace A023548.P14211893797542884662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133641 (n + 2) - 3

end

end A023548.P14211893797542884662

namespace A023548

/-- `A133641(n+2)-3` -/
def P14211893797542884662.Spec : Prop :=
  ∀ n, P14211893797542884662.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P1367669047859495118

`A168043(n+3)-2`
-/

namespace A023548.P1367669047859495118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168043 (n + 3) - 2

end

end A023548.P1367669047859495118

namespace A023548

/-- `A168043(n+3)-2` -/
def P1367669047859495118.Spec : Prop :=
  ∀ n, P1367669047859495118.a n = A023548 (n + 1)

end A023548

/-! ## A023548.P11977902850485240539

`A027181(n)+1+n`
-/

namespace A023548.P11977902850485240539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 n + 1 + (n : ℤ)

end

end A023548.P11977902850485240539

namespace A023548

/-- `A027181(n)+1+n` -/
def P11977902850485240539.Spec : Prop :=
  ∀ n, P11977902850485240539.a n = A023548 (n + 1)

end A023548

/-!
# A023549: Convolution of natural numbers >= 2 and Lucas numbers.

The programs for A023549, the canonical program `A023549.P6440797248166161086` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023549 has offset 1).

The definition of A023549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023549.P14866666629818280261

`∑[ogf((2+3x-2x^2)/(1-2x+x^3))]`
-/

namespace A023549.P14866666629818280261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -2] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P14866666629818280261

namespace A023549

/-- `∑[ogf((2+3x-2x^2)/(1-2x+x^3))]` -/
def P14866666629818280261.Spec : Prop :=
  ∀ n, P14866666629818280261.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P15232986281319596812

`ogf((2+3x-2x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023549.P15232986281319596812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -2] [1, -3, 2, 1, -1] n

end

end A023549.P15232986281319596812

namespace A023549

/-- `ogf((2+3x-2x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P15232986281319596812.Spec : Prop :=
  ∀ n, P15232986281319596812.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P6440797248166161086

`∑[a(n-1)+a(n-2)+3]` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023549

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P6440797248166161086.Spec : Prop :=
  ∀ n, (P6440797248166161086.a n : ℤ) = A023549 (n + 1)

theorem P6440797248166161086.correct : P6440797248166161086.Spec := by
  intro n
  simp only [A023549, Nat.add_sub_cancel]

end A023549

/-! ## A023549.P15289643176863813757

`∑[A192750(n)+1]`
-/

namespace A023549.P15289643176863813757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192750 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P15289643176863813757

namespace A023549

/-- `∑[A192750(n)+1]` -/
def P15289643176863813757.Spec : Prop :=
  ∀ n, P15289643176863813757.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P11760920891393638569

`∑[∑[A022088(n)]+2]`
-/

namespace A023549.P11760920891393638569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P11760920891393638569

namespace A023549

/-- `∑[∑[A022088(n)]+2]` -/
def P11760920891393638569.Spec : Prop :=
  ∀ n, P11760920891393638569.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P7071107459348626465

`∑[A289107(n+1)]-2`
-/

namespace A023549.P7071107459348626465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A023549.P7071107459348626465

namespace A023549

/-- `∑[A289107(n+1)]-2` -/
def P7071107459348626465.Spec : Prop :=
  ∀ n, P7071107459348626465.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P15937066616049822684

`A192751(n+1)+1+n`
-/

namespace A023549.P15937066616049822684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 (n + 1) + 1 + (n : ℤ)

end

end A023549.P15937066616049822684

namespace A023549

/-- `A192751(n+1)+1+n` -/
def P15937066616049822684.Spec : Prop :=
  ∀ n, P15937066616049822684.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P1437013590707657248

`∑[∑[5*A000045(n)]+2]`
-/

namespace A023549.P1437013590707657248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P1437013590707657248

namespace A023549

/-- `∑[∑[5*A000045(n)]+2]` -/
def P1437013590707657248.Spec : Prop :=
  ∀ n, P1437013590707657248.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P15033557021610237225

`A192750(n+2)-3*(n+3)`
-/

namespace A023549.P15033557021610237225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192750 (n + 2) - (3 * (n + 3) : ℤ)

end

end A023549.P15033557021610237225

namespace A023549

/-- `A192750(n+2)-3*(n+3)` -/
def P15033557021610237225.Spec : Prop :=
  ∀ n, P15033557021610237225.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P15995524660606286322

`2*(n+1)+5*A001924(n)`
-/

namespace A023549.P15995524660606286322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + 5 * A001924 n

end

end A023549.P15995524660606286322

namespace A023549

/-- `2*(n+1)+5*A001924(n)` -/
def P15995524660606286322.Spec : Prop :=
  ∀ n, P15995524660606286322.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P13069058231281961278

`∑[∑[5*Δ[A000071(n+1)]]+2]`
-/

namespace A023549.P13069058231281961278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P13069058231281961278

namespace A023549

/-- `∑[∑[5*Δ[A000071(n+1)]]+2]` -/
def P13069058231281961278.Spec : Prop :=
  ∀ n, P13069058231281961278.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P4428640705362562820

`A192951(n+1)+A192754(n)`
-/

namespace A023549.P4428640705362562820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) + A192754 n

end

end A023549.P4428640705362562820

namespace A023549

/-- `A192951(n+1)+A192754(n)` -/
def P4428640705362562820.Spec : Prop :=
  ∀ n, P4428640705362562820.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P676321442497813359

`∑[A168674(n)+A001610(n+1)]`
-/

namespace A023549.P676321442497813359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A001610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P676321442497813359

namespace A023549

/-- `∑[A168674(n)+A001610(n+1)]` -/
def P676321442497813359.Spec : Prop :=
  ∀ n, P676321442497813359.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P10155990983895312196

`∑[A001610(n+3)-A000211(n)]`
-/

namespace A023549.P10155990983895312196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 3) - A000211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P10155990983895312196

namespace A023549

/-- `∑[A001610(n+3)-A000211(n)]` -/
def P10155990983895312196.Spec : Prop :=
  ∀ n, P10155990983895312196.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P564320661446639638

`A027961(n+1)+A023537(n+1)`
-/

namespace A023549.P564320661446639638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + A023537 (n + 1)

end

end A023549.P564320661446639638

namespace A023549

/-- `A027961(n+1)+A023537(n+1)` -/
def P564320661446639638.Spec : Prop :=
  ∀ n, P564320661446639638.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P3510671949290259932

`A192761(n+1)+A001891(n+1)`
-/

namespace A023549.P3510671949290259932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 (n + 1) + A001891 (n + 1)

end

end A023549.P3510671949290259932

namespace A023549

/-- `A192761(n+1)+A001891(n+1)` -/
def P3510671949290259932.Spec : Prop :=
  ∀ n, P3510671949290259932.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P5099688931409910149

`A023553(n+1)-A027961(n+1)`
-/

namespace A023549.P5099688931409910149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023553 (n + 1) - A027961 (n + 1)

end

end A023549.P5099688931409910149

namespace A023549

/-- `A023553(n+1)-A027961(n+1)` -/
def P5099688931409910149.Spec : Prop :=
  ∀ n, P5099688931409910149.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P5123686754325163643

`A033811(n+1)-A066982(n+1)`
-/

namespace A023549.P5123686754325163643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033811 (n + 1) - A066982 (n + 1)

end

end A023549.P5123686754325163643

namespace A023549

/-- `A033811(n+1)-A066982(n+1)` -/
def P5123686754325163643.Spec : Prop :=
  ∀ n, P5123686754325163643.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P6799352958861427655

`A023537(n+2)-A000032(n+2)`
-/

namespace A023549.P6799352958861427655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 2) - A000032 (n + 2)

end

end A023549.P6799352958861427655

namespace A023549

/-- `A023537(n+2)-A000032(n+2)` -/
def P6799352958861427655.Spec : Prop :=
  ∀ n, P6799352958861427655.a n = A023549 (n + 1)

end A023549

/-! ## A023549.P8132398992128781215

`A023537(n+2)-A000204(n+2)`
-/

namespace A023549.P8132398992128781215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 2) - A000204 (n + 2)

end

end A023549.P8132398992128781215

namespace A023549

/-- `A023537(n+2)-A000204(n+2)` -/
def P8132398992128781215.Spec : Prop :=
  ∀ n, P8132398992128781215.a n = A023549 (n + 1)

end A023549

/-!
# A023550: Convolution of natural numbers >= 2 and (F(2), F(3), F(4), ...).

The programs for A023550, the canonical program `A023550.P1624742474377192388` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023550 has offset 1).

The definition of A023550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023550.P9923937566225395380

`A000032(n+5)-2*(n+1)-7`
-/

namespace A023550.P9923937566225395380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 5) - (2 * (n + 1) : ℤ) - 7

end

end A023550.P9923937566225395380

namespace A023550

/-- `A000032(n+5)-2*(n+1)-7` -/
def P9923937566225395380.Spec : Prop :=
  ∀ n, P9923937566225395380.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P7926128293937058735

`A000045(n+6)+A000045(n+4)-2*(n+1)-7`
-/

namespace A023550.P7926128293937058735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) + A000045 (n + 4) - (2 * (n + 1) : ℤ) - 7

end

end A023550.P7926128293937058735

namespace A023550

/-- `A000045(n+6)+A000045(n+4)-2*(n+1)-7` -/
def P7926128293937058735.Spec : Prop :=
  ∀ n, P7926128293937058735.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P1624742474377192388

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=7, a(2)=16, a(3)=32`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023550

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P1624742474377192388.Spec : Prop :=
  ∀ n, P1624742474377192388.a n = A023550 (n + 1)

theorem P1624742474377192388.correct : P1624742474377192388.Spec := by
  intro n
  simp only [A023550, Nat.add_sub_cancel]

end A023550

/-! ## A023550.P7342043362774473505

`∑[ceil(∑[ϕ^(n+1)])]`
-/

namespace A023550.P7342043362774473505
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023550.P7342043362774473505

namespace A023550

/-- `∑[ceil(∑[ϕ^(n+1)])]` -/
def P7342043362774473505.Spec : Prop :=
  ∀ n, P7342043362774473505.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P1989954260849654781

`ogf((2+x-x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023550.P1989954260849654781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -1] [1, -3, 2, 1, -1] n

end

end A023550.P1989954260849654781

namespace A023550

/-- `ogf((2+x-x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P1989954260849654781.Spec : Prop :=
  ∀ n, P1989954260849654781.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P1459123819218054690

`∑[a(n-2)+a(n-1)]-2*n` with `a(0)=2, a(1)=7, a(2)=11`
-/

namespace A023550.P1459123819218054690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 11] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A023550.P1459123819218054690

namespace A023550

/-- `∑[a(n-2)+a(n-1)]-2*n` -/
def P1459123819218054690.Spec : Prop :=
  ∀ n, P1459123819218054690.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P16812787726354329254

`A027181(n+1)-1`
-/

namespace A023550.P16812787726354329254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (n + 1) - 1

end

end A023550.P16812787726354329254

namespace A023550

/-- `A027181(n+1)-1` -/
def P16812787726354329254.Spec : Prop :=
  ∀ n, P16812787726354329254.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P5132039464468110168

`A023537(n+1)+1+n`
-/

namespace A023550.P5132039464468110168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1) + 1 + (n : ℤ)

end

end A023550.P5132039464468110168

namespace A023550

/-- `A023537(n+1)+1+n` -/
def P5132039464468110168.Spec : Prop :=
  ∀ n, P5132039464468110168.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P17013992273301049303

`A023548(n+2)-(n+3)`
-/

namespace A023550.P17013992273301049303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 2) - (n + 3 : ℤ)

end

end A023550.P17013992273301049303

namespace A023550

/-- `A023548(n+2)-(n+3)` -/
def P17013992273301049303.Spec : Prop :=
  ∀ n, P17013992273301049303.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P17849939011333111928

`A163704(n+2)-(n+3)`
-/

namespace A023550.P17849939011333111928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163704 (n + 2) - (n + 3 : ℤ)

end

end A023550.P17849939011333111928

namespace A023550

/-- `A163704(n+2)-(n+3)` -/
def P17849939011333111928.Spec : Prop :=
  ∀ n, P17849939011333111928.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P4889170565399386274

`-∑[2-A000032(2*n-(n-3))]`
-/

namespace A023550.P4889170565399386274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000032 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023550.P4889170565399386274

namespace A023550

/-- `-∑[2-A000032(2*n-(n-3))]` -/
def P4889170565399386274.Spec : Prop :=
  ∀ n, P4889170565399386274.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P16105119965817618621

`a(n-1)+A000032(C(n+3, n+2))-2` with `a(0)=2`
-/

namespace A023550.P16105119965817618621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A000032 (Nat.choose (n + 3) (n + 2)) - 2)

end

end A023550.P16105119965817618621

namespace A023550

/-- `a(n-1)+A000032(C(n+3, n+2))-2` -/
def P16105119965817618621.Spec : Prop :=
  ∀ n, P16105119965817618621.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P14017175258729117483

`A192954(n)+A192750(n)`
-/

namespace A023550.P14017175258729117483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + A192750 n

end

end A023550.P14017175258729117483

namespace A023550

/-- `A192954(n)+A192750(n)` -/
def P14017175258729117483.Spec : Prop :=
  ∀ n, P14017175258729117483.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P6719262609051063403

`A192956(n)+A192752(n)`
-/

namespace A023550.P6719262609051063403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A192752 n

end

end A023550.P6719262609051063403

namespace A023550

/-- `A192956(n)+A192752(n)` -/
def P6719262609051063403.Spec : Prop :=
  ∀ n, P6719262609051063403.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P11231330667154084050

`A192979(n)+A192754(n)`
-/

namespace A023550.P11231330667154084050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n + A192754 n

end

end A023550.P11231330667154084050

namespace A023550

/-- `A192979(n)+A192754(n)` -/
def P11231330667154084050.Spec : Prop :=
  ∀ n, P11231330667154084050.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P5155741484769506926

`A027961(n+1)+A027181(n)`
-/

namespace A023550.P5155741484769506926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + A027181 n

end

end A023550.P5155741484769506926

namespace A023550

/-- `A027961(n+1)+A027181(n)` -/
def P5155741484769506926.Spec : Prop :=
  ∀ n, P5155741484769506926.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P15028193084494550127

`A210678(n+1)+A030119(n)`
-/

namespace A023550.P15028193084494550127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 (n + 1) + A030119 n

end

end A023550.P15028193084494550127

namespace A023550

/-- `A210678(n+1)+A030119(n)` -/
def P15028193084494550127.Spec : Prop :=
  ∀ n, P15028193084494550127.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P5670866863967306613

`A192953(n+1)+A053311(n)`
-/

namespace A023550.P5670866863967306613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 (n + 1) + A053311 n

end

end A023550.P5670866863967306613

namespace A023550

/-- `A192953(n+1)+A053311(n)` -/
def P5670866863967306613.Spec : Prop :=
  ∀ n, P5670866863967306613.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P12361908316842512573

`A192756(n)+A133931(n+1)`
-/

namespace A023550.P12361908316842512573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192756 n + A133931 (n + 1)

end

end A023550.P12361908316842512573

namespace A023550

/-- `A192756(n)+A133931(n+1)` -/
def P12361908316842512573.Spec : Prop :=
  ∀ n, P12361908316842512573.a n = A023550 (n + 1)

end A023550

/-! ## A023550.P17475719292562093246

`A192962(n+1)+A192746(n)`
-/

namespace A023550.P17475719292562093246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192962 (n + 1) + A192746 n

end

end A023550.P17475719292562093246

namespace A023550

/-- `A192962(n+1)+A192746(n)` -/
def P17475719292562093246.Spec : Prop :=
  ∀ n, P17475719292562093246.a n = A023550 (n + 1)

end A023550

/-!
# A023551: Self-convolution of natural numbers >= 3.

The programs for A023551, the canonical program `A023551.P7348704678177345546` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023551 has offset 1).

The definition of A023551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023551.P7348704678177345546

`(n+1)*((n+1)²+15*(n+1)+38)/6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023551

/-- `(n+1)*((n+1)²+15*(n+1)+38)/6` -/
def P7348704678177345546.Spec : Prop :=
  ∀ n, P7348704678177345546.a n = (A023551 (n + 1) : ℚ)

end A023551

/-! ## A023551.P203728039408945180

`A026054(n+3)-4`
-/

namespace A023551.P203728039408945180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - 4

end

end A023551.P203728039408945180

namespace A023551

/-- `A026054(n+3)-4` -/
def P203728039408945180.Spec : Prop :=
  ∀ n, P203728039408945180.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P9019594469399994350

`A275874(n+4)+(n+3)²`
-/

namespace A023551.P9019594469399994350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275874 (n + 4) + ((n + 3) ^ 2 : ℤ)

end

end A023551.P9019594469399994350

namespace A023551

/-- `A275874(n+4)+(n+3)²` -/
def P9019594469399994350.Spec : Prop :=
  ∀ n, P9019594469399994350.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P265517964777128210

`A101853(n+1)+3*(n+1)`
-/

namespace A023551.P265517964777128210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) + (3 * (n + 1) : ℤ)

end

end A023551.P265517964777128210

namespace A023551

/-- `A101853(n+1)+3*(n+1)` -/
def P265517964777128210.Spec : Prop :=
  ∀ n, P265517964777128210.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P2216630897706591235

`A008778(n+1)+(n+3)²-5`
-/

namespace A023551.P2216630897706591235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) + (((n + 3) ^ 2 : ℤ) - 5)

end

end A023551.P2216630897706591235

namespace A023551

/-- `A008778(n+1)+(n+3)²-5` -/
def P2216630897706591235.Spec : Prop :=
  ∀ n, P2216630897706591235.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P10627922225938525115

`A143058(n)+A017257(n)`
-/

namespace A023551.P10627922225938525115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A017257 n

end

end A023551.P10627922225938525115

namespace A023551

/-- `A143058(n)+A017257(n)` -/
def P10627922225938525115.Spec : Prop :=
  ∀ n, P10627922225938525115.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P2179552798509840488

`A166136(n+1)+A111396(n)`
-/

namespace A023551.P2179552798509840488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (n + 1) + A111396 n

end

end A023551.P2179552798509840488

namespace A023551

/-- `A166136(n+1)+A111396(n)` -/
def P2179552798509840488.Spec : Prop :=
  ∀ n, P2179552798509840488.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P16706065160490559909

`A224039(n+1)+A134479(n)`
-/

namespace A023551.P16706065160490559909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 1) + A134479 n

end

end A023551.P16706065160490559909

namespace A023551

/-- `A224039(n+1)+A134479(n)` -/
def P16706065160490559909.Spec : Prop :=
  ∀ n, P16706065160490559909.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P3430369098719877909

`A162263(n+1)-A134481(n)`
-/

namespace A023551.P3430369098719877909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162263 (n + 1) - A134481 n

end

end A023551.P3430369098719877909

namespace A023551

/-- `A162263(n+1)-A134481(n)` -/
def P3430369098719877909.Spec : Prop :=
  ∀ n, P3430369098719877909.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P2321366930947493433

`A000439(n+1)-A387204(n)`
-/

namespace A023551.P2321366930947493433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000439 (n + 1) - A387204 n

end

end A023551.P2321366930947493433

namespace A023551

/-- `A000439(n+1)-A387204(n)` -/
def P2321366930947493433.Spec : Prop :=
  ∀ n, P2321366930947493433.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P10812180682271557428

`A016897(n)+A096941(n)-n`
-/

namespace A023551.P10812180682271557428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + (A096941 n - (n : ℤ))

end

end A023551.P10812180682271557428

namespace A023551

/-- `A016897(n)+A096941(n)-n` -/
def P10812180682271557428.Spec : Prop :=
  ∀ n, P10812180682271557428.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P18203573533712482968

`A023545(n+1)+A052905(n)+2`
-/

namespace A023551.P18203573533712482968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + (A052905 n + 2)

end

end A023551.P18203573533712482968

namespace A023551

/-- `A023545(n+1)+A052905(n)+2` -/
def P18203573533712482968.Spec : Prop :=
  ∀ n, P18203573533712482968.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P16212336845885303306

`A297675(n+2)+A222001(n+1)`
-/

namespace A023551.P16212336845885303306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297675 (n + 2) + A222001 (n + 1)

end

end A023551.P16212336845885303306

namespace A023551

/-- `A297675(n+2)+A222001(n+1)` -/
def P16212336845885303306.Spec : Prop :=
  ∀ n, P16212336845885303306.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P15281619831894355693

`A166136(n+1)+A264443(n)+n`
-/

namespace A023551.P15281619831894355693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (n + 1) + (A264443 n + (n : ℤ))

end

end A023551.P15281619831894355693

namespace A023551

/-- `A166136(n+1)+A264443(n)+n` -/
def P15281619831894355693.Spec : Prop :=
  ∀ n, P15281619831894355693.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P14539099423061509365

`A000292(n+1)+2*A028552(n+1)`
-/

namespace A023551.P14539099423061509365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + 2 * A028552 (n + 1)

end

end A023551.P14539099423061509365

namespace A023551

/-- `A000292(n+1)+2*A028552(n+1)` -/
def P14539099423061509365.Spec : Prop :=
  ∀ n, P14539099423061509365.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P4314576224973195334

`Δ[A095667(n)]-4`
-/

namespace A023551.P4314576224973195334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A023551.P4314576224973195334

namespace A023551

/-- `Δ[A095667(n)]-4` -/
def P4314576224973195334.Spec : Prop :=
  ∀ n, P4314576224973195334.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P13173674317260771744

`A060488(n+4)-4`
-/

namespace A023551.P13173674317260771744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 4) - 4

end

end A023551.P13173674317260771744

namespace A023551

/-- `A060488(n+4)-4` -/
def P13173674317260771744.Spec : Prop :=
  ∀ n, P13173674317260771744.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P1912309420697273636

`∑[A155212(n+1)+2]`
-/

namespace A023551.P1912309420697273636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023551.P1912309420697273636

namespace A023551

/-- `∑[A155212(n+1)+2]` -/
def P1912309420697273636.Spec : Prop :=
  ∀ n, P1912309420697273636.a n = A023551 (n + 1)

end A023551

/-! ## A023551.P9790559788069555030

`∑[A056000(n+1)+4]`
-/

namespace A023551.P9790559788069555030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023551.P9790559788069555030

namespace A023551

/-- `∑[A056000(n+1)+4]` -/
def P9790559788069555030.Spec : Prop :=
  ∀ n, P9790559788069555030.a n = A023551 (n + 1)

end A023551

/-!
# A023552: Convolution of natural numbers >= 3 and Fibonacci numbers.

The programs for A023552, the canonical program `A023552.P4902198737061693691` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023552 has offset 1).

The definition of A023552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023552.P12713780091967140753

`A000045(n+5)+2*A000045(n+3)-(n+6)`
-/

namespace A023552.P12713780091967140753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) + 2 * A000045 (n + 3) - (n + 6 : ℤ)

end

end A023552.P12713780091967140753

namespace A023552

/-- `A000045(n+5)+2*A000045(n+3)-(n+6)` -/
def P12713780091967140753.Spec : Prop :=
  ∀ n, P12713780091967140753.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P4902198737061693691

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=3, a(1)=7, a(2)=15, a(3)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023552

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P4902198737061693691.Spec : Prop :=
  ∀ n, P4902198737061693691.a n = A023552 (n + 1)

theorem P4902198737061693691.correct : P4902198737061693691.Spec := by
  intro n
  simp only [A023552, Nat.add_sub_cancel]

end A023552

/-! ## A023552.P12705187156802639068

`∑[ogf((3-2x)/(1-2x+x^3))]`
-/

namespace A023552.P12705187156802639068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P12705187156802639068

namespace A023552

/-- `∑[ogf((3-2x)/(1-2x+x^3))]` -/
def P12705187156802639068.Spec : Prop :=
  ∀ n, P12705187156802639068.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P889644335333942330

`ogf((3-2x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023552.P889644335333942330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -3, 2, 1, -1] n

end

end A023552.P889644335333942330

namespace A023552

/-- `ogf((3-2x)/(1-3x+2x^2+x^3-x^4))` -/
def P889644335333942330.Spec : Prop :=
  ∀ n, P889644335333942330.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P6244260391250354553

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=3, a(1)=1`
-/

namespace A023552.P6244260391250354553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P6244260391250354553

namespace A023552

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P6244260391250354553.Spec : Prop :=
  ∀ n, (P6244260391250354553.a n : ℤ) = A023552 (n + 1)

end A023552

/-! ## A023552.P7904106536570061629

`∑[2*a(n-1)-a(n-3)]` with `a(0)=3, a(1)=4, a(2)=8`
-/

namespace A023552.P7904106536570061629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 8] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P7904106536570061629

namespace A023552

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P7904106536570061629.Spec : Prop :=
  ∀ n, P7904106536570061629.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P15168528775124882205

`a(n-1)+3+a(n-2)+n` with `a(0)=3, a(1)=7`
-/

namespace A023552.P15168528775124882205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  a (n - 1) + 3 + (a (n - 2) + n)

end

end A023552.P15168528775124882205

namespace A023552

/-- `a(n-1)+3+a(n-2)+n` -/
def P15168528775124882205.Spec : Prop :=
  ∀ n, (P15168528775124882205.a n : ℤ) = A023552 (n + 1)

end A023552

/-! ## A023552.P1924768961380487691

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=3, a(1)=4, a(2)=8`
-/

namespace A023552.P1924768961380487691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 8] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P1924768961380487691

namespace A023552

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P1924768961380487691.Spec : Prop :=
  ∀ n, P1924768961380487691.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P9569080302048603898

`∑[∑[A104449(n)]]`
-/

namespace A023552.P9569080302048603898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P9569080302048603898

namespace A023552

/-- `∑[∑[A104449(n)]]` -/
def P9569080302048603898.Spec : Prop :=
  ∀ n, P9569080302048603898.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P15045499651800483083

`∑[A022308(n+1)]`
-/

namespace A023552.P15045499651800483083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P15045499651800483083

namespace A023552

/-- `∑[A022308(n+1)]` -/
def P15045499651800483083.Spec : Prop :=
  ∀ n, P15045499651800483083.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P15729497257231339211

`∑[A171516(n)+2]`
-/

namespace A023552.P15729497257231339211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P15729497257231339211

namespace A023552

/-- `∑[A171516(n)+2]` -/
def P15729497257231339211.Spec : Prop :=
  ∀ n, P15729497257231339211.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P11425111266527452611

`A030119(n+2)-1`
-/

namespace A023552.P11425111266527452611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 2) - 1

end

end A023552.P11425111266527452611

namespace A023552

/-- `A030119(n+2)-1` -/
def P11425111266527452611.Spec : Prop :=
  ∀ n, P11425111266527452611.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P11021109890494409487

`∑[A000285(n+1)-1]`
-/

namespace A023552.P11021109890494409487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P11021109890494409487

namespace A023552

/-- `∑[A000285(n+1)-1]` -/
def P11021109890494409487.Spec : Prop :=
  ∀ n, P11021109890494409487.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P15701908348884970953

`∑[A030119(n)+2+n]`
-/

namespace A023552.P15701908348884970953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023552.P15701908348884970953

namespace A023552

/-- `∑[A030119(n)+2+n]` -/
def P15701908348884970953.Spec : Prop :=
  ∀ n, P15701908348884970953.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P16109473054313489577

`A192981(n+2)+1+n`
-/

namespace A023552.P16109473054313489577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 (n + 2) + 1 + (n : ℤ)

end

end A023552.P16109473054313489577

namespace A023552

/-- `A192981(n+2)+1+n` -/
def P16109473054313489577.Spec : Prop :=
  ∀ n, P16109473054313489577.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P15393357982910676036

`A053311(n+1)-(n+2)`
-/

namespace A023552.P15393357982910676036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 (n + 1) - (n + 2 : ℤ)

end

end A023552.P15393357982910676036

namespace A023552

/-- `A053311(n+1)-(n+2)` -/
def P15393357982910676036.Spec : Prop :=
  ∀ n, P15393357982910676036.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P10016752973570474078

`A171516(n+2)-(n+3)`
-/

namespace A023552.P10016752973570474078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (n + 2) - (n + 3 : ℤ)

end

end A023552.P10016752973570474078

namespace A023552

/-- `A171516(n+2)-(n+3)` -/
def P10016752973570474078.Spec : Prop :=
  ∀ n, P10016752973570474078.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P3553599517644290545

`A192749(n)+3*(n+1)`
-/

namespace A023552.P3553599517644290545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 n + (3 * (n + 1) : ℤ)

end

end A023552.P3553599517644290545

namespace A023552

/-- `A192749(n)+3*(n+1)` -/
def P3553599517644290545.Spec : Prop :=
  ∀ n, P3553599517644290545.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P14596904831080624876

`A192966(n+1)+∑[n+2]`
-/

namespace A023552.P14596904831080624876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192966 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023552.P14596904831080624876

namespace A023552

/-- `A192966(n+1)+∑[n+2]` -/
def P14596904831080624876.Spec : Prop :=
  ∀ n, P14596904831080624876.a n = A023552 (n + 1)

end A023552

/-! ## A023552.P3844251097043625909

`A192951(n+1)+2*(n+1)`
-/

namespace A023552.P3844251097043625909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) + (2 * (n + 1) : ℤ)

end

end A023552.P3844251097043625909

namespace A023552

/-- `A192951(n+1)+2*(n+1)` -/
def P3844251097043625909.Spec : Prop :=
  ∀ n, P3844251097043625909.a n = A023552 (n + 1)

end A023552

/-!
# A023553: Convolution of integers >= 3 and Lucas numbers.

The programs for A023553, the canonical program `A023553.P11388446626321300416` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023553 has offset 1).

The definition of A023553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023553.P11388446626321300416

`a(n-1)+a(n-2)+3*(n+1)+4` with `a(0)=3, a(1)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023553

/-- `a(n-1)+a(n-2)+3*(n+1)+4` -/
def P11388446626321300416.Spec : Prop :=
  ∀ n, (P11388446626321300416.a n : ℤ) = A023553 (n + 1)

theorem P11388446626321300416.correct : P11388446626321300416.Spec := by
  intro n
  simp only [A023553, Nat.add_sub_cancel]

end A023553

/-! ## A023553.P546257883437889424

`∑[ogf((3+4x-4x^2)/(1-2x+x^3))]`
-/

namespace A023553.P546257883437889424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -4] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P546257883437889424

namespace A023553

/-- `∑[ogf((3+4x-4x^2)/(1-2x+x^3))]` -/
def P546257883437889424.Spec : Prop :=
  ∀ n, P546257883437889424.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P9466016532045801302

`ogf((3+4x-4x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023553.P9466016532045801302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -4] [1, -3, 2, 1, -1] n

end

end A023553.P9466016532045801302

namespace A023553

/-- `ogf((3+4x-4x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P9466016532045801302.Spec : Prop :=
  ∀ n, P9466016532045801302.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P16847611444476334510

`∑[a(n-1)+a(n-2)+3]` with `a(0)=3, a(1)=10`
-/

namespace A023553.P16847611444476334510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P16847611444476334510

namespace A023553

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P16847611444476334510.Spec : Prop :=
  ∀ n, (P16847611444476334510.a n : ℤ) = A023553 (n + 1)

end A023553

/-! ## A023553.P10730853333461732706

`∑[A022388(n)-3]`
-/

namespace A023553.P10730853333461732706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P10730853333461732706

namespace A023553

/-- `∑[A022388(n)-3]` -/
def P10730853333461732706.Spec : Prop :=
  ∀ n, P10730853333461732706.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P13277667960703837555

`A192754(n)+A033937(n)`
-/

namespace A023553.P13277667960703837555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192754 n + A033937 n

end

end A023553.P13277667960703837555

namespace A023553

/-- `A192754(n)+A033937(n)` -/
def P13277667960703837555.Spec : Prop :=
  ∀ n, P13277667960703837555.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P7248547160239739436

`∑[A022408(n)+A001911(n)]`
-/

namespace A023553.P7248547160239739436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022408 n + A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P7248547160239739436

namespace A023553

/-- `∑[A022408(n)+A001911(n)]` -/
def P7248547160239739436.Spec : Prop :=
  ∀ n, P7248547160239739436.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P10352199639624113583

`A023554(n+1)+∑[A022308(n)]`
-/

namespace A023553.P10352199639624113583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023554 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P10352199639624113583

namespace A023553

/-- `A023554(n+1)+∑[A022308(n)]` -/
def P10352199639624113583.Spec : Prop :=
  ∀ n, P10352199639624113583.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P6572509601542127406

`A053311(n)+∑[A053311(n)+1]`
-/

namespace A023553.P6572509601542127406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P6572509601542127406

namespace A023553

/-- `A053311(n)+∑[A053311(n)+1]` -/
def P6572509601542127406.Spec : Prop :=
  ∀ n, P6572509601542127406.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P8970220035246843859

`A027961(n+1)+A023549(n+1)`
-/

namespace A023553.P8970220035246843859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + A023549 (n + 1)

end

end A023553.P8970220035246843859

namespace A023553

/-- `A027961(n+1)+A023549(n+1)` -/
def P8970220035246843859.Spec : Prop :=
  ∀ n, P8970220035246843859.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P97348621043227507

`A023549(n+1)+∑[A000032(n+1)]`
-/

namespace A023553.P97348621043227507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023549 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023553.P97348621043227507

namespace A023553

/-- `A023549(n+1)+∑[A000032(n+1)]` -/
def P97348621043227507.Spec : Prop :=
  ∀ n, P97348621043227507.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P14174603627699800333

`A192960(n+1)+A210729(n+1)-2`
-/

namespace A023553.P14174603627699800333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 (n + 1) + (A210729 (n + 1) - 2)

end

end A023553.P14174603627699800333

namespace A023553

/-- `A192960(n+1)+A210729(n+1)-2` -/
def P14174603627699800333.Spec : Prop :=
  ∀ n, P14174603627699800333.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P9467519069868735669

`A023537(n+1)+2*A027961(n+1)`
-/

namespace A023553.P9467519069868735669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1) + 2 * A027961 (n + 1)

end

end A023553.P9467519069868735669

namespace A023553

/-- `A023537(n+1)+2*A027961(n+1)` -/
def P9467519069868735669.Spec : Prop :=
  ∀ n, P9467519069868735669.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P1412103626444095436

`A001924(n+1)+2*A192761(n+1)`
-/

namespace A023553.P1412103626444095436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) + 2 * A192761 (n + 1)

end

end A023553.P1412103626444095436

namespace A023553

/-- `A001924(n+1)+2*A192761(n+1)` -/
def P1412103626444095436.Spec : Prop :=
  ∀ n, P1412103626444095436.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P10239323841867101090

`A210675(n+1)+2*A001924(n+1)`
-/

namespace A023553.P10239323841867101090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210675 (n + 1) + 2 * A001924 (n + 1)

end

end A023553.P10239323841867101090

namespace A023553

/-- `A210675(n+1)+2*A001924(n+1)` -/
def P10239323841867101090.Spec : Prop :=
  ∀ n, P10239323841867101090.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P5960466216051796789

`A192761(n+1)+2*A192760(n+1)`
-/

namespace A023553.P5960466216051796789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 (n + 1) + 2 * A192760 (n + 1)

end

end A023553.P5960466216051796789

namespace A023553

/-- `A192761(n+1)+2*A192760(n+1)` -/
def P5960466216051796789.Spec : Prop :=
  ∀ n, P5960466216051796789.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P7282041119151662447

`A210673(n+1)+2*A210675(n+1)`
-/

namespace A023553.P7282041119151662447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 (n + 1) + 2 * A210675 (n + 1)

end

end A023553.P7282041119151662447

namespace A023553

/-- `A210673(n+1)+2*A210675(n+1)` -/
def P7282041119151662447.Spec : Prop :=
  ∀ n, P7282041119151662447.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P9739821355829242850

`A023552(n+1)+A210731(n+1)+A001924(n)`
-/

namespace A023553.P9739821355829242850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023552 (n + 1) + (A210731 (n + 1) + A001924 n)

end

end A023553.P9739821355829242850

namespace A023553

/-- `A023552(n+1)+A210731(n+1)+A001924(n)` -/
def P9739821355829242850.Spec : Prop :=
  ∀ n, P9739821355829242850.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P7743333965595096021

`A210678(n+1)+A210678(n+1)+A210677(n)`
-/

namespace A023553.P7743333965595096021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 (n + 1) + (A210678 (n + 1) + A210677 n)

end

end A023553.P7743333965595096021

namespace A023553

/-- `A210678(n+1)+A210678(n+1)+A210677(n)` -/
def P7743333965595096021.Spec : Prop :=
  ∀ n, P7743333965595096021.a n = A023553 (n + 1)

end A023553

/-! ## A023553.P7031529105688759633

`A001924(n+1)+A210731(n+1)+A023548(n+1)`
-/

namespace A023553.P7031529105688759633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) + (A210731 (n + 1) + A023548 (n + 1))

end

end A023553.P7031529105688759633

namespace A023553

/-- `A001924(n+1)+A210731(n+1)+A023548(n+1)` -/
def P7031529105688759633.Spec : Prop :=
  ∀ n, P7031529105688759633.a n = A023553 (n + 1)

end A023553

/-!
# A023554: Convolution of natural numbers >= 3 and (Fib(2), Fib(3), Fib(4), ...).

The programs for A023554, the canonical program `A023554.P9354063548383964204` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023554 has offset 1).

The definition of A023554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023554.P9354063548383964204

`a(n-1)+a(n-2)+2*(n+1)+3` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023554

/-- `a(n-1)+a(n-2)+2*(n+1)+3` -/
def P9354063548383964204.Spec : Prop :=
  ∀ n, (P9354063548383964204.a n : ℤ) = A023554 (n + 1)

theorem P9354063548383964204.correct : P9354063548383964204.Spec := by
  intro n
  simp only [A023554, Nat.add_sub_cancel]

end A023554

/-! ## A023554.P5911034932639905713

`A000045(n+6)+2*A000045(n+4)-(2*(n+1)+9)`
-/

namespace A023554.P5911034932639905713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) + 2 * A000045 (n + 4) - (2 * (n + 1) + 9 : ℤ)

end

end A023554.P5911034932639905713

namespace A023554

/-- `A000045(n+6)+2*A000045(n+4)-(2*(n+1)+9)` -/
def P5911034932639905713.Spec : Prop :=
  ∀ n, P5911034932639905713.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P7679414783095541175

`∑[ogf((3+x-2x^2)/(1-2x+x^3))]`
-/

namespace A023554.P7679414783095541175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -2] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P7679414783095541175

namespace A023554

/-- `∑[ogf((3+x-2x^2)/(1-2x+x^3))]` -/
def P7679414783095541175.Spec : Prop :=
  ∀ n, P7679414783095541175.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P14643439646782084688

`ogf((3+x-2x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023554.P14643439646782084688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -2] [1, -3, 2, 1, -1] n

end

end A023554.P14643439646782084688

namespace A023554

/-- `ogf((3+x-2x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P14643439646782084688.Spec : Prop :=
  ∀ n, P14643439646782084688.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P11386347315310678145

`∑[a(n-1)+a(n-2)+2]` with `a(0)=3, a(1)=7`
-/

namespace A023554.P11386347315310678145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P11386347315310678145

namespace A023554

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P11386347315310678145.Spec : Prop :=
  ∀ n, (P11386347315310678145.a n : ℤ) = A023554 (n + 1)

end A023554

/-! ## A023554.P7414362726319085902

`∑[A053311(n)+2]`
-/

namespace A023554.P7414362726319085902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P7414362726319085902

namespace A023554

/-- `∑[A053311(n)+2]` -/
def P7414362726319085902.Spec : Prop :=
  ∀ n, P7414362726319085902.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P8720585179409925593

`∑[∑[record[A104449(n)]]]`
-/

namespace A023554.P8720585179409925593
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P8720585179409925593

namespace A023554

/-- `∑[∑[record[A104449(n)]]]` -/
def P8720585179409925593.Spec : Prop :=
  ∀ n, P8720585179409925593.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P896228784173251232

`A192981(n+3)-2`
-/

namespace A023554.P896228784173251232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 (n + 3) - 2

end

end A023554.P896228784173251232

namespace A023554

/-- `A192981(n+3)-2` -/
def P896228784173251232.Spec : Prop :=
  ∀ n, P896228784173251232.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P15743052265290715275

`A192951(n+2)+n`
-/

namespace A023554.P15743052265290715275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 2) + (n : ℤ)

end

end A023554.P15743052265290715275

namespace A023554

/-- `A192951(n+2)+n` -/
def P15743052265290715275.Spec : Prop :=
  ∀ n, P15743052265290715275.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P4094336211464085779

`∑[∑[A000285(n)]+2]`
-/

namespace A023554.P4094336211464085779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P4094336211464085779

namespace A023554

/-- `∑[∑[A000285(n)]+2]` -/
def P4094336211464085779.Spec : Prop :=
  ∀ n, P4094336211464085779.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P1453427700083532813

`∑[A171516(n+1)+1]`
-/

namespace A023554.P1453427700083532813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P1453427700083532813

namespace A023554

/-- `∑[A171516(n+1)+1]` -/
def P1453427700083532813.Spec : Prop :=
  ∀ n, P1453427700083532813.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P15456534363485312724

`∑[A022308(n+2)-1]`
-/

namespace A023554.P15456534363485312724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P15456534363485312724

namespace A023554

/-- `∑[A022308(n+2)-1]` -/
def P15456534363485312724.Spec : Prop :=
  ∀ n, P15456534363485312724.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P12231305825740022275

`∑[A104449(n+3)-2]`
-/

namespace A023554.P12231305825740022275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P12231305825740022275

namespace A023554

/-- `∑[A104449(n+3)-2]` -/
def P12231305825740022275.Spec : Prop :=
  ∀ n, P12231305825740022275.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P296973829052388841

`∑[∑[A104449(n+1)]+2]`
-/

namespace A023554.P296973829052388841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P296973829052388841

namespace A023554

/-- `∑[∑[A104449(n+1)]+2]` -/
def P296973829052388841.Spec : Prop :=
  ∀ n, P296973829052388841.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P14636928282589196152

`∑[A030119(n+1)+n+2]`
-/

namespace A023554.P14636928282589196152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P14636928282589196152

namespace A023554

/-- `∑[A030119(n+1)+n+2]` -/
def P14636928282589196152.Spec : Prop :=
  ∀ n, P14636928282589196152.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P13828821757945159204

`A192749(n+1)+2*(n+1)`
-/

namespace A023554.P13828821757945159204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 (n + 1) + (2 * (n + 1) : ℤ)

end

end A023554.P13828821757945159204

namespace A023554

/-- `A192749(n+1)+2*(n+1)` -/
def P13828821757945159204.Spec : Prop :=
  ∀ n, P13828821757945159204.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P15714007877398407090

`A053311(n+2)-(2*n+7)`
-/

namespace A023554.P15714007877398407090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 (n + 2) - (2 * n + 7 : ℤ)

end

end A023554.P15714007877398407090

namespace A023554

/-- `A053311(n+2)-(2*n+7)` -/
def P15714007877398407090.Spec : Prop :=
  ∀ n, P15714007877398407090.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P14597129910793329275

`A232896(n+1)+A033937(n)`
-/

namespace A023554.P14597129910793329275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1) + A033937 n

end

end A023554.P14597129910793329275

namespace A023554

/-- `A232896(n+1)+A033937(n)` -/
def P14597129910793329275.Spec : Prop :=
  ∀ n, P14597129910793329275.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P15501918133554829458

`A210729(n+1)+A192969(n)`
-/

namespace A023554.P15501918133554829458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210729 (n + 1) + A192969 n

end

end A023554.P15501918133554829458

namespace A023554

/-- `A210729(n+1)+A192969(n)` -/
def P15501918133554829458.Spec : Prop :=
  ∀ n, P15501918133554829458.a n = A023554 (n + 1)

end A023554

/-! ## A023554.P14756678065079537145

`∑[A001611(n)+∑[A020695(n)]]`
-/

namespace A023554.P14756678065079537145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023554.P14756678065079537145

namespace A023554

/-- `∑[A001611(n)+∑[A020695(n)]]` -/
def P14756678065079537145.Spec : Prop :=
  ∀ n, P14756678065079537145.a n = A023554 (n + 1)

end A023554

/-!
# A023555: Self-convolution of A023531.

The programs for A023555, there is no canonical definition to state claims against.
-/

/-! ## A023555.P4233849555614822001

`∑[A023531(n+1)]-A023556(n+1)`
-/

namespace A023555.P4233849555614822001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023556 (n + 1)

end

end A023555.P4233849555614822001

/-! ## A023555.P9125297894460190882

`A023546(n+1)-(A023556(n+1)+A023535(n+1))`
-/

namespace A023555.P9125297894460190882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023546 (n + 1) - (A023556 (n + 1) + A023535 (n + 1))

end

end A023555.P9125297894460190882

/-! ## A023555.P17098469515015080341

`A023565(n+1)+A023566(n+1)-A023556(n+1)`
-/

namespace A023555.P17098469515015080341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023565 (n + 1) + (A023566 (n + 1) - A023556 (n + 1))

end

end A023555.P17098469515015080341

/-! ## A023555.P11933932498609669099

`A003056(n+2)-(A023556(n+1)+1)`
-/

namespace A023555.P11933932498609669099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 2) - (A023556 (n + 1) + 1)

end

end A023555.P11933932498609669099

/-! ## A023555.P14244297634683311434

`A002024(n+3)-2-A023556(n+1)`
-/

namespace A023555.P14244297634683311434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 3) - 2 - A023556 (n + 1)

end

end A023555.P14244297634683311434

/-! ## A023555.P1947466613670494379

`A053603(n+4)-A000038(A068913(n+3))`
-/

namespace A023555.P1947466613670494379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (n + 4) - A000038 (A068913 (n + 3)).toNat

end

end A023555.P1947466613670494379

/-!
# A023556: Convolution of A023531 and A023532.

The programs for A023556, there is no canonical definition to state claims against.
-/

/-! ## A023556.P17501690646535389244

`∑[A023531(n+1)]-A023555(n+1)`
-/

namespace A023556.P17501690646535389244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023555 (n + 1)

end

end A023556.P17501690646535389244

/-! ## A023556.P2331583475285055856

`∑[A129184(n+1)]-A023555(n+1)`
-/

namespace A023556.P2331583475285055856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023555 (n + 1)

end

end A023556.P2331583475285055856

/-! ## A023556.P17402870813811048472

`∑[A073424(n+2)]-A023555(n+1)`
-/

namespace A023556.P17402870813811048472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023555 (n + 1)

end

end A023556.P17402870813811048472

/-! ## A023556.P10778513122147479355

`A023565(n+1)+A023566(n+1)-A023555(n+1)`
-/

namespace A023556.P10778513122147479355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023565 (n + 1) + (A023566 (n + 1) - A023555 (n + 1))

end

end A023556.P10778513122147479355

/-! ## A023556.P6739484425366056787

`∑[A023532(n+1)]-A023616(n+1)`
-/

namespace A023556.P6739484425366056787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023616 (n + 1)

end

end A023556.P6739484425366056787

/-! ## A023556.P14645559588726308741

`∑[A010054(n+2)]-A023555(n+1)`
-/

namespace A023556.P14645559588726308741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023555 (n + 1)

end

end A023556.P14645559588726308741

/-! ## A023556.P17986004406381627701

`∑[1-A023532(n+1)]-A023555(n+1)`
-/

namespace A023556.P17986004406381627701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023555 (n + 1)

end

end A023556.P17986004406381627701

/-! ## A023556.P3409574141673317588

`Δ[A125811(n+2)]-A023616(n+1)`
-/

namespace A023556.P3409574141673317588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023616 (n + 1)

end

end A023556.P3409574141673317588

/-!
# A023557: Convolution of A023531 and Fibonacci numbers.

The programs for A023557, there is no canonical definition to state claims against.
-/

/-! ## A023557.P7866351837818278490

`A023561(A028310(n))+A023531(n+1)`
-/

namespace A023557.P7866351837818278490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023561 (A028310 n).toNat + A023531 (n + 1)

end

end A023557.P7866351837818278490

/-! ## A023557.P9943669515237660535

`A023561(A028310(n))+A010054(n+2)`
-/

namespace A023557.P9943669515237660535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023561 (A028310 n).toNat + A010054 (n + 2)

end

end A023557.P9943669515237660535

/-! ## A023557.P6773148598726017960

`A023561(A028310(n))+char[A034856(n+1)]`
-/

namespace A023557.P6773148598726017960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023561 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023557.P6773148598726017960

/-! ## A023557.P3928088900898585626

`round(A023561(n+1)/ϕ)`
-/

namespace A023557.P3928088900898585626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023561 (n + 1) : ℝ) / Real.goldenRatio)

end

end A023557.P3928088900898585626

/-! ## A023557.P9199676232244417791

`2*A023561(n+1)-A023558(n+1)`
-/

namespace A023557.P9199676232244417791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023561 (n + 1) - A023558 (n + 1)

end

end A023557.P9199676232244417791

/-! ## A023557.P9532209878549522545

`A023558(n+2)-A023561(n+2)`
-/

namespace A023557.P9532209878549522545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023558 (n + 2) - A023561 (n + 2)

end

end A023557.P9532209878549522545

/-! ## A023557.P17463936111073743347

`Δ[A001924(n)]-A023596(n+1)`
-/

namespace A023557.P17463936111073743347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023596 (n + 1)

end

end A023557.P17463936111073743347

/-!
# A023558: Convolution of A023531 and Lucas numbers.

The programs for A023558, there is no canonical definition to state claims against.
-/

/-! ## A023558.P8938986382515424656

`2*A023561(n+1)-A023557(n+1)`
-/

namespace A023558.P8938986382515424656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023561 (n + 1) - A023557 (n + 1)

end

end A023558.P8938986382515424656

/-! ## A023558.P10068421565555125972

`A023561(n+1)+A023557(A028310(n))`
-/

namespace A023558.P10068421565555125972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023561 (n + 1) + A023557 (A028310 n).toNat

end

end A023558.P10068421565555125972

/-! ## A023558.P12115843759709792772

`A023557(n+1)+2*A023557(A028310(n))`
-/

namespace A023558.P12115843759709792772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 1) + 2 * A023557 (A028310 n).toNat

end

end A023558.P12115843759709792772

/-! ## A023558.P9909120414709494454

`A023561(n+1)+A023557(A000007(n)+n)`
-/

namespace A023558.P9909120414709494454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023561 (n + 1) + A023557 (A000007 n + (n : ℤ)).toNat

end

end A023558.P9909120414709494454

/-! ## A023558.P17814470317041009103

`A027961(n+1)-A023597(n+1)`
-/

namespace A023558.P17814470317041009103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - A023597 (n + 1)

end

end A023558.P17814470317041009103

/-! ## A023558.P6604185250897720298

`∑[A000204(n+1)]-A023597(n+1)`
-/

namespace A023558.P6604185250897720298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023597 (n + 1)

end

end A023558.P6604185250897720298

/-!
# A023559: Convolution of A023531 and (1, p(1), p(2), ...).

The programs for A023559, there is no canonical definition to state claims against.
-/

/-! ## A023559.P9539027888273566374

`A007504(n)+1-A023598(n+1)`
-/

namespace A023559.P9539027888273566374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + (1 - A023598 (n + 1))

end

end A023559.P9539027888273566374

/-! ## A023559.P2049194867423285875

`A014284(n+1)-A023598(n+1)`
-/

namespace A023559.P2049194867423285875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - A023598 (n + 1)

end

end A023559.P2049194867423285875

/-! ## A023559.P9180616619831014432

`∑[A008578(n+1)]-A023598(n+1)`
-/

namespace A023559.P9180616619831014432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023598 (n + 1)

end

end A023559.P9180616619831014432

/-! ## A023559.P12468908328254666880

`∑[A001747(n+1)/2]-A023598(n+1)`
-/

namespace A023559.P12468908328254666880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A023598 (n + 1) : ℚ)

end

end A023559.P12468908328254666880

/-! ## A023559.P4426453627891541685

`∑[record[A181363(n+1)]]-A023598(n+1)`
-/

namespace A023559.P4426453627891541685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023598 (n + 1)

end

end A023559.P4426453627891541685

/-! ## A023559.P1995906826057004822

`∑[A194451(A001747(n+1))]-A023598(n+1)`
-/

namespace A023559.P1995906826057004822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023598 (n + 1)

end

end A023559.P1995906826057004822

/-!
# A023560: Convolution of A023531 and composite numbers (A002808).

The programs for A023560, there is no canonical definition to state claims against.
-/

/-! ## A023560.P14457590717122446941

`A053767(n+1)-A023599(n+1)`
-/

namespace A023560.P14457590717122446941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1) - A023599 (n + 1)

end

end A023560.P14457590717122446941

/-! ## A023560.P783000849227041932

`∑[A002808(n+1)]-A023599(n+1)`
-/

namespace A023560.P783000849227041932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023599 (n + 1)

end

end A023560.P783000849227041932

/-! ## A023560.P18289402227017048566

`∑[A018252(n+2)]-A023599(n+1)`
-/

namespace A023560.P18289402227017048566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023599 (n + 1)

end

end A023560.P18289402227017048566

/-! ## A023560.P18369415811132158516

`∑[lt[1, A001222(n+1)]+1]-A023599(n+1)`
-/

namespace A023560.P18369415811132158516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023599 (n + 1)

end

end A023560.P18369415811132158516

/-! ## A023560.P11640834948832875150

`∑[lt[2, A000005(n+1)]+1]-A023599(n+1)`
-/

namespace A023560.P11640834948832875150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023599 (n + 1)

end

end A023560.P11640834948832875150

/-! ## A023560.P16221431465384598104

`∑[lt[A000010(n+1), n]+1]-A023599(n+1)`
-/

namespace A023560.P16221431465384598104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023599 (n + 1)

end

end A023560.P16221431465384598104

/-! ## A023560.P15151263435512058327

`∑[A060462(n+2)+1]-A023599(n+1)`
-/

namespace A023560.P15151263435512058327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023599 (n + 1)

end

end A023560.P15151263435512058327

/-! ## A023560.P15520301487849768832

`∑[lt[A014963(n+2), n+1]+2]-A023599(n+1)`
-/

namespace A023560.P15520301487849768832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023599 (n + 1)

end

end A023560.P15520301487849768832

/-!
# A023561: Convolution of A023531 and (F(2), F(3), F(4), ...).

The programs for A023561, there is no canonical definition to state claims against.
-/

/-! ## A023561.P10629737766786073196

`A023557(n+2)-char[A055998(n)]`
-/

namespace A023561.P10629737766786073196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023561.P10629737766786073196

/-! ## A023561.P16665246307165847088

`A023557(n+2)-A023531(n+2)`
-/

namespace A023561.P16665246307165847088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 2) - A023531 (n + 2)

end

end A023561.P16665246307165847088

/-! ## A023561.P12949373598690041295

`A023557(n+2)-A010054(n+3)`
-/

namespace A023561.P12949373598690041295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 2) - A010054 (n + 3)

end

end A023561.P12949373598690041295

/-! ## A023561.P864259370803501073

`A023557(n+2)-A073423(n+3)`
-/

namespace A023561.P864259370803501073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 2) - A073423 (n + 3)

end

end A023561.P864259370803501073

/-! ## A023561.P663881949377273755

`A023557(n+1)+A023557(A028310(n))`
-/

namespace A023561.P663881949377273755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 1) + A023557 (A028310 n).toNat

end

end A023561.P663881949377273755

/-! ## A023561.P2013437358319171140

`A023557(n+1)+A023557(A000007(n)+n)`
-/

namespace A023561.P2013437358319171140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023557 (n + 1) + A023557 (A000007 n + (n : ℤ)).toNat

end

end A023561.P2013437358319171140

/-!
# A023562: Convolution of A023531 and odd numbers.

The programs for A023562, the canonical program `A023562.P8681614604525983552` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023562 has offset 1).

The definition of A023562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023562.P1559790514550981465

`∑[2*n+1-∪[2*n+1, (n+1)*(n+2)]]`
-/

namespace A023562.P1559790514550981465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P1559790514550981465

namespace A023562

/-- `∑[2*n+1-∪[2*n+1, (n+1)*(n+2)]]` -/
def P1559790514550981465.Spec : Prop :=
  ∀ n, P1559790514550981465.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P7166305404317956616

`∑[∑[char[A101881(n)]]]`
-/

namespace A023562.P7166305404317956616
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P7166305404317956616

namespace A023562

/-- `∑[∑[char[A101881(n)]]]` -/
def P7166305404317956616.Spec : Prop :=
  ∀ n, (P7166305404317956616.a n : ℤ) = A023562 (n + 1)

end A023562

/-! ## A023562.P8681614604525983552

`∑[∑[A097806(n)]-1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023562

/-- `∑[∑[A097806(n)]-1]` -/
def P8681614604525983552.Spec : Prop :=
  ∀ n, P8681614604525983552.a n = A023562 (n + 1)

theorem P8681614604525983552.correct : P8681614604525983552.Spec := by
  intro n
  simp only [A023562, Nat.add_sub_cancel]

end A023562

/-! ## A023562.P7833121160304582822

`∑[∑[A167371(n)]]-1`
-/

namespace A023562.P7833121160304582822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A023562.P7833121160304582822

namespace A023562

/-- `∑[∑[A167371(n)]]-1` -/
def P7833121160304582822.Spec : Prop :=
  ∀ n, P7833121160304582822.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P13396922241764206842

`∑[A241151(n+2)-1]`
-/

namespace A023562.P13396922241764206842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P13396922241764206842

namespace A023562

/-- `∑[A241151(n+2)-1]` -/
def P13396922241764206842.Spec : Prop :=
  ∀ n, P13396922241764206842.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P9477079331903115082

`∑[∑[abs(A167374(n))]-1]`
-/

namespace A023562.P9477079331903115082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167374 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P9477079331903115082

namespace A023562

/-- `∑[∑[abs(A167374(n))]-1]` -/
def P9477079331903115082.Spec : Prop :=
  ∀ n, P9477079331903115082.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P756068401610295033

`∑[∑[A103451(n+1)]-1]`
-/

namespace A023562.P756068401610295033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P756068401610295033

namespace A023562

/-- `∑[∑[A103451(n+1)]-1]` -/
def P756068401610295033.Spec : Prop :=
  ∀ n, P756068401610295033.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P3478156244710922726

`(n+1)²-A023601(n+1)`
-/

namespace A023562.P3478156244710922726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A023601 (n + 1)

end

end A023562.P3478156244710922726

namespace A023562

/-- `(n+1)²-A023601(n+1)` -/
def P3478156244710922726.Spec : Prop :=
  ∀ n, P3478156244710922726.a n = A023562 (n + 1)

theorem P3478156244710922726.correct : P3478156244710922726.Spec := by
  intro n
  simp only [A023562, Nat.add_sub_cancel, A023562.P3478156244710922726.a, A023562.P8681614604525983552.f2, A023562.P8681614604525983552.f1, A023562.P8681614604525983552.a, A023601, A023601.P4165196643065523488.a, A097806, A097806.P6713740258379660295.a, A002260, A002260.P9170571874073898642.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A023562

/-! ## A023562.P6455488522775110524

`∑[∑[and(1, A329637(n+1))]-1]`
-/

namespace A023562.P6455488522775110524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A329637 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P6455488522775110524

namespace A023562

/-- `∑[∑[and(1, A329637(n+1))]-1]` -/
def P6455488522775110524.Spec : Prop :=
  ∀ n, P6455488522775110524.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P13050798819187451084

`∑[∑[floor(1/A007318(n+1))]-1]`
-/

namespace A023562.P13050798819187451084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A007318 (n + 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P13050798819187451084

namespace A023562

/-- `∑[∑[floor(1/A007318(n+1))]-1]` -/
def P13050798819187451084.Spec : Prop :=
  ∀ n, P13050798819187451084.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P6284465931817555959

`∑[∑[A073424(A083920(n+1))]]`
-/

namespace A023562.P6284465931817555959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A083920 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P6284465931817555959

namespace A023562

/-- `∑[∑[A073424(A083920(n+1))]]` -/
def P6284465931817555959.Spec : Prop :=
  ∀ n, P6284465931817555959.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P3648910812661055276

`∑[∑[A000007(A067138(n+1))]-1]`
-/

namespace A023562.P3648910812661055276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A067138 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P3648910812661055276

namespace A023562

/-- `∑[∑[A000007(A067138(n+1))]-1]` -/
def P3648910812661055276.Spec : Prop :=
  ∀ n, P3648910812661055276.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P4436446857509826588

`∑[A052146(n+1)+A052146(n+2)]`
-/

namespace A023562.P4436446857509826588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 1) + A052146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P4436446857509826588

namespace A023562

/-- `∑[A052146(n+1)+A052146(n+2)]` -/
def P4436446857509826588.Spec : Prop :=
  ∀ n, P4436446857509826588.a n = A023562 (n + 1)

end A023562

/-! ## A023562.P13651543497588297811

`∑[∑[char[n-A007318(n)²]]-1]`
-/

namespace A023562.P13651543497588297811
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007318 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P13651543497588297811

namespace A023562

/-- `∑[∑[char[n-A007318(n)²]]-1]` -/
def P13651543497588297811.Spec : Prop :=
  ∀ n, P13651543497588297811.a n = A023562 (n + 1)

end A023562

/-!
# A023563: Convolution of A023531 and A000201.

The programs for A023563, there is no canonical definition to state claims against.
-/

/-! ## A023563.P3489530367402485080

`A023564(n+1)-A023535(n+1)`
-/

namespace A023563.P3489530367402485080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023564 (n + 1) - A023535 (n + 1)

end

end A023563.P3489530367402485080

/-! ## A023563.P9769058608329702465

`∑[∑[A001468(n)]]-A023602(n+1)`
-/

namespace A023563.P9769058608329702465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023602 (n + 1)

end

end A023563.P9769058608329702465

/-! ## A023563.P10283097355263782820

`∑[A000201(n+1)]-A023602(n+1)`
-/

namespace A023563.P10283097355263782820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023602 (n + 1)

end

end A023563.P10283097355263782820

/-! ## A023563.P5778402419174097737

`A023564(n+1)-∑[∑[A023531(n+1)]]`
-/

namespace A023563.P5778402419174097737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023564 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023563.P5778402419174097737

/-! ## A023563.P9923401141889942564

`∑[A002251(A001950(n+1))]-A023602(n+1)`
-/

namespace A023563.P9923401141889942564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A001950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023602 (n + 1)

end

end A023563.P9923401141889942564

/-!
# A023564: Convolution of A023531 and A001950.

The programs for A023564, there is no canonical definition to state claims against.
-/

/-! ## A023564.P153904252949728628

`A023563(n+1)+A023535(n+1)`
-/

namespace A023564.P153904252949728628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023563 (n + 1) + A023535 (n + 1)

end

end A023564.P153904252949728628

/-! ## A023564.P15479961271741438

`∑[∑[A282162(n)]]-A023603(n+1)`
-/

namespace A023564.P15479961271741438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023603 (n + 1)

end

end A023564.P15479961271741438

/-! ## A023564.P2748335708642182060

`∑[A001950(n+1)]-A023603(n+1)`
-/

namespace A023564.P2748335708642182060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023603 (n + 1)

end

end A023564.P2748335708642182060

/-! ## A023564.P17623037613169959999

`A023668(n+1)+A023669(n+1)-A023603(n+1)`
-/

namespace A023564.P17623037613169959999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023668 (n + 1) + (A023669 (n + 1) - A023603 (n + 1))

end

end A023564.P17623037613169959999

/-! ## A023564.P14343817198765893584

`A088207(n+1)-A023603(n+1)`
-/

namespace A023564.P14343817198765893584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - A023603 (n + 1)

end

end A023564.P14343817198765893584

/-! ## A023564.P11100131063094947986

`∑[A002251(A000201(n+1))]-A023603(n+1)`
-/

namespace A023564.P11100131063094947986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023603 (n + 1)

end

end A023564.P11100131063094947986

/-!
# A023565: Convolution of A023531 and A023533.

The programs for A023565, there is no canonical definition to state claims against.
-/

/-! ## A023565.P14233614807170173661

`∑[A023531(n+1)]-A023566(n+1)`
-/

namespace A023565.P14233614807170173661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023566 (n + 1)

end

end A023565.P14233614807170173661

/-! ## A023565.P12005165309988638013

`∑[A023533(n+1)]-A023604(n+1)`
-/

namespace A023565.P12005165309988638013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023604 (n + 1)

end

end A023565.P12005165309988638013

/-! ## A023565.P10162078979937288804

`∑[A129184(n+1)]-A023566(n+1)`
-/

namespace A023565.P10162078979937288804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023566 (n + 1)

end

end A023565.P10162078979937288804

/-! ## A023565.P1017097420230779174

`A023546(n+1)-(A023566(n+1)+A023535(n+1))`
-/

namespace A023565.P1017097420230779174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023546 (n + 1) - (A023566 (n + 1) + A023535 (n + 1))

end

end A023565.P1017097420230779174

/-! ## A023565.P14199634398980554266

`A023555(n+1)+A023556(n+1)-A023566(n+1)`
-/

namespace A023565.P14199634398980554266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023555 (n + 1) + (A023556 (n + 1) - A023566 (n + 1))

end

end A023565.P14199634398980554266

/-! ## A023565.P6558371562767835213

`A056556(n+1)-A023604(n+1)`
-/

namespace A023565.P6558371562767835213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1) - A023604 (n + 1)

end

end A023565.P6558371562767835213

/-!
# A023566: Convolution of A023531 and A014306.

The programs for A023566, there is no canonical definition to state claims against.
-/

/-! ## A023566.P16166386390347189740

`∑[A014306(n+1)]-A023605(n+1)`
-/

namespace A023566.P16166386390347189740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023605 (n + 1)

end

end A023566.P16166386390347189740

/-! ## A023566.P3134134062874671733

`∑[A023531(n+1)]-A023565(n+1)`
-/

namespace A023566.P3134134062874671733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023565 (n + 1)

end

end A023566.P3134134062874671733

/-! ## A023566.P5777834588069003705

`A023546(n+1)-(A023565(n+1)+A023535(n+1))`
-/

namespace A023566.P5777834588069003705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023546 (n + 1) - (A023565 (n + 1) + A023535 (n + 1))

end

end A023566.P5777834588069003705

/-! ## A023566.P12048166486980153241

`A023555(n+1)+A023556(n+1)-A023565(n+1)`
-/

namespace A023566.P12048166486980153241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023555 (n + 1) + (A023556 (n + 1) - A023565 (n + 1))

end

end A023566.P12048166486980153241

/-! ## A023566.P6713466712937978942

`∑[A010054(n+2)]-A023565(n+1)`
-/

namespace A023566.P6713466712937978942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023565 (n + 1)

end

end A023566.P6713466712937978942

/-! ## A023566.P4235109490127533067

`∑[A023532(A120565(n))]-A023605(n+1)`
-/

namespace A023566.P4235109490127533067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A120565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023605 (n + 1)

end

end A023566.P4235109490127533067

/-!
# A023567: Convolution of A023531 and primes.

The programs for A023567, there is no canonical definition to state claims against.
-/

/-! ## A023567.P3649205388550812306

`A023559(n+2)-char[A055998(n)]`
-/

namespace A023567.P3649205388550812306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023567.P3649205388550812306

/-! ## A023567.P2690818080615919395

`A023559(n+2)-A023531(n+2)`
-/

namespace A023567.P2690818080615919395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - A023531 (n + 2)

end

end A023567.P2690818080615919395

/-! ## A023567.P3139268261557921947

`A023559(n+2)-A073423(n+3)`
-/

namespace A023567.P3139268261557921947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - A073423 (n + 3)

end

end A023567.P3139268261557921947

/-! ## A023567.P788959770294121781

`A023559(n+2)-∑[A103452(n+2)]`
-/

namespace A023567.P788959770294121781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023567.P788959770294121781

/-! ## A023567.P4247485957548327459

`A023559(n+2)-A010054(n+3)`
-/

namespace A023567.P4247485957548327459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - A010054 (n + 3)

end

end A023567.P4247485957548327459

/-! ## A023567.P13934538237687244381

`A023559(n+2)-Δ[A003056(n+2)]`
-/

namespace A023567.P13934538237687244381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - (f1 (n + 1) - f1 n)

end

end A023567.P13934538237687244381

/-! ## A023567.P8920851085226381005

`A023559(n+2)-A000007(A025581(n+2))`
-/

namespace A023567.P8920851085226381005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - A000007 (A025581 (n + 2)).toNat

end

end A023567.P8920851085226381005

/-! ## A023567.P9592476667441047619

`A023559(n+2)-Δ[A002024(n+3)]`
-/

namespace A023567.P9592476667441047619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - (f1 (n + 1) - f1 n)

end

end A023567.P9592476667441047619

/-! ## A023567.P336587173319280241

`A023559(n+2)-A000007(A091435(n+2))`
-/

namespace A023567.P336587173319280241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023559 (n + 2) - A000007 (A091435 (n + 2)).toNat

end

end A023567.P336587173319280241

/-!
# A023568: Number of distinct prime divisors of prime(n)-3.

The programs for A023568, the canonical program `A023568.P14714875499586096405` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023568 has offset 1).

The definition of A023568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023568.P14714875499586096405

`A157928(n)+A039737(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023568

/-- `A157928(n)+A039737(n+1)` -/
def P14714875499586096405.Spec : Prop :=
  ∀ n, P14714875499586096405.a n = A023568 (n + 1)

theorem P14714875499586096405.correct : P14714875499586096405.Spec := by
  intro n
  simp only [A023568, Nat.add_sub_cancel]

end A023568

/-! ## A023568.P4581029117150367581

`∑{p}[1-A040976(n+1), A001222(#)]`
-/

namespace A023568.P4581029117150367581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A023568.P4581029117150367581

namespace A023568

/-- `∑{p}[1-A040976(n+1), A001222(#)]` -/
def P4581029117150367581.Spec : Prop :=
  ∀ n, P4581029117150367581.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P3057337843148366173

`∑{p}[3-A000040(n+1), A001222(#)]`
-/

namespace A023568.P3057337843148366173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A023568.P3057337843148366173

namespace A023568

/-- `∑{p}[3-A000040(n+1), A001222(#)]` -/
def P3057337843148366173.Spec : Prop :=
  ∀ n, P3057337843148366173.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P900026404085334012

`∑{p}[3-A000040(n+1), A008683(#)²]`
-/

namespace A023568.P900026404085334012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 p ^ 2

end

end A023568.P900026404085334012

namespace A023568

/-- `∑{p}[3-A000040(n+1), A008683(#)²]` -/
def P900026404085334012.Spec : Prop :=
  ∀ n, P900026404085334012.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P13655714310969833432

`∑{e}[3-A000040(n+1), A093178(A112345(#))]`
-/

namespace A023568.P13655714310969833432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A093178 (A112345 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023568.P13655714310969833432

namespace A023568

/-- `∑{e}[3-A000040(n+1), A093178(A112345(#))]` -/
def P13655714310969833432.Spec : Prop :=
  ∀ n, P13655714310969833432.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P14095021111725038767

`∑{e}[3-A000040(n+1), A323921(A055966(#)+1)]`
-/

namespace A023568.P14095021111725038767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323921 (A055966 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A023568.P14095021111725038767

namespace A023568

/-- `∑{e}[3-A000040(n+1), A323921(A055966(#)+1)]` -/
def P14095021111725038767.Spec : Prop :=
  ∀ n, P14095021111725038767.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P18027239903689351864

`∑{e}[3-A008578(n+2), A323921(A055966(#)+1)]`
-/

namespace A023568.P18027239903689351864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323921 (A055966 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A023568.P18027239903689351864

namespace A023568

/-- `∑{e}[3-A008578(n+2), A323921(A055966(#)+1)]` -/
def P18027239903689351864.Spec : Prop :=
  ∀ n, P18027239903689351864.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P11027198223918167931

`A001221(∏{p}[A086801(n+1), #])`
-/

namespace A023568.P11027198223918167931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A023568.P11027198223918167931

namespace A023568

/-- `A001221(∏{p}[A086801(n+1), #])` -/
def P11027198223918167931.Spec : Prop :=
  ∀ n, P11027198223918167931.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P7236543878217488226

`A001222(∏{p}[A086801(n+1), #])`
-/

namespace A023568.P7236543878217488226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A023568.P7236543878217488226

namespace A023568

/-- `A001222(∏{p}[A086801(n+1), #])` -/
def P7236543878217488226.Spec : Prop :=
  ∀ n, P7236543878217488226.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P13133820539536527436

`A001222(∏{p}[1-A040976(n+1), #])`
-/

namespace A023568.P13133820539536527436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A023568.P13133820539536527436

namespace A023568

/-- `A001222(∏{p}[1-A040976(n+1), #])` -/
def P13133820539536527436.Spec : Prop :=
  ∀ n, P13133820539536527436.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P8020096263039260614

`A001222(∏{p}[3-A000040(n+1), #])`
-/

namespace A023568.P8020096263039260614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A023568.P8020096263039260614

namespace A023568

/-- `A001222(∏{p}[3-A000040(n+1), #])` -/
def P8020096263039260614.Spec : Prop :=
  ∀ n, P8020096263039260614.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P11728393263434467471

`A001222(∏{p}[lt[n, A006530(2*(n+2)+2)], #])`
-/

namespace A023568.P11728393263434467471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023568.P11728393263434467471

namespace A023568

/-- `A001222(∏{p}[lt[n, A006530(2*(n+2)+2)], #])` -/
def P11728393263434467471.Spec : Prop :=
  ∀ n, P11728393263434467471.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P17114762079153421545

`∑{p}[3-record[A014963(n+2)], A001222(#)]`
-/

namespace A023568.P17114762079153421545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A023568.P17114762079153421545

namespace A023568

/-- `∑{p}[3-record[A014963(n+2)], A001222(#)]` -/
def P17114762079153421545.Spec : Prop :=
  ∀ n, P17114762079153421545.a n = A023568 (n + 1)

end A023568

/-! ## A023568.P9045501127792050076

`A001221(A319534(A000040(n+1)))`
-/

namespace A023568.P9045501127792050076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A319534 (A000040 (n + 1)).toNat).toNat

end

end A023568.P9045501127792050076

namespace A023568

/-- `A001221(A319534(A000040(n+1)))` -/
def P9045501127792050076.Spec : Prop :=
  ∀ n, P9045501127792050076.a n = A023568 (n + 1)

end A023568

/-!
# A023569: Greatest prime divisor of prime(n) - 3.

The programs for A023569, the canonical program `A023569.P13251674062579295552` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023569 has offset 3).

The definition of A023569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023569.P13251674062579295552

`A006530(∑[abs(Δ[p?[2*n+1]])])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023569

/-- `A006530(∑[abs(Δ[p?[2*n+1]])])` -/
def P13251674062579295552.Spec : Prop :=
  ∀ n, P13251674062579295552.a n = A023569 (n + 3)

theorem P13251674062579295552.correct : P13251674062579295552.Spec := by
  intro n
  simp only [A023569, Nat.add_sub_cancel]

end A023569

/-! ## A023569.P17994696248107940800

`A006530(A154115(n+2))`
-/

namespace A023569.P17994696248107940800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154115 (n + 2)).toNat

end

end A023569.P17994696248107940800

namespace A023569

/-- `A006530(A154115(n+2))` -/
def P17994696248107940800.Spec : Prop :=
  ∀ n, P17994696248107940800.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P17592496658356044446

`A006530(A086801(n+3))`
-/

namespace A023569.P17592496658356044446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086801 (n + 3)).toNat

end

end A023569.P17592496658356044446

namespace A023569

/-- `A006530(A086801(n+3))` -/
def P17592496658356044446.Spec : Prop :=
  ∀ n, P17592496658356044446.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P11587472082941965524

`A006530(∑[A001223(n+2)])`
-/

namespace A023569.P11587472082941965524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023569.P11587472082941965524

namespace A023569

/-- `A006530(∑[A001223(n+2)])` -/
def P11587472082941965524.Spec : Prop :=
  ∀ n, P11587472082941965524.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P10326242727570803361

`A006530(∑[A054541(n+3)])`
-/

namespace A023569.P10326242727570803361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023569.P10326242727570803361

namespace A023569

/-- `A006530(∑[A054541(n+3)])` -/
def P10326242727570803361.Spec : Prop :=
  ∀ n, P10326242727570803361.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P11533932856182224249

`A006530(∑[A125266(n+3)])`
-/

namespace A023569.P11533932856182224249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023569.P11533932856182224249

namespace A023569

/-- `A006530(∑[A125266(n+3)])` -/
def P11533932856182224249.Spec : Prop :=
  ∀ n, P11533932856182224249.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P13482835191655192851

`A006530(A172367(n+1)+1)`
-/

namespace A023569.P13482835191655192851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A172367 (n + 1) + 1).toNat

end

end A023569.P13482835191655192851

namespace A023569

/-- `A006530(A172367(n+1)+1)` -/
def P13482835191655192851.Spec : Prop :=
  ∀ n, P13482835191655192851.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P2663826528256876551

`A006530(A040976(n+3)-1)`
-/

namespace A023569.P2663826528256876551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (n + 3) - 1).toNat

end

end A023569.P2663826528256876551

namespace A023569

/-- `A006530(A040976(n+3)-1)` -/
def P2663826528256876551.Spec : Prop :=
  ∀ n, P2663826528256876551.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P14773250967845825291

`A006530(A173064(n+3)+2)`
-/

namespace A023569.P14773250967845825291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A173064 (n + 3) + 2).toNat

end

end A023569.P14773250967845825291

namespace A023569

/-- `A006530(A173064(n+3)+2)` -/
def P14773250967845825291.Spec : Prop :=
  ∀ n, P14773250967845825291.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P6576297379478123173

`A006530(A215848(n+1)-3)`
-/

namespace A023569.P6576297379478123173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215848 (n + 1) - 3).toNat

end

end A023569.P6576297379478123173

namespace A023569

/-- `A006530(A215848(n+1)-3)` -/
def P6576297379478123173.Spec : Prop :=
  ∀ n, P6576297379478123173.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P6715599259241207089

`A006530(A006093(n+3)-2)`
-/

namespace A023569.P6715599259241207089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 3) - 2).toNat

end

end A023569.P6715599259241207089

namespace A023569

/-- `A006530(A006093(n+3)-2)` -/
def P6715599259241207089.Spec : Prop :=
  ∀ n, P6715599259241207089.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P11274904754988168156

`A006530(2*A067076(n+2))`
-/

namespace A023569.P11274904754988168156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A067076 (n + 2)).toNat

end

end A023569.P11274904754988168156

namespace A023569

/-- `A006530(2*A067076(n+2))` -/
def P11274904754988168156.Spec : Prop :=
  ∀ n, P11274904754988168156.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P3399848829440710424

`A006530(A000040(n+3)-3)`
-/

namespace A023569.P3399848829440710424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 3) - 3).toNat

end

end A023569.P3399848829440710424

namespace A023569

/-- `A006530(A000040(n+3)-3)` -/
def P3399848829440710424.Spec : Prop :=
  ∀ n, P3399848829440710424.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P3741870169147212520

`A006530(A008864(n+3)-4)`
-/

namespace A023569.P3741870169147212520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 3) - 4).toNat

end

end A023569.P3741870169147212520

namespace A023569

/-- `A006530(A008864(n+3)-4)` -/
def P3741870169147212520.Spec : Prop :=
  ∀ n, P3741870169147212520.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P10163818982908936612

`A006530(xor(1, A040976(n+3)))`
-/

namespace A023569.P10163818982908936612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A040976 (n + 3))).toNat

end

end A023569.P10163818982908936612

namespace A023569

/-- `A006530(xor(1, A040976(n+3)))` -/
def P10163818982908936612.Spec : Prop :=
  ∀ n, P10163818982908936612.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P4177662976262315625

`A006530(∑[A135732(n+1)]+n)`
-/

namespace A023569.P4177662976262315625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A023569.P4177662976262315625

namespace A023569

/-- `A006530(∑[A135732(n+1)]+n)` -/
def P4177662976262315625.Spec : Prop :=
  ∀ n, P4177662976262315625.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P7680857019246286062

`A006530(∑[abs(Δ[A000040(n+2)])])`
-/

namespace A023569.P7680857019246286062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023569.P7680857019246286062

namespace A023569

/-- `A006530(∑[abs(Δ[A000040(n+2)])])` -/
def P7680857019246286062.Spec : Prop :=
  ∀ n, P7680857019246286062.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P10376877639429435720

`A006530(2*(A089038(n+1)+1))`
-/

namespace A023569.P10376877639429435720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (A089038 (n + 1) + 1)).toNat

end

end A023569.P10376877639429435720

namespace A023569

/-- `A006530(2*(A089038(n+1)+1))` -/
def P10376877639429435720.Spec : Prop :=
  ∀ n, P10376877639429435720.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P9633499313466064105

`A006530(A089038(n+1)+A089038(n+1)+2)`
-/

namespace A023569.P9633499313466064105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089038 (n + 1) + (A089038 (n + 1) + 2)).toNat

end

end A023569.P9633499313466064105

namespace A023569

/-- `A006530(A089038(n+1)+A089038(n+1)+2)` -/
def P9633499313466064105.Spec : Prop :=
  ∀ n, P9633499313466064105.a n = A023569 (n + 3)

end A023569

/-! ## A023569.P8960044092966563253

`A006530(A000010(A065091(n+2))-2)`
-/

namespace A023569.P8960044092966563253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A065091 (n + 2)).toNat - 2).toNat

end

end A023569.P8960044092966563253

namespace A023569

/-- `A006530(A000010(A065091(n+2))-2)` -/
def P8960044092966563253.Spec : Prop :=
  ∀ n, P8960044092966563253.a n = A023569 (n + 3)

end A023569

/-!
# A023570: Greatest exponent in prime-power factorization of prime(n)-3; a(1) = a(2) = 0.

The programs for A023570, the canonical program `A023570.P4841596169678730397` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023570 has offset 1).

The definition of A023570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023570.P4841596169678730397

`A061395(∏{e}[3-A000040(n+1), A000040(#)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A023570

/-- `A061395(∏{e}[3-A000040(n+1), A000040(#)])` -/
def P4841596169678730397.Spec : Prop :=
  ∀ n, P4841596169678730397.a n = A023570 (n + 1)

theorem P4841596169678730397.correct : P4841596169678730397.Spec := by
  intro n
  simp only [A023570, Nat.add_sub_cancel]

end A023570

/-! ## A023570.P4596788804868466443

`A051903(abs(2-A156037(n+1)))`
-/

namespace A023570.P4596788804868466443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 |2 - A156037 (n + 1)|.toNat

end

end A023570.P4596788804868466443

namespace A023570

/-- `A051903(abs(2-A156037(n+1)))` -/
def P4596788804868466443.Spec : Prop :=
  ∀ n, P4596788804868466443.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P9889799627948914817

`A051903(A006093(n+1)-A046698(n))`
-/

namespace A023570.P9889799627948914817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006093 (n + 1) - A046698 n).toNat

end

end A023570.P9889799627948914817

namespace A023570

/-- `A051903(A006093(n+1)-A046698(n))` -/
def P9889799627948914817.Spec : Prop :=
  ∀ n, P9889799627948914817.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P4115594571408440658

`A051903(xor(A040976(n+1), A060576(n)))`
-/

namespace A023570.P4115594571408440658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.xor (A040976 (n + 1)) (A060576 n)).toNat

end

end A023570.P4115594571408440658

namespace A023570

/-- `A051903(xor(A040976(n+1), A060576(n)))` -/
def P4115594571408440658.Spec : Prop :=
  ∀ n, P4115594571408440658.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P3779383433777333709

`A051903(A008864(n+1)-A000005(A001747(n+1)))`
-/

namespace A023570.P3779383433777333709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008864 (n + 1) - A000005 (A001747 (n + 1)).toNat).toNat

end

end A023570.P3779383433777333709

namespace A023570

/-- `A051903(A008864(n+1)-A000005(A001747(n+1)))` -/
def P3779383433777333709.Spec : Prop :=
  ∀ n, P3779383433777333709.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P11139060999497558796

`A051903(A004275(A130290(n+1)))`
-/

namespace A023570.P11139060999497558796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A004275 (A130290 (n + 1)).toNat).toNat

end

end A023570.P11139060999497558796

namespace A023570

/-- `A051903(A004275(A130290(n+1)))` -/
def P11139060999497558796.Spec : Prop :=
  ∀ n, P11139060999497558796.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P15503482404881723339

`A051903(A008458(A130290(n+1)-1))`
-/

namespace A023570.P15503482404881723339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008458 (A130290 (n + 1) - 1).toNat).toNat

end

end A023570.P15503482404881723339

namespace A023570

/-- `A051903(A008458(A130290(n+1)-1))` -/
def P15503482404881723339.Spec : Prop :=
  ∀ n, P15503482404881723339.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P1649103151028412341

`A051903(A319534(p?[A057723(n+1)]))`
-/

namespace A023570.P1649103151028412341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A319534 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A023570.P1649103151028412341

namespace A023570

/-- `A051903(A319534(p?[A057723(n+1)]))` -/
def P1649103151028412341.Spec : Prop :=
  ∀ n, P1649103151028412341.a n = A023570 (n + 1)

end A023570

/-! ## A023570.P13021670496549455092

`A051903(A233583(A006093(n+1))-1)`
-/

namespace A023570.P13021670496549455092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A233583 (A006093 (n + 1)).toNat - 1).toNat

end

end A023570.P13021670496549455092

namespace A023570

/-- `A051903(A233583(A006093(n+1))-1)` -/
def P13021670496549455092.Spec : Prop :=
  ∀ n, P13021670496549455092.a n = A023570 (n + 1)

end A023570

/-!
# A023571: Least odd prime divisor of p(n)-3, or 1 if p(n)-3 is a power of 2.

The programs for A023571, there is no canonical definition to state claims against.
-/

/-! ## A023571.P1741119676084728357

`A119288(eq[1, A092953(n+1)])`
-/

namespace A023571.P1741119676084728357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023571.P1741119676084728357

/-! ## A023571.P13933187687982350571

`A284252(eq[1, A092953(n+1)])`
-/

namespace A023571.P13933187687982350571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023571.P13933187687982350571

/-! ## A023571.P452033213423234319

`A119288(abs(2-A156037(n+1)))`
-/

namespace A023571.P452033213423234319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 |2 - A156037 (n + 1)|.toNat

end

end A023571.P452033213423234319

/-! ## A023571.P15513155600749174749

`A119288(record[A319516(n+1)+1])`
-/

namespace A023571.P15513155600749174749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319516 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023571.P15513155600749174749

/-! ## A023571.P7344706287942344614

`A284252(record[A319516(n+1)+1])`
-/

namespace A023571.P7344706287942344614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319516 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023571.P7344706287942344614

/-! ## A023571.P3624323126381742612

`A119288(A004278(A111333(n+1)))`
-/

namespace A023571.P3624323126381742612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A004278 (A111333 (n + 1)).toNat).toNat

end

end A023571.P3624323126381742612

/-! ## A023571.P1520250061318947477

`A119288(record[A004442(A046665(n+1))])`
-/

namespace A023571.P1520250061318947477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A046665 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023571.P1520250061318947477

/-! ## A023571.P13920521633767057397

`A119288(record[A214962(n+2)+1])`
-/

namespace A023571.P13920521633767057397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023571.P13920521633767057397

/-! ## A023571.P10560808134136052290

`A284252(record[A214962(n+2)+1])`
-/

namespace A023571.P10560808134136052290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023571.P10560808134136052290

/-! ## A023571.P5733318463458397916

`A020639(A226040(record[A214962(n+2)]))`
-/

namespace A023571.P5733318463458397916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A226040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A023571.P5733318463458397916

/-!
# A023572: Exponent of 2 in prime factorization of prime(n) - 3.

The programs for A023572, the canonical program `A023572.P7725850507697149800` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023572 has offset 3).

The definition of A023572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023572.P7725850507697149800

`val(A000040(n+3)-3, 2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023572

/-- `val(A000040(n+3)-3, 2)` -/
def P7725850507697149800.Spec : Prop :=
  ∀ n, (P7725850507697149800.a n : ℤ) = A023572 (n + 3)

theorem P7725850507697149800.correct : P7725850507697149800.Spec := by
  intro n
  simp only [A023572, Nat.add_sub_cancel]

end A023572

/-! ## A023572.P12048512685201523807

`val(∑[A001223(n+2)], 2)`
-/

namespace A023572.P12048512685201523807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A023572.P12048512685201523807

namespace A023572

/-- `val(∑[A001223(n+2)], 2)` -/
def P12048512685201523807.Spec : Prop :=
  ∀ n, (P12048512685201523807.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P16413837041826794856

`val(A172367(n+1)+1, 2)`
-/

namespace A023572.P16413837041826794856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A172367 (n + 1) + 1).toNat 2

end

end A023572.P16413837041826794856

namespace A023572

/-- `val(A172367(n+1)+1, 2)` -/
def P16413837041826794856.Spec : Prop :=
  ∀ n, (P16413837041826794856.a n : ℤ) = A023572 (n + 3)

theorem P16413837041826794856.correct : P16413837041826794856.Spec := by
  intro n
  simp only [A023572, Nat.add_sub_cancel, A023572.P16413837041826794856.a, A023572.P7725850507697149800.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172367, A172367.P6320412010058866458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023572

/-! ## A023572.P1750651842948566602

`val(A154115(n+2), 2)`
-/

namespace A023572.P1750651842948566602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A154115 (n + 2)).toNat 2

end

end A023572.P1750651842948566602

namespace A023572

/-- `val(A154115(n+2), 2)` -/
def P1750651842948566602.Spec : Prop :=
  ∀ n, (P1750651842948566602.a n : ℤ) = A023572 (n + 3)

theorem P1750651842948566602.correct : P1750651842948566602.Spec := by
  intro n
  simp only [A023572, Nat.add_sub_cancel, A023572.P1750651842948566602.a, A023572.P7725850507697149800.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023572

/-! ## A023572.P9550513756744989491

`val(A086801(n+3), 2)`
-/

namespace A023572.P9550513756744989491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086801 (n + 3)).toNat 2

end

end A023572.P9550513756744989491

namespace A023572

/-- `val(A086801(n+3), 2)` -/
def P9550513756744989491.Spec : Prop :=
  ∀ n, (P9550513756744989491.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P17683506831194348607

`val(∑[A054541(n+3)], 2)`
-/

namespace A023572.P17683506831194348607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A023572.P17683506831194348607

namespace A023572

/-- `val(∑[A054541(n+3)], 2)` -/
def P17683506831194348607.Spec : Prop :=
  ∀ n, (P17683506831194348607.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P10151017349767867215

`val(∑[A125266(n+3)], 2)`
-/

namespace A023572.P10151017349767867215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A023572.P10151017349767867215

namespace A023572

/-- `val(∑[A125266(n+3)], 2)` -/
def P10151017349767867215.Spec : Prop :=
  ∀ n, (P10151017349767867215.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P12301721675816318226

`val(A006093(n+3)-2, 2)`
-/

namespace A023572.P12301721675816318226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 3) - 2).toNat 2

end

end A023572.P12301721675816318226

namespace A023572

/-- `val(A006093(n+3)-2, 2)` -/
def P12301721675816318226.Spec : Prop :=
  ∀ n, (P12301721675816318226.a n : ℤ) = A023572 (n + 3)

theorem P12301721675816318226.correct : P12301721675816318226.Spec := by
  intro n
  simp only [A023572, Nat.add_sub_cancel, A023572.P12301721675816318226.a, A023572.P7725850507697149800.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023572

/-! ## A023572.P16985655936649180089

`val(abs(3-record[A000010(n+5)])+1, 2)`
-/

namespace A023572.P16985655936649180089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|3 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)| + 1).toNat 2

end

end A023572.P16985655936649180089

namespace A023572

/-- `val(abs(3-record[A000010(n+5)])+1, 2)` -/
def P16985655936649180089.Spec : Prop :=
  ∀ n, (P16985655936649180089.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P5489454719913196576

`val(lt[A000005(2*n+5), 3]+1, 2)+1`
-/

namespace A023572.P5489454719913196576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 2 + 1

end

end A023572.P5489454719913196576

namespace A023572

/-- `val(lt[A000005(2*n+5), 3]+1, 2)+1` -/
def P5489454719913196576.Spec : Prop :=
  ∀ n, (P5489454719913196576.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P10911960559899663776

`A302045(A000040(n+3)-3)`
-/

namespace A023572.P10911960559899663776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A000040 (n + 3) - 3).toNat

end

end A023572.P10911960559899663776

namespace A023572

/-- `A302045(A000040(n+3)-3)` -/
def P10911960559899663776.Spec : Prop :=
  ∀ n, P10911960559899663776.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P9795718678366874755

`val(A169606(2*n+1), 2)`
-/

namespace A023572.P9795718678366874755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169606 (2 * n + 1)).toNat 2

end

end A023572.P9795718678366874755

namespace A023572

/-- `val(A169606(2*n+1), 2)` -/
def P9795718678366874755.Spec : Prop :=
  ∀ n, (P9795718678366874755.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P14728356369748604527

`val(A040976(A028242(2*(n+1)+3)+1)-1, 2)`
-/

namespace A023572.P14728356369748604527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040976 (A028242 (2 * (n + 1) + 3) + 1).toNat - 1).toNat 2

end

end A023572.P14728356369748604527

namespace A023572

/-- `val(A040976(A028242(2*(n+1)+3)+1)-1, 2)` -/
def P14728356369748604527.Spec : Prop :=
  ∀ n, (P14728356369748604527.a n : ℤ) = A023572 (n + 3)

end A023572

/-! ## A023572.P15106051359385038712

`A001511(A067076(n+2))`
-/

namespace A023572.P15106051359385038712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A067076 (n + 2)).toNat

end

end A023572.P15106051359385038712

namespace A023572

/-- `A001511(A067076(n+2))` -/
def P15106051359385038712.Spec : Prop :=
  ∀ n, P15106051359385038712.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P9056312864365192633

`A001511(∑[A028334(n+2)])`
-/

namespace A023572.P9056312864365192633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023572.P9056312864365192633

namespace A023572

/-- `A001511(∑[A028334(n+2)])` -/
def P9056312864365192633.Spec : Prop :=
  ∀ n, P9056312864365192633.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P8579909362426687071

`A001511(A006254(n+2)-2)`
-/

namespace A023572.P8579909362426687071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006254 (n + 2) - 2).toNat

end

end A023572.P8579909362426687071

namespace A023572

/-- `A001511(A006254(n+2)-2)` -/
def P8579909362426687071.Spec : Prop :=
  ∀ n, P8579909362426687071.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P17622207941605955533

`A244417(A000040(n+3)-3)`
-/

namespace A023572.P17622207941605955533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (A000040 (n + 3) - 3).toNat

end

end A023572.P17622207941605955533

namespace A023572

/-- `A244417(A000040(n+3)-3)` -/
def P17622207941605955533.Spec : Prop :=
  ∀ n, P17622207941605955533.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P13386130769367896721

`A089309(A000040(n+3)-4)`
-/

namespace A023572.P13386130769367896721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A000040 (n + 3) - 4).toNat

end

end A023572.P13386130769367896721

namespace A023572

/-- `A089309(A000040(n+3)-4)` -/
def P13386130769367896721.Spec : Prop :=
  ∀ n, P13386130769367896721.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P679867734189395338

`A302035(A000040(n+3)-3)`
-/

namespace A023572.P679867734189395338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302035 (A000040 (n + 3) - 3).toNat

end

end A023572.P679867734189395338

namespace A023572

/-- `A302035(A000040(n+3)-3)` -/
def P679867734189395338.Spec : Prop :=
  ∀ n, P679867734189395338.a n = A023572 (n + 3)

end A023572

/-! ## A023572.P15297245389727505801

`A050603(A172367(n+1))`
-/

namespace A023572.P15297245389727505801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A172367 (n + 1)).toNat

end

end A023572.P15297245389727505801

namespace A023572

/-- `A050603(A172367(n+1))` -/
def P15297245389727505801.Spec : Prop :=
  ∀ n, P15297245389727505801.a n = A023572 (n + 3)

end A023572

/-!
# A023573: Sum of distinct prime divisors of prime(n)-3.

The programs for A023573, the canonical program `A023573.P15283443448773359350` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023573 has offset 1).

The definition of A023573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023573.P4474714131443141437

`∑{p}[A086801(n+1), #]`
-/

namespace A023573.P4474714131443141437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P4474714131443141437

namespace A023573

/-- `∑{p}[A086801(n+1), #]` -/
def P4474714131443141437.Spec : Prop :=
  ∀ n, (P4474714131443141437.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P10612902134480975551

`∑{p}[1-A040976(n+1), #]`
-/

namespace A023573.P10612902134480975551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P10612902134480975551

namespace A023573

/-- `∑{p}[1-A040976(n+1), #]` -/
def P10612902134480975551.Spec : Prop :=
  ∀ n, (P10612902134480975551.a n : ℤ) = A023573 (n + 1)

theorem P10612902134480975551.correct : P10612902134480975551.Spec := by
  intro n
  simp only [A023573, Nat.add_sub_cancel, A023573.P10612902134480975551.f1, A023573.P10612902134480975551.a, A023573.P15283443448773359350.f1, A023573.P15283443448773359350.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023573

/-! ## A023573.P15283443448773359350

`∑{p}[2-A006093(n+1), #]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023573

/-- `∑{p}[2-A006093(n+1), #]` -/
def P15283443448773359350.Spec : Prop :=
  ∀ n, (P15283443448773359350.a n : ℤ) = A023573 (n + 1)

theorem P15283443448773359350.correct : P15283443448773359350.Spec := by
  intro n
  simp only [A023573, Nat.add_sub_cancel]

end A023573

/-! ## A023573.P5857248189839595216

`∑{p}[3-A000040(n+1), #]`
-/

namespace A023573.P5857248189839595216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P5857248189839595216

namespace A023573

/-- `∑{p}[3-A000040(n+1), #]` -/
def P5857248189839595216.Spec : Prop :=
  ∀ n, (P5857248189839595216.a n : ℤ) = A023573 (n + 1)

theorem P5857248189839595216.correct : P5857248189839595216.Spec := by
  intro n
  simp only [A023573, Nat.add_sub_cancel, A023573.P5857248189839595216.f1, A023573.P5857248189839595216.a, A023573.P15283443448773359350.f1, A023573.P15283443448773359350.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023573

/-! ## A023573.P5958723940149824818

`∑{p}[4-A008864(n+1), #]`
-/

namespace A023573.P5958723940149824818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P5958723940149824818

namespace A023573

/-- `∑{p}[4-A008864(n+1), #]` -/
def P5958723940149824818.Spec : Prop :=
  ∀ n, (P5958723940149824818.a n : ℤ) = A023573 (n + 1)

theorem P5958723940149824818.correct : P5958723940149824818.Spec := by
  intro n
  simp only [A023573, Nat.add_sub_cancel, A023573.P5958723940149824818.f1, A023573.P5958723940149824818.a, A023573.P15283443448773359350.f1, A023573.P15283443448773359350.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023573

/-! ## A023573.P15380640379504317126

`∑{p}[A000040(2*n-(n-1))-3, #]`
-/

namespace A023573.P15380640379504317126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P15380640379504317126

namespace A023573

/-- `∑{p}[A000040(2*n-(n-1))-3, #]` -/
def P15380640379504317126.Spec : Prop :=
  ∀ n, (P15380640379504317126.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P2182668750322368372

`∑{p}[p?[xor(1, n)]-3, #]`
-/

namespace A023573.P2182668750322368372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P2182668750322368372

namespace A023573

/-- `∑{p}[p?[xor(1, n)]-3, #]` -/
def P2182668750322368372.Spec : Prop :=
  ∀ n, (P2182668750322368372.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P7424397225165727908

`∑{p}[2-record[A000010(n+1)], #]`
-/

namespace A023573.P7424397225165727908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P7424397225165727908

namespace A023573

/-- `∑{p}[2-record[A000010(n+1)], #]` -/
def P7424397225165727908.Spec : Prop :=
  ∀ n, (P7424397225165727908.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P12714475635778481722

`∑{p}[2-record[A003958(n+1)], #]`
-/

namespace A023573.P12714475635778481722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P12714475635778481722

namespace A023573

/-- `∑{p}[2-record[A003958(n+1)], #]` -/
def P12714475635778481722.Spec : Prop :=
  ∀ n, (P12714475635778481722.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P5243495935026451042

`∑{p}[3-record[A020639(n+2)], #]`
-/

namespace A023573.P5243495935026451042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P5243495935026451042

namespace A023573

/-- `∑{p}[3-record[A020639(n+2)], #]` -/
def P5243495935026451042.Spec : Prop :=
  ∀ n, (P5243495935026451042.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P2616969532618367339

`∑{p}[lt[n, A000010(n+3)], #]`
-/

namespace A023573.P2616969532618367339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023573.P2616969532618367339

namespace A023573

/-- `∑{p}[lt[n, A000010(n+3)], #]` -/
def P2616969532618367339.Spec : Prop :=
  ∀ n, (P2616969532618367339.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P13706862078368957023

`∑{p}[lt[n, A006530(n+3)], #]`
-/

namespace A023573.P13706862078368957023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023573.P13706862078368957023

namespace A023573

/-- `∑{p}[lt[n, A006530(n+3)], #]` -/
def P13706862078368957023.Spec : Prop :=
  ∀ n, (P13706862078368957023.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P18187757879474064128

`∑{p}[lt[n, A020639(n+3)], #]`
-/

namespace A023573.P18187757879474064128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023573.P18187757879474064128

namespace A023573

/-- `∑{p}[lt[n, A020639(n+3)], #]` -/
def P18187757879474064128.Spec : Prop :=
  ∀ n, (P18187757879474064128.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P8730218415637197326

`∑{p}[eq[1, A001222(n+1)]-2, #]`
-/

namespace A023573.P8730218415637197326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P8730218415637197326

namespace A023573

/-- `∑{p}[eq[1, A001222(n+1)]-2, #]` -/
def P8730218415637197326.Spec : Prop :=
  ∀ n, (P8730218415637197326.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P6680116823459467109

`∑{p}[lt[n, A014963(n+3)], #]`
-/

namespace A023573.P6680116823459467109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023573.P6680116823459467109

namespace A023573

/-- `∑{p}[lt[n, A014963(n+3)], #]` -/
def P6680116823459467109.Spec : Prop :=
  ∀ n, (P6680116823459467109.a n : ℤ) = A023573 (n + 1)

end A023573

/-! ## A023573.P285752683222229371

`∑{p}[3-record[A014963(n+2)], #]`
-/

namespace A023573.P285752683222229371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P285752683222229371

namespace A023573

/-- `∑{p}[3-record[A014963(n+2)], #]` -/
def P285752683222229371.Spec : Prop :=
  ∀ n, (P285752683222229371.a n : ℤ) = A023573 (n + 1)

end A023573

/-!
# A023574: Sum of exponents in prime-power factorization of prime(n)-3; a(1) = a(2) = 0.

The programs for A023574, the canonical program `A023574.P4552984400050163207` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023574 has offset 1).

The definition of A023574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023574.P6517128013735414696

`∑{e}[A086801(n+1), #]`
-/

namespace A023574.P6517128013735414696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P6517128013735414696

namespace A023574

/-- `∑{e}[A086801(n+1), #]` -/
def P6517128013735414696.Spec : Prop :=
  ∀ n, (P6517128013735414696.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P11213022928497652409

`∑{e}[1-A040976(n+1), #]`
-/

namespace A023574.P11213022928497652409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P11213022928497652409

namespace A023574

/-- `∑{e}[1-A040976(n+1), #]` -/
def P11213022928497652409.Spec : Prop :=
  ∀ n, (P11213022928497652409.a n : ℤ) = A023574 (n + 1)

theorem P11213022928497652409.correct : P11213022928497652409.Spec := by
  intro n
  simp only [A023574, Nat.add_sub_cancel, A023574.P11213022928497652409.f1, A023574.P11213022928497652409.a, A023574.P4552984400050163207.f1, A023574.P4552984400050163207.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023574

/-! ## A023574.P4552984400050163207

`∑{e}[2-A006093(n+1), #]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023574

/-- `∑{e}[2-A006093(n+1), #]` -/
def P4552984400050163207.Spec : Prop :=
  ∀ n, (P4552984400050163207.a n : ℤ) = A023574 (n + 1)

theorem P4552984400050163207.correct : P4552984400050163207.Spec := by
  intro n
  simp only [A023574, Nat.add_sub_cancel]

end A023574

/-! ## A023574.P10117893001059325680

`∑{e}[3-A000040(n+1), #]`
-/

namespace A023574.P10117893001059325680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P10117893001059325680

namespace A023574

/-- `∑{e}[3-A000040(n+1), #]` -/
def P10117893001059325680.Spec : Prop :=
  ∀ n, (P10117893001059325680.a n : ℤ) = A023574 (n + 1)

theorem P10117893001059325680.correct : P10117893001059325680.Spec := by
  intro n
  simp only [A023574, Nat.add_sub_cancel, A023574.P10117893001059325680.f1, A023574.P10117893001059325680.a, A023574.P4552984400050163207.f1, A023574.P4552984400050163207.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023574

/-! ## A023574.P15962244585699348122

`∑{e}[A000040(2*n-(n-1))-3, #]`
-/

namespace A023574.P15962244585699348122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P15962244585699348122

namespace A023574

/-- `∑{e}[A000040(2*n-(n-1))-3, #]` -/
def P15962244585699348122.Spec : Prop :=
  ∀ n, (P15962244585699348122.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P16190133709819311824

`A001222(A000040(n+1)-floor(((2*n+1)/(n+1))²))`
-/

namespace A023574.P16190133709819311824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) - ⌊((2 * n + 1 : ℚ) / (n + 1 : ℚ)) ^ 2⌋).toNat

end

end A023574.P16190133709819311824

namespace A023574

/-- `A001222(A000040(n+1)-floor(((2*n+1)/(n+1))²))` -/
def P16190133709819311824.Spec : Prop :=
  ∀ n, P16190133709819311824.a n = A023574 (n + 1)

end A023574

/-! ## A023574.P8640817821548896808

`∑{e}[p?[xor(1, n)]-3, #]`
-/

namespace A023574.P8640817821548896808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P8640817821548896808

namespace A023574

/-- `∑{e}[p?[xor(1, n)]-3, #]` -/
def P8640817821548896808.Spec : Prop :=
  ∀ n, (P8640817821548896808.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P6614171995936302817

`∑{e}[2-record[A000010(n+1)], #]`
-/

namespace A023574.P6614171995936302817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P6614171995936302817

namespace A023574

/-- `∑{e}[2-record[A000010(n+1)], #]` -/
def P6614171995936302817.Spec : Prop :=
  ∀ n, (P6614171995936302817.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P8110588458414163374

`∑{e}[3-record[A006530(n+2)], #]`
-/

namespace A023574.P8110588458414163374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P8110588458414163374

namespace A023574

/-- `∑{e}[3-record[A006530(n+2)], #]` -/
def P8110588458414163374.Spec : Prop :=
  ∀ n, (P8110588458414163374.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P2979842854204512687

`∑{e}[lt[n, A000010(n+3)], #]`
-/

namespace A023574.P2979842854204512687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A023574.P2979842854204512687

namespace A023574

/-- `∑{e}[lt[n, A000010(n+3)], #]` -/
def P2979842854204512687.Spec : Prop :=
  ∀ n, (P2979842854204512687.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P17812625120822058064

`∑{e}[lt[n, A006530(n+3)], #]`
-/

namespace A023574.P17812625120822058064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A023574.P17812625120822058064

namespace A023574

/-- `∑{e}[lt[n, A006530(n+3)], #]` -/
def P17812625120822058064.Spec : Prop :=
  ∀ n, (P17812625120822058064.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P4737623618755479739

`∑{e}[lt[n, A020639(n+3)], #]`
-/

namespace A023574.P4737623618755479739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A023574.P4737623618755479739

namespace A023574

/-- `∑{e}[lt[n, A020639(n+3)], #]` -/
def P4737623618755479739.Spec : Prop :=
  ∀ n, (P4737623618755479739.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P4143928713264234420

`A001222(eq[1, A001222(n+1)]-A046698(n))`
-/

namespace A023574.P4143928713264234420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A046698 n).toNat

end

end A023574.P4143928713264234420

namespace A023574

/-- `A001222(eq[1, A001222(n+1)]-A046698(n))` -/
def P4143928713264234420.Spec : Prop :=
  ∀ n, P4143928713264234420.a n = A023574 (n + 1)

end A023574

/-! ## A023574.P11493687139662273868

`A001222(eq[1, A001222(n+1)]-A130130(n))`
-/

namespace A023574.P11493687139662273868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A130130 n).toNat

end

end A023574.P11493687139662273868

namespace A023574

/-- `A001222(eq[1, A001222(n+1)]-A130130(n))` -/
def P11493687139662273868.Spec : Prop :=
  ∀ n, P11493687139662273868.a n = A023574 (n + 1)

end A023574

/-! ## A023574.P3880729638606813665

`∑{e}[lt[n, A014963(n+3)], #]`
-/

namespace A023574.P3880729638606813665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A023574.P3880729638606813665

namespace A023574

/-- `∑{e}[lt[n, A014963(n+3)], #]` -/
def P3880729638606813665.Spec : Prop :=
  ∀ n, (P3880729638606813665.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P3511065003337014908

`∑{e}[3-record[A014963(n+2)], #]`
-/

namespace A023574.P3511065003337014908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P3511065003337014908

namespace A023574

/-- `∑{e}[3-record[A014963(n+2)], #]` -/
def P3511065003337014908.Spec : Prop :=
  ∀ n, (P3511065003337014908.a n : ℤ) = A023574 (n + 1)

end A023574

/-! ## A023574.P8637334784327434135

`A001222(A319534(A000040(n+1)))`
-/

namespace A023574.P8637334784327434135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319534 (A000040 (n + 1)).toNat).toNat

end

end A023574.P8637334784327434135

namespace A023574

/-- `A001222(A319534(A000040(n+1)))` -/
def P8637334784327434135.Spec : Prop :=
  ∀ n, P8637334784327434135.a n = A023574 (n + 1)

end A023574

/-!
# A023575: Number of distinct prime divisors of prime(n)+3.

The programs for A023575, the canonical program `A023575.P7360909130665487959` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023575 has offset 1).

The definition of A023575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023575.P7360909130665487959

`A001221(A000040(n+1)+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023575

/-- `A001221(A000040(n+1)+3)` -/
def P7360909130665487959.Spec : Prop :=
  ∀ n, P7360909130665487959.a n = A023575 (n + 1)

theorem P7360909130665487959.correct : P7360909130665487959.Spec := by
  intro n
  simp only [A023575, Nat.add_sub_cancel]

end A023575

/-! ## A023575.P6154463081137586051

`A001221(A113935(n+1))`
-/

namespace A023575.P6154463081137586051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A113935 (n + 1)).toNat

end

end A023575.P6154463081137586051

namespace A023575

/-- `A001221(A113935(n+1))` -/
def P6154463081137586051.Spec : Prop :=
  ∀ n, P6154463081137586051.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P715888447166487104

`A001221(Δ[A007504(n)]+3)`
-/

namespace A023575.P715888447166487104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 3).toNat

end

end A023575.P715888447166487104

namespace A023575

/-- `A001221(Δ[A007504(n)]+3)` -/
def P715888447166487104.Spec : Prop :=
  ∀ n, P715888447166487104.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P9640977867585170747

`A001221(A052147(n+1)+1)`
-/

namespace A023575.P9640977867585170747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052147 (n + 1) + 1).toNat

end

end A023575.P9640977867585170747

namespace A023575

/-- `A001221(A052147(n+1)+1)` -/
def P9640977867585170747.Spec : Prop :=
  ∀ n, P9640977867585170747.a n = A023575 (n + 1)

theorem P9640977867585170747.correct : P9640977867585170747.Spec := by
  intro n
  simp only [A023575, Nat.add_sub_cancel, A023575.P9640977867585170747.a, A023575.P7360909130665487959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023575

/-! ## A023575.P663747049857680964

`A001221(A008864(n+1)+2)`
-/

namespace A023575.P663747049857680964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008864 (n + 1) + 2).toNat

end

end A023575.P663747049857680964

namespace A023575

/-- `A001221(A008864(n+1)+2)` -/
def P663747049857680964.Spec : Prop :=
  ∀ n, P663747049857680964.a n = A023575 (n + 1)

theorem P663747049857680964.correct : P663747049857680964.Spec := by
  intro n
  simp only [A023575, Nat.add_sub_cancel, A023575.P663747049857680964.a, A023575.P7360909130665487959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023575

/-! ## A023575.P18338451722793171905

`A001221(A028815(n+1)+2)`
-/

namespace A023575.P18338451722793171905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028815 (n + 1) + 2).toNat

end

end A023575.P18338451722793171905

namespace A023575

/-- `A001221(A028815(n+1)+2)` -/
def P18338451722793171905.Spec : Prop :=
  ∀ n, P18338451722793171905.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P4752118859360623503

`A001221(A055670(n+1)+2)`
-/

namespace A023575.P4752118859360623503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055670 (n + 1) + 2).toNat

end

end A023575.P4752118859360623503

namespace A023575

/-- `A001221(A055670(n+1)+2)` -/
def P4752118859360623503.Spec : Prop :=
  ∀ n, P4752118859360623503.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P7351703613520333523

`A001221(A175221(n+1)-1)`
-/

namespace A023575.P7351703613520333523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175221 (n + 1) - 1).toNat

end

end A023575.P7351703613520333523

namespace A023575

/-- `A001221(A175221(n+1)-1)` -/
def P7351703613520333523.Spec : Prop :=
  ∀ n, P7351703613520333523.a n = A023575 (n + 1)

theorem P7351703613520333523.correct : P7351703613520333523.Spec := by
  intro n
  simp only [A023575, Nat.add_sub_cancel, A023575.P7351703613520333523.a, A023575.P7360909130665487959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023575

/-! ## A023575.P10724067917540251027

`A001221(A006093(n+1)+4)`
-/

namespace A023575.P10724067917540251027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + 4).toNat

end

end A023575.P10724067917540251027

namespace A023575

/-- `A001221(A006093(n+1)+4)` -/
def P10724067917540251027.Spec : Prop :=
  ∀ n, P10724067917540251027.a n = A023575 (n + 1)

theorem P10724067917540251027.correct : P10724067917540251027.Spec := by
  intro n
  simp only [A023575, Nat.add_sub_cancel, A023575.P10724067917540251027.a, A023575.P7360909130665487959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023575

/-! ## A023575.P16575904699883757570

`A001221(A040976(n+1)+5)`
-/

namespace A023575.P16575904699883757570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A040976 (n + 1) + 5).toNat

end

end A023575.P16575904699883757570

namespace A023575

/-- `A001221(A040976(n+1)+5)` -/
def P16575904699883757570.Spec : Prop :=
  ∀ n, P16575904699883757570.a n = A023575 (n + 1)

theorem P16575904699883757570.correct : P16575904699883757570.Spec := by
  intro n
  simp only [A023575, Nat.add_sub_cancel, A023575.P16575904699883757570.a, A023575.P7360909130665487959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023575

/-! ## A023575.P13778894360836589928

`A001221(∑[A125266(n+1)]+2)`
-/

namespace A023575.P13778894360836589928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A023575.P13778894360836589928

namespace A023575

/-- `A001221(∑[A125266(n+1)]+2)` -/
def P13778894360836589928.Spec : Prop :=
  ∀ n, P13778894360836589928.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P15856046573694867191

`A001221(record[A000010(n+1)+4])`
-/

namespace A023575.P15856046573694867191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023575.P15856046573694867191

namespace A023575

/-- `A001221(record[A000010(n+1)+4])` -/
def P15856046573694867191.Spec : Prop :=
  ∀ n, P15856046573694867191.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P2438182486063800096

`A001221(record[A006530(n+2)+3])`
-/

namespace A023575.P2438182486063800096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023575.P2438182486063800096

namespace A023575

/-- `A001221(record[A006530(n+2)+3])` -/
def P2438182486063800096.Spec : Prop :=
  ∀ n, P2438182486063800096.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P3468566203438312862

`A001221(record[A020639(n+2)+3])`
-/

namespace A023575.P3468566203438312862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023575.P3468566203438312862

namespace A023575

/-- `A001221(record[A020639(n+2)+3])` -/
def P3468566203438312862.Spec : Prop :=
  ∀ n, P3468566203438312862.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P2196787921692806798

`A001221(2*(A111333(n+1)+1))`
-/

namespace A023575.P2196787921692806798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (A111333 (n + 1) + 1)).toNat

end

end A023575.P2196787921692806798

namespace A023575

/-- `A001221(2*(A111333(n+1)+1))` -/
def P2196787921692806798.Spec : Prop :=
  ∀ n, P2196787921692806798.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P8621409790623392747

`A001221(A093515(2*n+1)+2)`
-/

namespace A023575.P8621409790623392747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A093515 (2 * n + 1) + 2).toNat

end

end A023575.P8621409790623392747

namespace A023575

/-- `A001221(A093515(2*n+1)+2)` -/
def P8621409790623392747.Spec : Prop :=
  ∀ n, P8621409790623392747.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P585063899806812414

`A001221(2*(A102781(n+1)+2))`
-/

namespace A023575.P585063899806812414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (A102781 (n + 1) + 2)).toNat

end

end A023575.P585063899806812414

namespace A023575

/-- `A001221(2*(A102781(n+1)+2))` -/
def P585063899806812414.Spec : Prop :=
  ∀ n, P585063899806812414.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P16687685071998273786

`A001221(lcm(2, A111333(n+1)+1))`
-/

namespace A023575.P16687685071998273786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 2 (A111333 (n + 1) + 1))

end

end A023575.P16687685071998273786

namespace A023575

/-- `A001221(lcm(2, A111333(n+1)+1))` -/
def P16687685071998273786.Spec : Prop :=
  ∀ n, P16687685071998273786.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P11391164942658409151

`A001221(A014688(n+1)+2-n)`
-/

namespace A023575.P11391164942658409151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014688 (n + 1) + (2 - (n : ℤ))).toNat

end

end A023575.P11391164942658409151

namespace A023575

/-- `A001221(A014688(n+1)+2-n)` -/
def P11391164942658409151.Spec : Prop :=
  ∀ n, P11391164942658409151.a n = A023575 (n + 1)

end A023575

/-! ## A023575.P3839804332741851251

`A001221(A111333(n+1)+A111333(n+1)+2)`
-/

namespace A023575.P3839804332741851251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A111333 (n + 1) + (A111333 (n + 1) + 2)).toNat

end

end A023575.P3839804332741851251

namespace A023575

/-- `A001221(A111333(n+1)+A111333(n+1)+2)` -/
def P3839804332741851251.Spec : Prop :=
  ∀ n, P3839804332741851251.a n = A023575 (n + 1)

end A023575

/-!
# A023576: Greatest prime divisor of prime(n)+3.

The programs for A023576, the canonical program `A023576.P7935691990157790967` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023576 has offset 1).

The definition of A023576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023576.P7935691990157790967

`A006530(A113935(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023576

/-- `A006530(A113935(n+1))` -/
def P7935691990157790967.Spec : Prop :=
  ∀ n, P7935691990157790967.a n = A023576 (n + 1)

theorem P7935691990157790967.correct : P7935691990157790967.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel]

end A023576

/-! ## A023576.P8797053284379318014

`A006530(Δ[A007504(n)]+3)`
-/

namespace A023576.P8797053284379318014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n + 3).toNat

end

end A023576.P8797053284379318014

namespace A023576

/-- `A006530(Δ[A007504(n)]+3)` -/
def P8797053284379318014.Spec : Prop :=
  ∀ n, P8797053284379318014.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P8479357457614750959

`A006530(A052147(n+1)+1)`
-/

namespace A023576.P8479357457614750959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052147 (n + 1) + 1).toNat

end

end A023576.P8479357457614750959

namespace A023576

/-- `A006530(A052147(n+1)+1)` -/
def P8479357457614750959.Spec : Prop :=
  ∀ n, P8479357457614750959.a n = A023576 (n + 1)

theorem P8479357457614750959.correct : P8479357457614750959.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel, A023576.P8479357457614750959.a, A023576.P7935691990157790967.a, A006530, A006530.P13372528560459906635.a, A052147, A052147.P15217781913070555828.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023576

/-! ## A023576.P6081195961224703105

`A006530(A008864(n+1)+2)`
-/

namespace A023576.P6081195961224703105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + 2).toNat

end

end A023576.P6081195961224703105

namespace A023576

/-- `A006530(A008864(n+1)+2)` -/
def P6081195961224703105.Spec : Prop :=
  ∀ n, P6081195961224703105.a n = A023576 (n + 1)

theorem P6081195961224703105.correct : P6081195961224703105.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel, A023576.P6081195961224703105.a, A023576.P7935691990157790967.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023576

/-! ## A023576.P12715701515023133710

`A006530(A028815(n+1)+2)`
-/

namespace A023576.P12715701515023133710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028815 (n + 1) + 2).toNat

end

end A023576.P12715701515023133710

namespace A023576

/-- `A006530(A028815(n+1)+2)` -/
def P12715701515023133710.Spec : Prop :=
  ∀ n, P12715701515023133710.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P15266837003671226715

`A006530(A175221(n+1)-1)`
-/

namespace A023576.P15266837003671226715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175221 (n + 1) - 1).toNat

end

end A023576.P15266837003671226715

namespace A023576

/-- `A006530(A175221(n+1)-1)` -/
def P15266837003671226715.Spec : Prop :=
  ∀ n, P15266837003671226715.a n = A023576 (n + 1)

theorem P15266837003671226715.correct : P15266837003671226715.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel, A023576.P15266837003671226715.a, A023576.P7935691990157790967.a, A006530, A006530.P13372528560459906635.a, A113935, A113935.P8490065931569907193.a, A175221, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023576

/-! ## A023576.P15922904710906705879

`A006530(A000040(n+1)+3)`
-/

namespace A023576.P15922904710906705879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + 3).toNat

end

end A023576.P15922904710906705879

namespace A023576

/-- `A006530(A000040(n+1)+3)` -/
def P15922904710906705879.Spec : Prop :=
  ∀ n, P15922904710906705879.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P14431711438962655586

`A006530(A175222(n+1)-2)`
-/

namespace A023576.P14431711438962655586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175222 (n + 1) - 2).toNat

end

end A023576.P14431711438962655586

namespace A023576

/-- `A006530(A175222(n+1)-2)` -/
def P14431711438962655586.Spec : Prop :=
  ∀ n, P14431711438962655586.a n = A023576 (n + 1)

theorem P14431711438962655586.correct : P14431711438962655586.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel, A023576.P14431711438962655586.a, A023576.P7935691990157790967.a, A006530, A006530.P13372528560459906635.a, A113935, A113935.P8490065931569907193.a, A175222, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023576

/-! ## A023576.P9618303329086242292

`A006530(A006093(n+1)+4)`
-/

namespace A023576.P9618303329086242292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + 4).toNat

end

end A023576.P9618303329086242292

namespace A023576

/-- `A006530(A006093(n+1)+4)` -/
def P9618303329086242292.Spec : Prop :=
  ∀ n, P9618303329086242292.a n = A023576 (n + 1)

theorem P9618303329086242292.correct : P9618303329086242292.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel, A023576.P9618303329086242292.a, A023576.P7935691990157790967.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023576

/-! ## A023576.P915422714884971495

`A006530(A040976(n+1)+5)`
-/

namespace A023576.P915422714884971495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (n + 1) + 5).toNat

end

end A023576.P915422714884971495

namespace A023576

/-- `A006530(A040976(n+1)+5)` -/
def P915422714884971495.Spec : Prop :=
  ∀ n, P915422714884971495.a n = A023576 (n + 1)

theorem P915422714884971495.correct : P915422714884971495.Spec := by
  intro n
  simp only [A023576, Nat.add_sub_cancel, A023576.P915422714884971495.a, A023576.P7935691990157790967.a, A006530, A006530.P13372528560459906635.a, A040976, A040976.P11599754272797435513.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023576

/-! ## A023576.P4761382470090468028

`A006530(∑[A125266(n+1)]+2)`
-/

namespace A023576.P4761382470090468028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A023576.P4761382470090468028

namespace A023576

/-- `A006530(∑[A125266(n+1)]+2)` -/
def P4761382470090468028.Spec : Prop :=
  ∀ n, P4761382470090468028.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P11782499465668013294

`A006530(record[A000010(n+1)+4])`
-/

namespace A023576.P11782499465668013294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023576.P11782499465668013294

namespace A023576

/-- `A006530(record[A000010(n+1)+4])` -/
def P11782499465668013294.Spec : Prop :=
  ∀ n, P11782499465668013294.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P12215318744810419031

`A006530(record[A006530(n+2)+3])`
-/

namespace A023576.P12215318744810419031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023576.P12215318744810419031

namespace A023576

/-- `A006530(record[A006530(n+2)+3])` -/
def P12215318744810419031.Spec : Prop :=
  ∀ n, P12215318744810419031.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P3172971424397977416

`A006530(A089241(n+1)/2+2)`
-/

namespace A023576.P3172971424397977416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A023576.P3172971424397977416

namespace A023576

/-- `A006530(A089241(n+1)/2+2)` -/
def P3172971424397977416.Spec : Prop :=
  ∀ n, P3172971424397977416.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P17391461003207081464

`A006530(A014688(n+1)+2-n)`
-/

namespace A023576.P17391461003207081464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014688 (n + 1) + (2 - (n : ℤ))).toNat

end

end A023576.P17391461003207081464

namespace A023576

/-- `A006530(A014688(n+1)+2-n)` -/
def P17391461003207081464.Spec : Prop :=
  ∀ n, P17391461003207081464.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P3728916801696648946

`A006530(A000203(A008578(n+2))+2)`
-/

namespace A023576.P3728916801696648946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (A008578 (n + 2)).toNat + 2).toNat

end

end A023576.P3728916801696648946

namespace A023576

/-- `A006530(A000203(A008578(n+2))+2)` -/
def P3728916801696648946.Spec : Prop :=
  ∀ n, P3728916801696648946.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P11292972356308908819

`A006530(A114557(2*(n+1)))`
-/

namespace A023576.P11292972356308908819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114557 (2 * (n + 1))).toNat

end

end A023576.P11292972356308908819

namespace A023576

/-- `A006530(A114557(2*(n+1)))` -/
def P11292972356308908819.Spec : Prop :=
  ∀ n, P11292972356308908819.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P17017188132617653184

`A006530(eq[n-2, ∑{d}[3-n, #]])`
-/

namespace A023576.P17017188132617653184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A023576.P17017188132617653184

namespace A023576

/-- `A006530(eq[n-2, ∑{d}[3-n, #]])` -/
def P17017188132617653184.Spec : Prop :=
  ∀ n, P17017188132617653184.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P7325709930088368876

`A111089(A000040(n+1)+3)`
-/

namespace A023576.P7325709930088368876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A000040 (n + 1) + 3).toNat

end

end A023576.P7325709930088368876

namespace A023576

/-- `A111089(A000040(n+1)+3)` -/
def P7325709930088368876.Spec : Prop :=
  ∀ n, P7325709930088368876.a n = A023576 (n + 1)

end A023576

/-! ## A023576.P2745079862612985082

`A006530(A007430(A000040(n+1)))`
-/

namespace A023576.P2745079862612985082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007430 (A000040 (n + 1)).toNat).toNat

end

end A023576.P2745079862612985082

namespace A023576

/-- `A006530(A007430(A000040(n+1)))` -/
def P2745079862612985082.Spec : Prop :=
  ∀ n, P2745079862612985082.a n = A023576 (n + 1)

end A023576

/-!
# A023577: Greatest exponent in prime-power factorization of prime(n)+3.

The programs for A023577, the canonical program `A023577.P17133411577546820162` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023577 has offset 1).

The definition of A023577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023577.P17133411577546820162

`A051903(3+A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023577

/-- `A051903(3+A000040(n+1))` -/
def P17133411577546820162.Spec : Prop :=
  ∀ n, P17133411577546820162.a n = A023577 (n + 1)

theorem P17133411577546820162.correct : P17133411577546820162.Spec := by
  intro n
  simp only [A023577, Nat.add_sub_cancel]

end A023577

/-! ## A023577.P3000660826381928039

`A051903(A113935(n+1))`
-/

namespace A023577.P3000660826381928039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A113935 (n + 1)).toNat

end

end A023577.P3000660826381928039

namespace A023577

/-- `A051903(A113935(n+1))` -/
def P3000660826381928039.Spec : Prop :=
  ∀ n, P3000660826381928039.a n = A023577 (n + 1)

theorem P3000660826381928039.correct : P3000660826381928039.Spec := by
  intro n
  simp only [A023577, Nat.add_sub_cancel, A023577.P3000660826381928039.a, A023577.P17133411577546820162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023577

/-! ## A023577.P15111159939945914848

`A051903(Δ[A007504(n)]+3)`
-/

namespace A023577.P15111159939945914848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (n + 1) - f1 n + 3).toNat

end

end A023577.P15111159939945914848

namespace A023577

/-- `A051903(Δ[A007504(n)]+3)` -/
def P15111159939945914848.Spec : Prop :=
  ∀ n, P15111159939945914848.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P10578241179214903095

`A051903(A052147(n+1)+1)`
-/

namespace A023577.P10578241179214903095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A052147 (n + 1) + 1).toNat

end

end A023577.P10578241179214903095

namespace A023577

/-- `A051903(A052147(n+1)+1)` -/
def P10578241179214903095.Spec : Prop :=
  ∀ n, P10578241179214903095.a n = A023577 (n + 1)

theorem P10578241179214903095.correct : P10578241179214903095.Spec := by
  intro n
  simp only [A023577, Nat.add_sub_cancel, A023577.P10578241179214903095.a, A023577.P17133411577546820162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023577

/-! ## A023577.P9417527878231052427

`A051903(A008864(n+1)+2)`
-/

namespace A023577.P9417527878231052427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008864 (n + 1) + 2).toNat

end

end A023577.P9417527878231052427

namespace A023577

/-- `A051903(A008864(n+1)+2)` -/
def P9417527878231052427.Spec : Prop :=
  ∀ n, P9417527878231052427.a n = A023577 (n + 1)

theorem P9417527878231052427.correct : P9417527878231052427.Spec := by
  intro n
  simp only [A023577, Nat.add_sub_cancel, A023577.P9417527878231052427.a, A023577.P17133411577546820162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023577

/-! ## A023577.P17227822368611021786

`A051903(A028815(n+1)+2)`
-/

namespace A023577.P17227822368611021786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A028815 (n + 1) + 2).toNat

end

end A023577.P17227822368611021786

namespace A023577

/-- `A051903(A028815(n+1)+2)` -/
def P17227822368611021786.Spec : Prop :=
  ∀ n, P17227822368611021786.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P11350656771012654430

`A051903(A299763(n+2)+2)`
-/

namespace A023577.P11350656771012654430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A299763 (n + 2) + 2).toNat

end

end A023577.P11350656771012654430

namespace A023577

/-- `A051903(A299763(n+2)+2)` -/
def P11350656771012654430.Spec : Prop :=
  ∀ n, P11350656771012654430.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P10983693630962611458

`A051903(A006093(n+1)+4)`
-/

namespace A023577.P10983693630962611458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006093 (n + 1) + 4).toNat

end

end A023577.P10983693630962611458

namespace A023577

/-- `A051903(A006093(n+1)+4)` -/
def P10983693630962611458.Spec : Prop :=
  ∀ n, P10983693630962611458.a n = A023577 (n + 1)

theorem P10983693630962611458.correct : P10983693630962611458.Spec := by
  intro n
  simp only [A023577, Nat.add_sub_cancel, A023577.P10983693630962611458.a, A023577.P17133411577546820162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023577

/-! ## A023577.P13746676191647240567

`A051903(A008578(n+2)+3)`
-/

namespace A023577.P13746676191647240567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008578 (n + 2) + 3).toNat

end

end A023577.P13746676191647240567

namespace A023577

/-- `A051903(A008578(n+2)+3)` -/
def P13746676191647240567.Spec : Prop :=
  ∀ n, P13746676191647240567.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P5066490747561037077

`A051903(2*(A130290(n+1)+2))`
-/

namespace A023577.P5066490747561037077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (A130290 (n + 1) + 2)).toNat

end

end A023577.P5066490747561037077

namespace A023577

/-- `A051903(2*(A130290(n+1)+2))` -/
def P5066490747561037077.Spec : Prop :=
  ∀ n, P5066490747561037077.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P1086723251906010044

`A051903(A089241(n+1)/2+2)`
-/

namespace A023577.P1086723251906010044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A023577.P1086723251906010044

namespace A023577

/-- `A051903(A089241(n+1)/2+2)` -/
def P1086723251906010044.Spec : Prop :=
  ∀ n, P1086723251906010044.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P11396911852251466100

`A342003(A001748(n+1))`
-/

namespace A023577.P11396911852251466100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (A001748 (n + 1)).toNat

end

end A023577.P11396911852251466100

namespace A023577

/-- `A342003(A001748(n+1))` -/
def P11396911852251466100.Spec : Prop :=
  ∀ n, P11396911852251466100.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P9607079738360743518

`A342003(A112773(n+2))`
-/

namespace A023577.P9607079738360743518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (A112773 (n + 2)).toNat

end

end A023577.P9607079738360743518

namespace A023577

/-- `A342003(A112773(n+2))` -/
def P9607079738360743518.Spec : Prop :=
  ∀ n, P9607079738360743518.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P16918447018146699161

`A342003(3*A000040(n+1))`
-/

namespace A023577.P16918447018146699161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (3 * A000040 (n + 1)).toNat

end

end A023577.P16918447018146699161

namespace A023577

/-- `A342003(3*A000040(n+1))` -/
def P16918447018146699161.Spec : Prop :=
  ∀ n, P16918447018146699161.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P8130325100685849599

`A067132(A008864(n+1)+2)-1`
-/

namespace A023577.P8130325100685849599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A008864 (n + 1) + 2).toNat - 1

end

end A023577.P8130325100685849599

namespace A023577

/-- `A067132(A008864(n+1)+2)-1` -/
def P8130325100685849599.Spec : Prop :=
  ∀ n, P8130325100685849599.a n = A023577 (n + 1)

theorem P8130325100685849599.correct : P8130325100685849599.Spec := by
  intro n
  simp only [A023577, Nat.add_sub_cancel, A023577.P8130325100685849599.a, A023577.P17133411577546820162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023577

/-! ## A023577.P6891191221764254286

`val(A046523(A000040(n+1)+3), 2)`
-/

namespace A023577.P6891191221764254286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (A000040 (n + 1) + 3).toNat).toNat 2

end

end A023577.P6891191221764254286

namespace A023577

/-- `val(A046523(A000040(n+1)+3), 2)` -/
def P6891191221764254286.Spec : Prop :=
  ∀ n, (P6891191221764254286.a n : ℤ) = A023577 (n + 1)

end A023577

/-! ## A023577.P8301332324062733627

`A067132(record[A000010(n+1)]+4)-1`
-/

namespace A023577.P8301332324062733627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4).toNat - 1

end

end A023577.P8301332324062733627

namespace A023577

/-- `A067132(record[A000010(n+1)]+4)-1` -/
def P8301332324062733627.Spec : Prop :=
  ∀ n, P8301332324062733627.a n = A023577 (n + 1)

end A023577

/-! ## A023577.P10305943473011312532

`A067132(record[A014963(n+2)+2]+1)-1`
-/

namespace A023577.P10305943473011312532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat - 1

end

end A023577.P10305943473011312532

namespace A023577

/-- `A067132(record[A014963(n+2)+2]+1)-1` -/
def P10305943473011312532.Spec : Prop :=
  ∀ n, P10305943473011312532.a n = A023577 (n + 1)

end A023577

/-!
# A023578: Least odd prime divisor of prime(n)+3, or 1 if prime(n)+3 is a power of 2.

The programs for A023578, there is no canonical definition to state claims against.
-/

/-! ## A023578.P6383508699796060734

`A078701(A113935(n+1))`
-/

namespace A023578.P6383508699796060734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A113935 (n + 1)).toNat

end

end A023578.P6383508699796060734

/-! ## A023578.P17469416778979841366

`A078701(Δ[A007504(n)]+3)`
-/

namespace A023578.P17469416778979841366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (n + 1) - f1 n + 3).toNat

end

end A023578.P17469416778979841366

/-! ## A023578.P12000329853159808423

`A078701(record[A037225(n)+4])`
-/

namespace A023578.P12000329853159808423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023578.P12000329853159808423

/-! ## A023578.P2468574020895070927

`A078701(A052147(n+1)+1)`
-/

namespace A023578.P2468574020895070927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A052147 (n + 1) + 1).toNat

end

end A023578.P2468574020895070927

/-! ## A023578.P4706461127491010535

`A078701(A008864(n+1)+2)`
-/

namespace A023578.P4706461127491010535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A008864 (n + 1) + 2).toNat

end

end A023578.P4706461127491010535

/-! ## A023578.P4007758462918617493

`A078701(A028815(n+1)+2)`
-/

namespace A023578.P4007758462918617493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A028815 (n + 1) + 2).toNat

end

end A023578.P4007758462918617493

/-! ## A023578.P14732487473893057853

`A078701(A175221(n+1)-1)`
-/

namespace A023578.P14732487473893057853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A175221 (n + 1) - 1).toNat

end

end A023578.P14732487473893057853

/-! ## A023578.P9345165717033908527

`A078701(A000040(n+1)+3)`
-/

namespace A023578.P9345165717033908527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A000040 (n + 1) + 3).toNat

end

end A023578.P9345165717033908527

/-! ## A023578.P14073034575120557490

`A078701(A299763(n+2)+2)`
-/

namespace A023578.P14073034575120557490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A299763 (n + 2) + 2).toNat

end

end A023578.P14073034575120557490

/-! ## A023578.P3328322431837162326

`A078701(A006093(n+1)+4)`
-/

namespace A023578.P3328322431837162326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A006093 (n + 1) + 4).toNat

end

end A023578.P3328322431837162326

/-! ## A023578.P197925167510130294

`A078701(A114557(2*(n+1)))`
-/

namespace A023578.P197925167510130294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A114557 (2 * (n + 1))).toNat

end

end A023578.P197925167510130294

/-! ## A023578.P764912652129778966

`A078701(record[A006530(n+2)]+3)`
-/

namespace A023578.P764912652129778966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A023578.P764912652129778966

/-! ## A023578.P15820594683467082113

`A078701(record[A014963(n+2)]+3)`
-/

namespace A023578.P15820594683467082113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A023578.P15820594683467082113

/-! ## A023578.P14369328603485939517

`A078701(record[A020639(n+2)]+3)`
-/

namespace A023578.P14369328603485939517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A023578.P14369328603485939517

/-! ## A023578.P1036019746514507953

`A078701(record[A000010(n+1)+2]+2)`
-/

namespace A023578.P1036019746514507953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A023578.P1036019746514507953

/-! ## A023578.P15038694845758981466

`A119288(A089241(n+1)+4)`
-/

namespace A023578.P15038694845758981466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A089241 (n + 1) + 4).toNat

end

end A023578.P15038694845758981466

/-! ## A023578.P196426093475382599

`A119288(A072055(n+1)+5)`
-/

namespace A023578.P196426093475382599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A072055 (n + 1) + 5).toNat

end

end A023578.P196426093475382599

/-! ## A023578.P8818794142032252248

`A119288(A100484(n+1)+6)`
-/

namespace A023578.P8818794142032252248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A100484 (n + 1) + 6).toNat

end

end A023578.P8818794142032252248

/-! ## A023578.P10769294096373888638

`A119288(2*(A000040(n+1)+3))`
-/

namespace A023578.P10769294096373888638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (2 * (A000040 (n + 1) + 3)).toNat

end

end A023578.P10769294096373888638

/-! ## A023578.P2519648974930892694

`A119288(A001749(n+1)+12)`
-/

namespace A023578.P2519648974930892694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A001749 (n + 1) + 12).toNat

end

end A023578.P2519648974930892694

/-!
# A023579: Exponent of 2 in prime factorization of prime(n)+3.

The programs for A023579, the canonical program `A023579.P9595567503422635053` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023579 has offset 1).

The definition of A023579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023579.P4227347439858871044

`val(3+A000040(n+1), 2)`
-/

namespace A023579.P4227347439858871044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 + A000040 (n + 1)).toNat 2

end

end A023579.P4227347439858871044

namespace A023579

/-- `val(3+A000040(n+1), 2)` -/
def P4227347439858871044.Spec : Prop :=
  ∀ n, (P4227347439858871044.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P9595567503422635053

`A007814(A113935(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023579

/-- `A007814(A113935(n+1))` -/
def P9595567503422635053.Spec : Prop :=
  ∀ n, P9595567503422635053.a n = A023579 (n + 1)

theorem P9595567503422635053.correct : P9595567503422635053.Spec := by
  intro n
  simp only [A023579, Nat.add_sub_cancel]

end A023579

/-! ## A023579.P15849846619009208458

`val(Δ[A007504(n)]+3, 2)`
-/

namespace A023579.P15849846619009208458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 3).toNat 2

end

end A023579.P15849846619009208458

namespace A023579

/-- `val(Δ[A007504(n)]+3, 2)` -/
def P15849846619009208458.Spec : Prop :=
  ∀ n, (P15849846619009208458.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P3074343121550513989

`val(A052147(n+1)+1, 2)`
-/

namespace A023579.P3074343121550513989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052147 (n + 1) + 1).toNat 2

end

end A023579.P3074343121550513989

namespace A023579

/-- `val(A052147(n+1)+1, 2)` -/
def P3074343121550513989.Spec : Prop :=
  ∀ n, (P3074343121550513989.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P8248694202218629940

`val(A008864(n+1)+2, 2)`
-/

namespace A023579.P8248694202218629940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008864 (n + 1) + 2).toNat 2

end

end A023579.P8248694202218629940

namespace A023579

/-- `val(A008864(n+1)+2, 2)` -/
def P8248694202218629940.Spec : Prop :=
  ∀ n, (P8248694202218629940.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P15165956853654253845

`val(A028815(n+1)+2, 2)`
-/

namespace A023579.P15165956853654253845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028815 (n + 1) + 2).toNat 2

end

end A023579.P15165956853654253845

namespace A023579

/-- `val(A028815(n+1)+2, 2)` -/
def P15165956853654253845.Spec : Prop :=
  ∀ n, (P15165956853654253845.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P8163064185860392859

`val(A055670(n+1)+2, 2)`
-/

namespace A023579.P8163064185860392859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055670 (n + 1) + 2).toNat 2

end

end A023579.P8163064185860392859

namespace A023579

/-- `val(A055670(n+1)+2, 2)` -/
def P8163064185860392859.Spec : Prop :=
  ∀ n, (P8163064185860392859.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P15126605221324837205

`val(A006093(n+1)+4, 2)`
-/

namespace A023579.P15126605221324837205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1) + 4).toNat 2

end

end A023579.P15126605221324837205

namespace A023579

/-- `val(A006093(n+1)+4, 2)` -/
def P15126605221324837205.Spec : Prop :=
  ∀ n, (P15126605221324837205.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P17901823417221092287

`val(A040976(n+1)+5, 2)`
-/

namespace A023579.P17901823417221092287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040976 (n + 1) + 5).toNat 2

end

end A023579.P17901823417221092287

namespace A023579

/-- `val(A040976(n+1)+5, 2)` -/
def P17901823417221092287.Spec : Prop :=
  ∀ n, (P17901823417221092287.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P5909580766558411171

`val(record[A000010(n+1)+4], 2)`
-/

namespace A023579.P5909580766558411171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A023579.P5909580766558411171

namespace A023579

/-- `val(record[A000010(n+1)+4], 2)` -/
def P5909580766558411171.Spec : Prop :=
  ∀ n, (P5909580766558411171.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P10225785563368098652

`val(A114557(2*(n+1)), 2)`
-/

namespace A023579.P10225785563368098652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114557 (2 * (n + 1))).toNat 2

end

end A023579.P10225785563368098652

namespace A023579

/-- `val(A114557(2*(n+1)), 2)` -/
def P10225785563368098652.Spec : Prop :=
  ∀ n, (P10225785563368098652.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P7927269853056256422

`A374216(A001748(n+1))`
-/

namespace A023579.P7927269853056256422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374216 (A001748 (n + 1)).toNat

end

end A023579.P7927269853056256422

namespace A023579

/-- `A374216(A001748(n+1))` -/
def P7927269853056256422.Spec : Prop :=
  ∀ n, P7927269853056256422.a n = A023579 (n + 1)

end A023579

/-! ## A023579.P14612471192538555625

`A374216(A063534(n+1))`
-/

namespace A023579.P14612471192538555625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374216 (A063534 (n + 1)).toNat

end

end A023579.P14612471192538555625

namespace A023579

/-- `A374216(A063534(n+1))` -/
def P14612471192538555625.Spec : Prop :=
  ∀ n, P14612471192538555625.a n = A023579 (n + 1)

end A023579

/-! ## A023579.P18164244737280339049

`A374216(A112773(n+2))`
-/

namespace A023579.P18164244737280339049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374216 (A112773 (n + 2)).toNat

end

end A023579.P18164244737280339049

namespace A023579

/-- `A374216(A112773(n+2))` -/
def P18164244737280339049.Spec : Prop :=
  ∀ n, P18164244737280339049.a n = A023579 (n + 1)

end A023579

/-! ## A023579.P12189339492625925109

`A244417(A000040(n+1)+3)`
-/

namespace A023579.P12189339492625925109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (A000040 (n + 1) + 3).toNat

end

end A023579.P12189339492625925109

namespace A023579

/-- `A244417(A000040(n+1)+3)` -/
def P12189339492625925109.Spec : Prop :=
  ∀ n, P12189339492625925109.a n = A023579 (n + 1)

end A023579

/-! ## A023579.P9291430799397565361

`A085058(A000040(n+1)+2)-2`
-/

namespace A023579.P9291430799397565361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A000040 (n + 1) + 2).toNat - 2

end

end A023579.P9291430799397565361

namespace A023579

/-- `A085058(A000040(n+1)+2)-2` -/
def P9291430799397565361.Spec : Prop :=
  ∀ n, P9291430799397565361.a n = A023579 (n + 1)

end A023579

/-! ## A023579.P6988082098761487471

`val(record[A093074(n+1)]+3, 2)`
-/

namespace A023579.P6988082098761487471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat 2

end

end A023579.P6988082098761487471

namespace A023579

/-- `val(record[A093074(n+1)]+3, 2)` -/
def P6988082098761487471.Spec : Prop :=
  ∀ n, (P6988082098761487471.a n : ℤ) = A023579 (n + 1)

end A023579

/-! ## A023579.P11549456132613305251

`A007814(A008864(n+1)+2)`
-/

namespace A023579.P11549456132613305251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008864 (n + 1) + 2).toNat

end

end A023579.P11549456132613305251

namespace A023579

/-- `A007814(A008864(n+1)+2)` -/
def P11549456132613305251.Spec : Prop :=
  ∀ n, P11549456132613305251.a n = A023579 (n + 1)

theorem P11549456132613305251.correct : P11549456132613305251.Spec := by
  intro n
  simp only [A023579, Nat.add_sub_cancel, A023579.P11549456132613305251.a, A023579.P9595567503422635053.a, A007814, A007814.P13537437864234730737.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023579

/-! ## A023579.P7196189607690806839

`A007814(A028815(n+1)+2)`
-/

namespace A023579.P7196189607690806839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A028815 (n + 1) + 2).toNat

end

end A023579.P7196189607690806839

namespace A023579

/-- `A007814(A028815(n+1)+2)` -/
def P7196189607690806839.Spec : Prop :=
  ∀ n, P7196189607690806839.a n = A023579 (n + 1)

end A023579

/-!
# A023580: Sum of distinct prime divisors of prime(n)+3.

The programs for A023580, the canonical program `A023580.P3856719567750778929` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023580 has offset 1).

The definition of A023580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023580.P3856719567750778929

`A008472(A113935(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023580

/-- `A008472(A113935(n+1))` -/
def P3856719567750778929.Spec : Prop :=
  ∀ n, P3856719567750778929.a n = A023580 (n + 1)

theorem P3856719567750778929.correct : P3856719567750778929.Spec := by
  intro n
  simp only [A023580, Nat.add_sub_cancel]

end A023580

/-! ## A023580.P16497532985989142128

`∑{p}[A008864(n+1)+2, #]`
-/

namespace A023580.P16497532985989142128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P16497532985989142128

namespace A023580

/-- `∑{p}[A008864(n+1)+2, #]` -/
def P16497532985989142128.Spec : Prop :=
  ∀ n, (P16497532985989142128.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P1916968872319904445

`∑{p}[A028815(n+1)+2, #]`
-/

namespace A023580.P1916968872319904445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P1916968872319904445

namespace A023580

/-- `∑{p}[A028815(n+1)+2, #]` -/
def P1916968872319904445.Spec : Prop :=
  ∀ n, (P1916968872319904445.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P8925914095683283665

`∑{p}[A000040(n+1)+3, #]`
-/

namespace A023580.P8925914095683283665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P8925914095683283665

namespace A023580

/-- `∑{p}[A000040(n+1)+3, #]` -/
def P8925914095683283665.Spec : Prop :=
  ∀ n, (P8925914095683283665.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P5308907325552591163

`∑{p}[p?[xor(1, n)]+3, #]`
-/

namespace A023580.P5308907325552591163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023580.P5308907325552591163

namespace A023580

/-- `∑{p}[p?[xor(1, n)]+3, #]` -/
def P5308907325552591163.Spec : Prop :=
  ∀ n, (P5308907325552591163.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P14478350349903173268

`∑{p}[record[A000010(n+1)+4], #]`
-/

namespace A023580.P14478350349903173268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P14478350349903173268

namespace A023580

/-- `∑{p}[record[A000010(n+1)+4], #]` -/
def P14478350349903173268.Spec : Prop :=
  ∀ n, (P14478350349903173268.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P13008012320801812100

`∑{p}[record[A006530(n+2)+3], #]`
-/

namespace A023580.P13008012320801812100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P13008012320801812100

namespace A023580

/-- `∑{p}[record[A006530(n+2)+3], #]` -/
def P13008012320801812100.Spec : Prop :=
  ∀ n, (P13008012320801812100.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P12570479422936249002

`∑{p}[record[A020639(n+2)+3], #]`
-/

namespace A023580.P12570479422936249002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P12570479422936249002

namespace A023580

/-- `∑{p}[record[A020639(n+2)+3], #]` -/
def P12570479422936249002.Spec : Prop :=
  ∀ n, (P12570479422936249002.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P3526773613286364410

`A008472(A052147(n+1)+1)`
-/

namespace A023580.P3526773613286364410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A052147 (n + 1) + 1).toNat

end

end A023580.P3526773613286364410

namespace A023580

/-- `A008472(A052147(n+1)+1)` -/
def P3526773613286364410.Spec : Prop :=
  ∀ n, P3526773613286364410.a n = A023580 (n + 1)

theorem P3526773613286364410.correct : P3526773613286364410.Spec := by
  intro n
  simp only [A023580, Nat.add_sub_cancel, A023580.P3526773613286364410.a, A023580.P3856719567750778929.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A052147, A052147.P15217781913070555828.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023580

/-! ## A023580.P12574899909402675315

`A008472(A008864(n+1)+2)`
-/

namespace A023580.P12574899909402675315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008864 (n + 1) + 2).toNat

end

end A023580.P12574899909402675315

namespace A023580

/-- `A008472(A008864(n+1)+2)` -/
def P12574899909402675315.Spec : Prop :=
  ∀ n, P12574899909402675315.a n = A023580 (n + 1)

theorem P12574899909402675315.correct : P12574899909402675315.Spec := by
  intro n
  simp only [A023580, Nat.add_sub_cancel, A023580.P12574899909402675315.a, A023580.P3856719567750778929.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023580

/-! ## A023580.P12198669503762389323

`A008472(A028815(n+1)+2)`
-/

namespace A023580.P12198669503762389323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A028815 (n + 1) + 2).toNat

end

end A023580.P12198669503762389323

namespace A023580

/-- `A008472(A028815(n+1)+2)` -/
def P12198669503762389323.Spec : Prop :=
  ∀ n, P12198669503762389323.a n = A023580 (n + 1)

end A023580

/-! ## A023580.P6386374726108265428

`A008472(A000040(n+1)+3)`
-/

namespace A023580.P6386374726108265428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 1) + 3).toNat

end

end A023580.P6386374726108265428

namespace A023580

/-- `A008472(A000040(n+1)+3)` -/
def P6386374726108265428.Spec : Prop :=
  ∀ n, P6386374726108265428.a n = A023580 (n + 1)

end A023580

/-! ## A023580.P7250126331239782756

`A008472(A299763(n+2)+2)`
-/

namespace A023580.P7250126331239782756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A299763 (n + 2) + 2).toNat

end

end A023580.P7250126331239782756

namespace A023580

/-- `A008472(A299763(n+2)+2)` -/
def P7250126331239782756.Spec : Prop :=
  ∀ n, P7250126331239782756.a n = A023580 (n + 1)

end A023580

/-! ## A023580.P17253390164546453791

`∑{p}[eq[1, A001222(n+1)]+4, #]`
-/

namespace A023580.P17253390164546453791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023580.P17253390164546453791

namespace A023580

/-- `∑{p}[eq[1, A001222(n+1)]+4, #]` -/
def P17253390164546453791.Spec : Prop :=
  ∀ n, (P17253390164546453791.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P1723227736954349331

`∑{p}[eq[2, A000005(n+1)]+4, #]`
-/

namespace A023580.P1723227736954349331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A023580.P1723227736954349331

namespace A023580

/-- `∑{p}[eq[2, A000005(n+1)]+4, #]` -/
def P1723227736954349331.Spec : Prop :=
  ∀ n, (P1723227736954349331.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P15792412378353654311

`∑{p}[record[A014963(n+2)+3], #]`
-/

namespace A023580.P15792412378353654311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P15792412378353654311

namespace A023580

/-- `∑{p}[record[A014963(n+2)+3], #]` -/
def P15792412378353654311.Spec : Prop :=
  ∀ n, (P15792412378353654311.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P7526154078959406126

`A100030(record[A100030(n+1)+1])`
-/

namespace A023580.P7526154078959406126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023580.P7526154078959406126

namespace A023580

/-- `A100030(record[A100030(n+1)+1])` -/
def P7526154078959406126.Spec : Prop :=
  ∀ n, P7526154078959406126.a n = A023580 (n + 1)

end A023580

/-! ## A023580.P18154015849363208076

`∑{p}[A000203(record[A093074(n+1)])+2, #]`
-/

namespace A023580.P18154015849363208076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023580.P18154015849363208076

namespace A023580

/-- `∑{p}[A000203(record[A093074(n+1)])+2, #]` -/
def P18154015849363208076.Spec : Prop :=
  ∀ n, (P18154015849363208076.a n : ℤ) = A023580 (n + 1)

end A023580

/-! ## A023580.P14381412591463526037

`A008472(A036288(A100484(n+1)))`
-/

namespace A023580.P14381412591463526037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A036288 (A100484 (n + 1)).toNat).toNat

end

end A023580.P14381412591463526037

namespace A023580

/-- `A008472(A036288(A100484(n+1)))` -/
def P14381412591463526037.Spec : Prop :=
  ∀ n, P14381412591463526037.a n = A023580 (n + 1)

end A023580

/-!
# A023581: Sum of exponents in prime-power factorization of p(n)+3.

The programs for A023581, the canonical program `A023581.P13752346375982736493` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023581 has offset 1).

The definition of A023581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023581.P13752346375982736493

`A001222(A113935(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023581

/-- `A001222(A113935(n+1))` -/
def P13752346375982736493.Spec : Prop :=
  ∀ n, P13752346375982736493.a n = A023581 (n + 1)

theorem P13752346375982736493.correct : P13752346375982736493.Spec := by
  intro n
  simp only [A023581, Nat.add_sub_cancel]

end A023581

/-! ## A023581.P17703665843269638084

`A001222(3+A000040(n+1))`
-/

namespace A023581.P17703665843269638084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 + A000040 (n + 1)).toNat

end

end A023581.P17703665843269638084

namespace A023581

/-- `A001222(3+A000040(n+1))` -/
def P17703665843269638084.Spec : Prop :=
  ∀ n, P17703665843269638084.a n = A023581 (n + 1)

theorem P17703665843269638084.correct : P17703665843269638084.Spec := by
  intro n
  simp only [A023581, Nat.add_sub_cancel, A023581.P17703665843269638084.a, A023581.P13752346375982736493.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023581

/-! ## A023581.P9430945529274982688

`∑{e}[A052147(n+1)+1, #]`
-/

namespace A023581.P9430945529274982688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023581.P9430945529274982688

namespace A023581

/-- `∑{e}[A052147(n+1)+1, #]` -/
def P9430945529274982688.Spec : Prop :=
  ∀ n, (P9430945529274982688.a n : ℤ) = A023581 (n + 1)

end A023581

/-! ## A023581.P7809054856024964886

`∑{e}[A008864(n+1)+2, #]`
-/

namespace A023581.P7809054856024964886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023581.P7809054856024964886

namespace A023581

/-- `∑{e}[A008864(n+1)+2, #]` -/
def P7809054856024964886.Spec : Prop :=
  ∀ n, (P7809054856024964886.a n : ℤ) = A023581 (n + 1)

end A023581

/-! ## A023581.P15298952504212899132

`A001222(A052147(n+1)+1)`
-/

namespace A023581.P15298952504212899132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052147 (n + 1) + 1).toNat

end

end A023581.P15298952504212899132

namespace A023581

/-- `A001222(A052147(n+1)+1)` -/
def P15298952504212899132.Spec : Prop :=
  ∀ n, P15298952504212899132.a n = A023581 (n + 1)

theorem P15298952504212899132.correct : P15298952504212899132.Spec := by
  intro n
  simp only [A023581, Nat.add_sub_cancel, A023581.P15298952504212899132.a, A023581.P13752346375982736493.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A052147, A052147.P15217781913070555828.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023581

/-! ## A023581.P8956999443666033686

`A001222(A008864(n+1)+2)`
-/

namespace A023581.P8956999443666033686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1) + 2).toNat

end

end A023581.P8956999443666033686

namespace A023581

/-- `A001222(A008864(n+1)+2)` -/
def P8956999443666033686.Spec : Prop :=
  ∀ n, P8956999443666033686.a n = A023581 (n + 1)

theorem P8956999443666033686.correct : P8956999443666033686.Spec := by
  intro n
  simp only [A023581, Nat.add_sub_cancel, A023581.P8956999443666033686.a, A023581.P13752346375982736493.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023581

/-! ## A023581.P13546423147586458259

`A001222(A028815(n+1)+2)`
-/

namespace A023581.P13546423147586458259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028815 (n + 1) + 2).toNat

end

end A023581.P13546423147586458259

namespace A023581

/-- `A001222(A028815(n+1)+2)` -/
def P13546423147586458259.Spec : Prop :=
  ∀ n, P13546423147586458259.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P12752118453672997215

`A001222(A055670(n+1)+2)`
-/

namespace A023581.P12752118453672997215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055670 (n + 1) + 2).toNat

end

end A023581.P12752118453672997215

namespace A023581

/-- `A001222(A055670(n+1)+2)` -/
def P12752118453672997215.Spec : Prop :=
  ∀ n, P12752118453672997215.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P16911756395660277810

`A001222(A299763(n+2)+2)`
-/

namespace A023581.P16911756395660277810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A299763 (n + 2) + 2).toNat

end

end A023581.P16911756395660277810

namespace A023581

/-- `A001222(A299763(n+2)+2)` -/
def P16911756395660277810.Spec : Prop :=
  ∀ n, P16911756395660277810.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P8692027063705639770

`A001222(sqrt(A110833(n+1))+2)`
-/

namespace A023581.P8692027063705639770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ) + 2)).toNat

end

end A023581.P8692027063705639770

namespace A023581

/-- `A001222(sqrt(A110833(n+1))+2)` -/
def P8692027063705639770.Spec : Prop :=
  ∀ n, P8692027063705639770.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P17427435191015297700

`A001222(∑[A125266(n+1)]+2)`
-/

namespace A023581.P17427435191015297700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A023581.P17427435191015297700

namespace A023581

/-- `A001222(∑[A125266(n+1)]+2)` -/
def P17427435191015297700.Spec : Prop :=
  ∀ n, P17427435191015297700.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P17237545136094702929

`A001222(record[A000010(n+1)+4])`
-/

namespace A023581.P17237545136094702929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023581.P17237545136094702929

namespace A023581

/-- `A001222(record[A000010(n+1)+4])` -/
def P17237545136094702929.Spec : Prop :=
  ∀ n, P17237545136094702929.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P5831736607127992010

`A001222(record[A006530(n+2)+3])`
-/

namespace A023581.P5831736607127992010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023581.P5831736607127992010

namespace A023581

/-- `A001222(record[A006530(n+2)+3])` -/
def P5831736607127992010.Spec : Prop :=
  ∀ n, P5831736607127992010.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P13477258011116652044

`A001222(record[A020639(n+2)+3])`
-/

namespace A023581.P13477258011116652044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023581.P13477258011116652044

namespace A023581

/-- `A001222(record[A020639(n+2)+3])` -/
def P13477258011116652044.Spec : Prop :=
  ∀ n, P13477258011116652044.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P13995094458668379937

`A001222(A089241(n+1)/2+2)`
-/

namespace A023581.P13995094458668379937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A023581.P13995094458668379937

namespace A023581

/-- `A001222(A089241(n+1)/2+2)` -/
def P13995094458668379937.Spec : Prop :=
  ∀ n, P13995094458668379937.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P12591894362210135824

`A001222(A014688(n+1)+2-n)`
-/

namespace A023581.P12591894362210135824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014688 (n + 1) + (2 - (n : ℤ))).toNat

end

end A023581.P12591894362210135824

namespace A023581

/-- `A001222(A014688(n+1)+2-n)` -/
def P12591894362210135824.Spec : Prop :=
  ∀ n, P12591894362210135824.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P4504533513431818426

`A001222(A000203(A008578(n+2))+2)`
-/

namespace A023581.P4504533513431818426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (A008578 (n + 2)).toNat + 2).toNat

end

end A023581.P4504533513431818426

namespace A023581

/-- `A001222(A000203(A008578(n+2))+2)` -/
def P4504533513431818426.Spec : Prop :=
  ∀ n, P4504533513431818426.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P3153876760503019376

`A001222(record[A008472(2*(n+1))+1])`
-/

namespace A023581.P3153876760503019376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023581.P3153876760503019376

namespace A023581

/-- `A001222(record[A008472(2*(n+1))+1])` -/
def P3153876760503019376.Spec : Prop :=
  ∀ n, P3153876760503019376.a n = A023581 (n + 1)

end A023581

/-! ## A023581.P9477541678468527247

`A342956(A001748(n+1))`
-/

namespace A023581.P9477541678468527247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (A001748 (n + 1)).toNat

end

end A023581.P9477541678468527247

namespace A023581

/-- `A342956(A001748(n+1))` -/
def P9477541678468527247.Spec : Prop :=
  ∀ n, P9477541678468527247.a n = A023581 (n + 1)

end A023581

/-!
# A023582: Number of distinct prime divisors of 2*prime(n)-1.

The programs for A023582, the canonical program `A023582.P1433716179084470181` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023582 has offset 1).

The definition of A023582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023582.P1433716179084470181

`A001221(2*A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023582

/-- `A001221(2*A000040(n+1)-1)` -/
def P1433716179084470181.Spec : Prop :=
  ∀ n, P1433716179084470181.a n = A023582 (n + 1)

theorem P1433716179084470181.correct : P1433716179084470181.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel]

end A023582

/-! ## A023582.P7928490954506271698

`A001221(A278229(n+1))`
-/

namespace A023582.P7928490954506271698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278229 (n + 1)).toNat

end

end A023582.P7928490954506271698

namespace A023582

/-- `A001221(A278229(n+1))` -/
def P7928490954506271698.Spec : Prop :=
  ∀ n, P7928490954506271698.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P9742730044850618795

`A001221(A076274(n+2))`
-/

namespace A023582.P9742730044850618795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076274 (n + 2)).toNat

end

end A023582.P9742730044850618795

namespace A023582

/-- `A001221(A076274(n+2))` -/
def P9742730044850618795.Spec : Prop :=
  ∀ n, P9742730044850618795.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P3050004362652362287

`A001221(A037168(n+1)+1)`
-/

namespace A023582.P3050004362652362287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A037168 (n + 1) + 1).toNat

end

end A023582.P3050004362652362287

namespace A023582

/-- `A001221(A037168(n+1)+1)` -/
def P3050004362652362287.Spec : Prop :=
  ∀ n, P3050004362652362287.a n = A023582 (n + 1)

theorem P3050004362652362287.correct : P3050004362652362287.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel, A023582.P3050004362652362287.a, A023582.P1433716179084470181.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023582

/-! ## A023582.P15281492492924423778

`A001221(A100484(n+1)-1)`
-/

namespace A023582.P15281492492924423778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100484 (n + 1) - 1).toNat

end

end A023582.P15281492492924423778

namespace A023582

/-- `A001221(A100484(n+1)-1)` -/
def P15281492492924423778.Spec : Prop :=
  ∀ n, P15281492492924423778.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P17863090955232744512

`A001221(A131426(n+1)+2)`
-/

namespace A023582.P17863090955232744512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A131426 (n + 1) + 2).toNat

end

end A023582.P17863090955232744512

namespace A023582

/-- `A001221(A131426(n+1)+2)` -/
def P17863090955232744512.Spec : Prop :=
  ∀ n, P17863090955232744512.a n = A023582 (n + 1)

theorem P17863090955232744512.correct : P17863090955232744512.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel, A023582.P17863090955232744512.a, A023582.P1433716179084470181.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023582

/-! ## A023582.P10904851072374790754

`A001221(A001747(n+2)-1)`
-/

namespace A023582.P10904851072374790754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001747 (n + 2) - 1).toNat

end

end A023582.P10904851072374790754

namespace A023582

/-- `A001221(A001747(n+2)-1)` -/
def P10904851072374790754.Spec : Prop :=
  ∀ n, P10904851072374790754.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P15265460485529713241

`A001221(A072055(n+1)-2)`
-/

namespace A023582.P15265460485529713241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072055 (n + 1) - 2).toNat

end

end A023582.P15265460485529713241

namespace A023582

/-- `A001221(A072055(n+1)-2)` -/
def P15265460485529713241.Spec : Prop :=
  ∀ n, P15265460485529713241.a n = A023582 (n + 1)

theorem P15265460485529713241.correct : P15265460485529713241.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel, A023582.P15265460485529713241.a, A023582.P1433716179084470181.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023582

/-! ## A023582.P661240154699222229

`A001221(A074845(n+2)-1)`
-/

namespace A023582.P661240154699222229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A074845 (n + 2) - 1).toNat

end

end A023582.P661240154699222229

namespace A023582

/-- `A001221(A074845(n+2)-1)` -/
def P661240154699222229.Spec : Prop :=
  ∀ n, P661240154699222229.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P14411907903567197881

`A001221(A161344(n+2)-1)`
-/

namespace A023582.P14411907903567197881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A161344 (n + 2) - 1).toNat

end

end A023582.P14411907903567197881

namespace A023582

/-- `A001221(A161344(n+2)-1)` -/
def P14411907903567197881.Spec : Prop :=
  ∀ n, P14411907903567197881.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P12123703526000850232

`A001221(2*A006093(n+1)+1)`
-/

namespace A023582.P12123703526000850232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A006093 (n + 1) + 1).toNat

end

end A023582.P12123703526000850232

namespace A023582

/-- `A001221(2*A006093(n+1)+1)` -/
def P12123703526000850232.Spec : Prop :=
  ∀ n, P12123703526000850232.a n = A023582 (n + 1)

theorem P12123703526000850232.correct : P12123703526000850232.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel, A023582.P12123703526000850232.a, A023582.P1433716179084470181.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023582

/-! ## A023582.P16904936421364197359

`A001221(2*A156037(n+1)+1)`
-/

namespace A023582.P16904936421364197359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A156037 (n + 1) + 1).toNat

end

end A023582.P16904936421364197359

namespace A023582

/-- `A001221(2*A156037(n+1)+1)` -/
def P16904936421364197359.Spec : Prop :=
  ∀ n, P16904936421364197359.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P8506948157810789127

`A001221(A001749(n+1)/2-1)`
-/

namespace A023582.P8506948157810789127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A023582.P8506948157810789127

namespace A023582

/-- `A001221(A001749(n+1)/2-1)` -/
def P8506948157810789127.Spec : Prop :=
  ∀ n, P8506948157810789127.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P10678865872821875100

`A001221(2*record[A000010(n+1)]+1)`
-/

namespace A023582.P10678865872821875100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023582.P10678865872821875100

namespace A023582

/-- `A001221(2*record[A000010(n+1)]+1)` -/
def P10678865872821875100.Spec : Prop :=
  ∀ n, P10678865872821875100.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P13297423432362251806

`A001221(record[A020639(n+2)+1+n])`
-/

namespace A023582.P13297423432362251806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023582.P13297423432362251806

namespace A023582

/-- `A001221(record[A020639(n+2)+1+n])` -/
def P13297423432362251806.Spec : Prop :=
  ∀ n, P13297423432362251806.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P8437276827864977165

`A001221(A006093(n+1)+A000040(n+1))`
-/

namespace A023582.P8437276827864977165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A023582.P8437276827864977165

namespace A023582

/-- `A001221(A006093(n+1)+A000040(n+1))` -/
def P8437276827864977165.Spec : Prop :=
  ∀ n, P8437276827864977165.a n = A023582 (n + 1)

theorem P8437276827864977165.correct : P8437276827864977165.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel, A023582.P8437276827864977165.a, A023582.P1433716179084470181.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023582

/-! ## A023582.P16922196759839562612

`A001221(record[A000010(n+1)]+A000040(n+1))`
-/

namespace A023582.P16922196759839562612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000040 (n + 1)).toNat

end

end A023582.P16922196759839562612

namespace A023582

/-- `A001221(record[A000010(n+1)]+A000040(n+1))` -/
def P16922196759839562612.Spec : Prop :=
  ∀ n, P16922196759839562612.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P11000200072996066895

`A001221(A006093(n+1)+record[A006530(n+2)])`
-/

namespace A023582.P11000200072996066895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023582.P11000200072996066895

namespace A023582

/-- `A001221(A006093(n+1)+record[A006530(n+2)])` -/
def P11000200072996066895.Spec : Prop :=
  ∀ n, P11000200072996066895.a n = A023582 (n + 1)

end A023582

/-! ## A023582.P17990897543655906193

`A001221(A006093(n+1)+A006093(n+1)+1)`
-/

namespace A023582.P17990897543655906193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + (A006093 (n + 1) + 1)).toNat

end

end A023582.P17990897543655906193

namespace A023582

/-- `A001221(A006093(n+1)+A006093(n+1)+1)` -/
def P17990897543655906193.Spec : Prop :=
  ∀ n, P17990897543655906193.a n = A023582 (n + 1)

theorem P17990897543655906193.correct : P17990897543655906193.Spec := by
  intro n
  simp only [A023582, Nat.add_sub_cancel, A023582.P17990897543655906193.a, A023582.P1433716179084470181.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023582

/-! ## A023582.P3468596901610050822

`A001221(A156037(n+1)+A156037(n+1)+1)`
-/

namespace A023582.P3468596901610050822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156037 (n + 1) + (A156037 (n + 1) + 1)).toNat

end

end A023582.P3468596901610050822

namespace A023582

/-- `A001221(A156037(n+1)+A156037(n+1)+1)` -/
def P3468596901610050822.Spec : Prop :=
  ∀ n, P3468596901610050822.a n = A023582 (n + 1)

end A023582

/-!
# A023583: Greatest prime divisor of 2*prime(n)-1.

The programs for A023583, the canonical program `A023583.P4687228853221385482` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023583 has offset 1).

The definition of A023583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023583.P4687228853221385482

`A006530(A076274(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023583

/-- `A006530(A076274(n+2))` -/
def P4687228853221385482.Spec : Prop :=
  ∀ n, P4687228853221385482.a n = A023583 (n + 1)

theorem P4687228853221385482.correct : P4687228853221385482.Spec := by
  intro n
  simp only [A023583, Nat.add_sub_cancel]

end A023583

/-! ## A023583.P13722068754706028109

`A006530(A037168(n+1)+1)`
-/

namespace A023583.P13722068754706028109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A037168 (n + 1) + 1).toNat

end

end A023583.P13722068754706028109

namespace A023583

/-- `A006530(A037168(n+1)+1)` -/
def P13722068754706028109.Spec : Prop :=
  ∀ n, P13722068754706028109.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P12524852393508590926

`A006530(A100484(n+1)-1)`
-/

namespace A023583.P12524852393508590926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 (n + 1) - 1).toNat

end

end A023583.P12524852393508590926

namespace A023583

/-- `A006530(A100484(n+1)-1)` -/
def P12524852393508590926.Spec : Prop :=
  ∀ n, P12524852393508590926.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P16943447184686329782

`A006530(A131426(n+1)+2)`
-/

namespace A023583.P16943447184686329782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A131426 (n + 1) + 2).toNat

end

end A023583.P16943447184686329782

namespace A023583

/-- `A006530(A131426(n+1)+2)` -/
def P16943447184686329782.Spec : Prop :=
  ∀ n, P16943447184686329782.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P5695075387420029898

`A006530(A001747(n+2)-1)`
-/

namespace A023583.P5695075387420029898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001747 (n + 2) - 1).toNat

end

end A023583.P5695075387420029898

namespace A023583

/-- `A006530(A001747(n+2)-1)` -/
def P5695075387420029898.Spec : Prop :=
  ∀ n, P5695075387420029898.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P9253679740800514079

`A006530(A072055(n+1)-2)`
-/

namespace A023583.P9253679740800514079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1) - 2).toNat

end

end A023583.P9253679740800514079

namespace A023583

/-- `A006530(A072055(n+1)-2)` -/
def P9253679740800514079.Spec : Prop :=
  ∀ n, P9253679740800514079.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P18361596202538832517

`A006530(2*A006093(n+1)+1)`
-/

namespace A023583.P18361596202538832517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A006093 (n + 1) + 1).toNat

end

end A023583.P18361596202538832517

namespace A023583

/-- `A006530(2*A006093(n+1)+1)` -/
def P18361596202538832517.Spec : Prop :=
  ∀ n, P18361596202538832517.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P12630433747503612180

`A006530(2*A000040(n+1)-1)`
-/

namespace A023583.P12630433747503612180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000040 (n + 1) - 1).toNat

end

end A023583.P12630433747503612180

namespace A023583

/-- `A006530(2*A000040(n+1)-1)` -/
def P12630433747503612180.Spec : Prop :=
  ∀ n, P12630433747503612180.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P11026214678733891454

`A006530(2*record[A000010(n+1)]+1)`
-/

namespace A023583.P11026214678733891454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023583.P11026214678733891454

namespace A023583

/-- `A006530(2*record[A000010(n+1)]+1)` -/
def P11026214678733891454.Spec : Prop :=
  ∀ n, P11026214678733891454.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P5178229396067102306

`A006530(record[A020639(n+2)+1+n])`
-/

namespace A023583.P5178229396067102306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023583.P5178229396067102306

namespace A023583

/-- `A006530(record[A020639(n+2)+1+n])` -/
def P5178229396067102306.Spec : Prop :=
  ∀ n, P5178229396067102306.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P12414827425245621792

`A006530(2*eq[2, A000005(n+1)]+1)`
-/

namespace A023583.P12414827425245621792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023583.P12414827425245621792

namespace A023583

/-- `A006530(2*eq[2, A000005(n+1)]+1)` -/
def P12414827425245621792.Spec : Prop :=
  ∀ n, P12414827425245621792.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P8682068768514305067

`A006530(A006093(n+1)+A000040(n+1))`
-/

namespace A023583.P8682068768514305067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A023583.P8682068768514305067

namespace A023583

/-- `A006530(A006093(n+1)+A000040(n+1))` -/
def P8682068768514305067.Spec : Prop :=
  ∀ n, P8682068768514305067.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P12591317493953725934

`A006530(A000040(n+1)²-A005722(n+1))`
-/

namespace A023583.P12591317493953725934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) ^ 2 - A005722 (n + 1)).toNat

end

end A023583.P12591317493953725934

namespace A023583

/-- `A006530(A000040(n+1)²-A005722(n+1))` -/
def P12591317493953725934.Spec : Prop :=
  ∀ n, P12591317493953725934.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P16726014236311154198

`A006530(record[A000010(n+1)]+A000040(n+1))`
-/

namespace A023583.P16726014236311154198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000040 (n + 1)).toNat

end

end A023583.P16726014236311154198

namespace A023583

/-- `A006530(record[A000010(n+1)]+A000040(n+1))` -/
def P16726014236311154198.Spec : Prop :=
  ∀ n, P16726014236311154198.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P703276169429721838

`A006530(A006093(n+1)+record[A006530(n+2)])`
-/

namespace A023583.P703276169429721838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023583.P703276169429721838

namespace A023583

/-- `A006530(A006093(n+1)+record[A006530(n+2)])` -/
def P703276169429721838.Spec : Prop :=
  ∀ n, P703276169429721838.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P8244040914926376966

`A006530(record[A006530(n+2)+A000010(n+2)])`
-/

namespace A023583.P8244040914926376966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023583.P8244040914926376966

namespace A023583

/-- `A006530(record[A006530(n+2)+A000010(n+2)])` -/
def P8244040914926376966.Spec : Prop :=
  ∀ n, P8244040914926376966.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P5366559583221463124

`A006530(record[A003958(n+2)+A006530(n+2)])`
-/

namespace A023583.P5366559583221463124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023583.P5366559583221463124

namespace A023583

/-- `A006530(record[A003958(n+2)+A006530(n+2)])` -/
def P5366559583221463124.Spec : Prop :=
  ∀ n, P5366559583221463124.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P16596480020316235045

`A006530(record[A173557(n+2)+A006530(n+2)])`
-/

namespace A023583.P16596480020316235045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023583.P16596480020316235045

namespace A023583

/-- `A006530(record[A173557(n+2)+A006530(n+2)])` -/
def P16596480020316235045.Spec : Prop :=
  ∀ n, P16596480020316235045.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P2761522101308828036

`A006530(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A023583.P2761522101308828036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A023583.P2761522101308828036

namespace A023583

/-- `A006530(A000040(n+1)+A000040(n+1)-1)` -/
def P2761522101308828036.Spec : Prop :=
  ∀ n, P2761522101308828036.a n = A023583 (n + 1)

end A023583

/-! ## A023583.P15173673320029586028

`A006530(A114557(2*n+1)+1)`
-/

namespace A023583.P15173673320029586028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114557 (2 * n + 1) + 1).toNat

end

end A023583.P15173673320029586028

namespace A023583

/-- `A006530(A114557(2*n+1)+1)` -/
def P15173673320029586028.Spec : Prop :=
  ∀ n, P15173673320029586028.a n = A023583 (n + 1)

end A023583

/-!
# A023584: Greatest exponent in prime-power factorization of 2*prime(n)-1.

The programs for A023584, the canonical program `A023584.P17412108272901523238` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023584 has offset 1).

The definition of A023584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023584.P7779812648454704439

`val(A278229(n+1), 2)`
-/

namespace A023584.P7779812648454704439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278229 (n + 1)).toNat 2

end

end A023584.P7779812648454704439

namespace A023584

/-- `val(A278229(n+1), 2)` -/
def P7779812648454704439.Spec : Prop :=
  ∀ n, (P7779812648454704439.a n : ℤ) = A023584 (n + 1)

end A023584

/-! ## A023584.P144226243621443065

`A007814(A278229(n+1))`
-/

namespace A023584.P144226243621443065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278229 (n + 1)).toNat

end

end A023584.P144226243621443065

namespace A023584

/-- `A007814(A278229(n+1))` -/
def P144226243621443065.Spec : Prop :=
  ∀ n, P144226243621443065.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P17412108272901523238

`A051903(A076274(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023584

/-- `A051903(A076274(n+2))` -/
def P17412108272901523238.Spec : Prop :=
  ∀ n, P17412108272901523238.a n = A023584 (n + 1)

theorem P17412108272901523238.correct : P17412108272901523238.Spec := by
  intro n
  simp only [A023584, Nat.add_sub_cancel]

end A023584

/-! ## A023584.P14221703324988919055

`A051903(A037168(n+1)+1)`
-/

namespace A023584.P14221703324988919055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A037168 (n + 1) + 1).toNat

end

end A023584.P14221703324988919055

namespace A023584

/-- `A051903(A037168(n+1)+1)` -/
def P14221703324988919055.Spec : Prop :=
  ∀ n, P14221703324988919055.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P9096581512091084189

`A051903(A100484(n+1)-1)`
-/

namespace A023584.P9096581512091084189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A100484 (n + 1) - 1).toNat

end

end A023584.P9096581512091084189

namespace A023584

/-- `A051903(A100484(n+1)-1)` -/
def P9096581512091084189.Spec : Prop :=
  ∀ n, P9096581512091084189.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P15356187421772109479

`A051903(A131426(n+1)+2)`
-/

namespace A023584.P15356187421772109479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A131426 (n + 1) + 2).toNat

end

end A023584.P15356187421772109479

namespace A023584

/-- `A051903(A131426(n+1)+2)` -/
def P15356187421772109479.Spec : Prop :=
  ∀ n, P15356187421772109479.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P9395572260719597083

`A051903(A001747(n+2)-1)`
-/

namespace A023584.P9395572260719597083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001747 (n + 2) - 1).toNat

end

end A023584.P9395572260719597083

namespace A023584

/-- `A051903(A001747(n+2)-1)` -/
def P9395572260719597083.Spec : Prop :=
  ∀ n, P9395572260719597083.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P9034619009123570395

`A051903(A072055(n+1)-2)`
-/

namespace A023584.P9034619009123570395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A072055 (n + 1) - 2).toNat

end

end A023584.P9034619009123570395

namespace A023584

/-- `A051903(A072055(n+1)-2)` -/
def P9034619009123570395.Spec : Prop :=
  ∀ n, P9034619009123570395.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P17509933562901770078

`A051903(xor(2, A072055(n+1)))`
-/

namespace A023584.P17509933562901770078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.xor 2 (A072055 (n + 1))).toNat

end

end A023584.P17509933562901770078

namespace A023584

/-- `A051903(xor(2, A072055(n+1)))` -/
def P17509933562901770078.Spec : Prop :=
  ∀ n, P17509933562901770078.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P14484286595580390954

`A051903(2*A006093(n+1)+1)`
-/

namespace A023584.P14484286595580390954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A006093 (n + 1) + 1).toNat

end

end A023584.P14484286595580390954

namespace A023584

/-- `A051903(2*A006093(n+1)+1)` -/
def P14484286595580390954.Spec : Prop :=
  ∀ n, P14484286595580390954.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P3455601600439650923

`A051903(2*A156037(n+1)+1)`
-/

namespace A023584.P3455601600439650923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A156037 (n + 1) + 1).toNat

end

end A023584.P3455601600439650923

namespace A023584

/-- `A051903(2*A156037(n+1)+1)` -/
def P3455601600439650923.Spec : Prop :=
  ∀ n, P3455601600439650923.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P12460373657706196001

`A051903(2*A000040(n+1)-1)`
-/

namespace A023584.P12460373657706196001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A000040 (n + 1) - 1).toNat

end

end A023584.P12460373657706196001

namespace A023584

/-- `A051903(2*A000040(n+1)-1)` -/
def P12460373657706196001.Spec : Prop :=
  ∀ n, P12460373657706196001.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P6566548824136512937

`A051903(A006093(n+1)+A000040(n+1))`
-/

namespace A023584.P6566548824136512937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A023584.P6566548824136512937

namespace A023584

/-- `A051903(A006093(n+1)+A000040(n+1))` -/
def P6566548824136512937.Spec : Prop :=
  ∀ n, P6566548824136512937.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P12835688633875882106

`A051903(A006093(n+1)+A006093(n+1)+1)`
-/

namespace A023584.P12835688633875882106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006093 (n + 1) + (A006093 (n + 1) + 1)).toNat

end

end A023584.P12835688633875882106

namespace A023584

/-- `A051903(A006093(n+1)+A006093(n+1)+1)` -/
def P12835688633875882106.Spec : Prop :=
  ∀ n, P12835688633875882106.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P12028156778770157451

`A051903(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A023584.P12028156778770157451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A023584.P12028156778770157451

namespace A023584

/-- `A051903(A000040(n+1)+A000040(n+1)-1)` -/
def P12028156778770157451.Spec : Prop :=
  ∀ n, P12028156778770157451.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P8343550548926964165

`A051903(eq[1, A001222(n+1)]+A000040(n+1))`
-/

namespace A023584.P8343550548926964165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A000040 (n + 1)).toNat

end

end A023584.P8343550548926964165

namespace A023584

/-- `A051903(eq[1, A001222(n+1)]+A000040(n+1))` -/
def P8343550548926964165.Spec : Prop :=
  ∀ n, P8343550548926964165.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P7172349148860926356

`val(A278223(A000040(n+1)), 2)`
-/

namespace A023584.P7172349148860926356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278223 (A000040 (n + 1)).toNat).toNat 2

end

end A023584.P7172349148860926356

namespace A023584

/-- `val(A278223(A000040(n+1)), 2)` -/
def P7172349148860926356.Spec : Prop :=
  ∀ n, (P7172349148860926356.a n : ℤ) = A023584 (n + 1)

end A023584

/-! ## A023584.P9625015669226872259

`A329885(2*A000040(n+1)-1)`
-/

namespace A023584.P9625015669226872259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (2 * A000040 (n + 1) - 1).toNat

end

end A023584.P9625015669226872259

namespace A023584

/-- `A329885(2*A000040(n+1)-1)` -/
def P9625015669226872259.Spec : Prop :=
  ∀ n, P9625015669226872259.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P10324792037661855230

`A329885(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A023584.P10324792037661855230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A023584.P10324792037661855230

namespace A023584

/-- `A329885(A000040(n+1)+A000040(n+1)-1)` -/
def P10324792037661855230.Spec : Prop :=
  ∀ n, P10324792037661855230.a n = A023584 (n + 1)

end A023584

/-! ## A023584.P9605702176368407275

`A253786(A048673(A278223(A064216(A006254(n+1)))))`
-/

namespace A023584.P9605702176368407275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A048673 (A278223 (A064216 (A006254 (n + 1)).toNat).toNat).toNat).toNat

end

end A023584.P9605702176368407275

namespace A023584

/-- `A253786(A048673(A278223(A064216(A006254(n+1)))))` -/
def P9605702176368407275.Spec : Prop :=
  ∀ n, P9605702176368407275.a n = A023584 (n + 1)

end A023584

/-!
# A023585: Least prime divisor of 2*prime(n)-1.

The programs for A023585, there is no canonical definition to state claims against.
-/

/-! ## A023585.P4065705176549977495

`A020639(A076274(n+2))`
-/

namespace A023585.P4065705176549977495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076274 (n + 2)).toNat

end

end A023585.P4065705176549977495

/-! ## A023585.P1631908346747179786

`A020639(A037168(n+1)+1)`
-/

namespace A023585.P1631908346747179786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037168 (n + 1) + 1).toNat

end

end A023585.P1631908346747179786

/-! ## A023585.P6694134725568138398

`A020639(A100484(n+1)-1)`
-/

namespace A023585.P6694134725568138398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100484 (n + 1) - 1).toNat

end

end A023585.P6694134725568138398

/-! ## A023585.P10296535879798324817

`A020639(A131426(n+1)+2)`
-/

namespace A023585.P10296535879798324817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A131426 (n + 1) + 2).toNat

end

end A023585.P10296535879798324817

/-! ## A023585.P4429759634671728310

`A020639(A001747(n+2)-1)`
-/

namespace A023585.P4429759634671728310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001747 (n + 2) - 1).toNat

end

end A023585.P4429759634671728310

/-! ## A023585.P4448563441272000694

`A020639(A072055(n+1)-2)`
-/

namespace A023585.P4448563441272000694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072055 (n + 1) - 2).toNat

end

end A023585.P4448563441272000694

/-! ## A023585.P13056676428339596242

`A020639(2*A006093(n+1)+1)`
-/

namespace A023585.P13056676428339596242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A006093 (n + 1) + 1).toNat

end

end A023585.P13056676428339596242

/-! ## A023585.P8494852225606658983

`A020639(2*A000040(n+1)-1)`
-/

namespace A023585.P8494852225606658983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A000040 (n + 1) - 1).toNat

end

end A023585.P8494852225606658983

/-! ## A023585.P1547125551430832451

`A020639(A001749(n+1)/2-1)`
-/

namespace A023585.P1547125551430832451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A023585.P1547125551430832451

/-! ## A023585.P5439761843535321075

`A020639(2*record[A000010(n+1)]+1)`
-/

namespace A023585.P5439761843535321075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023585.P5439761843535321075

/-! ## A023585.P1676304301900777221

`A020639(record[A020639(n+2)+1+n])`
-/

namespace A023585.P1676304301900777221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023585.P1676304301900777221

/-! ## A023585.P9075548592626051851

`A020639(2*(A040976(n+1)+1)+1)`
-/

namespace A023585.P9075548592626051851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (A040976 (n + 1) + 1) + 1).toNat

end

end A023585.P9075548592626051851

/-! ## A023585.P10163253686768585555

`A020639(A006093(n+1)+A000040(n+1))`
-/

namespace A023585.P10163253686768585555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A023585.P10163253686768585555

/-! ## A023585.P16381991280823435301

`A020639(A006093(n+1)+A006093(n+1)+1)`
-/

namespace A023585.P16381991280823435301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1) + (A006093 (n + 1) + 1)).toNat

end

end A023585.P16381991280823435301

/-! ## A023585.P15515335765060935672

`A020639(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A023585.P15515335765060935672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A023585.P15515335765060935672

/-! ## A023585.P13921609641003127853

`A020639(eq[2, A000005(n+1)]+A000040(n+1))`
-/

namespace A023585.P13921609641003127853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A000040 (n + 1)).toNat

end

end A023585.P13921609641003127853

/-! ## A023585.P5126782383423704270

`p?[A001222(n+1)*A020639(2*n+1)]`
-/

namespace A023585.P5126782383423704270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023585.P5126782383423704270

/-! ## A023585.P12999818150644363739

`A020639(record[A322982(n+2)])`
-/

namespace A023585.P12999818150644363739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023585.P12999818150644363739

/-! ## A023585.P3450281500765041905

`A090368(A000040(n+1))`
-/

namespace A023585.P3450281500765041905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A000040 (n + 1)).toNat

end

end A023585.P3450281500765041905

/-!
# A023586: Exponent of least prime factor in prime factorization of 2*prime(n)-1.

The programs for A023586, the canonical program `A023586.P5533353493407646496` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023586 has offset 1).

The definition of A023586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023586.P8632595301559734789

`val(A005408(A006093(n+1)), A023585(n+1))`
-/

namespace A023586.P8632595301559734789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005408 (A006093 (n + 1)).toNat).toNat (A023585 (n + 1)).toNat

end

end A023586.P8632595301559734789

namespace A023586

/-- `val(A005408(A006093(n+1)), A023585(n+1))` -/
def P8632595301559734789.Spec : Prop :=
  ∀ n, (P8632595301559734789.a n : ℤ) = A023586 (n + 1)

end A023586

/-! ## A023586.P5533353493407646496

`A067029(A076274(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A023586

/-- `A067029(A076274(n+2))` -/
def P5533353493407646496.Spec : Prop :=
  ∀ n, P5533353493407646496.a n = A023586 (n + 1)

theorem P5533353493407646496.correct : P5533353493407646496.Spec := by
  intro n
  simp only [A023586, Nat.add_sub_cancel]

end A023586

/-! ## A023586.P4057983019970442133

`A067029(A037168(n+1)+1)`
-/

namespace A023586.P4057983019970442133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A037168 (n + 1) + 1).toNat

end

end A023586.P4057983019970442133

namespace A023586

/-- `A067029(A037168(n+1)+1)` -/
def P4057983019970442133.Spec : Prop :=
  ∀ n, P4057983019970442133.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P13654817139536923846

`A067029(A100484(n+1)-1)`
-/

namespace A023586.P13654817139536923846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A100484 (n + 1) - 1).toNat

end

end A023586.P13654817139536923846

namespace A023586

/-- `A067029(A100484(n+1)-1)` -/
def P13654817139536923846.Spec : Prop :=
  ∀ n, P13654817139536923846.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P6031422907108108818

`A067029(A001747(n+2)-1)`
-/

namespace A023586.P6031422907108108818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A001747 (n + 2) - 1).toNat

end

end A023586.P6031422907108108818

namespace A023586

/-- `A067029(A001747(n+2)-1)` -/
def P6031422907108108818.Spec : Prop :=
  ∀ n, P6031422907108108818.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P8198055265115259792

`A067029(A072055(n+1)-2)`
-/

namespace A023586.P8198055265115259792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A072055 (n + 1) - 2).toNat

end

end A023586.P8198055265115259792

namespace A023586

/-- `A067029(A072055(n+1)-2)` -/
def P8198055265115259792.Spec : Prop :=
  ∀ n, P8198055265115259792.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P12566851405505522721

`A067029(2*A000040(n+1)-1)`
-/

namespace A023586.P12566851405505522721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A000040 (n + 1) - 1).toNat

end

end A023586.P12566851405505522721

namespace A023586

/-- `A067029(2*A000040(n+1)-1)` -/
def P12566851405505522721.Spec : Prop :=
  ∀ n, P12566851405505522721.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P8372737754203669996

`A067029(record[A020639(n+2)+n]+1)`
-/

namespace A023586.P8372737754203669996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023586.P8372737754203669996

namespace A023586

/-- `A067029(record[A020639(n+2)+n]+1)` -/
def P8372737754203669996.Spec : Prop :=
  ∀ n, P8372737754203669996.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P3607928276452227252

`A067029(2*eq[1, A345936(n+1)]+1)`
-/

namespace A023586.P3607928276452227252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023586.P3607928276452227252

namespace A023586

/-- `A067029(2*eq[1, A345936(n+1)]+1)` -/
def P3607928276452227252.Spec : Prop :=
  ∀ n, P3607928276452227252.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P17886379938246906237

`A067029(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A023586.P17886379938246906237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A023586.P17886379938246906237

namespace A023586

/-- `A067029(A000040(n+1)+A000040(n+1)-1)` -/
def P17886379938246906237.Spec : Prop :=
  ∀ n, P17886379938246906237.a n = A023586 (n + 1)

end A023586

/-! ## A023586.P16023071304887666662

`A067029(A000040(n+1)+eq[n, A000010(n+1)])`
-/

namespace A023586.P16023071304887666662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A000040 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A023586.P16023071304887666662

namespace A023586

/-- `A067029(A000040(n+1)+eq[n, A000010(n+1)])` -/
def P16023071304887666662.Spec : Prop :=
  ∀ n, P16023071304887666662.a n = A023586 (n + 1)

end A023586

/-!
# A023587: a(n) = sum of distinct prime divisors of 2*prime(n)-1.

The programs for A023587, the canonical program `A023587.P17732920272715446709` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023587 has offset 1).

The definition of A023587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023587.P13454527620895278546

`∑{p}[1-A100484(n+1), #]`
-/

namespace A023587.P13454527620895278546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P13454527620895278546

namespace A023587

/-- `∑{p}[1-A100484(n+1), #]` -/
def P13454527620895278546.Spec : Prop :=
  ∀ n, (P13454527620895278546.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P1062596073376021521

`∑{p}[2-A072055(n+1), #]`
-/

namespace A023587.P1062596073376021521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P1062596073376021521

namespace A023587

/-- `∑{p}[2-A072055(n+1), #]` -/
def P1062596073376021521.Spec : Prop :=
  ∀ n, (P1062596073376021521.a n : ℤ) = A023587 (n + 1)

theorem P1062596073376021521.correct : P1062596073376021521.Spec := by
  intro n
  simp only [A023587, Nat.add_sub_cancel, A023587.P1062596073376021521.f1, A023587.P1062596073376021521.a, A023587.P17732920272715446709.f1, A023587.P17732920272715446709.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023587

/-! ## A023587.P17732920272715446709

`∑{p}[1-2*A000040(n+1), #]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023587

/-- `∑{p}[1-2*A000040(n+1), #]` -/
def P17732920272715446709.Spec : Prop :=
  ∀ n, (P17732920272715446709.a n : ℤ) = A023587 (n + 1)

theorem P17732920272715446709.correct : P17732920272715446709.Spec := by
  intro n
  simp only [A023587, Nat.add_sub_cancel]

end A023587

/-! ## A023587.P18149195500927296952

`∑{p}[A006093(n+1)+A000040(n+1), #]`
-/

namespace A023587.P18149195500927296952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P18149195500927296952

namespace A023587

/-- `∑{p}[A006093(n+1)+A000040(n+1), #]` -/
def P18149195500927296952.Spec : Prop :=
  ∀ n, (P18149195500927296952.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P1048446108767992531

`∑{p}[A008864(n+1)+A008864(n+1)-3, #]`
-/

namespace A023587.P1048446108767992531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A008864 (n + 1) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P1048446108767992531

namespace A023587

/-- `∑{p}[A008864(n+1)+A008864(n+1)-3, #]` -/
def P1048446108767992531.Spec : Prop :=
  ∀ n, (P1048446108767992531.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P12426558155144573805

`∑{p}[A076274(n+2), #]`
-/

namespace A023587.P12426558155144573805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P12426558155144573805

namespace A023587

/-- `∑{p}[A076274(n+2), #]` -/
def P12426558155144573805.Spec : Prop :=
  ∀ n, (P12426558155144573805.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P16578582587461729880

`∑{p}[record[2*A000010(n+1)+1], #]`
-/

namespace A023587.P16578582587461729880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P16578582587461729880

namespace A023587

/-- `∑{p}[record[2*A000010(n+1)+1], #]` -/
def P16578582587461729880.Spec : Prop :=
  ∀ n, (P16578582587461729880.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P2573923055245579285

`∑{p}[record[A020639(n+2)+n+1], #]`
-/

namespace A023587.P2573923055245579285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P2573923055245579285

namespace A023587

/-- `∑{p}[record[A020639(n+2)+n+1], #]` -/
def P2573923055245579285.Spec : Prop :=
  ∀ n, (P2573923055245579285.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P15873379380055366744

`∑{p}[∑{p}[A000040(n+1), A000010(#)+#], #]`
-/

namespace A023587.P15873379380055366744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (A000010 p + (p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P15873379380055366744

namespace A023587

/-- `∑{p}[∑{p}[A000040(n+1), A000010(#)+#], #]` -/
def P15873379380055366744.Spec : Prop :=
  ∀ n, (P15873379380055366744.a n : ℤ) = A023587 (n + 1)

end A023587

/-! ## A023587.P5358167405015712067

`A008472(A100484(n+1)-1)`
-/

namespace A023587.P5358167405015712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A100484 (n + 1) - 1).toNat

end

end A023587.P5358167405015712067

namespace A023587

/-- `A008472(A100484(n+1)-1)` -/
def P5358167405015712067.Spec : Prop :=
  ∀ n, P5358167405015712067.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P5721147322379885294

`A008472(A001747(n+2)-1)`
-/

namespace A023587.P5721147322379885294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001747 (n + 2) - 1).toNat

end

end A023587.P5721147322379885294

namespace A023587

/-- `A008472(A001747(n+2)-1)` -/
def P5721147322379885294.Spec : Prop :=
  ∀ n, P5721147322379885294.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P18180677442741886707

`A008472(2*A006093(n+1)+1)`
-/

namespace A023587.P18180677442741886707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A006093 (n + 1) + 1).toNat

end

end A023587.P18180677442741886707

namespace A023587

/-- `A008472(2*A006093(n+1)+1)` -/
def P18180677442741886707.Spec : Prop :=
  ∀ n, P18180677442741886707.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P4688766721737233979

`A008472(2*A000040(n+1)-1)`
-/

namespace A023587.P4688766721737233979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A000040 (n + 1) - 1).toNat

end

end A023587.P4688766721737233979

namespace A023587

/-- `A008472(2*A000040(n+1)-1)` -/
def P4688766721737233979.Spec : Prop :=
  ∀ n, P4688766721737233979.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P6922882171744704441

`A008472(2*record[A000010(n+1)]+1)`
-/

namespace A023587.P6922882171744704441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023587.P6922882171744704441

namespace A023587

/-- `A008472(2*record[A000010(n+1)]+1)` -/
def P6922882171744704441.Spec : Prop :=
  ∀ n, P6922882171744704441.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P9665053601399229531

`A008472(A006093(n+1)+A000040(n+1))`
-/

namespace A023587.P9665053601399229531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A023587.P9665053601399229531

namespace A023587

/-- `A008472(A006093(n+1)+A000040(n+1))` -/
def P9665053601399229531.Spec : Prop :=
  ∀ n, P9665053601399229531.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P5611782144536972425

`A008472(A006093(n+1)+record[A006530(n+2)])`
-/

namespace A023587.P5611782144536972425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006093 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023587.P5611782144536972425

namespace A023587

/-- `A008472(A006093(n+1)+record[A006530(n+2)])` -/
def P5611782144536972425.Spec : Prop :=
  ∀ n, P5611782144536972425.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P14201071349035744573

`A008472(record[A008472(n+2)+A000010(n+2)])`
-/

namespace A023587.P14201071349035744573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2) + A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023587.P14201071349035744573

namespace A023587

/-- `A008472(record[A008472(n+2)+A000010(n+2)])` -/
def P14201071349035744573.Spec : Prop :=
  ∀ n, P14201071349035744573.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P17548679160820867920

`A008472(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A023587.P17548679160820867920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A023587.P17548679160820867920

namespace A023587

/-- `A008472(A000040(n+1)+A000040(n+1)-1)` -/
def P17548679160820867920.Spec : Prop :=
  ∀ n, P17548679160820867920.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P2027317985369539847

`A008472(A006093(n+1)+eq[2, A000005(n+1)]+1)`
-/

namespace A023587.P2027317985369539847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006093 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)).toNat

end

end A023587.P2027317985369539847

namespace A023587

/-- `A008472(A006093(n+1)+eq[2, A000005(n+1)]+1)` -/
def P2027317985369539847.Spec : Prop :=
  ∀ n, P2027317985369539847.a n = A023587 (n + 1)

end A023587

/-! ## A023587.P11128033558838638841

`A008472(A144043(2*n+1)-1)`
-/

namespace A023587.P11128033558838638841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A144043 (2 * n + 1) - 1).toNat

end

end A023587.P11128033558838638841

namespace A023587

/-- `A008472(A144043(2*n+1)-1)` -/
def P11128033558838638841.Spec : Prop :=
  ∀ n, P11128033558838638841.a n = A023587 (n + 1)

end A023587

/-!
# A023588: a(n) = sum of exponents in prime-power factorization of 2*prime(n)-1.

The programs for A023588, the canonical program `A023588.P14794205489687113627` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023588 has offset 1).

The definition of A023588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023588.P12684672182418607592

`∑{e}[A278229(n+1), #]`
-/

namespace A023588.P12684672182418607592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023588.P12684672182418607592

namespace A023588

/-- `∑{e}[A278229(n+1), #]` -/
def P12684672182418607592.Spec : Prop :=
  ∀ n, (P12684672182418607592.a n : ℤ) = A023588 (n + 1)

end A023588

/-! ## A023588.P6372844825744034817

`∑{e}[A037168(n+1)+1, #]`
-/

namespace A023588.P6372844825744034817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023588.P6372844825744034817

namespace A023588

/-- `∑{e}[A037168(n+1)+1, #]` -/
def P6372844825744034817.Spec : Prop :=
  ∀ n, (P6372844825744034817.a n : ℤ) = A023588 (n + 1)

theorem P6372844825744034817.correct : P6372844825744034817.Spec := by
  intro n
  simp only [A023588, Nat.add_sub_cancel, A023588.P6372844825744034817.f1, A023588.P6372844825744034817.a, A023588.P14794205489687113627.f1, A023588.P14794205489687113627.a, A006093, A006093.P2906174024863549003.a, A037168, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023588

/-! ## A023588.P16456356195530720078

`∑{e}[1-A100484(n+1), #]`
-/

namespace A023588.P16456356195530720078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023588.P16456356195530720078

namespace A023588

/-- `∑{e}[1-A100484(n+1), #]` -/
def P16456356195530720078.Spec : Prop :=
  ∀ n, (P16456356195530720078.a n : ℤ) = A023588 (n + 1)

end A023588

/-! ## A023588.P1756827782629860047

`∑{e}[2-A072055(n+1), #]`
-/

namespace A023588.P1756827782629860047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023588.P1756827782629860047

namespace A023588

/-- `∑{e}[2-A072055(n+1), #]` -/
def P1756827782629860047.Spec : Prop :=
  ∀ n, (P1756827782629860047.a n : ℤ) = A023588 (n + 1)

end A023588

/-! ## A023588.P14794205489687113627

`∑{e}[2*A006093(n+1)+1, #]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023588

/-- `∑{e}[2*A006093(n+1)+1, #]` -/
def P14794205489687113627.Spec : Prop :=
  ∀ n, (P14794205489687113627.a n : ℤ) = A023588 (n + 1)

theorem P14794205489687113627.correct : P14794205489687113627.Spec := by
  intro n
  simp only [A023588, Nat.add_sub_cancel]

end A023588

/-! ## A023588.P15925778058935477508

`A001222(A278229(n+1))`
-/

namespace A023588.P15925778058935477508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278229 (n + 1)).toNat

end

end A023588.P15925778058935477508

namespace A023588

/-- `A001222(A278229(n+1))` -/
def P15925778058935477508.Spec : Prop :=
  ∀ n, P15925778058935477508.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P7372308987491907222

`∑{e}[A076274(n+2), #]`
-/

namespace A023588.P7372308987491907222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023588.P7372308987491907222

namespace A023588

/-- `∑{e}[A076274(n+2), #]` -/
def P7372308987491907222.Spec : Prop :=
  ∀ n, (P7372308987491907222.a n : ℤ) = A023588 (n + 1)

end A023588

/-! ## A023588.P4121458551404047445

`A001222(2*p?[xor(1, n)]-1)`
-/

namespace A023588.P4121458551404047445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A023588.P4121458551404047445

namespace A023588

/-- `A001222(2*p?[xor(1, n)]-1)` -/
def P4121458551404047445.Spec : Prop :=
  ∀ n, P4121458551404047445.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P2314988445306351834

`A001222(xor(3, 2*p?[xor(1, n)]))`
-/

namespace A023588.P2314988445306351834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor 3 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A023588.P2314988445306351834

namespace A023588

/-- `A001222(xor(3, 2*p?[xor(1, n)]))` -/
def P2314988445306351834.Spec : Prop :=
  ∀ n, P2314988445306351834.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P5674485293320563497

`A001222(A076274(n+2))`
-/

namespace A023588.P5674485293320563497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076274 (n + 2)).toNat

end

end A023588.P5674485293320563497

namespace A023588

/-- `A001222(A076274(n+2))` -/
def P5674485293320563497.Spec : Prop :=
  ∀ n, P5674485293320563497.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P12357911143936819097

`A001222(A037168(n+1)+1)`
-/

namespace A023588.P12357911143936819097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037168 (n + 1) + 1).toNat

end

end A023588.P12357911143936819097

namespace A023588

/-- `A001222(A037168(n+1)+1)` -/
def P12357911143936819097.Spec : Prop :=
  ∀ n, P12357911143936819097.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P1864821889024744628

`A001222(A073582(n+1)-1)`
-/

namespace A023588.P1864821889024744628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073582 (n + 1) - 1).toNat

end

end A023588.P1864821889024744628

namespace A023588

/-- `A001222(A073582(n+1)-1)` -/
def P1864821889024744628.Spec : Prop :=
  ∀ n, P1864821889024744628.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P9938919604089592075

`A001222(A100484(n+1)-1)`
-/

namespace A023588.P9938919604089592075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100484 (n + 1) - 1).toNat

end

end A023588.P9938919604089592075

namespace A023588

/-- `A001222(A100484(n+1)-1)` -/
def P9938919604089592075.Spec : Prop :=
  ∀ n, P9938919604089592075.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P3528450106928297092

`A001222(A001747(n+2)-1)`
-/

namespace A023588.P3528450106928297092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 2) - 1).toNat

end

end A023588.P3528450106928297092

namespace A023588

/-- `A001222(A001747(n+2)-1)` -/
def P3528450106928297092.Spec : Prop :=
  ∀ n, P3528450106928297092.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P11969990341494620357

`A001222(A072055(n+1)-2)`
-/

namespace A023588.P11969990341494620357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072055 (n + 1) - 2).toNat

end

end A023588.P11969990341494620357

namespace A023588

/-- `A001222(A072055(n+1)-2)` -/
def P11969990341494620357.Spec : Prop :=
  ∀ n, P11969990341494620357.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P12679443137137925648

`A001222(A161344(n+2)-1)`
-/

namespace A023588.P12679443137137925648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161344 (n + 2) - 1).toNat

end

end A023588.P12679443137137925648

namespace A023588

/-- `A001222(A161344(n+2)-1)` -/
def P12679443137137925648.Spec : Prop :=
  ∀ n, P12679443137137925648.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P8498457939183804406

`A001222(2*A006093(n+1)+1)`
-/

namespace A023588.P8498457939183804406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006093 (n + 1) + 1).toNat

end

end A023588.P8498457939183804406

namespace A023588

/-- `A001222(2*A006093(n+1)+1)` -/
def P8498457939183804406.Spec : Prop :=
  ∀ n, P8498457939183804406.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P17402491372168232345

`A001222(2*A000040(n+1)-1)`
-/

namespace A023588.P17402491372168232345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A000040 (n + 1) - 1).toNat

end

end A023588.P17402491372168232345

namespace A023588

/-- `A001222(2*A000040(n+1)-1)` -/
def P17402491372168232345.Spec : Prop :=
  ∀ n, P17402491372168232345.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P11434536064555226329

`A001222(xor(3, 2*A000040(n+1)))`
-/

namespace A023588.P11434536064555226329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 3 (2 * A000040 (n + 1))).toNat

end

end A023588.P11434536064555226329

namespace A023588

/-- `A001222(xor(3, 2*A000040(n+1)))` -/
def P11434536064555226329.Spec : Prop :=
  ∀ n, P11434536064555226329.a n = A023588 (n + 1)

end A023588

/-! ## A023588.P2287185641040495749

`A001222(record[2*A000010(n+1)+1])`
-/

namespace A023588.P2287185641040495749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023588.P2287185641040495749

namespace A023588

/-- `A001222(record[2*A000010(n+1)+1])` -/
def P2287185641040495749.Spec : Prop :=
  ∀ n, P2287185641040495749.a n = A023588 (n + 1)

end A023588

/-!
# A023589: a(n) is the number of distinct prime divisors of 2*prime(n)+1.

The programs for A023589, the canonical program `A023589.P10891218899732312010` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023589 has offset 1).

The definition of A023589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023589.P10891218899732312010

`A001221(2*A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023589

/-- `A001221(2*A000040(n+1)+1)` -/
def P10891218899732312010.Spec : Prop :=
  ∀ n, P10891218899732312010.a n = A023589 (n + 1)

theorem P10891218899732312010.correct : P10891218899732312010.Spec := by
  intro n
  simp only [A023589, Nat.add_sub_cancel]

end A023589

/-! ## A023589.P227061569363582977

`∑{e}[A072058(n+1), #]`
-/

namespace A023589.P227061569363582977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072058 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023589.P227061569363582977

namespace A023589

/-- `∑{e}[A072058(n+1), #]` -/
def P227061569363582977.Spec : Prop :=
  ∀ n, (P227061569363582977.a n : ℤ) = A023589 (n + 1)

end A023589

/-! ## A023589.P7694539841740584974

`A001221(A278230(n+1))`
-/

namespace A023589.P7694539841740584974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278230 (n + 1)).toNat

end

end A023589.P7694539841740584974

namespace A023589

/-- `A001221(A278230(n+1))` -/
def P7694539841740584974.Spec : Prop :=
  ∀ n, P7694539841740584974.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P1656477994939150441

`A061395(2*A278230(n+1))`
-/

namespace A023589.P1656477994939150441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A278230 (n + 1)).toNat

end

end A023589.P1656477994939150441

namespace A023589

/-- `A061395(2*A278230(n+1))` -/
def P1656477994939150441.Spec : Prop :=
  ∀ n, P1656477994939150441.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P9005184520503943409

`A001221(2*p?[xor(1, n)]+1)`
-/

namespace A023589.P9005184520503943409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A023589.P9005184520503943409

namespace A023589

/-- `A001221(2*p?[xor(1, n)]+1)` -/
def P9005184520503943409.Spec : Prop :=
  ∀ n, P9005184520503943409.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P6669525463490119510

`A001221(or(1, 2*p?[xor(1, n)]))`
-/

namespace A023589.P6669525463490119510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lor 1 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A023589.P6669525463490119510

namespace A023589

/-- `A001221(or(1, 2*p?[xor(1, n)]))` -/
def P6669525463490119510.Spec : Prop :=
  ∀ n, P6669525463490119510.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P2153592354072402840

`A001221(xor(1, 2*p?[xor(1, n)]))`
-/

namespace A023589.P2153592354072402840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.xor 1 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A023589.P2153592354072402840

namespace A023589

/-- `A001221(xor(1, 2*p?[xor(1, n)]))` -/
def P2153592354072402840.Spec : Prop :=
  ∀ n, P2153592354072402840.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P12670507897798138970

`A001221(A072055(n+1))`
-/

namespace A023589.P12670507897798138970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072055 (n + 1)).toNat

end

end A023589.P12670507897798138970

namespace A023589

/-- `A001221(A072055(n+1))` -/
def P12670507897798138970.Spec : Prop :=
  ∀ n, P12670507897798138970.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P1256901353474984448

`A001221(A072058(n+1))`
-/

namespace A023589.P1256901353474984448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072058 (n + 1)).toNat

end

end A023589.P1256901353474984448

namespace A023589

/-- `A001221(A072058(n+1))` -/
def P1256901353474984448.Spec : Prop :=
  ∀ n, P1256901353474984448.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P2734291142393695396

`A001221(A100484(n+1)+1)`
-/

namespace A023589.P2734291142393695396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100484 (n + 1) + 1).toNat

end

end A023589.P2734291142393695396

namespace A023589

/-- `A001221(A100484(n+1)+1)` -/
def P2734291142393695396.Spec : Prop :=
  ∀ n, P2734291142393695396.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P2979884897339182747

`A001221(A001747(n+2)+1)`
-/

namespace A023589.P2979884897339182747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001747 (n + 2) + 1).toNat

end

end A023589.P2979884897339182747

namespace A023589

/-- `A001221(A001747(n+2)+1)` -/
def P2979884897339182747.Spec : Prop :=
  ∀ n, P2979884897339182747.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P1705160324655580305

`A001221(A161344(n+2)+1)`
-/

namespace A023589.P1705160324655580305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A161344 (n + 2) + 1).toNat

end

end A023589.P1705160324655580305

namespace A023589

/-- `A001221(A161344(n+2)+1)` -/
def P1705160324655580305.Spec : Prop :=
  ∀ n, P1705160324655580305.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P14874540896684764109

`A001221(A076274(n+2)+2)`
-/

namespace A023589.P14874540896684764109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076274 (n + 2) + 2).toNat

end

end A023589.P14874540896684764109

namespace A023589

/-- `A001221(A076274(n+2)+2)` -/
def P14874540896684764109.Spec : Prop :=
  ∀ n, P14874540896684764109.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P5120661695778506525

`A001221(2*A006005(n+1)+1)`
-/

namespace A023589.P5120661695778506525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A006005 (n + 1) + 1).toNat

end

end A023589.P5120661695778506525

namespace A023589

/-- `A001221(2*A006005(n+1)+1)` -/
def P5120661695778506525.Spec : Prop :=
  ∀ n, P5120661695778506525.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P13540110590564781618

`A001221(A001749(n+1)/2+1)`
-/

namespace A023589.P13540110590564781618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A023589.P13540110590564781618

namespace A023589

/-- `A001221(A001749(n+1)/2+1)` -/
def P13540110590564781618.Spec : Prop :=
  ∀ n, P13540110590564781618.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P15789835455692340592

`A001221(2*A008864(n+1)-1)`
-/

namespace A023589.P15789835455692340592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A008864 (n + 1) - 1).toNat

end

end A023589.P15789835455692340592

namespace A023589

/-- `A001221(2*A008864(n+1)-1)` -/
def P15789835455692340592.Spec : Prop :=
  ∀ n, P15789835455692340592.a n = A023589 (n + 1)

theorem P15789835455692340592.correct : P15789835455692340592.Spec := by
  intro n
  simp only [A023589, Nat.add_sub_cancel, A023589.P15789835455692340592.a, A023589.P10891218899732312010.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023589

/-! ## A023589.P1101606863729447088

`A001221(2*A175216(n+1)-1)`
-/

namespace A023589.P1101606863729447088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A175216 (n + 1) - 1).toNat

end

end A023589.P1101606863729447088

namespace A023589

/-- `A001221(2*A175216(n+1)-1)` -/
def P1101606863729447088.Spec : Prop :=
  ∀ n, P1101606863729447088.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P14591103014547643123

`A001221(lcm(2, A000040(n+1))+1)`
-/

namespace A023589.P14591103014547643123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 2 (A000040 (n + 1)) + 1)

end

end A023589.P14591103014547643123

namespace A023589

/-- `A001221(lcm(2, A000040(n+1))+1)` -/
def P14591103014547643123.Spec : Prop :=
  ∀ n, P14591103014547643123.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P9883611352829052937

`A001221(record[2*A000010(n+1)+3])`
-/

namespace A023589.P9883611352829052937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023589.P9883611352829052937

namespace A023589

/-- `A001221(record[2*A000010(n+1)+3])` -/
def P9883611352829052937.Spec : Prop :=
  ∀ n, P9883611352829052937.a n = A023589 (n + 1)

end A023589

/-! ## A023589.P8044782656640440245

`A001221(record[A020639(n+2)+n+3])`
-/

namespace A023589.P8044782656640440245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023589.P8044782656640440245

namespace A023589

/-- `A001221(record[A020639(n+2)+n+3])` -/
def P8044782656640440245.Spec : Prop :=
  ∀ n, P8044782656640440245.a n = A023589 (n + 1)

end A023589

/-!
# A023590: Greatest prime divisor of 2*prime(n)+1.

The programs for A023590, the canonical program `A023590.P10993388026348196137` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023590 has offset 1).

The definition of A023590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023590.P10993388026348196137

`A006530(A072055(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023590

/-- `A006530(A072055(n+1))` -/
def P10993388026348196137.Spec : Prop :=
  ∀ n, P10993388026348196137.a n = A023590 (n + 1)

theorem P10993388026348196137.correct : P10993388026348196137.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel]

end A023590

/-! ## A023590.P764764295195591055

`A000040(A100394(n+1))`
-/

namespace A023590.P764764295195591055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100394 (n + 1)).toNat

end

end A023590.P764764295195591055

namespace A023590

/-- `A000040(A100394(n+1))` -/
def P764764295195591055.Spec : Prop :=
  ∀ n, P764764295195591055.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P18003761493029155677

`A006530(A072058(n+1))`
-/

namespace A023590.P18003761493029155677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072058 (n + 1)).toNat

end

end A023590.P18003761493029155677

namespace A023590

/-- `A006530(A072058(n+1))` -/
def P18003761493029155677.Spec : Prop :=
  ∀ n, P18003761493029155677.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P12232519178770758827

`A006530(A100484(n+1)+1)`
-/

namespace A023590.P12232519178770758827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 (n + 1) + 1).toNat

end

end A023590.P12232519178770758827

namespace A023590

/-- `A006530(A100484(n+1)+1)` -/
def P12232519178770758827.Spec : Prop :=
  ∀ n, P12232519178770758827.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P7230928071906123871

`A006530(A001747(n+2)+1)`
-/

namespace A023590.P7230928071906123871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001747 (n + 2) + 1).toNat

end

end A023590.P7230928071906123871

namespace A023590

/-- `A006530(A001747(n+2)+1)` -/
def P7230928071906123871.Spec : Prop :=
  ∀ n, P7230928071906123871.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P5428260777112884451

`A006530(A089241(n+1)-1)`
-/

namespace A023590.P5428260777112884451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089241 (n + 1) - 1).toNat

end

end A023590.P5428260777112884451

namespace A023590

/-- `A006530(A089241(n+1)-1)` -/
def P5428260777112884451.Spec : Prop :=
  ∀ n, P5428260777112884451.a n = A023590 (n + 1)

theorem P5428260777112884451.correct : P5428260777112884451.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P5428260777112884451.a, A023590.P10993388026348196137.a, A006530, A006530.P13372528560459906635.a, A072055, A072055.P8252801676711237860.a, A089241, A089241.P14705987553220613803.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P139001041230691679

`A006530(A076274(n+2)+2)`
-/

namespace A023590.P139001041230691679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076274 (n + 2) + 2).toNat

end

end A023590.P139001041230691679

namespace A023590

/-- `A006530(A076274(n+2)+2)` -/
def P139001041230691679.Spec : Prop :=
  ∀ n, P139001041230691679.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P1585411418809653961

`A006530(A129069(n+1)-2)`
-/

namespace A023590.P1585411418809653961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129069 (n + 1) - 2).toNat

end

end A023590.P1585411418809653961

namespace A023590

/-- `A006530(A129069(n+1)-2)` -/
def P1585411418809653961.Spec : Prop :=
  ∀ n, P1585411418809653961.a n = A023590 (n + 1)

theorem P1585411418809653961.correct : P1585411418809653961.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P1585411418809653961.a, A023590.P10993388026348196137.a, A006530, A006530.P13372528560459906635.a, A072055, A072055.P8252801676711237860.a, A129069, A129069.P1730810587281407252.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P5746885731679471498

`A006530(2*A000040(n+1)+1)`
-/

namespace A023590.P5746885731679471498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000040 (n + 1) + 1).toNat

end

end A023590.P5746885731679471498

namespace A023590

/-- `A006530(2*A000040(n+1)+1)` -/
def P5746885731679471498.Spec : Prop :=
  ∀ n, P5746885731679471498.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P5994970519885054399

`A006530(A001749(n+1)/2+1)`
-/

namespace A023590.P5994970519885054399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A023590.P5994970519885054399

namespace A023590

/-- `A006530(A001749(n+1)/2+1)` -/
def P5994970519885054399.Spec : Prop :=
  ∀ n, P5994970519885054399.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P8486804249864449200

`A006530(2*A008864(n+1)-1)`
-/

namespace A023590.P8486804249864449200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A008864 (n + 1) - 1).toNat

end

end A023590.P8486804249864449200

namespace A023590

/-- `A006530(2*A008864(n+1)-1)` -/
def P8486804249864449200.Spec : Prop :=
  ∀ n, P8486804249864449200.a n = A023590 (n + 1)

theorem P8486804249864449200.correct : P8486804249864449200.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P8486804249864449200.a, A023590.P10993388026348196137.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P16289439364022547348

`A006530(2*record[A006530(n+2)]+1)`
-/

namespace A023590.P16289439364022547348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023590.P16289439364022547348

namespace A023590

/-- `A006530(2*record[A006530(n+2)]+1)` -/
def P16289439364022547348.Spec : Prop :=
  ∀ n, P16289439364022547348.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P3941140056743092253

`A006530(record[A020639(n+2)+n+3])`
-/

namespace A023590.P3941140056743092253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023590.P3941140056743092253

namespace A023590

/-- `A006530(record[A020639(n+2)+n+3])` -/
def P3941140056743092253.Spec : Prop :=
  ∀ n, P3941140056743092253.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P8732469625604201649

`A006530(A008864(n+1)+A000040(n+1))`
-/

namespace A023590.P8732469625604201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A023590.P8732469625604201649

namespace A023590

/-- `A006530(A008864(n+1)+A000040(n+1))` -/
def P8732469625604201649.Spec : Prop :=
  ∀ n, P8732469625604201649.a n = A023590 (n + 1)

theorem P8732469625604201649.correct : P8732469625604201649.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P8732469625604201649.a, A023590.P10993388026348196137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P14651257185299982787

`A006530(A008864(n+1)+record[A006530(n+2)])`
-/

namespace A023590.P14651257185299982787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023590.P14651257185299982787

namespace A023590

/-- `A006530(A008864(n+1)+record[A006530(n+2)])` -/
def P14651257185299982787.Spec : Prop :=
  ∀ n, P14651257185299982787.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P14995266105089463238

`A006530(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023590.P14995266105089463238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023590.P14995266105089463238

namespace A023590

/-- `A006530(A000040(n+1)+A000040(n+1)+1)` -/
def P14995266105089463238.Spec : Prop :=
  ∀ n, P14995266105089463238.a n = A023590 (n + 1)

theorem P14995266105089463238.correct : P14995266105089463238.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P14995266105089463238.a, A023590.P10993388026348196137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006530, A006530.P13372528560459906635.a, A072055, A072055.P8252801676711237860.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P15565927153325916474

`A006530(A008864(n+1)+A006093(n+1)+1)`
-/

namespace A023590.P15565927153325916474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + (A006093 (n + 1) + 1)).toNat

end

end A023590.P15565927153325916474

namespace A023590

/-- `A006530(A008864(n+1)+A006093(n+1)+1)` -/
def P15565927153325916474.Spec : Prop :=
  ∀ n, P15565927153325916474.a n = A023590 (n + 1)

theorem P15565927153325916474.correct : P15565927153325916474.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P15565927153325916474.a, A023590.P10993388026348196137.a, A006093, A006093.P2906174024863549003.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P4172815976176019908

`A006530(A008864(n+1)+A008864(n+1)-1)`
-/

namespace A023590.P4172815976176019908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + (A008864 (n + 1) - 1)).toNat

end

end A023590.P4172815976176019908

namespace A023590

/-- `A006530(A008864(n+1)+A008864(n+1)-1)` -/
def P4172815976176019908.Spec : Prop :=
  ∀ n, P4172815976176019908.a n = A023590 (n + 1)

theorem P4172815976176019908.correct : P4172815976176019908.Spec := by
  intro n
  simp only [A023590, Nat.add_sub_cancel, A023590.P4172815976176019908.a, A023590.P10993388026348196137.a, A006530, A006530.P13372528560459906635.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023590

/-! ## A023590.P663737377128899479

`A006530(A001749(n+1)+2)`
-/

namespace A023590.P663737377128899479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001749 (n + 1) + 2).toNat

end

end A023590.P663737377128899479

namespace A023590

/-- `A006530(A001749(n+1)+2)` -/
def P663737377128899479.Spec : Prop :=
  ∀ n, P663737377128899479.a n = A023590 (n + 1)

end A023590

/-! ## A023590.P8336027721689917484

`A076565(A000040(n+1))`
-/

namespace A023590.P8336027721689917484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A000040 (n + 1)).toNat

end

end A023590.P8336027721689917484

namespace A023590

/-- `A076565(A000040(n+1))` -/
def P8336027721689917484.Spec : Prop :=
  ∀ n, P8336027721689917484.a n = A023590 (n + 1)

end A023590

/-!
# A023591: Greatest exponent in prime-power factorization of 2*prime(n)+1.

The programs for A023591, the canonical program `A023591.P7298037230346281186` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023591 has offset 1).

The definition of A023591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023591.P7298037230346281186

`A051903(A072055(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023591

/-- `A051903(A072055(n+1))` -/
def P7298037230346281186.Spec : Prop :=
  ∀ n, P7298037230346281186.a n = A023591 (n + 1)

theorem P7298037230346281186.correct : P7298037230346281186.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel]

end A023591

/-! ## A023591.P16323398894272759814

`A051903(2*A000040(n+1)+1)`
-/

namespace A023591.P16323398894272759814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A000040 (n + 1) + 1).toNat

end

end A023591.P16323398894272759814

namespace A023591

/-- `A051903(2*A000040(n+1)+1)` -/
def P16323398894272759814.Spec : Prop :=
  ∀ n, P16323398894272759814.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P18169382981160363242

`val(A278230(n+1), 2)`
-/

namespace A023591.P18169382981160363242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278230 (n + 1)).toNat 2

end

end A023591.P18169382981160363242

namespace A023591

/-- `val(A278230(n+1), 2)` -/
def P18169382981160363242.Spec : Prop :=
  ∀ n, (P18169382981160363242.a n : ℤ) = A023591 (n + 1)

end A023591

/-! ## A023591.P6902222691375907058

`A007814(A278230(n+1))`
-/

namespace A023591.P6902222691375907058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278230 (n + 1)).toNat

end

end A023591.P6902222691375907058

namespace A023591

/-- `A007814(A278230(n+1))` -/
def P6902222691375907058.Spec : Prop :=
  ∀ n, P6902222691375907058.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P3730202529898215446

`A051903(A166496(n+1))`
-/

namespace A023591.P3730202529898215446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A166496 (n + 1)).toNat

end

end A023591.P3730202529898215446

namespace A023591

/-- `A051903(A166496(n+1))` -/
def P3730202529898215446.Spec : Prop :=
  ∀ n, P3730202529898215446.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P3463604467563119382

`A051903(A100484(n+1)+1)`
-/

namespace A023591.P3463604467563119382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A100484 (n + 1) + 1).toNat

end

end A023591.P3463604467563119382

namespace A023591

/-- `A051903(A100484(n+1)+1)` -/
def P3463604467563119382.Spec : Prop :=
  ∀ n, P3463604467563119382.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P9151843836174342063

`A051903(A001747(n+2)+1)`
-/

namespace A023591.P9151843836174342063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001747 (n + 2) + 1).toNat

end

end A023591.P9151843836174342063

namespace A023591

/-- `A051903(A001747(n+2)+1)` -/
def P9151843836174342063.Spec : Prop :=
  ∀ n, P9151843836174342063.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P5303842579480484051

`A051903(A089241(n+1)-1)`
-/

namespace A023591.P5303842579480484051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A089241 (n + 1) - 1).toNat

end

end A023591.P5303842579480484051

namespace A023591

/-- `A051903(A089241(n+1)-1)` -/
def P5303842579480484051.Spec : Prop :=
  ∀ n, P5303842579480484051.a n = A023591 (n + 1)

theorem P5303842579480484051.correct : P5303842579480484051.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel, A023591.P5303842579480484051.a, A023591.P7298037230346281186.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A072055, A072055.P8252801676711237860.a, A089241, A089241.P14705987553220613803.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023591

/-! ## A023591.P18246722332448415227

`A051903(A076274(n+2)+2)`
-/

namespace A023591.P18246722332448415227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A076274 (n + 2) + 2).toNat

end

end A023591.P18246722332448415227

namespace A023591

/-- `A051903(A076274(n+2)+2)` -/
def P18246722332448415227.Spec : Prop :=
  ∀ n, P18246722332448415227.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P5565439452356224590

`A051903(2*A008864(n+1)-1)`
-/

namespace A023591.P5565439452356224590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * A008864 (n + 1) - 1).toNat

end

end A023591.P5565439452356224590

namespace A023591

/-- `A051903(2*A008864(n+1)-1)` -/
def P5565439452356224590.Spec : Prop :=
  ∀ n, P5565439452356224590.a n = A023591 (n + 1)

theorem P5565439452356224590.correct : P5565439452356224590.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel, A023591.P5565439452356224590.a, A023591.P7298037230346281186.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023591

/-! ## A023591.P4038060101876478090

`A051903(lcm(2, A000040(n+1))+1)`
-/

namespace A023591.P4038060101876478090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lcm 2 (A000040 (n + 1)) + 1)

end

end A023591.P4038060101876478090

namespace A023591

/-- `A051903(lcm(2, A000040(n+1))+1)` -/
def P4038060101876478090.Spec : Prop :=
  ∀ n, P4038060101876478090.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P139521552479666200

`A051903(2*(A040976(n+1)+2)+1)`
-/

namespace A023591.P139521552479666200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (A040976 (n + 1) + 2) + 1).toNat

end

end A023591.P139521552479666200

namespace A023591

/-- `A051903(2*(A040976(n+1)+2)+1)` -/
def P139521552479666200.Spec : Prop :=
  ∀ n, P139521552479666200.a n = A023591 (n + 1)

theorem P139521552479666200.correct : P139521552479666200.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel, A023591.P139521552479666200.a, A023591.P7298037230346281186.a, A040976, A040976.P11599754272797435513.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023591

/-! ## A023591.P13429041613581141427

`A051903(A008864(n+1)+A000040(n+1))`
-/

namespace A023591.P13429041613581141427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A023591.P13429041613581141427

namespace A023591

/-- `A051903(A008864(n+1)+A000040(n+1))` -/
def P13429041613581141427.Spec : Prop :=
  ∀ n, P13429041613581141427.a n = A023591 (n + 1)

theorem P13429041613581141427.correct : P13429041613581141427.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel, A023591.P13429041613581141427.a, A023591.P7298037230346281186.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023591

/-! ## A023591.P3854916901344240743

`A051903(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023591.P3854916901344240743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023591.P3854916901344240743

namespace A023591

/-- `A051903(A000040(n+1)+A000040(n+1)+1)` -/
def P3854916901344240743.Spec : Prop :=
  ∀ n, P3854916901344240743.a n = A023591 (n + 1)

theorem P3854916901344240743.correct : P3854916901344240743.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel, A023591.P3854916901344240743.a, A023591.P7298037230346281186.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023591

/-! ## A023591.P9257304451348346480

`A051903(A008864(n+1)+A008864(n+1)-1)`
-/

namespace A023591.P9257304451348346480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008864 (n + 1) + (A008864 (n + 1) - 1)).toNat

end

end A023591.P9257304451348346480

namespace A023591

/-- `A051903(A008864(n+1)+A008864(n+1)-1)` -/
def P9257304451348346480.Spec : Prop :=
  ∀ n, P9257304451348346480.a n = A023591 (n + 1)

theorem P9257304451348346480.correct : P9257304451348346480.Spec := by
  intro n
  simp only [A023591, Nat.add_sub_cancel, A023591.P9257304451348346480.a, A023591.P7298037230346281186.a, A008864, A008864.P9177617808325052279.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023591

/-! ## A023591.P1283352368852454425

`A324912(2*A000040(n+1)+1)`
-/

namespace A023591.P1283352368852454425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (2 * A000040 (n + 1) + 1).toNat

end

end A023591.P1283352368852454425

namespace A023591

/-- `A324912(2*A000040(n+1)+1)` -/
def P1283352368852454425.Spec : Prop :=
  ∀ n, P1283352368852454425.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P14248829322266136177

`A329885(2*A000040(n+1)+1)`
-/

namespace A023591.P14248829322266136177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (2 * A000040 (n + 1) + 1).toNat

end

end A023591.P14248829322266136177

namespace A023591

/-- `A329885(2*A000040(n+1)+1)` -/
def P14248829322266136177.Spec : Prop :=
  ∀ n, P14248829322266136177.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P17820350107609472712

`val(A278223(A000040(n+1)+1), 2)`
-/

namespace A023591.P17820350107609472712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278223 (A000040 (n + 1) + 1).toNat).toNat 2

end

end A023591.P17820350107609472712

namespace A023591

/-- `val(A278223(A000040(n+1)+1), 2)` -/
def P17820350107609472712.Spec : Prop :=
  ∀ n, (P17820350107609472712.a n : ℤ) = A023591 (n + 1)

end A023591

/-! ## A023591.P4398505921532230370

`A324912(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023591.P4398505921532230370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023591.P4398505921532230370

namespace A023591

/-- `A324912(A000040(n+1)+A000040(n+1)+1)` -/
def P4398505921532230370.Spec : Prop :=
  ∀ n, P4398505921532230370.a n = A023591 (n + 1)

end A023591

/-! ## A023591.P483332988624848930

`A329885(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023591.P483332988624848930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023591.P483332988624848930

namespace A023591

/-- `A329885(A000040(n+1)+A000040(n+1)+1)` -/
def P483332988624848930.Spec : Prop :=
  ∀ n, P483332988624848930.a n = A023591 (n + 1)

end A023591

/-!
# A023592: Least odd prime divisor of 2*prime(n)+1.

The programs for A023592, there is no canonical definition to state claims against.
-/

/-! ## A023592.P6239347260328212523

`A020639(A072055(n+1))`
-/

namespace A023592.P6239347260328212523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072055 (n + 1)).toNat

end

end A023592.P6239347260328212523

/-! ## A023592.P18293749280329793791

`A020639(A072058(n+1))`
-/

namespace A023592.P18293749280329793791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072058 (n + 1)).toNat

end

end A023592.P18293749280329793791

/-! ## A023592.P10713417413542702309

`A020639(A100484(n+1)+1)`
-/

namespace A023592.P10713417413542702309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100484 (n + 1) + 1).toNat

end

end A023592.P10713417413542702309

/-! ## A023592.P14843009152660421020

`A020639(A001747(n+2)+1)`
-/

namespace A023592.P14843009152660421020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001747 (n + 2) + 1).toNat

end

end A023592.P14843009152660421020

/-! ## A023592.P14096205406329871591

`A020639(A089241(n+1)-1)`
-/

namespace A023592.P14096205406329871591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089241 (n + 1) - 1).toNat

end

end A023592.P14096205406329871591

/-! ## A023592.P4559043129577428560

`A020639(A076274(n+2)+2)`
-/

namespace A023592.P4559043129577428560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076274 (n + 2) + 2).toNat

end

end A023592.P4559043129577428560

/-! ## A023592.P3136448541335037157

`A020639(2*A000040(n+1)+1)`
-/

namespace A023592.P3136448541335037157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A000040 (n + 1) + 1).toNat

end

end A023592.P3136448541335037157

/-! ## A023592.P5131379910146019942

`A020639(A001749(n+1)/2+1)`
-/

namespace A023592.P5131379910146019942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A023592.P5131379910146019942

/-! ## A023592.P6111411615664209768

`A020639(2*A008864(n+1)-1)`
-/

namespace A023592.P6111411615664209768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A008864 (n + 1) - 1).toNat

end

end A023592.P6111411615664209768

/-! ## A023592.P18283399159284297729

`A020639(2*record[A006530(n+2)]+1)`
-/

namespace A023592.P18283399159284297729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023592.P18283399159284297729

/-! ## A023592.P16204222630337681940

`A020639(2*record[A020639(n+2)]+1)`
-/

namespace A023592.P16204222630337681940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023592.P16204222630337681940

/-! ## A023592.P5679439465227045832

`A020639(record[A020639(n+2)+n+3])`
-/

namespace A023592.P5679439465227045832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023592.P5679439465227045832

/-! ## A023592.P11213261268711692048

`A020639(A008864(n+1)+A000040(n+1))`
-/

namespace A023592.P11213261268711692048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A023592.P11213261268711692048

/-! ## A023592.P4118508360270001903

`A020639(A001748(n+1)-A006093(n+1))`
-/

namespace A023592.P4118508360270001903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001748 (n + 1) - A006093 (n + 1)).toNat

end

end A023592.P4118508360270001903

/-! ## A023592.P17258904689496396989

`A020639(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023592.P17258904689496396989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023592.P17258904689496396989

/-! ## A023592.P5445987184104144873

`A020639(A008864(n+1)+A014689(n+1)+1+n)`
-/

namespace A023592.P5445987184104144873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008864 (n + 1) + (A014689 (n + 1) + 1 + (n : ℤ))).toNat

end

end A023592.P5445987184104144873

/-! ## A023592.P5517017900730535974

`A020639(record[A322982(n+2)+2])`
-/

namespace A023592.P5517017900730535974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023592.P5517017900730535974

/-! ## A023592.P13032032244237460237

`A020639(A155085(A000040(n+1)))`
-/

namespace A023592.P13032032244237460237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155085 (A000040 (n + 1)).toNat).toNat

end

end A023592.P13032032244237460237

/-! ## A023592.P11599883398848878777

`A090368(A008864(n+1))`
-/

namespace A023592.P11599883398848878777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A008864 (n + 1)).toNat

end

end A023592.P11599883398848878777

/-!
# A023593: Exponent of least prime factor of 2*prime(n)+1.

The programs for A023593, the canonical program `A023593.P8957253681422468188` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023593 has offset 1).

The definition of A023593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067029, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023593.P8957253681422468188

`A067029(2*A000040(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A023593

/-- `A067029(2*A000040(n+1)+1)` -/
def P8957253681422468188.Spec : Prop :=
  ∀ n, P8957253681422468188.a n = A023593 (n + 1)

theorem P8957253681422468188.correct : P8957253681422468188.Spec := by
  intro n
  simp only [A023593, Nat.add_sub_cancel]

end A023593

/-! ## A023593.P11630211486696274598

`val(A072055(n+1), A023592(n+1))`
-/

namespace A023593.P11630211486696274598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072055 (n + 1)).toNat (A023592 (n + 1)).toNat

end

end A023593.P11630211486696274598

namespace A023593

/-- `val(A072055(n+1), A023592(n+1))` -/
def P11630211486696274598.Spec : Prop :=
  ∀ n, (P11630211486696274598.a n : ℤ) = A023593 (n + 1)

end A023593

/-! ## A023593.P3685222327837973654

`val(A072055(n+1), A020639(A072058(n+1)))`
-/

namespace A023593.P3685222327837973654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072055 (n + 1)).toNat (A020639 (A072058 (n + 1)).toNat).toNat

end

end A023593.P3685222327837973654

namespace A023593

/-- `val(A072055(n+1), A020639(A072058(n+1)))` -/
def P3685222327837973654.Spec : Prop :=
  ∀ n, (P3685222327837973654.a n : ℤ) = A023593 (n + 1)

end A023593

/-! ## A023593.P1298704616065587114

`val(A089241(n+1)-1, A020639(A089241(n+1)-1))`
-/

namespace A023593.P1298704616065587114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089241 (n + 1) - 1).toNat (A020639 (A089241 (n + 1) - 1).toNat).toNat

end

end A023593.P1298704616065587114

namespace A023593

/-- `val(A089241(n+1)-1, A020639(A089241(n+1)-1))` -/
def P1298704616065587114.Spec : Prop :=
  ∀ n, (P1298704616065587114.a n : ℤ) = A023593 (n + 1)

end A023593

/-! ## A023593.P1870798195779076635

`val(A005408(A000040(n+1)), A023592(n+1))`
-/

namespace A023593.P1870798195779076635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005408 (A000040 (n + 1)).toNat).toNat (A023592 (n + 1)).toNat

end

end A023593.P1870798195779076635

namespace A023593

/-- `val(A005408(A000040(n+1)), A023592(n+1))` -/
def P1870798195779076635.Spec : Prop :=
  ∀ n, (P1870798195779076635.a n : ℤ) = A023593 (n + 1)

end A023593

/-! ## A023593.P8732283848075249249

`A067029(A072055(n+1))`
-/

namespace A023593.P8732283848075249249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A072055 (n + 1)).toNat

end

end A023593.P8732283848075249249

namespace A023593

/-- `A067029(A072055(n+1))` -/
def P8732283848075249249.Spec : Prop :=
  ∀ n, P8732283848075249249.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P13973853708671904680

`A067029(A166496(n+1))`
-/

namespace A023593.P13973853708671904680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A166496 (n + 1)).toNat

end

end A023593.P13973853708671904680

namespace A023593

/-- `A067029(A166496(n+1))` -/
def P13973853708671904680.Spec : Prop :=
  ∀ n, P13973853708671904680.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P494758409450622003

`A067029(A005408(p?[xor(1, n)]))`
-/

namespace A023593.P494758409450622003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A023593.P494758409450622003

namespace A023593

/-- `A067029(A005408(p?[xor(1, n)]))` -/
def P494758409450622003.Spec : Prop :=
  ∀ n, P494758409450622003.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P17864057193800361636

`A067029(A100484(n+1)+1)`
-/

namespace A023593.P17864057193800361636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A100484 (n + 1) + 1).toNat

end

end A023593.P17864057193800361636

namespace A023593

/-- `A067029(A100484(n+1)+1)` -/
def P17864057193800361636.Spec : Prop :=
  ∀ n, P17864057193800361636.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P741640466586237686

`A067029(A001747(n+2)+1)`
-/

namespace A023593.P741640466586237686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A001747 (n + 2) + 1).toNat

end

end A023593.P741640466586237686

namespace A023593

/-- `A067029(A001747(n+2)+1)` -/
def P741640466586237686.Spec : Prop :=
  ∀ n, P741640466586237686.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P6397709281003169821

`A067029(A089241(n+1)-1)`
-/

namespace A023593.P6397709281003169821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A089241 (n + 1) - 1).toNat

end

end A023593.P6397709281003169821

namespace A023593

/-- `A067029(A089241(n+1)-1)` -/
def P6397709281003169821.Spec : Prop :=
  ∀ n, P6397709281003169821.a n = A023593 (n + 1)

theorem P6397709281003169821.correct : P6397709281003169821.Spec := by
  intro n
  simp only [A023593, Nat.add_sub_cancel, A023593.P6397709281003169821.a, A023593.P8957253681422468188.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067029, A067029.P17255758945913048832.a, A089241, A089241.P14705987553220613803.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A362983, A362983.P10540663005040928729.a, A329600, A329600.P5147459895201057700.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023593

/-! ## A023593.P65786725883000835

`A067029(A037168(n+1)+3)`
-/

namespace A023593.P65786725883000835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A037168 (n + 1) + 3).toNat

end

end A023593.P65786725883000835

namespace A023593

/-- `A067029(A037168(n+1)+3)` -/
def P65786725883000835.Spec : Prop :=
  ∀ n, P65786725883000835.a n = A023593 (n + 1)

theorem P65786725883000835.correct : P65786725883000835.Spec := by
  intro n
  simp only [A023593, Nat.add_sub_cancel, A023593.P65786725883000835.a, A023593.P8957253681422468188.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, A067029, A067029.P17255758945913048832.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A362983, A362983.P10540663005040928729.a, A329600, A329600.P5147459895201057700.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023593

/-! ## A023593.P1325900903976177792

`A067029(A076274(n+2)+2)`
-/

namespace A023593.P1325900903976177792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A076274 (n + 2) + 2).toNat

end

end A023593.P1325900903976177792

namespace A023593

/-- `A067029(A076274(n+2)+2)` -/
def P1325900903976177792.Spec : Prop :=
  ∀ n, P1325900903976177792.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P8712386490393149101

`A067029(2*p?[A014681(n)]+1)`
-/

namespace A023593.P8712386490393149101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A023593.P8712386490393149101

namespace A023593

/-- `A067029(2*p?[A014681(n)]+1)` -/
def P8712386490393149101.Spec : Prop :=
  ∀ n, P8712386490393149101.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P125706651302537999

`A067029(2*A008864(n+1)-1)`
-/

namespace A023593.P125706651302537999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A008864 (n + 1) - 1).toNat

end

end A023593.P125706651302537999

namespace A023593

/-- `A067029(2*A008864(n+1)-1)` -/
def P125706651302537999.Spec : Prop :=
  ∀ n, P125706651302537999.a n = A023593 (n + 1)

theorem P125706651302537999.correct : P125706651302537999.Spec := by
  intro n
  simp only [A023593, Nat.add_sub_cancel, A023593.P125706651302537999.a, A023593.P8957253681422468188.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A067029, A067029.P17255758945913048832.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A362983, A362983.P10540663005040928729.a, A329600, A329600.P5147459895201057700.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023593

/-! ## A023593.P485891371147240109

`A067029(A005408(Δ[A007504(n)]))`
-/

namespace A023593.P485891371147240109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A005408 (f1 (n + 1) - f1 n).toNat).toNat

end

end A023593.P485891371147240109

namespace A023593

/-- `A067029(A005408(Δ[A007504(n)]))` -/
def P485891371147240109.Spec : Prop :=
  ∀ n, P485891371147240109.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P16470298849299527527

`A067029(A005408(p?[A004442(n)]))`
-/

namespace A023593.P16470298849299527527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A023593.P16470298849299527527

namespace A023593

/-- `A067029(A005408(p?[A004442(n)]))` -/
def P16470298849299527527.Spec : Prop :=
  ∀ n, P16470298849299527527.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P6992710334588178021

`A067029(A005408(p?[A006369(n)]))`
-/

namespace A023593.P6992710334588178021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A023593.P6992710334588178021

namespace A023593

/-- `A067029(A005408(p?[A006369(n)]))` -/
def P6992710334588178021.Spec : Prop :=
  ∀ n, P6992710334588178021.a n = A023593 (n + 1)

end A023593

/-! ## A023593.P17282167836167225521

`A067029(A008864(n+1)+A000040(n+1))`
-/

namespace A023593.P17282167836167225521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A023593.P17282167836167225521

namespace A023593

/-- `A067029(A008864(n+1)+A000040(n+1))` -/
def P17282167836167225521.Spec : Prop :=
  ∀ n, P17282167836167225521.a n = A023593 (n + 1)

theorem P17282167836167225521.correct : P17282167836167225521.Spec := by
  intro n
  simp only [A023593, Nat.add_sub_cancel, A023593.P17282167836167225521.a, A023593.P8957253681422468188.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A067029, A067029.P17255758945913048832.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A362983, A362983.P10540663005040928729.a, A329600, A329600.P5147459895201057700.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023593

/-! ## A023593.P17788788146438198168

`A067029(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023593.P17788788146438198168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023593.P17788788146438198168

namespace A023593

/-- `A067029(A000040(n+1)+A000040(n+1)+1)` -/
def P17788788146438198168.Spec : Prop :=
  ∀ n, P17788788146438198168.a n = A023593 (n + 1)

theorem P17788788146438198168.correct : P17788788146438198168.Spec := by
  intro n
  simp only [A023593, Nat.add_sub_cancel, A023593.P17788788146438198168.a, A023593.P8957253681422468188.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A023593

/-!
# A023594: a(n) = sum of distinct prime divisors of 2*prime(n)+1.

The programs for A023594, the canonical program `A023594.P13690517662854304508` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023594 has offset 1).

The definition of A023594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023594.P7109010805709942005

`∑{p}[A072055(n+1), #]`
-/

namespace A023594.P7109010805709942005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P7109010805709942005

namespace A023594

/-- `∑{p}[A072055(n+1), #]` -/
def P7109010805709942005.Spec : Prop :=
  ∀ n, (P7109010805709942005.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P4831837282409002975

`∑{p}[A072058(n+1), #]`
-/

namespace A023594.P4831837282409002975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072058 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P4831837282409002975

namespace A023594

/-- `∑{p}[A072058(n+1), #]` -/
def P4831837282409002975.Spec : Prop :=
  ∀ n, (P4831837282409002975.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P6167225527166465196

`∑{p}[A166496(n+1), #]`
-/

namespace A023594.P6167225527166465196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P6167225527166465196

namespace A023594

/-- `∑{p}[A166496(n+1), #]` -/
def P6167225527166465196.Spec : Prop :=
  ∀ n, (P6167225527166465196.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P1470728123184920805

`∑{p}[A100484(n+1)+1, #]`
-/

namespace A023594.P1470728123184920805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P1470728123184920805

namespace A023594

/-- `∑{p}[A100484(n+1)+1, #]` -/
def P1470728123184920805.Spec : Prop :=
  ∀ n, (P1470728123184920805.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P13690517662854304508

`∑{p}[2*A000040(n+1)+1, #]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023594

/-- `∑{p}[2*A000040(n+1)+1, #]` -/
def P13690517662854304508.Spec : Prop :=
  ∀ n, (P13690517662854304508.a n : ℤ) = A023594 (n + 1)

theorem P13690517662854304508.correct : P13690517662854304508.Spec := by
  intro n
  simp only [A023594, Nat.add_sub_cancel]

end A023594

/-! ## A023594.P5248431703837850572

`∑{p}[record[2*A000010(n+1)+3], #]`
-/

namespace A023594.P5248431703837850572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P5248431703837850572

namespace A023594

/-- `∑{p}[record[2*A000010(n+1)+3], #]` -/
def P5248431703837850572.Spec : Prop :=
  ∀ n, (P5248431703837850572.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P596827078482858581

`∑{p}[2*A151800(A006093(n+1))+1, #]`
-/

namespace A023594.P596827078482858581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 (A006093 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P596827078482858581

namespace A023594

/-- `∑{p}[2*A151800(A006093(n+1))+1, #]` -/
def P596827078482858581.Spec : Prop :=
  ∀ n, (P596827078482858581.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P17167160408177157654

`A001414(A072058(n+1))`
-/

namespace A023594.P17167160408177157654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A072058 (n + 1)).toNat

end

end A023594.P17167160408177157654

namespace A023594

/-- `A001414(A072058(n+1))` -/
def P17167160408177157654.Spec : Prop :=
  ∀ n, P17167160408177157654.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P18192755229006393154

`A008472(A166496(n+1))`
-/

namespace A023594.P18192755229006393154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A166496 (n + 1)).toNat

end

end A023594.P18192755229006393154

namespace A023594

/-- `A008472(A166496(n+1))` -/
def P18192755229006393154.Spec : Prop :=
  ∀ n, P18192755229006393154.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P13313457401827177471

`A008472(A100484(n+1)+1)`
-/

namespace A023594.P13313457401827177471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A100484 (n + 1) + 1).toNat

end

end A023594.P13313457401827177471

namespace A023594

/-- `A008472(A100484(n+1)+1)` -/
def P13313457401827177471.Spec : Prop :=
  ∀ n, P13313457401827177471.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P15143906393196876511

`A008472(A001747(n+2)+1)`
-/

namespace A023594.P15143906393196876511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001747 (n + 2) + 1).toNat

end

end A023594.P15143906393196876511

namespace A023594

/-- `A008472(A001747(n+2)+1)` -/
def P15143906393196876511.Spec : Prop :=
  ∀ n, P15143906393196876511.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P9463171997436055274

`A008472(2*A000040(n+1)+1)`
-/

namespace A023594.P9463171997436055274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A000040 (n + 1) + 1).toNat

end

end A023594.P9463171997436055274

namespace A023594

/-- `A008472(2*A000040(n+1)+1)` -/
def P9463171997436055274.Spec : Prop :=
  ∀ n, P9463171997436055274.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P9895355797025264568

`A008472(2*A008864(n+1)-1)`
-/

namespace A023594.P9895355797025264568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A008864 (n + 1) - 1).toNat

end

end A023594.P9895355797025264568

namespace A023594

/-- `A008472(2*A008864(n+1)-1)` -/
def P9895355797025264568.Spec : Prop :=
  ∀ n, P9895355797025264568.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P17086294265766697663

`A008472(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A023594.P17086294265766697663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A023594.P17086294265766697663

namespace A023594

/-- `A008472(A000040(n+1)+A000040(n+1)+1)` -/
def P17086294265766697663.Spec : Prop :=
  ∀ n, P17086294265766697663.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P17975330848276419373

`A008472(A008864(n+1)+A008864(n+1)-1)`
-/

namespace A023594.P17975330848276419373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008864 (n + 1) + (A008864 (n + 1) - 1)).toNat

end

end A023594.P17975330848276419373

namespace A023594

/-- `A008472(A008864(n+1)+A008864(n+1)-1)` -/
def P17975330848276419373.Spec : Prop :=
  ∀ n, P17975330848276419373.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P3898561683652211813

`A008472(A144043(2*n+1)+1)`
-/

namespace A023594.P3898561683652211813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A144043 (2 * n + 1) + 1).toNat

end

end A023594.P3898561683652211813

namespace A023594

/-- `A008472(A144043(2*n+1)+1)` -/
def P3898561683652211813.Spec : Prop :=
  ∀ n, P3898561683652211813.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P18280440208517064317

`A008472(A318676(A100484(n+1)))`
-/

namespace A023594.P18280440208517064317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A318676 (A100484 (n + 1)).toNat).toNat

end

end A023594.P18280440208517064317

namespace A023594

/-- `A008472(A318676(A100484(n+1)))` -/
def P18280440208517064317.Spec : Prop :=
  ∀ n, P18280440208517064317.a n = A023594 (n + 1)

end A023594

/-! ## A023594.P10984153644796463373

`∑{p}[A018252(A000040(n+1)-n)+A000040(n+1), #]`
-/

namespace A023594.P10984153644796463373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1) - (n : ℤ)).toNat + A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P10984153644796463373

namespace A023594

/-- `∑{p}[A018252(A000040(n+1)-n)+A000040(n+1), #]` -/
def P10984153644796463373.Spec : Prop :=
  ∀ n, (P10984153644796463373.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P6736695760677894432

`∑{p}[record[2*A014963(n+2)]+1, #]`
-/

namespace A023594.P6736695760677894432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P6736695760677894432

namespace A023594

/-- `∑{p}[record[2*A014963(n+2)]+1, #]` -/
def P6736695760677894432.Spec : Prop :=
  ∀ n, (P6736695760677894432.a n : ℤ) = A023594 (n + 1)

end A023594

/-! ## A023594.P11514913908885044156

`A100029(A008864(n+1))`
-/

namespace A023594.P11514913908885044156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100029 (A008864 (n + 1)).toNat

end

end A023594.P11514913908885044156

namespace A023594

/-- `A100029(A008864(n+1))` -/
def P11514913908885044156.Spec : Prop :=
  ∀ n, P11514913908885044156.a n = A023594 (n + 1)

end A023594

/-!
# A023595: a(n) = sum of exponents in prime-power factorization of 2*prime(n)+1.

The programs for A023595, the canonical program `A023595.P11716259585214489517` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023595 has offset 1).

The definition of A023595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023595.P17318735649550848459

`∑{e}[A072055(n+1), #]`
-/

namespace A023595.P17318735649550848459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023595.P17318735649550848459

namespace A023595

/-- `∑{e}[A072055(n+1), #]` -/
def P17318735649550848459.Spec : Prop :=
  ∀ n, (P17318735649550848459.a n : ℤ) = A023595 (n + 1)

theorem P17318735649550848459.correct : P17318735649550848459.Spec := by
  intro n
  simp only [A023595, Nat.add_sub_cancel, A023595.P17318735649550848459.f1, A023595.P17318735649550848459.a, A023595.P11716259585214489517.f1, A023595.P11716259585214489517.a, A006093, A006093.P2906174024863549003.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023595

/-! ## A023595.P16373317877732270098

`∑{e}[A278230(n+1), #]`
-/

namespace A023595.P16373317877732270098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023595.P16373317877732270098

namespace A023595

/-- `∑{e}[A278230(n+1), #]` -/
def P16373317877732270098.Spec : Prop :=
  ∀ n, (P16373317877732270098.a n : ℤ) = A023595 (n + 1)

end A023595

/-! ## A023595.P13935758517859269892

`∑{e}[A100484(n+1)+1, #]`
-/

namespace A023595.P13935758517859269892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023595.P13935758517859269892

namespace A023595

/-- `∑{e}[A100484(n+1)+1, #]` -/
def P13935758517859269892.Spec : Prop :=
  ∀ n, (P13935758517859269892.a n : ℤ) = A023595 (n + 1)

theorem P13935758517859269892.correct : P13935758517859269892.Spec := by
  intro n
  simp only [A023595, Nat.add_sub_cancel, A023595.P13935758517859269892.f1, A023595.P13935758517859269892.a, A023595.P11716259585214489517.f1, A023595.P11716259585214489517.a, A006093, A006093.P2906174024863549003.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023595

/-! ## A023595.P3005977885987097320

`∑{e}[1-A089241(n+1), #]`
-/

namespace A023595.P3005977885987097320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023595.P3005977885987097320

namespace A023595

/-- `∑{e}[1-A089241(n+1), #]` -/
def P3005977885987097320.Spec : Prop :=
  ∀ n, (P3005977885987097320.a n : ℤ) = A023595 (n + 1)

end A023595

/-! ## A023595.P858886768774078810

`∑{e}[2*sqrt(A001248(n+1))+1, #]`
-/

namespace A023595.P858886768774078810
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A001248 (n + 1) : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A023595.P858886768774078810

namespace A023595

/-- `∑{e}[2*sqrt(A001248(n+1))+1, #]` -/
def P858886768774078810.Spec : Prop :=
  ∀ n, (P858886768774078810.a n : ℤ) = A023595 (n + 1)

end A023595

/-! ## A023595.P11716259585214489517

`∑{e}[2*(A006093(n+1)+1)+1, #]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023595

/-- `∑{e}[2*(A006093(n+1)+1)+1, #]` -/
def P11716259585214489517.Spec : Prop :=
  ∀ n, (P11716259585214489517.a n : ℤ) = A023595 (n + 1)

theorem P11716259585214489517.correct : P11716259585214489517.Spec := by
  intro n
  simp only [A023595, Nat.add_sub_cancel]

end A023595

/-! ## A023595.P15467696323767209228

`A001222(A278230(n+1))`
-/

namespace A023595.P15467696323767209228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278230 (n + 1)).toNat

end

end A023595.P15467696323767209228

namespace A023595

/-- `A001222(A278230(n+1))` -/
def P15467696323767209228.Spec : Prop :=
  ∀ n, P15467696323767209228.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P12231525969706024008

`A001222(2*p?[xor(1, n)]+1)`
-/

namespace A023595.P12231525969706024008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A023595.P12231525969706024008

namespace A023595

/-- `A001222(2*p?[xor(1, n)]+1)` -/
def P12231525969706024008.Spec : Prop :=
  ∀ n, P12231525969706024008.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P7326220590073673269

`A001222(or(1, 2*p?[xor(1, n)]))`
-/

namespace A023595.P7326220590073673269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A023595.P7326220590073673269

namespace A023595

/-- `A001222(or(1, 2*p?[xor(1, n)]))` -/
def P7326220590073673269.Spec : Prop :=
  ∀ n, P7326220590073673269.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P11920754016969239282

`A001222(xor(1, 2*p?[xor(1, n)]))`
-/

namespace A023595.P11920754016969239282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor 1 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A023595.P11920754016969239282

namespace A023595

/-- `A001222(xor(1, 2*p?[xor(1, n)]))` -/
def P11920754016969239282.Spec : Prop :=
  ∀ n, P11920754016969239282.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P12575028106917296871

`A001222(A072055(n+1))`
-/

namespace A023595.P12575028106917296871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072055 (n + 1)).toNat

end

end A023595.P12575028106917296871

namespace A023595

/-- `A001222(A072055(n+1))` -/
def P12575028106917296871.Spec : Prop :=
  ∀ n, P12575028106917296871.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P11377934943328038362

`A001222(A100484(n+1)+1)`
-/

namespace A023595.P11377934943328038362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100484 (n + 1) + 1).toNat

end

end A023595.P11377934943328038362

namespace A023595

/-- `A001222(A100484(n+1)+1)` -/
def P11377934943328038362.Spec : Prop :=
  ∀ n, P11377934943328038362.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P11286646690484472035

`A001222(A001747(n+2)+1)`
-/

namespace A023595.P11286646690484472035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 2) + 1).toNat

end

end A023595.P11286646690484472035

namespace A023595

/-- `A001222(A001747(n+2)+1)` -/
def P11286646690484472035.Spec : Prop :=
  ∀ n, P11286646690484472035.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P12781828801575780611

`A001222(A089241(n+1)-1)`
-/

namespace A023595.P12781828801575780611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089241 (n + 1) - 1).toNat

end

end A023595.P12781828801575780611

namespace A023595

/-- `A001222(A089241(n+1)-1)` -/
def P12781828801575780611.Spec : Prop :=
  ∀ n, P12781828801575780611.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P1901361918111041512

`A001222(A076274(n+2)+2)`
-/

namespace A023595.P1901361918111041512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076274 (n + 2) + 2).toNat

end

end A023595.P1901361918111041512

namespace A023595

/-- `A001222(A076274(n+2)+2)` -/
def P1901361918111041512.Spec : Prop :=
  ∀ n, P1901361918111041512.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P7612919997626987935

`A001222(2*A000040(n+1)+1)`
-/

namespace A023595.P7612919997626987935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A000040 (n + 1) + 1).toNat

end

end A023595.P7612919997626987935

namespace A023595

/-- `A001222(2*A000040(n+1)+1)` -/
def P7612919997626987935.Spec : Prop :=
  ∀ n, P7612919997626987935.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P18305504639201869835

`A001222(2*A006005(n+1)+1)`
-/

namespace A023595.P18305504639201869835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006005 (n + 1) + 1).toNat

end

end A023595.P18305504639201869835

namespace A023595

/-- `A001222(2*A006005(n+1)+1)` -/
def P18305504639201869835.Spec : Prop :=
  ∀ n, P18305504639201869835.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P5854629696443070188

`A001222(A001749(n+1)/2+1)`
-/

namespace A023595.P5854629696443070188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A023595.P5854629696443070188

namespace A023595

/-- `A001222(A001749(n+1)/2+1)` -/
def P5854629696443070188.Spec : Prop :=
  ∀ n, P5854629696443070188.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P68816939254796348

`A001222(2*A008864(n+1)-1)`
-/

namespace A023595.P68816939254796348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A008864 (n + 1) - 1).toNat

end

end A023595.P68816939254796348

namespace A023595

/-- `A001222(2*A008864(n+1)-1)` -/
def P68816939254796348.Spec : Prop :=
  ∀ n, P68816939254796348.a n = A023595 (n + 1)

end A023595

/-! ## A023595.P18170634697606582365

`A001222(lcm(2, A000040(n+1))+1)`
-/

namespace A023595.P18170634697606582365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A000040 (n + 1)) + 1)

end

end A023595.P18170634697606582365

namespace A023595

/-- `A001222(lcm(2, A000040(n+1))+1)` -/
def P18170634697606582365.Spec : Prop :=
  ∀ n, P18170634697606582365.a n = A023595 (n + 1)

end A023595

/-!
# A023596: Convolution of A023532 and Fibonacci numbers.

The programs for A023596, there is no canonical definition to state claims against.
-/

/-! ## A023596.P4107196856112080180

`A001911(n)+1-A023557(n+1)`
-/

namespace A023596.P4107196856112080180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (1 - A023557 (n + 1))

end

end A023596.P4107196856112080180

/-! ## A023596.P4293577686495383916

`A000071(n+3)-A023557(n+1)`
-/

namespace A023596.P4293577686495383916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A023557 (n + 1)

end

end A023596.P4293577686495383916

/-! ## A023596.P13242196999714173794

`∑[∑[A212804(n)]]-A023557(n+1)`
-/

namespace A023596.P13242196999714173794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023557 (n + 1)

end

end A023596.P13242196999714173794

/-! ## A023596.P157337718280844175

`∑[A000045(n+1)]-A023557(n+1)`
-/

namespace A023596.P157337718280844175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023557 (n + 1)

end

end A023596.P157337718280844175

/-! ## A023596.P7943936340322293469

`A023600(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023596.P7943936340322293469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023600 (n + 1) - a (n - 1)

end

end A023596.P7943936340322293469

/-! ## A023596.P7325732917237576707

`Δ[A001924(n)]-A023557(n+1)`
-/

namespace A023596.P7325732917237576707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023557 (n + 1)

end

end A023596.P7325732917237576707

/-! ## A023596.P8549746959902714417

`A023597(n+2)-A023600(n+2)`
-/

namespace A023596.P8549746959902714417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023597 (n + 2) - A023600 (n + 2)

end

end A023596.P8549746959902714417

/-! ## A023596.P7125244440845426384

`∑[A055830(∑[n])]-A023557(n+1)`
-/

namespace A023596.P7125244440845426384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023557 (n + 1)

end

end A023596.P7125244440845426384

/-!
# A023597: Convolution of A023532 and Lucas numbers.

The programs for A023597, there is no canonical definition to state claims against.
-/

/-! ## A023597.P1602168658532688730

`A023600(n+1)+A023600(n+1)-A023596(n+1)`
-/

namespace A023597.P1602168658532688730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023600 (n + 1) + (A023600 (n + 1) - A023596 (n + 1))

end

end A023597.P1602168658532688730

/-! ## A023597.P15744557084335601571

`A027961(n+1)-A023558(n+1)`
-/

namespace A023597.P15744557084335601571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - A023558 (n + 1)

end

end A023597.P15744557084335601571

/-! ## A023597.P18126200855926738563

`∑[A000032(n+1)]-A023558(n+1)`
-/

namespace A023597.P18126200855926738563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023558 (n + 1)

end

end A023597.P18126200855926738563

/-! ## A023597.P13704950201995709396

`∑[A000204(n+1)]-A023558(n+1)`
-/

namespace A023597.P13704950201995709396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023558 (n + 1)

end

end A023597.P13704950201995709396

/-! ## A023597.P1848036235202025759

`∑[A001610(n)+1]-A023558(n+1)`
-/

namespace A023597.P1848036235202025759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023558 (n + 1)

end

end A023597.P1848036235202025759

/-! ## A023597.P10746476975697763943

`2*A023600(n+1)-A023596(n+1)`
-/

namespace A023597.P10746476975697763943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023600 (n + 1) - A023596 (n + 1)

end

end A023597.P10746476975697763943

/-!
# A023598: Convolution of A023532 and (1, p(1), p(2), ...).

The programs for A023598, there is no canonical definition to state claims against.
-/

/-! ## A023598.P13669439276117065411

`A007504(n)+1-A023559(n+1)`
-/

namespace A023598.P13669439276117065411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + (1 - A023559 (n + 1))

end

end A023598.P13669439276117065411

/-! ## A023598.P12927246523646438190

`A014284(n+1)-A023559(n+1)`
-/

namespace A023598.P12927246523646438190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - A023559 (n + 1)

end

end A023598.P12927246523646438190

/-! ## A023598.P14813318808170862703

`∑[A008578(n+1)]-A023559(n+1)`
-/

namespace A023598.P14813318808170862703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023559 (n + 1)

end

end A023598.P14813318808170862703

/-! ## A023598.P10816600411715561084

`∑[record[A020639(n+1)]]-A023559(n+1)`
-/

namespace A023598.P10816600411715561084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023559 (n + 1)

end

end A023598.P10816600411715561084

/-! ## A023598.P7436397263503115129

`∑[record[A014963(n+1)]]-A023559(n+1)`
-/

namespace A023598.P7436397263503115129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023559 (n + 1)

end

end A023598.P7436397263503115129

/-! ## A023598.P10425773901430142199

`A024000(A023559(n+1))+A007504(n)`
-/

namespace A023598.P10425773901430142199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A023559 (n + 1)).toNat + A007504 n

end

end A023598.P10425773901430142199

/-!
# A023599: Convolution of A023532 and composite numbers.

The programs for A023599, there is no canonical definition to state claims against.
-/

/-! ## A023599.P10743143258676808549

`A053767(n+1)-A023560(n+1)`
-/

namespace A023599.P10743143258676808549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1) - A023560 (n + 1)

end

end A023599.P10743143258676808549

/-! ## A023599.P14800359863684120769

`∑[A002808(n+1)]-A023560(n+1)`
-/

namespace A023599.P14800359863684120769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023560 (n + 1)

end

end A023599.P14800359863684120769

/-! ## A023599.P13497167867921897928

`∑[A018252(n+2)]-A023560(n+1)`
-/

namespace A023599.P13497167867921897928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023560 (n + 1)

end

end A023599.P13497167867921897928

/-! ## A023599.P5017521632230672094

`A006075(2*n+5)-A179752(A330477(n+1))`
-/

namespace A023599.P5017521632230672094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006075 (2 * n + 5) - A179752 (A330477 (n + 1)).toNat

end

end A023599.P5017521632230672094


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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099601: Quotient of de Bruijn sums S(4,n)/S(2,n).

The programs for A099601, there is no canonical definition to state claims against.
-/

/-! ## A099601.P15105147820505552354

`A050983(n)/C(2*n, n)`
-/

namespace A099601.P15105147820505552354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050983 n : ℚ) / (Nat.choose (2 * n) n : ℚ)

end

end A099601.P15105147820505552354

/-! ## A099601.P8767758636125767629

`A050983(n)/A000984(n)`
-/

namespace A099601.P8767758636125767629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050983 n : ℚ) / (A000984 n : ℚ)

end

end A099601.P8767758636125767629

/-! ## A099601.P11473416312068263448

`A050983(n)/sqrt(A002894(n))`
-/

namespace A099601.P11473416312068263448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050983 n : ℝ) / Real.sqrt (A002894 n : ℝ)

end

end A099601.P11473416312068263448

/-! ## A099601.P16680037843437832271

`A050983(n)/A001405(2*n)`
-/

namespace A099601.P16680037843437832271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050983 n : ℚ) / (A001405 (2 * n) : ℚ)

end

end A099601.P16680037843437832271

/-! ## A099601.P242359831587011152

`A005809(n)/A006480(n)*A050983(n)`
-/

namespace A099601.P242359831587011152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A006480 n : ℚ) * (A050983 n : ℚ)

end

end A099601.P242359831587011152

/-!
# A099602: Triangle, read by rows, such that row n equals the inverse binomial transform of column n of the triangle of trinomial coefficients (A027907), omitting leading zeros.

The programs for A099602, there is no canonical definition to state claims against.
-/

/-! ## A099602.P9431568933883293330

`A083928(A329154(n))+A026637(n)`
-/

namespace A099602.P9431568933883293330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A329154 n).toNat + A026637 n

end

end A099602.P9431568933883293330

/-! ## A099602.P9086411565792305217

`A124762(A339809(n))+A026637(n)`
-/

namespace A099602.P9086411565792305217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A339809 n).toNat + A026637 n

end

end A099602.P9086411565792305217

/-! ## A099602.P5745721015767085260

`A289165(A056331(n+1))+A026386(n)`
-/

namespace A099602.P5745721015767085260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A056331 (n + 1)).toNat + A026386 n

end

end A099602.P5745721015767085260

/-! ## A099602.P11213537903785966458

`A289165(A056331(n+1))+A026637(n)`
-/

namespace A099602.P11213537903785966458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A056331 (n + 1)).toNat + A026637 n

end

end A099602.P11213537903785966458

/-!
# A099603: Row sums of triangle A099602, in which row n equals the inverse binomial transform of column n of the triangle of trinomial coefficients (A027907).

The programs for A099603, the canonical program `A099603.P14264822919074225184` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099603 has offset 0).

The definition of A099603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099603.P14264822919074225184

`6*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099603

/-- `6*a(n-2)-4*a(n-4)` -/
def P14264822919074225184.Spec : Prop :=
  ∀ n, P14264822919074225184.a n = A099603 n

theorem P14264822919074225184.correct : P14264822919074225184.Spec := by
  intro n
  simp only [A099603]

end A099603

/-! ## A099603.P11552977919054178823

`ogf((1+2x-2x^2)/(1-6x^2+4x^4))`
-/

namespace A099603.P11552977919054178823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, 0, -6, 0, 4] n

end

end A099603.P11552977919054178823

namespace A099603

/-- `ogf((1+2x-2x^2)/(1-6x^2+4x^4))` -/
def P11552977919054178823.Spec : Prop :=
  ∀ n, P11552977919054178823.a n = A099603 n

end A099603

/-! ## A099603.P13326945127161705492

`2^ceil(n/2)*A000045(n+1)`
-/

namespace A099603.P13326945127161705492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A000045 (n + 1) : ℚ)

end

end A099603.P13326945127161705492

namespace A099603

/-- `2^ceil(n/2)*A000045(n+1)` -/
def P13326945127161705492.Spec : Prop :=
  ∀ n, P13326945127161705492.a n = (A099603 n : ℚ)

end A099603

/-! ## A099603.P15469038169078372809

`Δ[A000045(n+2)]*∏[gcd(2, n+1)]`
-/

namespace A099603.P15469038169078372809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A099603.P15469038169078372809

namespace A099603

/-- `Δ[A000045(n+2)]*∏[gcd(2, n+1)]` -/
def P15469038169078372809.Spec : Prop :=
  ∀ n, P15469038169078372809.a n = A099603 n

end A099603

/-! ## A099603.P7371784000755835546

`A000045(n+1)*A060546(n)`
-/

namespace A099603.P7371784000755835546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A060546 n

end

end A099603.P7371784000755835546

namespace A099603

/-- `A000045(n+1)*A060546(n)` -/
def P7371784000755835546.Spec : Prop :=
  ∀ n, P7371784000755835546.a n = A099603 n

end A099603

/-! ## A099603.P9214754375014441029

`A000045(n+1)*∑[A131575(n)]`
-/

namespace A099603.P9214754375014441029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099603.P9214754375014441029

namespace A099603

/-- `A000045(n+1)*∑[A131575(n)]` -/
def P9214754375014441029.Spec : Prop :=
  ∀ n, P9214754375014441029.a n = A099603 n

end A099603

/-! ## A099603.P5550450791865475072

`∑[A212804(n)]*A016116(n+1)`
-/

namespace A099603.P5550450791865475072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (n + 1)

end

end A099603.P5550450791865475072

namespace A099603

/-- `∑[A212804(n)]*A016116(n+1)` -/
def P5550450791865475072.Spec : Prop :=
  ∀ n, P5550450791865475072.a n = A099603 n

end A099603

/-! ## A099603.P17178208962490089896

`A000045(n+1)*Δ[A027383(n)]`
-/

namespace A099603.P17178208962490089896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A099603.P17178208962490089896

namespace A099603

/-- `A000045(n+1)*Δ[A027383(n)]` -/
def P17178208962490089896.Spec : Prop :=
  ∀ n, P17178208962490089896.a n = A099603 n

end A099603

/-! ## A099603.P13768108237449888845

`A000045(n+1)*∏[A000034(n)]`
-/

namespace A099603.P13768108237449888845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A099603.P13768108237449888845

namespace A099603

/-- `A000045(n+1)*∏[A000034(n)]` -/
def P13768108237449888845.Spec : Prop :=
  ∀ n, P13768108237449888845.a n = A099603 n

end A099603

/-! ## A099603.P15602147919757168405

`A000045(n+1)*A016116(n+1)`
-/

namespace A099603.P15602147919757168405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A016116 (n + 1)

end

end A099603.P15602147919757168405

namespace A099603

/-- `A000045(n+1)*A016116(n+1)` -/
def P15602147919757168405.Spec : Prop :=
  ∀ n, P15602147919757168405.a n = A099603 n

end A099603

/-! ## A099603.P3343664519936825835

`A000045(n+1)*A131572(n+1)`
-/

namespace A099603.P3343664519936825835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A131572 (n + 1)

end

end A099603.P3343664519936825835

namespace A099603

/-- `A000045(n+1)*A131572(n+1)` -/
def P3343664519936825835.Spec : Prop :=
  ∀ n, P3343664519936825835.a n = A099603 n

end A099603

/-! ## A099603.P16628066645031738535

`A131572(n+1)*A324969(n+2)`
-/

namespace A099603.P16628066645031738535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 1) * A324969 (n + 2)

end

end A099603.P16628066645031738535

namespace A099603

/-- `A131572(n+1)*A324969(n+2)` -/
def P16628066645031738535.Spec : Prop :=
  ∀ n, P16628066645031738535.a n = A099603 n

end A099603

/-! ## A099603.P8402313059839405348

`A000045(n+1)*Δ[A052955(n+1)]`
-/

namespace A099603.P8402313059839405348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A099603.P8402313059839405348

namespace A099603

/-- `A000045(n+1)*Δ[A052955(n+1)]` -/
def P8402313059839405348.Spec : Prop :=
  ∀ n, P8402313059839405348.a n = A099603 n

end A099603

/-! ## A099603.P14439187477800064599

`A000045(n+1)*Δ[A163978(n+1)]`
-/

namespace A099603.P14439187477800064599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A099603.P14439187477800064599

namespace A099603

/-- `A000045(n+1)*Δ[A163978(n+1)]` -/
def P14439187477800064599.Spec : Prop :=
  ∀ n, P14439187477800064599.a n = A099603 n

end A099603

/-! ## A099603.P5990666594318310376

`Δ[A000071(n+2)]*A016116(n+1)`
-/

namespace A099603.P5990666594318310376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016116 (n + 1)

end

end A099603.P5990666594318310376

namespace A099603

/-- `Δ[A000071(n+2)]*A016116(n+1)` -/
def P5990666594318310376.Spec : Prop :=
  ∀ n, P5990666594318310376.a n = A099603 n

end A099603

/-! ## A099603.P1543017305995485435

`A000045(n+1)*Δ[A164090(n+2)]`
-/

namespace A099603.P1543017305995485435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A099603.P1543017305995485435

namespace A099603

/-- `A000045(n+1)*Δ[A164090(n+2)]` -/
def P1543017305995485435.Spec : Prop :=
  ∀ n, P1543017305995485435.a n = A099603 n

end A099603

/-! ## A099603.P14999246478856072579

`A000045(n+1)*∏[A176895(2*n)]`
-/

namespace A099603.P14999246478856072579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A099603.P14999246478856072579

namespace A099603

/-- `A000045(n+1)*∏[A176895(2*n)]` -/
def P14999246478856072579.Spec : Prop :=
  ∀ n, P14999246478856072579.a n = A099603 n

end A099603

/-! ## A099603.P14315571959160124211

`A016116(n+1)*A123231(2*n+1)`
-/

namespace A099603.P14315571959160124211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A123231 (2 * n + 1)

end

end A099603.P14315571959160124211

namespace A099603

/-- `A016116(n+1)*A123231(2*n+1)` -/
def P14315571959160124211.Spec : Prop :=
  ∀ n, P14315571959160124211.a n = A099603 n

end A099603

/-! ## A099603.P3870380611033195667

`(A028892(n+1)+A016116(n+1))*A016116(n+1)`
-/

namespace A099603.P3870380611033195667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028892 (n + 1) + A016116 (n + 1)) * A016116 (n + 1)

end

end A099603.P3870380611033195667

namespace A099603

/-- `(A028892(n+1)+A016116(n+1))*A016116(n+1)` -/
def P3870380611033195667.Spec : Prop :=
  ∀ n, P3870380611033195667.a n = A099603 n

end A099603

/-! ## A099603.P12635678281144549705

`A063727(n)/A016116(n)`
-/

namespace A099603.P12635678281144549705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063727 n : ℚ) / (A016116 n : ℚ)

end

end A099603.P12635678281144549705

namespace A099603

/-- `A063727(n)/A016116(n)` -/
def P12635678281144549705.Spec : Prop :=
  ∀ n, P12635678281144549705.a n = (A099603 n : ℚ)

end A099603

/-!
# A099604: Antidiagonal sums of triangle A099602, in which row n equals the inverse binomial transform of column n of the triangle of trinomial coefficients (A027907).

The programs for A099604, the canonical program `A099604.P16120372327320463944` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099604 has offset 0).

The definition of A099604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099604.P16120372327320463944

`2*a(n-2)+3*a(n-3)-2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099604

/-- `2*a(n-2)+3*a(n-3)-2*a(n-5)-a(n-6)` -/
def P16120372327320463944.Spec : Prop :=
  ∀ n, P16120372327320463944.a n = A099604 n

theorem P16120372327320463944.correct : P16120372327320463944.Spec := by
  intro n
  simp only [A099604]

end A099604

/-! ## A099604.P14380274216220578631

`A055086(Δ[Δ[A134955(n)]])`
-/

namespace A099604.P14380274216220578631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (n + 1) - f1 n).toNat

end

end A099604.P14380274216220578631

namespace A099604

/-- `A055086(Δ[Δ[A134955(n)]])` -/
def P14380274216220578631.Spec : Prop :=
  ∀ n, P14380274216220578631.a n = A099604 n

end A099604

/-! ## A099604.P16413829651861172216

`ceil(A001462(Δ[A335456(n)])/2)`
-/

namespace A099604.P16413829651861172216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001462 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌉

end

end A099604.P16413829651861172216

namespace A099604

/-- `ceil(A001462(Δ[A335456(n)])/2)` -/
def P16413829651861172216.Spec : Prop :=
  ∀ n, P16413829651861172216.a n = A099604 n

end A099604

/-! ## A099604.P15218175876574184922

`A003056(A233266(n)+A005187(n))`
-/

namespace A099604.P15218175876574184922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A233266 n + A005187 n).toNat

end

end A099604.P15218175876574184922

namespace A099604

/-- `A003056(A233266(n)+A005187(n))` -/
def P15218175876574184922.Spec : Prop :=
  ∀ n, P15218175876574184922.a n = A099604 n

end A099604

/-! ## A099604.P58990695780031516

`A003056(A233266(n)+A018059(n))`
-/

namespace A099604.P58990695780031516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A233266 n + A018059 n).toNat

end

end A099604.P58990695780031516

namespace A099604

/-- `A003056(A233266(n)+A018059(n))` -/
def P58990695780031516.Spec : Prop :=
  ∀ n, P58990695780031516.a n = A099604 n

end A099604

/-!
# A099606: Row sums of triangle A099605, in which row n equals the inverse Binomial transform of column n of the triangle A034870 of even-indexed rows of Pascal's triangle.

The programs for A099606, the canonical program `A099606.P8305878860107700786` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099606 has offset 0).

The definition of A099606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099606.P8305878860107700786

`12*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=48`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099606

/-- `12*a(n-2)-4*a(n-4)` -/
def P8305878860107700786.Spec : Prop :=
  ∀ n, P8305878860107700786.a n = A099606 n

theorem P8305878860107700786.correct : P8305878860107700786.Spec := by
  intro n
  simp only [A099606]

end A099606

/-! ## A099606.P15515840756310076008

`2^ceil(n/2)*∑[A001333(n)]`
-/

namespace A099606.P15515840756310076008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A099606.P15515840756310076008

namespace A099606

/-- `2^ceil(n/2)*∑[A001333(n)]` -/
def P15515840756310076008.Spec : Prop :=
  ∀ n, P15515840756310076008.a n = (A099606 n : ℚ)

end A099606

/-! ## A099606.P7364139085952821106

`2^ceil(n/2)*A000129(n+1)`
-/

namespace A099606.P7364139085952821106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A000129 (n + 1) : ℚ)

end

end A099606.P7364139085952821106

namespace A099606

/-- `2^ceil(n/2)*A000129(n+1)` -/
def P7364139085952821106.Spec : Prop :=
  ∀ n, P7364139085952821106.a n = (A099606 n : ℚ)

end A099606

/-! ## A099606.P4385939673010905635

`A121720(A042963(n+2))`
-/

namespace A099606.P4385939673010905635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (A042963 (n + 2)).toNat

end

end A099606.P4385939673010905635

namespace A099606

/-- `A121720(A042963(n+2))` -/
def P4385939673010905635.Spec : Prop :=
  ∀ n, P4385939673010905635.a n = A099606 n

end A099606

/-! ## A099606.P16493687653280721546

`A041011(n)*A143095(n)`
-/

namespace A099606.P16493687653280721546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n * A143095 n

end

end A099606.P16493687653280721546

namespace A099606

/-- `A041011(n)*A143095(n)` -/
def P16493687653280721546.Spec : Prop :=
  ∀ n, P16493687653280721546.a n = A099606 n

end A099606

/-! ## A099606.P9608213010583722364

`A077985(n)*A152166(n)`
-/

namespace A099606.P9608213010583722364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n * A152166 n

end

end A099606.P9608213010583722364

namespace A099606

/-- `A077985(n)*A152166(n)` -/
def P9608213010583722364.Spec : Prop :=
  ∀ n, P9608213010583722364.a n = A099606 n

end A099606

/-! ## A099606.P7410635538761631716

`A000129(n+1)*A060546(n)`
-/

namespace A099606.P7410635538761631716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A060546 n

end

end A099606.P7410635538761631716

namespace A099606

/-- `A000129(n+1)*A060546(n)` -/
def P7410635538761631716.Spec : Prop :=
  ∀ n, P7410635538761631716.a n = A099606 n

end A099606

/-! ## A099606.P9538255253784171380

`∑[A001333(n)]*∑[A131575(n)]`
-/

namespace A099606.P9538255253784171380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A099606.P9538255253784171380

namespace A099606

/-- `∑[A001333(n)]*∑[A131575(n)]` -/
def P9538255253784171380.Spec : Prop :=
  ∀ n, P9538255253784171380.a n = A099606 n

end A099606

/-! ## A099606.P14438327540658073710

`∑[A001333(n)]*A016116(n+1)`
-/

namespace A099606.P14438327540658073710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (n + 1)

end

end A099606.P14438327540658073710

namespace A099606

/-- `∑[A001333(n)]*A016116(n+1)` -/
def P14438327540658073710.Spec : Prop :=
  ∀ n, P14438327540658073710.a n = A099606 n

end A099606

/-! ## A099606.P5488440806555512825

`A000129(n+1)*A016116(n+1)`
-/

namespace A099606.P5488440806555512825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A016116 (n + 1)

end

end A099606.P5488440806555512825

namespace A099606

/-- `A000129(n+1)*A016116(n+1)` -/
def P5488440806555512825.Spec : Prop :=
  ∀ n, P5488440806555512825.a n = A099606 n

end A099606

/-! ## A099606.P556185782284037444

`A000129(n+1)*A131572(n+1)`
-/

namespace A099606.P556185782284037444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A131572 (n + 1)

end

end A099606.P556185782284037444

namespace A099606

/-- `A000129(n+1)*A131572(n+1)` -/
def P556185782284037444.Spec : Prop :=
  ∀ n, P556185782284037444.a n = A099606 n

end A099606

/-! ## A099606.P2272537677759567453

`A016116(n+1)*A215928(n+1)`
-/

namespace A099606.P2272537677759567453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A215928 (n + 1)

end

end A099606.P2272537677759567453

namespace A099606

/-- `A016116(n+1)*A215928(n+1)` -/
def P2272537677759567453.Spec : Prop :=
  ∀ n, P2272537677759567453.a n = A099606 n

end A099606

/-! ## A099606.P4202703263920374696

`A121720(A000034(n)+2*n+1)`
-/

namespace A099606.P4202703263920374696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (A000034 n + (2 * n + 1 : ℤ)).toNat

end

end A099606.P4202703263920374696

namespace A099606

/-- `A121720(A000034(n)+2*n+1)` -/
def P4202703263920374696.Spec : Prop :=
  ∀ n, P4202703263920374696.a n = A099606 n

end A099606

/-! ## A099606.P12894674310575896484

`A007068(2*(n+1)-A040001(n))`
-/

namespace A099606.P12894674310575896484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 ((2 * (n + 1) : ℤ) - A040001 n).toNat

end

end A099606.P12894674310575896484

namespace A099606

/-- `A007068(2*(n+1)-A040001(n))` -/
def P12894674310575896484.Spec : Prop :=
  ∀ n, P12894674310575896484.a n = A099606 n

end A099606

/-! ## A099606.P8372968427216311281

`A121720(A040001(n+1)+2*n+1)`
-/

namespace A099606.P8372968427216311281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (A040001 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A099606.P8372968427216311281

namespace A099606

/-- `A121720(A040001(n+1)+2*n+1)` -/
def P8372968427216311281.Spec : Prop :=
  ∀ n, P8372968427216311281.a n = A099606 n

end A099606

/-! ## A099606.P9545169132447750945

`A016116(n+1)/2*A052542(n+1)`
-/

namespace A099606.P9545169132447750945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) / 2 * (A052542 (n + 1) : ℚ)

end

end A099606.P9545169132447750945

namespace A099606

/-- `A016116(n+1)/2*A052542(n+1)` -/
def P9545169132447750945.Spec : Prop :=
  ∀ n, P9545169132447750945.a n = (A099606 n : ℚ)

end A099606

/-! ## A099606.P16178063717633388040

`(A024537(n+1)-A024537(n))*A060546(n)`
-/

namespace A099606.P16178063717633388040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 (n + 1) - A024537 n) * A060546 n

end

end A099606.P16178063717633388040

namespace A099606

/-- `(A024537(n+1)-A024537(n))*A060546(n)` -/
def P16178063717633388040.Spec : Prop :=
  ∀ n, P16178063717633388040.a n = A099606 n

end A099606

/-! ## A099606.P15092684940443048213

`(A077957(n)-A077957(n+1))*A077985(n)`
-/

namespace A099606.P15092684940443048213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077957 n - A077957 (n + 1)) * A077985 n

end

end A099606.P15092684940443048213

namespace A099606

/-- `(A077957(n)-A077957(n+1))*A077985(n)` -/
def P15092684940443048213.Spec : Prop :=
  ∀ n, P15092684940443048213.a n = A099606 n

end A099606

/-! ## A099606.P15033724537653854102

`A000129(n+1)/A000079(n)*A094015(n)`
-/

namespace A099606.P15033724537653854102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A000079 n : ℚ) * (A094015 n : ℚ)

end

end A099606.P15033724537653854102

namespace A099606

/-- `A000129(n+1)/A000079(n)*A094015(n)` -/
def P15033724537653854102.Spec : Prop :=
  ∀ n, P15033724537653854102.a n = (A099606 n : ℚ)

end A099606

/-! ## A099606.P14318727624175158085

`A000129(n+1)/A000045(n+1)*A099603(n)`
-/

namespace A099606.P14318727624175158085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A099603 n : ℚ)

end

end A099606.P14318727624175158085

namespace A099606

/-- `A000129(n+1)/A000045(n+1)*A099603(n)` -/
def P14318727624175158085.Spec : Prop :=
  ∀ n, P14318727624175158085.a n = (A099606 n : ℚ)

end A099606

/-!
# A099608: Table of crystal ball sequences for A_n lattices read by antidiagonals.

The programs for A099608, there is no canonical definition to state claims against.
-/

/-! ## A099608.P1125130738538226072

`A108625(∑[2*n]%comp[∑[n]])`
-/

namespace A099608.P1125130738538226072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A099608.P1125130738538226072

/-! ## A099608.P12095706660012808505

`A108625(∑[char[∑[n]]]²-(n+1))`
-/

namespace A099608.P12095706660012808505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A099608.P12095706660012808505

/-! ## A099608.P3641349772602959132

`or(1, A108625(A061579(n)))`
-/

namespace A099608.P3641349772602959132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108625 (A061579 n).toNat)

end

end A099608.P3641349772602959132

/-! ## A099608.P15929387831873345279

`or(1, A108625(A038722(n+2)))`
-/

namespace A099608.P15929387831873345279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108625 (A038722 (n + 2)).toNat)

end

end A099608.P15929387831873345279

/-! ## A099608.P2801943731077084445

`A108625(A061579(n))^A035214(n)`
-/

namespace A099608.P2801943731077084445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108625 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A099608.P2801943731077084445

/-! ## A099608.P10707142707776643732

`A108625(A061579(n))^A178334(n)`
-/

namespace A099608.P10707142707776643732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108625 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A099608.P10707142707776643732

/-! ## A099608.P3744189810234060385

`A108625(A061579(n))%A000230(n)`
-/

namespace A099608.P3744189810234060385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108625 (A061579 n).toNat) (A000230 n)

end

end A099608.P3744189810234060385

/-! ## A099608.P13302104596301751182

`gcd(A000038(n), A108625(A061579(n)))`
-/

namespace A099608.P13302104596301751182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108625 (A061579 n).toNat)

end

end A099608.P13302104596301751182

/-! ## A099608.P16269059713120136164

`A108625(A061579(n))+A008683(4*(n+1))`
-/

namespace A099608.P16269059713120136164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A099608.P16269059713120136164

/-!
# A099609: Naive list of twin primes (A077800 prefixed by 2, 3).

The programs for A099609, the canonical program `A099609.P11416934499486676669` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099609 has offset 1).

The definition of A099609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099609.P11416934499486676669

`A171821(A008621(record[A195019(n+1)]))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A099609

/-- `A171821(A008621(record[A195019(n+1)]))` -/
def P11416934499486676669.Spec : Prop :=
  ∀ n, P11416934499486676669.a n = A099609 (n + 1)

theorem P11416934499486676669.correct : P11416934499486676669.Spec := by
  intro n
  simp only [A099609, Nat.add_sub_cancel]

end A099609

/-! ## A099609.P13478169922844978379

`p?[A007917(n+2)*A200996(A113646(n+1))]`
-/

namespace A099609.P13478169922844978379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A200996 (A113646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099609.P13478169922844978379

namespace A099609

/-- `p?[A007917(n+2)*A200996(A113646(n+1))]` -/
def P13478169922844978379.Spec : Prop :=
  ∀ n, P13478169922844978379.a n = A099609 (n + 1)

end A099609

/-! ## A099609.P17645410544824720895

`A295609(eq[2, A166597(n)])`
-/

namespace A099609.P17645410544824720895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099609.P17645410544824720895

namespace A099609

/-- `A295609(eq[2, A166597(n)])` -/
def P17645410544824720895.Spec : Prop :=
  ∀ n, P17645410544824720895.a n = A099609 (n + 1)

end A099609

/-! ## A099609.P12407009924357290077

`p?[(A166597(n)-1)*A295609(n)]`
-/

namespace A099609.P12407009924357290077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166597 n - 1) * A295609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099609.P12407009924357290077

namespace A099609

/-- `p?[(A166597(n)-1)*A295609(n)]` -/
def P12407009924357290077.Spec : Prop :=
  ∀ n, P12407009924357290077.a n = A099609 (n + 1)

end A099609

/-! ## A099609.P9078822256390278577

`p?[A010051(A166597(n))*A295609(n)]`
-/

namespace A099609.P9078822256390278577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A166597 n).toNat * A295609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099609.P9078822256390278577

namespace A099609

/-- `p?[A010051(A166597(n))*A295609(n)]` -/
def P9078822256390278577.Spec : Prop :=
  ∀ n, P9078822256390278577.a n = A099609 (n + 1)

end A099609

/-! ## A099609.P6804067671198653620

`A107685(A114112(n+1))`
-/

namespace A099609.P6804067671198653620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (A114112 (n + 1)).toNat

end

end A099609.P6804067671198653620

namespace A099609

/-- `A107685(A114112(n+1))` -/
def P6804067671198653620.Spec : Prop :=
  ∀ n, P6804067671198653620.a n = A099609 (n + 1)

end A099609

/-! ## A099609.P4352422625345599711

`A107685(A223134(n)-A014681(n))`
-/

namespace A099609.P4352422625345599711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (A223134 n - A014681 n).toNat

end

end A099609.P4352422625345599711

namespace A099609

/-- `A107685(A223134(n)-A014681(n))` -/
def P4352422625345599711.Spec : Prop :=
  ∀ n, P4352422625345599711.a n = A099609 (n + 1)

end A099609

/-!
# A099610: a(n) is the smallest odd number that is greater than n^2 and is the product of two distinct primes.

The programs for A099610, there is no canonical definition to state claims against.
-/

/-! ## A099610.P17381061920524685773

`A349806(n+1)+(n+1)²`
-/

namespace A099610.P17381061920524685773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349806 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A099610.P17381061920524685773

/-! ## A099610.P1402713200025430569

`2*n+1+A349806(n+1)+A000290(n)`
-/

namespace A099610.P1402713200025430569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A349806 (n + 1) + A000290 n)

end

end A099610.P1402713200025430569

/-! ## A099610.P8527112606962798558

`A028310(A349806(n+1))+∑[A005408(n)]`
-/

namespace A099610.P8527112606962798558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A349806 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099610.P8527112606962798558

/-! ## A099610.P8272256383952303500

`A028310(A349806(n+1))+A000290(n+1)`
-/

namespace A099610.P8272256383952303500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A349806 (n + 1)).toNat + A000290 (n + 1)

end

end A099610.P8272256383952303500

/-! ## A099610.P10870852125808001424

`A000290(n)+A349806(n+1)+Δ[A000290(n)]`
-/

namespace A099610.P10870852125808001424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A349806 (n + 1) + (f1 (n + 1) - f1 n))

end

end A099610.P10870852125808001424

/-! ## A099610.P9094241694453400923

`A141310(A349806(n+1)+A005563(n))`
-/

namespace A099610.P9094241694453400923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A349806 (n + 1) + A005563 n).toNat

end

end A099610.P9094241694453400923

/-! ## A099610.P2887183854821437687

`A004442(A349806(n+1)+A005563(n))`
-/

namespace A099610.P2887183854821437687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A349806 (n + 1) + A005563 n).toNat

end

end A099610.P2887183854821437687

/-! ## A099610.P15792424628341211207

`A046388(A205728(n+1)+1)`
-/

namespace A099610.P15792424628341211207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (A205728 (n + 1) + 1).toNat

end

end A099610.P15792424628341211207

/-!
# A099611: a(n) is the largest odd number that is less than n^2 and is the product of two distinct primes.

The programs for A099611, there is no canonical definition to state claims against.
-/

/-! ## A099611.P16635027749207250712

`(n+4)²-A349809(n+4)`
-/

namespace A099611.P16635027749207250712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A349809 (n + 4)

end

end A099611.P16635027749207250712

/-! ## A099611.P145635853931853868

`A046388(A205728(n+4))`
-/

namespace A099611.P145635853931853868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (A205728 (n + 4)).toNat

end

end A099611.P145635853931853868

/-! ## A099611.P17289671845797776239

`A046388(∑[A178133(n+3)])`
-/

namespace A099611.P17289671845797776239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099611.P17289671845797776239

/-! ## A099611.P8438278306612744111

`A093178(A000290(n+4)-A349809(n+4))`
-/

namespace A099611.P8438278306612744111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A000290 (n + 4) - A349809 (n + 4)).toNat

end

end A099611.P8438278306612744111

/-!
# A099612: Numerators of the coefficients in the Taylor expansion of sec(x) + tan(x) around x=0.

The programs for A099612, there is no canonical definition to state claims against.
-/

/-! ## A099612.P13394773560076728931

`A048896(A057979(n))*A050970(n+1)`
-/

namespace A099612.P13394773560076728931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A057979 n).toNat * A050970 (n + 1)

end

end A099612.P13394773560076728931

/-! ## A099612.P5348186937555594272

`A048896(A093178(n))*A050970(n+1)`
-/

namespace A099612.P5348186937555594272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A093178 n).toNat * A050970 (n + 1)

end

end A099612.P5348186937555594272

/-! ## A099612.P10566731949818730737

`A000111(n)/gcd(A000111(n), A000142(n))`
-/

namespace A099612.P10566731949818730737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 n : ℚ) / (Int.gcd (A000111 n) (A000142 n) : ℚ)

end

end A099612.P10566731949818730737

/-! ## A099612.P8674670327071764035

`A000831(n)/gcd(A000165(n), A000831(n))`
-/

namespace A099612.P8674670327071764035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 n : ℚ) / (Int.gcd (A000165 n) (A000831 n) : ℚ)

end

end A099612.P8674670327071764035

/-! ## A099612.P4880199762096382702

`lcm(A000111(n), A279107(n))/A279107(n)`
-/

namespace A099612.P4880199762096382702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000111 n) (A279107 n) : ℚ) / (A279107 n : ℚ)

end

end A099612.P4880199762096382702

/-!
# A099613: Numerator of (1+1/n)^k - (1+k/n), 2<=k<=n, triangle read by rows.

The programs for A099613, there is no canonical definition to state claims against.
-/

/-! ## A099613.P2899637910794974703

`A115844(A184300(n+1))`
-/

namespace A099613.P2899637910794974703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115844 (A184300 (n + 1)).toNat

end

end A099613.P2899637910794974703

/-! ## A099613.P2555587365218242930

`A335162(n*A202796(n+1))`
-/

namespace A099613.P2555587365218242930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 ((n : ℤ) * A202796 (n + 1)).toNat

end

end A099613.P2555587365218242930

/-!
# A099615: Triangle read by rows, 2<=k<=n: T(n,k) = denominator of (1+1/n)^k-(1+k/n) and of (1-1/n)^k-(1-k/n).

The programs for A099615, the canonical program `A099615.P5109352358618095330` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099615 has offset 1).

The definition of A099615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099615.P6728252632217458815

`(row(n)+2)^(col(n)+2)`
-/

namespace A099615.P6728252632217458815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 2) ^ (SequenceMachineLib.triCol n + 2)

end

end A099615.P6728252632217458815

namespace A099615

/-- `(row(n)+2)^(col(n)+2)` -/
def P6728252632217458815.Spec : Prop :=
  ∀ n, (P6728252632217458815.a n : ℤ) = A099615 (n + 1)

end A099615

/-! ## A099615.P5109352358618095330

`A075363(comp[∑[n]]+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099615

/-- `A075363(comp[∑[n]]+1)` -/
def P5109352358618095330.Spec : Prop :=
  ∀ n, P5109352358618095330.a n = A099615 (n + 1)

theorem P5109352358618095330.correct : P5109352358618095330.Spec := by
  intro n
  simp only [A099615, Nat.add_sub_cancel]

end A099615

/-! ## A099615.P16819355917592391866

`(comp[∑[n]]-n)^(A002262(n)+2)`
-/

namespace A099615.P16819355917592391866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ (A002262 n + 2 : ℤ)

end

end A099615.P16819355917592391866

namespace A099615

/-- `(comp[∑[n]]-n)^(A002262(n)+2)` -/
def P16819355917592391866.Spec : Prop :=
  ∀ n, P16819355917592391866.a n = (A099615 (n + 1) : ℚ)

end A099615

/-! ## A099615.P4679497380274254916

`(comp[∑[n]]-n)^A131818(n+2)`
-/

namespace A099615.P4679497380274254916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ (A131818 (n + 2) : ℤ)

end

end A099615.P4679497380274254916

namespace A099615

/-- `(comp[∑[n]]-n)^A131818(n+2)` -/
def P4679497380274254916.Spec : Prop :=
  ∀ n, P4679497380274254916.a n = (A099615 (n + 1) : ℚ)

end A099615

/-! ## A099615.P11441636875469226298

`(comp[∑[n]]-n)^(sqrt(A143844(n))+2)`
-/

namespace A099615.P11441636875469226298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℝ) ^ (Real.sqrt (A143844 n : ℝ) + 2)

end

end A099615.P11441636875469226298

namespace A099615

/-- `(comp[∑[n]]-n)^(sqrt(A143844(n))+2)` -/
def P11441636875469226298.Spec : Prop :=
  ∀ n, P11441636875469226298.a n = (A099615 (n + 1) : ℝ)

end A099615

/-! ## A099615.P12912583741601925857

`A003057(n+2)^(A002260(n+1)+1)`
-/

namespace A099615.P12912583741601925857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) ^ (A002260 (n + 1) + 1 : ℤ)

end

end A099615.P12912583741601925857

namespace A099615

/-- `A003057(n+2)^(A002260(n+1)+1)` -/
def P12912583741601925857.Spec : Prop :=
  ∀ n, P12912583741601925857.a n = (A099615 (n + 1) : ℚ)

end A099615

/-! ## A099615.P15703876128006418449

`A079901(lt[A003961(n+1), A162975(n)])`
-/

namespace A099615.P15703876128006418449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099615.P15703876128006418449

namespace A099615

/-- `A079901(lt[A003961(n+1), A162975(n)])` -/
def P15703876128006418449.Spec : Prop :=
  ∀ n, P15703876128006418449.a n = A099615 (n + 1)

end A099615

/-! ## A099615.P11764046127672447927

`A079901(lt[A285735(n+1), A079901(n)])`
-/

namespace A099615.P11764046127672447927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099615.P11764046127672447927

namespace A099615

/-- `A079901(lt[A285735(n+1), A079901(n)])` -/
def P11764046127672447927.Spec : Prop :=
  ∀ n, P11764046127672447927.a n = A099615 (n + 1)

end A099615

/-!
# A099616: Sum of the first n decimal places of Catalan's constant 0.9159655941772... (sequence A006752).

The programs for A099616, there is no canonical definition to state claims against.
-/

/-! ## A099616.P2430710430186576628

`∑[A006752(A023443(n+1))]`
-/

namespace A099616.P2430710430186576628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006752 (A023443 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099616.P2430710430186576628

/-! ## A099616.P12630338756600448847

`∑[A006752(n)]%A299285(n+1)`
-/

namespace A099616.P12630338756600448847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A299285 (n + 1))

end

end A099616.P12630338756600448847

/-! ## A099616.P725857207921486909

`A035457(2*n+1)+∑[A006752(n)]`
-/

namespace A099616.P725857207921486909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099616.P725857207921486909

/-! ## A099616.P8902769891755985519

`A000027(∑[A006752(n)])%A015237(2*n+3)`
-/

namespace A099616.P8902769891755985519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A015237 (2 * n + 3))

end

end A099616.P8902769891755985519

/-! ## A099616.P15561322657799705640

`A028310(∑[A006752(n)])`
-/

namespace A099616.P15561322657799705640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099616.P15561322657799705640

/-! ## A099616.P7576687004230361726

`∑[A001221(A054807(n+1))*A006752(n)]`
-/

namespace A099616.P7576687004230361726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054807 (n + 1)).toNat * A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099616.P7576687004230361726

/-! ## A099616.P6832980477405401714

`∑[A001221(A005383(n+1))*A006752(n)]`
-/

namespace A099616.P6832980477405401714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005383 (n + 1)).toNat * A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099616.P6832980477405401714

/-! ## A099616.P1281544008154181686

`∑[A021913(A000290(n))+A006752(n)]`
-/

namespace A099616.P1281544008154181686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A000290 n).toNat + A006752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099616.P1281544008154181686

/-!
# A099617: Denominators of the coefficients in the Taylor expansion of sec(x) + tan(x) around x=0.

The programs for A099617, there is no canonical definition to state claims against.
-/

/-! ## A099617.P14427180369889917334

`A028310(n)*A279107(abs(1-n))`
-/

namespace A099617.P14427180369889917334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A279107 |1 - (n : ℤ)|.toNat

end

end A099617.P14427180369889917334

/-! ## A099617.P12872410367713324006

`A004731(A141310(n))*A046983(n)`
-/

namespace A099617.P12872410367713324006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A141310 n).toNat * A046983 n

end

end A099617.P12872410367713324006

/-! ## A099617.P14464635200625198315

`A000142(n)/A000111(n)*A099612(n)`
-/

namespace A099617.P14464635200625198315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000111 n : ℚ) * (A099612 n : ℚ)

end

end A099617.P14464635200625198315

/-! ## A099617.P9390993278841632957

`A004730(n/A093178(n))*A046983(n)`
-/

namespace A099617.P9390993278841632957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat * A046983 n

end

end A099617.P9390993278841632957

/-! ## A099617.P18402629011623186710

`A000142(n)/gcd(A000142(n), A346838(n))`
-/

namespace A099617.P18402629011623186710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A346838 n) : ℚ)

end

end A099617.P18402629011623186710

/-! ## A099617.P13157594216179717009

`A007318(A000124(n))*A279107(abs(1-n))`
-/

namespace A099617.P13157594216179717009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A279107 |1 - (n : ℤ)|.toNat

end

end A099617.P13157594216179717009

/-! ## A099617.P12401848330273998059

`A000165(n)/A000831(n)*A099612(n)`
-/

namespace A099617.P12401848330273998059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A000831 n : ℚ) * (A099612 n : ℚ)

end

end A099617.P12401848330273998059

/-!
# A099618: a(n) = 1 if the n-th prime == 1 mod 6, otherwise a(n) = 0.

The programs for A099618, the canonical program `A099618.P4648932279016631555` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099618 has offset 1).

The definition of A099618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099618.P4648932279016631555

`C(3, dr(3*p?[round(8*n/7)]))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099618

/-- `C(3, dr(3*p?[round(8*n/7)]))` -/
def P4648932279016631555.Spec : Prop :=
  ∀ n, (P4648932279016631555.a n : ℤ) = A099618 (n + 1)

theorem P4648932279016631555.correct : P4648932279016631555.Spec := by
  intro n
  simp only [A099618, Nat.add_sub_cancel]

end A099618

/-! ## A099618.P9841610751036209936

`((4*p?[round(8*n/7)])%3)%2`
-/

namespace A099618.P9841610751036209936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 3) 2

end

end A099618.P9841610751036209936

namespace A099618

/-- `((4*p?[round(8*n/7)])%3)%2` -/
def P9841610751036209936.Spec : Prop :=
  ∀ n, P9841610751036209936.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P2303898037311663234

`char[A138968(n+1)]`
-/

namespace A099618.P2303898037311663234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A099618.P2303898037311663234

namespace A099618

/-- `char[A138968(n+1)]` -/
def P2303898037311663234.Spec : Prop :=
  ∀ n, (P2303898037311663234.a n : ℤ) = A099618 (n + 1)

end A099618

/-! ## A099618.P1060566036598473972

`1-A132194(n+1)`
-/

namespace A099618.P1060566036598473972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132194 (n + 1)

end

end A099618.P1060566036598473972

namespace A099618

/-- `1-A132194(n+1)` -/
def P1060566036598473972.Spec : Prop :=
  ∀ n, P1060566036598473972.a n = A099618 (n + 1)

theorem P1060566036598473972.correct : P1060566036598473972.Spec := by
  intro n
  simp only [A099618, Nat.add_sub_cancel, A099618.P1060566036598473972.a, A099618.P4648932279016631555.f1, A099618.P4648932279016631555.a, A132194, A132194.P14895513087867125861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099618

/-! ## A099618.P8791187151301825656

`A001363(n+1)%2`
-/

namespace A099618.P8791187151301825656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001363 (n + 1)) 2

end

end A099618.P8791187151301825656

namespace A099618

/-- `A001363(n+1)%2` -/
def P8791187151301825656.Spec : Prop :=
  ∀ n, P8791187151301825656.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P9480576748834040346

`A039701(n+1)%2`
-/

namespace A099618.P9480576748834040346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039701 (n + 1)) 2

end

end A099618.P9480576748834040346

namespace A099618

/-- `A039701(n+1)%2` -/
def P9480576748834040346.Spec : Prop :=
  ∀ n, P9480576748834040346.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P16194319379394615279

`A034953(n+1)%3`
-/

namespace A099618.P16194319379394615279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034953 (n + 1)) 3

end

end A099618.P16194319379394615279

namespace A099618

/-- `A034953(n+1)%3` -/
def P16194319379394615279.Spec : Prop :=
  ∀ n, P16194319379394615279.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P13445813732449861534

`A083558(n+1)%3`
-/

namespace A099618.P13445813732449861534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083558 (n + 1)) 3

end

end A099618.P13445813732449861534

namespace A099618

/-- `A083558(n+1)%3` -/
def P13445813732449861534.Spec : Prop :=
  ∀ n, P13445813732449861534.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P15453830859455834428

`A098935(n+1)%3`
-/

namespace A099618.P15453830859455834428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098935 (n + 1)) 3

end

end A099618.P15453830859455834428

namespace A099618

/-- `A098935(n+1)%3` -/
def P15453830859455834428.Spec : Prop :=
  ∀ n, P15453830859455834428.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P4017007744215442707

`A098998(n+1)%3`
-/

namespace A099618.P4017007744215442707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098998 (n + 1)) 3

end

end A099618.P4017007744215442707

namespace A099618

/-- `A098998(n+1)%3` -/
def P4017007744215442707.Spec : Prop :=
  ∀ n, P4017007744215442707.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P10838664653543450452

`A117961(n+1)%3`
-/

namespace A099618.P10838664653543450452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117961 (n + 1)) 3

end

end A099618.P10838664653543450452

namespace A099618

/-- `A117961(n+1)%3` -/
def P10838664653543450452.Spec : Prop :=
  ∀ n, P10838664653543450452.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P16008464590980987938

`A133062(n+1)%3`
-/

namespace A099618.P16008464590980987938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133062 (n + 1)) 3

end

end A099618.P16008464590980987938

namespace A099618

/-- `A133062(n+1)%3` -/
def P16008464590980987938.Spec : Prop :=
  ∀ n, P16008464590980987938.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P15483742569678038741

`A133064(n+1)%3`
-/

namespace A099618.P15483742569678038741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133064 (n + 1)) 3

end

end A099618.P15483742569678038741

namespace A099618

/-- `A133064(n+1)%3` -/
def P15483742569678038741.Spec : Prop :=
  ∀ n, P15483742569678038741.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P6292913496505683774

`A135181(n+1)%3`
-/

namespace A099618.P6292913496505683774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135181 (n + 1)) 3

end

end A099618.P6292913496505683774

namespace A099618

/-- `A135181(n+1)%3` -/
def P6292913496505683774.Spec : Prop :=
  ∀ n, P6292913496505683774.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P12162216080044261122

`A178398(n+1)%3`
-/

namespace A099618.P12162216080044261122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178398 (n + 1)) 3

end

end A099618.P12162216080044261122

namespace A099618

/-- `A178398(n+1)%3` -/
def P12162216080044261122.Spec : Prop :=
  ∀ n, P12162216080044261122.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P749706368232764462

`A367573(n+1)%3`
-/

namespace A099618.P749706368232764462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367573 (n + 1)) 3

end

end A099618.P749706368232764462

namespace A099618

/-- `A367573(n+1)%3` -/
def P749706368232764462.Spec : Prop :=
  ∀ n, P749706368232764462.a n = A099618 (n + 1)

end A099618

/-! ## A099618.P7830570297217465083

`val(A023505(n+1), 3)`
-/

namespace A099618.P7830570297217465083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023505 (n + 1)).toNat 3

end

end A099618.P7830570297217465083

namespace A099618

/-- `val(A023505(n+1), 3)` -/
def P7830570297217465083.Spec : Prop :=
  ∀ n, (P7830570297217465083.a n : ℤ) = A099618 (n + 1)

end A099618

/-! ## A099618.P3500188095784115996

`val(A023592(n+1), 3)`
-/

namespace A099618.P3500188095784115996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023592 (n + 1)).toNat 3

end

end A099618.P3500188095784115996

namespace A099618

/-- `val(A023592(n+1), 3)` -/
def P3500188095784115996.Spec : Prop :=
  ∀ n, (P3500188095784115996.a n : ℤ) = A099618 (n + 1)

end A099618

/-! ## A099618.P4986199226770550829

`val(A060800(n+1), 3)`
-/

namespace A099618.P4986199226770550829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060800 (n + 1)).toNat 3

end

end A099618.P4986199226770550829

namespace A099618

/-- `val(A060800(n+1), 3)` -/
def P4986199226770550829.Spec : Prop :=
  ∀ n, (P4986199226770550829.a n : ℤ) = A099618 (n + 1)

end A099618

/-! ## A099618.P6904903888922979313

`val(A072058(n+1), 3)`
-/

namespace A099618.P6904903888922979313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072058 (n + 1)).toNat 3

end

end A099618.P6904903888922979313

namespace A099618

/-- `val(A072058(n+1), 3)` -/
def P6904903888922979313.Spec : Prop :=
  ∀ n, (P6904903888922979313.a n : ℤ) = A099618 (n + 1)

end A099618

/-!
# A099619: Occurrence of the n-th prime in A098962.

The programs for A099619, there is no canonical definition to state claims against.
-/

/-! ## A099619.P10443966301997608248

`eq[1, A001222(A098962(n+1))]+1`
-/

namespace A099619.P10443966301997608248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098962 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099619.P10443966301997608248

/-! ## A099619.P4371483946355846917

`lt[A001222(A098962(n+2)), 2]+2`
-/

namespace A099619.P4371483946355846917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098962 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A099619.P4371483946355846917

/-! ## A099619.P16895289015488975380

`∑[gcd(A032935(2*(n+1)), A270250(2*(n+1)))]`
-/

namespace A099619.P16895289015488975380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032935 (2 * (n + 1))) (A270250 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099619.P16895289015488975380

/-! ## A099619.P9326453477031124274

`∑[A323827(A327979(5*(∑[40*n]+1)+4))]`
-/

namespace A099619.P9326453477031124274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323827 (A327979 (5 * (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099619.P9326453477031124274

/-! ## A099619.P2004223076677176747

`A285524(A189474(n+2))`
-/

namespace A099619.P2004223076677176747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A189474 (n + 2)).toNat

end

end A099619.P2004223076677176747

/-!
# A099620: Greatest multiple of the n-th prime in A098962.

The programs for A099620, there is no canonical definition to state claims against.
-/

/-! ## A099620.P12103607921235664938

`p?[A187829(n+1)]*A075227(n+1)`
-/

namespace A099620.P12103607921235664938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A075227 (n + 1)

end

end A099620.P12103607921235664938

/-!
# A099621: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k+1) * 3^(n-k-1)*(4/3)^k.

The programs for A099621, the canonical program `A099621.P16145661402150636597` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099621 has offset 0).

The definition of A099621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099621.P16145661402150636597

`6*a(n-1)-5*a(n-2)-12*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099621

/-- `6*a(n-1)-5*a(n-2)-12*a(n-3)` -/
def P16145661402150636597.Spec : Prop :=
  ∀ n, P16145661402150636597.a n = A099621 n

theorem P16145661402150636597.correct : P16145661402150636597.Spec := by
  intro n
  simp only [A099621]

end A099621

/-! ## A099621.P5789532599687733431

`(4^(n+2)-5*3^(n+1)-(-1)^n)/20`
-/

namespace A099621.P5789532599687733431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 2) : ℤ) - (5 * 3 ^ (n + 1) : ℤ) - (-1) ^ n : ℚ) / 20

end

end A099621.P5789532599687733431

namespace A099621

/-- `(4^(n+2)-5*3^(n+1)-(-1)^n)/20` -/
def P5789532599687733431.Spec : Prop :=
  ∀ n, P5789532599687733431.a n = (A099621 n : ℚ)

theorem P5789532599687733431.correct : P5789532599687733431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099621, Nat.add_sub_cancel, A099621.P5789532599687733431.a, A099621.P16145661402150636597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099621, Nat.add_sub_cancel, A099621.P5789532599687733431.a, A099621.P16145661402150636597.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099621

/-! ## A099621.P18085492037812773792

`ogf(x/(1-6x+5x^2+12x^3))`
-/

namespace A099621.P18085492037812773792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 5, 12] n

end

end A099621.P18085492037812773792

namespace A099621

/-- `ogf(x/(1-6x+5x^2+12x^3))` -/
def P18085492037812773792.Spec : Prop :=
  ∀ n, P18085492037812773792.a n = A099621 n

end A099621

/-! ## A099621.P47514783936392179

`4^n-(a(n-1)+3^n)` with `a(0)=0`
-/

namespace A099621.P47514783936392179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) - (a (n - 1) + (3 ^ n : ℤ))

end

end A099621.P47514783936392179

namespace A099621

/-- `4^n-(a(n-1)+3^n)` -/
def P47514783936392179.Spec : Prop :=
  ∀ n, P47514783936392179.a n = A099621 n

end A099621

/-! ## A099621.P6203554992626709347

`4^n-3^n-a(n-1)` with `a(0)=0`
-/

namespace A099621.P6203554992626709347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) - (3 ^ n : ℤ) - a (n - 1)

end

end A099621.P6203554992626709347

namespace A099621

/-- `4^n-3^n-a(n-1)` -/
def P6203554992626709347.Spec : Prop :=
  ∀ n, P6203554992626709347.a n = A099621 n

end A099621

/-! ## A099621.P1253296777358271072

`A015521(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A099621.P1253296777358271072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015521 n + 3 * a (n - 1)

end

end A099621.P1253296777358271072

namespace A099621

/-- `A015521(n)+3*a(n-1)` -/
def P1253296777358271072.Spec : Prop :=
  ∀ n, P1253296777358271072.a n = A099621 n

end A099621

/-! ## A099621.P7786277177206670114

`A284850(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A099621.P7786277177206670114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A284850 n - a (n - 1) + (n : ℤ)

end

end A099621.P7786277177206670114

namespace A099621

/-- `A284850(n)-a(n-1)+n` -/
def P7786277177206670114.Spec : Prop :=
  ∀ n, P7786277177206670114.a n = A099621 n

end A099621

/-! ## A099621.P8514054338824562032

`A115243(n)-A080926(n)`
-/

namespace A099621.P8514054338824562032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115243 n - A080926 n

end

end A099621.P8514054338824562032

namespace A099621

/-- `A115243(n)-A080926(n)` -/
def P8514054338824562032.Spec : Prop :=
  ∀ n, P8514054338824562032.a n = A099621 n

end A099621

/-! ## A099621.P16598492448726356272

`A135343(n)-A132353(n)`
-/

namespace A099621.P16598492448726356272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135343 n - A132353 n

end

end A099621.P16598492448726356272

namespace A099621

/-- `A135343(n)-A132353(n)` -/
def P16598492448726356272.Spec : Prop :=
  ∀ n, P16598492448726356272.a n = A099621 n

end A099621

/-! ## A099621.P16163291445133999432

`A135345(n)-A132868(n)`
-/

namespace A099621.P16163291445133999432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135345 n - A132868 n

end

end A099621.P16163291445133999432

namespace A099621

/-- `A135345(n)-A132868(n)` -/
def P16163291445133999432.Spec : Prop :=
  ∀ n, P16163291445133999432.a n = A099621 n

end A099621

/-! ## A099621.P10270123726878743717

`∑[A122117(n)-A046717(n)]`
-/

namespace A099621.P10270123726878743717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n - A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099621.P10270123726878743717

namespace A099621

/-- `∑[A122117(n)-A046717(n)]` -/
def P10270123726878743717.Spec : Prop :=
  ∀ n, P10270123726878743717.a n = A099621 n

end A099621

/-! ## A099621.P9129936661979912972

`record[A109499(n)]-record[A054878(n)]`
-/

namespace A099621.P9129936661979912972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A099621.P9129936661979912972

namespace A099621

/-- `record[A109499(n)]-record[A054878(n)]` -/
def P9129936661979912972.Spec : Prop :=
  ∀ n, P9129936661979912972.a n = A099621 n

end A099621

/-! ## A099621.P14979618113737335008

`A015521(n+1)-A015518(n+1)`
-/

namespace A099621.P14979618113737335008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) - A015518 (n + 1)

end

end A099621.P14979618113737335008

namespace A099621

/-- `A015521(n+1)-A015518(n+1)` -/
def P14979618113737335008.Spec : Prop :=
  ∀ n, P14979618113737335008.a n = A099621 n

end A099621

/-! ## A099621.P2464449096982021406

`A109499(n+1)-A054878(n+1)`
-/

namespace A099621.P2464449096982021406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 (n + 1) - A054878 (n + 1)

end

end A099621.P2464449096982021406

namespace A099621

/-- `A109499(n+1)-A054878(n+1)` -/
def P2464449096982021406.Spec : Prop :=
  ∀ n, P2464449096982021406.a n = A099621 n

end A099621

/-! ## A099621.P2045499847636141422

`A007910(2*n)-A015518(n+1)`
-/

namespace A099621.P2045499847636141422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (2 * n) - A015518 (n + 1)

end

end A099621.P2045499847636141422

namespace A099621

/-- `A007910(2*n)-A015518(n+1)` -/
def P2045499847636141422.Spec : Prop :=
  ∀ n, P2045499847636141422.a n = A099621 n

end A099621

/-! ## A099621.P14656609185877658886

`abs(A014983(n+1)-A014985(n+1))`
-/

namespace A099621.P14656609185877658886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014983 (n + 1) - A014985 (n + 1)|

end

end A099621.P14656609185877658886

namespace A099621

/-- `abs(A014983(n+1)-A014985(n+1))` -/
def P14656609185877658886.Spec : Prop :=
  ∀ n, P14656609185877658886.a n = A099621 n

end A099621

/-! ## A099621.P15823584765031778176

`A007909(2*n+1)-A015518(n+1)`
-/

namespace A099621.P15823584765031778176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n + 1) - A015518 (n + 1)

end

end A099621.P15823584765031778176

namespace A099621

/-- `A007909(2*n+1)-A015518(n+1)` -/
def P15823584765031778176.Spec : Prop :=
  ∀ n, P15823584765031778176.a n = A099621 n

end A099621

/-! ## A099621.P3553564555066458112

`A015521(n+1)+A039300(n)-A039300(n+1)`
-/

namespace A099621.P3553564555066458112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + (A039300 n - A039300 (n + 1))

end

end A099621.P3553564555066458112

namespace A099621

/-- `A015521(n+1)+A039300(n)-A039300(n+1)` -/
def P3553564555066458112.Spec : Prop :=
  ∀ n, P3553564555066458112.a n = A099621 n

end A099621

/-!
# A099622: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, k-1)*4^(n-k-1)*(5/4)^k.

The programs for A099622, the canonical program `A099622.P3607902079564970212` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099622 has offset 0).

The definition of A099622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099622.P3607902079564970212

`8*a(n-1)-11*a(n-2)-20*a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099622

/-- `8*a(n-1)-11*a(n-2)-20*a(n-3)` -/
def P3607902079564970212.Spec : Prop :=
  ∀ n, P3607902079564970212.a n = A099622 n

theorem P3607902079564970212.correct : P3607902079564970212.Spec := by
  intro n
  simp only [A099622]

end A099622

/-! ## A099622.P4602648442014350306

`(5^(n+2)-6*4^(n+1)-(-1)^n)/30`
-/

namespace A099622.P4602648442014350306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 2) : ℤ) - (6 * 4 ^ (n + 1) : ℤ) - (-1) ^ n : ℚ) / 30

end

end A099622.P4602648442014350306

namespace A099622

/-- `(5^(n+2)-6*4^(n+1)-(-1)^n)/30` -/
def P4602648442014350306.Spec : Prop :=
  ∀ n, P4602648442014350306.a n = (A099622 n : ℚ)

theorem P4602648442014350306.correct : P4602648442014350306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099622, Nat.add_sub_cancel, A099622.P4602648442014350306.a, A099622.P3607902079564970212.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099622, Nat.add_sub_cancel, A099622.P4602648442014350306.a, A099622.P3607902079564970212.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099622

/-! ## A099622.P13004492180991654768

`5^n-(a(n-1)+4^n)` with `a(0)=0`
-/

namespace A099622.P13004492180991654768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 ^ n : ℤ) - (a (n - 1) + (4 ^ n : ℤ))

end

end A099622.P13004492180991654768

namespace A099622

/-- `5^n-(a(n-1)+4^n)` -/
def P13004492180991654768.Spec : Prop :=
  ∀ n, P13004492180991654768.a n = A099622 n

end A099622

/-! ## A099622.P10371681280927559357

`5^n-4^n-a(n-1)` with `a(0)=0`
-/

namespace A099622.P10371681280927559357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 ^ n : ℤ) - (4 ^ n : ℤ) - a (n - 1)

end

end A099622.P10371681280927559357

namespace A099622

/-- `5^n-4^n-a(n-1)` -/
def P10371681280927559357.Spec : Prop :=
  ∀ n, P10371681280927559357.a n = A099622 n

end A099622

/-! ## A099622.P996074641629674376

`abs(a(n-1)-A005060(n))` with `a(0)=0`
-/

namespace A099622.P996074641629674376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - A005060 n|

end

end A099622.P996074641629674376

namespace A099622

/-- `abs(a(n-1)-A005060(n))` -/
def P996074641629674376.Spec : Prop :=
  ∀ n, P996074641629674376.a n = A099622 n

end A099622

/-! ## A099622.P8888072254724561219

`A015531(n)+4*a(n-1)` with `a(0)=0`
-/

namespace A099622.P8888072254724561219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015531 n + 4 * a (n - 1)

end

end A099622.P8888072254724561219

namespace A099622

/-- `A015531(n)+4*a(n-1)` -/
def P8888072254724561219.Spec : Prop :=
  ∀ n, P8888072254724561219.a n = A099622 n

end A099622

/-! ## A099622.P11475205435261217234

`A015531(n+1)-A015521(n+1)`
-/

namespace A099622.P11475205435261217234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) - A015521 (n + 1)

end

end A099622.P11475205435261217234

namespace A099622

/-- `A015531(n+1)-A015521(n+1)` -/
def P11475205435261217234.Spec : Prop :=
  ∀ n, P11475205435261217234.a n = A099622 n

end A099622

/-! ## A099622.P13461903517965246185

`A109500(n+1)-A109499(n+1)`
-/

namespace A099622.P13461903517965246185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109500 (n + 1) - A109499 (n + 1)

end

end A099622.P13461903517965246185

namespace A099622

/-- `A109500(n+1)-A109499(n+1)` -/
def P13461903517965246185.Spec : Prop :=
  ∀ n, P13461903517965246185.a n = A099622 n

end A099622

/-! ## A099622.P8057103394588840948

`A015531(n+1)-A007910(2*n)`
-/

namespace A099622.P8057103394588840948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) - A007910 (2 * n)

end

end A099622.P8057103394588840948

namespace A099622

/-- `A015531(n+1)-A007910(2*n)` -/
def P8057103394588840948.Spec : Prop :=
  ∀ n, P8057103394588840948.a n = A099622 n

end A099622

/-! ## A099622.P12417675750487513193

`abs(A014985(n+1)-A014986(n+1))`
-/

namespace A099622.P12417675750487513193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014985 (n + 1) - A014986 (n + 1)|

end

end A099622.P12417675750487513193

namespace A099622

/-- `abs(A014985(n+1)-A014986(n+1))` -/
def P12417675750487513193.Spec : Prop :=
  ∀ n, P12417675750487513193.a n = A099622 n

end A099622

/-!
# A099623: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k+2)*2^(n-k-2)*(3/2)^k.

The programs for A099623, the canonical program `A099623.P8641564034591687976` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099623 has offset 0).

The definition of A099623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099623.P8641564034591687976

`6*a(n-1)-9*a(n-2)-4*a(n-3)+12*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099623

/-- `6*a(n-1)-9*a(n-2)-4*a(n-3)+12*a(n-4)` -/
def P8641564034591687976.Spec : Prop :=
  ∀ n, P8641564034591687976.a n = A099623 n

theorem P8641564034591687976.correct : P8641564034591687976.Spec := by
  intro n
  simp only [A099623]

end A099623

/-! ## A099623.P10209833859351307577

`3^n-Δ[n*2^(n-1)]-a(n-1)` with `a(0)=0`
-/

namespace A099623.P10209833859351307577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℚ) - (f1 (n + 1) - f1 n) - a (n - 1)

end

end A099623.P10209833859351307577

namespace A099623

/-- `3^n-Δ[n*2^(n-1)]-a(n-1)` -/
def P10209833859351307577.Spec : Prop :=
  ∀ n, P10209833859351307577.a n = (A099623 n : ℚ)

end A099623

/-! ## A099623.P10885661431956363799

`A094705(n)-A045883(n)`
-/

namespace A099623.P10885661431956363799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 n - A045883 n

end

end A099623.P10885661431956363799

namespace A099623

/-- `A094705(n)-A045883(n)` -/
def P10885661431956363799.Spec : Prop :=
  ∀ n, P10885661431956363799.a n = A099623 n

end A099623

/-! ## A099623.P8029189686944449175

`Δ[A039300(n)-A045883(n)]`
-/

namespace A099623.P8029189686944449175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n - A045883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099623.P8029189686944449175

namespace A099623

/-- `Δ[A039300(n)-A045883(n)]` -/
def P8029189686944449175.Spec : Prop :=
  ∀ n, P8029189686944449175.a n = A099623 n

end A099623

/-! ## A099623.P13733183207238039776

`∑[A046717(n)]-A059570(n+1)`
-/

namespace A099623.P13733183207238039776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059570 (n + 1)

end

end A099623.P13733183207238039776

namespace A099623

/-- `∑[A046717(n)]-A059570(n+1)` -/
def P13733183207238039776.Spec : Prop :=
  ∀ n, P13733183207238039776.a n = A099623 n

end A099623

/-! ## A099623.P14056274835031714703

`A015518(n+1)-Δ[A045883(n)]`
-/

namespace A099623.P14056274835031714703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099623.P14056274835031714703

namespace A099623

/-- `A015518(n+1)-Δ[A045883(n)]` -/
def P14056274835031714703.Spec : Prop :=
  ∀ n, P14056274835031714703.a n = A099623 n

end A099623

/-! ## A099623.P2539520011663410344

`Δ[A039300(n)]-A059570(n+1)`
-/

namespace A099623.P2539520011663410344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059570 (n + 1)

end

end A099623.P2539520011663410344

namespace A099623

/-- `Δ[A039300(n)]-A059570(n+1)` -/
def P2539520011663410344.Spec : Prop :=
  ∀ n, P2539520011663410344.a n = A099623 n

end A099623

/-! ## A099623.P10926318598517008910

`A015518(n+1)-A059570(n+1)`
-/

namespace A099623.P10926318598517008910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) - A059570 (n + 1)

end

end A099623.P10926318598517008910

namespace A099623

/-- `A015518(n+1)-A059570(n+1)` -/
def P10926318598517008910.Spec : Prop :=
  ∀ n, P10926318598517008910.a n = A099623 n

end A099623

/-! ## A099623.P9521278159326427370

`A015518(n+1)-(A045883(n)+A001045(n+1))`
-/

namespace A099623.P9521278159326427370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) - (A045883 n + A001045 (n + 1))

end

end A099623.P9521278159326427370

namespace A099623

/-- `A015518(n+1)-(A045883(n)+A001045(n+1))` -/
def P9521278159326427370.Spec : Prop :=
  ∀ n, P9521278159326427370.a n = A099623 n

end A099623

/-! ## A099623.P12625501629052255939

`A015518(n+1)+A045883(n)-A045883(n+1)`
-/

namespace A099623.P12625501629052255939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + (A045883 n - A045883 (n + 1))

end

end A099623.P12625501629052255939

namespace A099623

/-- `A015518(n+1)+A045883(n)-A045883(n+1)` -/
def P12625501629052255939.Spec : Prop :=
  ∀ n, P12625501629052255939.a n = A099623 n

end A099623

/-!
# A099624: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k+2)*3^(n-k-2)*(4/3)^k.

The programs for A099624, the canonical program `A099624.P8591030881444273126` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099624 has offset 0).

The definition of A099624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099624.P8591030881444273126

`9*a(n-1)-23*a(n-2)+3*a(n-3)+36*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099624

/-- `9*a(n-1)-23*a(n-2)+3*a(n-3)+36*a(n-4)` -/
def P8591030881444273126.Spec : Prop :=
  ∀ n, P8591030881444273126.a n = A099624 n

theorem P8591030881444273126.correct : P8591030881444273126.Spec := by
  intro n
  simp only [A099624]

end A099624

/-! ## A099624.P12350163232880404397

`4^n-(n+3)*3^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A099624.P12350163232880404397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℚ) - (n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A099624.P12350163232880404397

namespace A099624

/-- `4^n-(n+3)*3^(n-1)-a(n-1)` -/
def P12350163232880404397.Spec : Prop :=
  ∀ n, P12350163232880404397.a n = (A099624 n : ℚ)

end A099624

/-! ## A099624.P10079244713553240736

`A099621(n)-∑[A119916(n)]`
-/

namespace A099624.P10079244713553240736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099621 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099624.P10079244713553240736

namespace A099624

/-- `A099621(n)-∑[A119916(n)]` -/
def P10079244713553240736.Spec : Prop :=
  ∀ n, P10079244713553240736.a n = A099624 n

end A099624

/-! ## A099624.P2183913224151039747

`A015521(n)+3*a(n-1)-A015518(n)` with `a(0)=0, a(1)=0`
-/

namespace A099624.P2183913224151039747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A015521 n + 3 * a (n - 1) - A015518 n

end

end A099624.P2183913224151039747

namespace A099624

/-- `A015521(n)+3*a(n-1)-A015518(n)` -/
def P2183913224151039747.Spec : Prop :=
  ∀ n, P2183913224151039747.a n = A099624 n

end A099624

/-!
# A099625: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k+2)*2^(n-k-2)*(1/2)^k.

The programs for A099625, the canonical program `A099625.P16184661190719515071` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099625 has offset 0).

The definition of A099625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099625.P16184661190719515071

`A000129(n+3)-(n+5)*2^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099625

/-- `A000129(n+3)-(n+5)*2^n` -/
def P16184661190719515071.Spec : Prop :=
  ∀ n, P16184661190719515071.a n = A099625 n

theorem P16184661190719515071.correct : P16184661190719515071.Spec := by
  intro n
  simp only [A099625]

end A099625

/-! ## A099625.P18338785048182200346

`6*a(n-1)-11*a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A099625.P18338785048182200346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 6] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4)

end

end A099625.P18338785048182200346

namespace A099625

/-- `6*a(n-1)-11*a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P18338785048182200346.Spec : Prop :=
  ∀ n, P18338785048182200346.a n = A099625 n

end A099625

/-! ## A099625.P1200935196992491438

`∑[A106514(n)-A001792(n)]`
-/

namespace A099625.P1200935196992491438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 n - A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099625.P1200935196992491438

namespace A099625

/-- `∑[A106514(n)-A001792(n)]` -/
def P1200935196992491438.Spec : Prop :=
  ∀ n, P1200935196992491438.a n = A099625 n

end A099625

/-! ## A099625.P2008499995413779627

`∑[A106514(n)-Δ[A005183(n)]]`
-/

namespace A099625.P2008499995413779627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099625.P2008499995413779627

namespace A099625

/-- `∑[A106514(n)-Δ[A005183(n)]]` -/
def P2008499995413779627.Spec : Prop :=
  ∀ n, P2008499995413779627.a n = A099625 n

end A099625

/-! ## A099625.P8034026852076087403

`∑[A034182(n+1)-A047860(n)]`
-/

namespace A099625.P8034026852076087403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) - A047860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099625.P8034026852076087403

namespace A099625

/-- `∑[A034182(n+1)-A047860(n)]` -/
def P8034026852076087403.Spec : Prop :=
  ∀ n, P8034026852076087403.a n = A099625 n

end A099625

/-! ## A099625.P322415402617063828

`A069306(n+2)-A196410(n+5)`
-/

namespace A099625.P322415402617063828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 2) - A196410 (n + 5)

end

end A099625.P322415402617063828

namespace A099625

/-- `A069306(n+2)-A196410(n+5)` -/
def P322415402617063828.Spec : Prop :=
  ∀ n, P322415402617063828.a n = A099625 n

end A099625

/-! ## A099625.P10844690190038019809

`Δ[Δ[A048776(n)]-A001792(n+1)]`
-/

namespace A099625.P10844690190038019809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099625.P10844690190038019809

namespace A099625

/-- `Δ[Δ[A048776(n)]-A001792(n+1)]` -/
def P10844690190038019809.Spec : Prop :=
  ∀ n, P10844690190038019809.a n = A099625 n

end A099625

/-!
# A099626: A transform of the Pell numbers.

The programs for A099626, the canonical program `A099626.P15757167408035421568` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099626 has offset 0).

The definition of A099626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099626.P15757167408035421568

`2*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099626

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P15757167408035421568.Spec : Prop :=
  ∀ n, P15757167408035421568.a n = A099626 n

theorem P15757167408035421568.correct : P15757167408035421568.Spec := by
  intro n
  simp only [A099626]

end A099626

/-! ## A099626.P5030206104091940069

`ogf(x/(1-2x-3x^2+2x^3+x^4))`
-/

namespace A099626.P5030206104091940069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -3, 2, 1] n

end

end A099626.P5030206104091940069

namespace A099626

/-- `ogf(x/(1-2x-3x^2+2x^3+x^4))` -/
def P5030206104091940069.Spec : Prop :=
  ∀ n, P5030206104091940069.a n = A099626 n

end A099626

/-! ## A099626.P10484672649415683178

`A192778(n+1)+2*A192779(n+1)`
-/

namespace A099626.P10484672649415683178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192778 (n + 1) + 2 * A192779 (n + 1)

end

end A099626.P10484672649415683178

namespace A099626

/-- `A192778(n+1)+2*A192779(n+1)` -/
def P10484672649415683178.Spec : Prop :=
  ∀ n, P10484672649415683178.a n = A099626 n

end A099626

/-! ## A099626.P13833573046785369895

`A192778(n+1)+A005843(A192779(n+1))`
-/

namespace A099626.P13833573046785369895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192778 (n + 1) + A005843 (A192779 (n + 1)).toNat

end

end A099626.P13833573046785369895

namespace A099626

/-- `A192778(n+1)+A005843(A192779(n+1))` -/
def P13833573046785369895.Spec : Prop :=
  ∀ n, P13833573046785369895.a n = A099626 n

end A099626

/-!
# A099627: Triangle read by rows: T(n,k) = 2^n + 2^k - 1 with n >= k >= 0.

The programs for A099627, the canonical program `A099627.P2788997961149202424` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099627 has offset 0).

The definition of A099627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099627.P16161732948437963001

`2^row(n)+2^col(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099627.P16161732948437963001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triRow n + 2 ^ SequenceMachineLib.triCol n : ℤ) - 1

end

end A099627.P16161732948437963001

namespace A099627

/-- `2^row(n)+2^col(n)-1` -/
def P16161732948437963001.Spec : Prop :=
  ∀ n, P16161732948437963001.a n = A099627 n

end A099627

/-! ## A099627.P2788997961149202424

`A048645(n+2)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099627

/-- `A048645(n+2)-1` -/
def P2788997961149202424.Spec : Prop :=
  ∀ n, P2788997961149202424.a n = A099627 n

theorem P2788997961149202424.correct : P2788997961149202424.Spec := by
  intro n
  simp only [A099627]

end A099627

/-! ## A099627.P3426329519259902341

`∑[A232089(n)]`
-/

namespace A099627.P3426329519259902341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P3426329519259902341

namespace A099627

/-- `∑[A232089(n)]` -/
def P3426329519259902341.Spec : Prop :=
  ∀ n, P3426329519259902341.a n = A099627 n

end A099627

/-! ## A099627.P16397617543614077504

`A173786(n)-1`
-/

namespace A099627.P16397617543614077504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n - 1

end

end A099627.P16397617543614077504

namespace A099627

/-- `A173786(n)-1` -/
def P16397617543614077504.Spec : Prop :=
  ∀ n, P16397617543614077504.a n = A099627 n

end A099627

/-! ## A099627.P11093673482582894567

`∑[round(A059268(n)/2)]`
-/

namespace A099627.P11093673482582894567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059268 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P11093673482582894567

namespace A099627

/-- `∑[round(A059268(n)/2)]` -/
def P11093673482582894567.Spec : Prop :=
  ∀ n, P11093673482582894567.a n = A099627 n

end A099627

/-! ## A099627.P13611075346564555275

`(A131437(n+1)+1)/2`
-/

namespace A099627.P13611075346564555275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131437 (n + 1) + 1 : ℚ) / 2

end

end A099627.P13611075346564555275

namespace A099627

/-- `(A131437(n+1)+1)/2` -/
def P13611075346564555275.Spec : Prop :=
  ∀ n, P13611075346564555275.a n = (A099627 n : ℚ)

theorem P13611075346564555275.correct : P13611075346564555275.Spec := by
  intro n
  simp only [A099627, Nat.add_sub_cancel, A099627.P13611075346564555275.a, A099627.P2788997961149202424.a, A048645, A048645.P10151414295702732837.a, A131437, A131437.P3175007424412188088.a, A018900, A018900.P2868698677378612256.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099627

/-! ## A099627.P552458374738467741

`∑[ceil(2^(A002262(n)-1))]`
-/

namespace A099627.P552458374738467741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A002262 n - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P552458374738467741

namespace A099627

/-- `∑[ceil(2^(A002262(n)-1))]` -/
def P552458374738467741.Spec : Prop :=
  ∀ n, P552458374738467741.a n = A099627 n

end A099627

/-! ## A099627.P14394903162818328248

`∑[2^(A144328(n+1)-1)]`
-/

namespace A099627.P14394903162818328248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A144328 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P14394903162818328248

namespace A099627

/-- `∑[2^(A144328(n+1)-1)]` -/
def P14394903162818328248.Spec : Prop :=
  ∀ n, P14394903162818328248.a n = (A099627 n : ℚ)

end A099627

/-! ## A099627.P8674674995114508116

`∑[A011782(A002262(n))]`
-/

namespace A099627.P8674674995114508116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P8674674995114508116

namespace A099627

/-- `∑[A011782(A002262(n))]` -/
def P8674674995114508116.Spec : Prop :=
  ∀ n, P8674674995114508116.a n = A099627 n

end A099627

/-! ## A099627.P17676865857518070822

`A176224(n)+A089633(n)`
-/

namespace A099627.P17676865857518070822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 n + A089633 n

end

end A099627.P17676865857518070822

namespace A099627

/-- `A176224(n)+A089633(n)` -/
def P17676865857518070822.Spec : Prop :=
  ∀ n, P17676865857518070822.a n = A099627 n

theorem P17676865857518070822.correct : P17676865857518070822.Spec := by
  intro n
  simp only [A099627, Nat.add_sub_cancel, A099627.P17676865857518070822.a, A099627.P2788997961149202424.a, A048645, A048645.P10151414295702732837.a, A089633, A089633.P17564526881393068107.a, A176224, A176224.P7399068725741792420.a, A018900, A018900.P2868698677378612256.a, A030130, A030130.P14159575509811306268.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A010054, A010054.P18347828677204923252.a, A081118, A081118.P6487108056144640916.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A099627

/-! ## A099627.P10786137494322224710

`∑[A082137(n)/A007318(n)]`
-/

namespace A099627.P10786137494322224710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082137 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P10786137494322224710

namespace A099627

/-- `∑[A082137(n)/A007318(n)]` -/
def P10786137494322224710.Spec : Prop :=
  ∀ n, P10786137494322224710.a n = (A099627 n : ℚ)

end A099627

/-! ## A099627.P3162148176726330375

`A059268(n)+A137688(n)-1`
-/

namespace A099627.P3162148176726330375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A137688 n - 1)

end

end A099627.P3162148176726330375

namespace A099627

/-- `A059268(n)+A137688(n)-1` -/
def P3162148176726330375.Spec : Prop :=
  ∀ n, P3162148176726330375.a n = A099627 n

end A099627

/-! ## A099627.P4693464375633564196

`A099628(n+1)-A137688(n)`
-/

namespace A099627.P4693464375633564196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) - A137688 n

end

end A099627.P4693464375633564196

namespace A099627

/-- `A099628(n+1)-A137688(n)` -/
def P4693464375633564196.Spec : Prop :=
  ∀ n, P4693464375633564196.a n = A099627 n

end A099627

/-! ## A099627.P4635738836096711350

`A140513(n)-(A173787(n)+1)`
-/

namespace A099627.P4635738836096711350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - (A173787 n + 1)

end

end A099627.P4635738836096711350

namespace A099627

/-- `A140513(n)-(A173787(n)+1)` -/
def P4635738836096711350.Spec : Prop :=
  ∀ n, P4635738836096711350.a n = A099627 n

end A099627

/-! ## A099627.P13360832005204481099

`∪[A052955(n), A099628(n+1)]`
-/

namespace A099627.P13360832005204481099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099627.P13360832005204481099

namespace A099627

/-- `∪[A052955(n), A099628(n+1)]` -/
def P13360832005204481099.Spec : Prop :=
  ∀ n, (P13360832005204481099.a n : ℤ) = A099627 n

end A099627

/-! ## A099627.P17547204771755452878

`∪[A097110(n), A099628(n+1)]`
-/

namespace A099627.P17547204771755452878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099627.P17547204771755452878

namespace A099627

/-- `∪[A097110(n), A099628(n+1)]` -/
def P17547204771755452878.Spec : Prop :=
  ∀ n, (P17547204771755452878.a n : ℤ) = A099627 n

end A099627

/-! ## A099627.P4372298471475159307

`∪[A099628(n+1), A126646(n)]`
-/

namespace A099627.P4372298471475159307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099627.P4372298471475159307

namespace A099627

/-- `∪[A099628(n+1), A126646(n)]` -/
def P4372298471475159307.Spec : Prop :=
  ∀ n, (P4372298471475159307.a n : ℤ) = A099627 n

end A099627

/-! ## A099627.P7722330759643470582

`∑[A011782(A002260(n+1)-1)]`
-/

namespace A099627.P7722330759643470582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P7722330759643470582

namespace A099627

/-- `∑[A011782(A002260(n+1)-1)]` -/
def P7722330759643470582.Spec : Prop :=
  ∀ n, P7722330759643470582.a n = A099627 n

end A099627

/-! ## A099627.P12248132036333018480

`∑[(A059268(n)+A010054(n))/2]`
-/

namespace A099627.P12248132036333018480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n + A010054 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099627.P12248132036333018480

namespace A099627

/-- `∑[(A059268(n)+A010054(n))/2]` -/
def P12248132036333018480.Spec : Prop :=
  ∀ n, P12248132036333018480.a n = (A099627 n : ℚ)

end A099627

/-! ## A099627.P11707543436990199242

`A018900(n+1)-(A137688(n)+1)`
-/

namespace A099627.P11707543436990199242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (A137688 n + 1)

end

end A099627.P11707543436990199242

namespace A099627

/-- `A018900(n+1)-(A137688(n)+1)` -/
def P11707543436990199242.Spec : Prop :=
  ∀ n, P11707543436990199242.a n = A099627 n

end A099627

/-!
# A099628: Numbers m where m-th Catalan number A000108(m) = binomial(2m,m)/(m+1) is divisible by 2 but not by 4, i.e., where A048881(m) = 1.

The programs for A099628, the canonical program `A099628.P12702096521877951713` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099628 has offset 1).

The definition of A099628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099628.P12702096521877951713

`2^(row(n)+1)+2^col(n)-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099628

/-- `2^(row(n)+1)+2^col(n)-1` -/
def P12702096521877951713.Spec : Prop :=
  ∀ n, P12702096521877951713.a n = A099628 (n + 1)

theorem P12702096521877951713.correct : P12702096521877951713.Spec := by
  intro n
  simp only [A099628, Nat.add_sub_cancel]

end A099628

/-! ## A099628.P8292850720215451119

`A018900(n+1)-1`
-/

namespace A099628.P8292850720215451119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - 1

end

end A099628.P8292850720215451119

namespace A099628

/-- `A018900(n+1)-1` -/
def P8292850720215451119.Spec : Prop :=
  ∀ n, P8292850720215451119.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P5151102856536365981

`(A084468(n+1)-3)/2`
-/

namespace A099628.P5151102856536365981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084468 (n + 1) - 3 : ℚ) / 2

end

end A099628.P5151102856536365981

namespace A099628

/-- `(A084468(n+1)-3)/2` -/
def P5151102856536365981.Spec : Prop :=
  ∀ n, P5151102856536365981.a n = (A099628 (n + 1) : ℚ)

end A099628

/-! ## A099628.P7828730583656375353

`A137688(n)+A099627(n)`
-/

namespace A099628.P7828730583656375353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A099627 n

end

end A099628.P7828730583656375353

namespace A099628

/-- `A137688(n)+A099627(n)` -/
def P7828730583656375353.Spec : Prop :=
  ∀ n, P7828730583656375353.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P4442720178537153700

`A271709(n)+A089633(n)`
-/

namespace A099628.P4442720178537153700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A089633 n

end

end A099628.P4442720178537153700

namespace A099628

/-- `A271709(n)+A089633(n)` -/
def P4442720178537153700.Spec : Prop :=
  ∀ n, P4442720178537153700.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P2822900718119943235

`A059268(n)+A140513(n)-1`
-/

namespace A099628.P2822900718119943235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A140513 n - 1)

end

end A099628.P2822900718119943235

namespace A099628

/-- `A059268(n)+A140513(n)-1` -/
def P2822900718119943235.Spec : Prop :=
  ∀ n, P2822900718119943235.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P17693887200432125573

`A137688(n)+A173786(n)-1`
-/

namespace A099628.P17693887200432125573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + (A173786 n - 1)

end

end A099628.P17693887200432125573

namespace A099628

/-- `A137688(n)+A173786(n)-1` -/
def P17693887200432125573.Spec : Prop :=
  ∀ n, P17693887200432125573.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P16629843708584960999

`A099627(n)+A140513(n)/2`
-/

namespace A099628.P16629843708584960999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099627 n : ℚ) + (A140513 n : ℚ) / 2

end

end A099628.P16629843708584960999

namespace A099628

/-- `A099627(n)+A140513(n)/2` -/
def P16629843708584960999.Spec : Prop :=
  ∀ n, P16629843708584960999.a n = (A099628 (n + 1) : ℚ)

end A099628

/-! ## A099628.P10368671075249032898

`A098354(n+1)-(A130328(n)+1)`
-/

namespace A099628.P10368671075249032898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - (A130328 n + 1)

end

end A099628.P10368671075249032898

namespace A099628

/-- `A098354(n+1)-(A130328(n)+1)` -/
def P10368671075249032898.Spec : Prop :=
  ∀ n, P10368671075249032898.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P7273333855530763302

`xor(A130328(n)-1, A204985(n+1))`
-/

namespace A099628.P7273333855530763302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130328 n - 1) (A204985 (n + 1))

end

end A099628.P7273333855530763302

namespace A099628

/-- `xor(A130328(n)-1, A204985(n+1))` -/
def P7273333855530763302.Spec : Prop :=
  ∀ n, P7273333855530763302.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P17581953750448935102

`A126646(A003056(n))+A059268(n)`
-/

namespace A099628.P17581953750448935102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A003056 n).toNat + A059268 n

end

end A099628.P17581953750448935102

namespace A099628

/-- `A126646(A003056(n))+A059268(n)` -/
def P17581953750448935102.Spec : Prop :=
  ∀ n, P17581953750448935102.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P9240787881537138414

`A059268(n)+A000225(A002024(n+1))`
-/

namespace A099628.P9240787881537138414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A000225 (A002024 (n + 1)).toNat

end

end A099628.P9240787881537138414

namespace A099628

/-- `A059268(n)+A000225(A002024(n+1))` -/
def P9240787881537138414.Spec : Prop :=
  ∀ n, P9240787881537138414.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P4014757222554138948

`A132110(n)+A140513(n)-A007318(n)`
-/

namespace A099628.P4014757222554138948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132110 n + (A140513 n - A007318 n)

end

end A099628.P4014757222554138948

namespace A099628

/-- `A132110(n)+A140513(n)-A007318(n)` -/
def P4014757222554138948.Spec : Prop :=
  ∀ n, P4014757222554138948.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P6289788182270437269

`A131816(n)+A140513(n)-A130321(n)`
-/

namespace A099628.P6289788182270437269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (A140513 n - A130321 n)

end

end A099628.P6289788182270437269

namespace A099628

/-- `A131816(n)+A140513(n)-A130321(n)` -/
def P6289788182270437269.Spec : Prop :=
  ∀ n, P6289788182270437269.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P1517752459244802114

`A059268(n)+A233757(n+1)/A059268(n)`
-/

namespace A099628.P1517752459244802114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) + (A233757 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A099628.P1517752459244802114

namespace A099628

/-- `A059268(n)+A233757(n+1)/A059268(n)` -/
def P1517752459244802114.Spec : Prop :=
  ∀ n, P1517752459244802114.a n = (A099628 (n + 1) : ℚ)

end A099628

/-! ## A099628.P17086228499850843706

`A340161(n+1)-2`
-/

namespace A099628.P17086228499850843706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (n + 1) - 2

end

end A099628.P17086228499850843706

namespace A099628

/-- `A340161(n+1)-2` -/
def P17086228499850843706.Spec : Prop :=
  ∀ n, P17086228499850843706.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P6733971828728323894

`A099627(A007401(n+1))`
-/

namespace A099628.P6733971828728323894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A007401 (n + 1)).toNat

end

end A099628.P6733971828728323894

namespace A099628

/-- `A099627(A007401(n+1))` -/
def P6733971828728323894.Spec : Prop :=
  ∀ n, P6733971828728323894.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P8884771308132567805

`A099627(∑[A010054(n)]+n)`
-/

namespace A099628.P8884771308132567805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A099628.P8884771308132567805

namespace A099628

/-- `A099627(∑[A010054(n)]+n)` -/
def P8884771308132567805.Spec : Prop :=
  ∀ n, P8884771308132567805.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P14437008631899443255

`A099627(A014132(n+1)-1)`
-/

namespace A099628.P14437008631899443255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A014132 (n + 1) - 1).toNat

end

end A099628.P14437008631899443255

namespace A099628

/-- `A099627(A014132(n+1)-1)` -/
def P14437008631899443255.Spec : Prop :=
  ∀ n, P14437008631899443255.a n = A099628 (n + 1)

end A099628

/-! ## A099628.P11875177223392077235

`A099627(A002024(n+1)+n)`
-/

namespace A099628.P11875177223392077235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A099628.P11875177223392077235

namespace A099628

/-- `A099627(A002024(n+1)+n)` -/
def P11875177223392077235.Spec : Prop :=
  ∀ n, P11875177223392077235.a n = A099628 (n + 1)

end A099628

/-!
# A099629: Smallest and largest primes pairwise displayed with k digits from k=1,...,9 with distinct decimal digits.

The programs for A099629, there is no canonical definition to state claims against.
-/

/-! ## A099629.P16728812212397405901

`∪[A007810(n+1), A259146(n+1)]`
-/

namespace A099629.P16728812212397405901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099629.P16728812212397405901

/-! ## A099629.P12196287804343054815

`∪[A007809(n+1), A007810(n+1)]`
-/

namespace A099629.P12196287804343054815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099629.P12196287804343054815

/-! ## A099629.P7260083566420944254

`∪[A007809(n+1), A071361((A251761(n)+1)*(n+1))]`
-/

namespace A099629.P7260083566420944254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071361 ((A251761 n + 1) * (n + 1 : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099629.P7260083566420944254

/-! ## A099629.P8133462421027905324

`∪[A259146(n+1), A071361((A251761(n)+1)*(n+1))]`
-/

namespace A099629.P8133462421027905324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071361 ((A251761 n + 1) * (n + 1 : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099629.P8133462421027905324

/-! ## A099629.P11711140565744308197

`∪[A007809(n+1), A071361(n+1)%A071381(n+3)²]`
-/

namespace A099629.P11711140565744308197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071361 (n + 1)) (A071381 (n + 3) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099629.P11711140565744308197

/-!
# A099630: Smallest and largest primes pairwise displayed with k digits from k=2,3,... with repeated decimal digits.

The programs for A099630, there is no canonical definition to state claims against.
-/

/-! ## A099630.P6497388302487623269

`A101592(3-char[1]+n)`
-/

namespace A099630.P6497388302487623269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A099630.P6497388302487623269

/-! ## A099630.P3601431999121121956

`A101592(n+3)%∑[A139157(n+5)]`
-/

namespace A099630.P3601431999121121956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139157 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101592 (n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099630.P3601431999121121956

/-! ## A099630.P6251097397120623340

`p?[A101592(n+1)%A155399(n+6)]`
-/

namespace A099630.P6251097397120623340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101592 (n + 1)) (A155399 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099630.P6251097397120623340

/-!
# A099631: Numbers n such that (sigma(n-2)+sigma(n+2))/2 = sigma(n).

The programs for A099631, there is no canonical definition to state claims against.
-/

/-! ## A099631.P3754507226377186726

`record[A020639(A177949(n+1))+3]`
-/

namespace A099631.P3754507226377186726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A177949 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099631.P3754507226377186726

/-!
# A099634: a(n) = gcd(P+p, P*p) where P is the largest and p the smallest prime factor of n.

The programs for A099634, the canonical program `A099634.P8282463789983654818` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099634 has offset 2).

The definition of A099634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099634.P2345895108799414078

`abs(xor(-2, A014963(n+2)))`
-/

namespace A099634.P2345895108799414078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A014963 (n + 2))|

end

end A099634.P2345895108799414078

namespace A099634

/-- `abs(xor(-2, A014963(n+2)))` -/
def P2345895108799414078.Spec : Prop :=
  ∀ n, P2345895108799414078.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P8282463789983654818

`abs(xor(-2, A020500(n+2)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099634

/-- `abs(xor(-2, A020500(n+2)))` -/
def P8282463789983654818.Spec : Prop :=
  ∀ n, P8282463789983654818.a n = A099634 (n + 2)

theorem P8282463789983654818.correct : P8282463789983654818.Spec := by
  intro n
  simp only [A099634, Nat.add_sub_cancel]

end A099634

/-! ## A099634.P6985365093639023390

`-xor(-2, A014963(2*n-(n-2)))`
-/

namespace A099634.P6985365093639023390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-2) (A014963 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat)

end

end A099634.P6985365093639023390

namespace A099634

/-- `-xor(-2, A014963(2*n-(n-2)))` -/
def P6985365093639023390.Spec : Prop :=
  ∀ n, P6985365093639023390.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P13287321902240337431

`A022998(A014963(n+2))`
-/

namespace A099634.P13287321902240337431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A014963 (n + 2)).toNat

end

end A099634.P13287321902240337431

namespace A099634

/-- `A022998(A014963(n+2))` -/
def P13287321902240337431.Spec : Prop :=
  ∀ n, P13287321902240337431.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P6852616216810388490

`A022998(A020500(n+2))`
-/

namespace A099634.P6852616216810388490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A020500 (n + 2)).toNat

end

end A099634.P6852616216810388490

namespace A099634

/-- `A022998(A020500(n+2))` -/
def P6852616216810388490.Spec : Prop :=
  ∀ n, P6852616216810388490.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P2845737205035793746

`A257088(A120007(n+2))`
-/

namespace A099634.P2845737205035793746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A120007 (n + 2)).toNat

end

end A099634.P2845737205035793746

namespace A099634

/-- `A257088(A120007(n+2))` -/
def P2845737205035793746.Spec : Prop :=
  ∀ n, P2845737205035793746.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P6402636774384856415

`A014681(A014963(n+2)+1)`
-/

namespace A099634.P6402636774384856415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014963 (n + 2) + 1).toNat

end

end A099634.P6402636774384856415

namespace A099634

/-- `A014681(A014963(n+2)+1)` -/
def P6402636774384856415.Spec : Prop :=
  ∀ n, P6402636774384856415.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P8294486971858817742

`A103889(A014963(n+2)+1)`
-/

namespace A099634.P8294486971858817742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A014963 (n + 2) + 1).toNat

end

end A099634.P8294486971858817742

namespace A099634

/-- `A103889(A014963(n+2)+1)` -/
def P8294486971858817742.Spec : Prop :=
  ∀ n, P8294486971858817742.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P14982402763674924577

`A014963(n+2)*A297382(n+2)`
-/

namespace A099634.P14982402763674924577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A297382 (n + 2)

end

end A099634.P14982402763674924577

namespace A099634

/-- `A014963(n+2)*A297382(n+2)` -/
def P14982402763674924577.Spec : Prop :=
  ∀ n, P14982402763674924577.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P15031082613708186240

`A014963(n+2)*A014963(A327512(n+2))`
-/

namespace A099634.P15031082613708186240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A014963 (A327512 (n + 2)).toNat

end

end A099634.P15031082613708186240

namespace A099634

/-- `A014963(n+2)*A014963(A327512(n+2))` -/
def P15031082613708186240.Spec : Prop :=
  ∀ n, P15031082613708186240.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P863150594781549914

`A014963(n+2)*A014963(A327529(n+2))`
-/

namespace A099634.P863150594781549914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A014963 (A327529 (n + 2)).toNat

end

end A099634.P863150594781549914

namespace A099634

/-- `A014963(n+2)*A014963(A327529(n+2))` -/
def P863150594781549914.Spec : Prop :=
  ∀ n, P863150594781549914.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P9720642282547158892

`A292269(2*A014963(n+2))`
-/

namespace A099634.P9720642282547158892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * A014963 (n + 2)).toNat

end

end A099634.P9720642282547158892

namespace A099634

/-- `A292269(2*A014963(n+2))` -/
def P9720642282547158892.Spec : Prop :=
  ∀ n, P9720642282547158892.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P9574005093748275748

`A014963(n+2)*A051543(2*(n+1))`
-/

namespace A099634.P9574005093748275748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A051543 (2 * (n + 1))

end

end A099634.P9574005093748275748

namespace A099634

/-- `A014963(n+2)*A051543(2*(n+1))` -/
def P9574005093748275748.Spec : Prop :=
  ∀ n, P9574005093748275748.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P12602934344876984414

`A020500(n+2)*A051543(2*(n+1))`
-/

namespace A099634.P12602934344876984414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 2) * A051543 (2 * (n + 1))

end

end A099634.P12602934344876984414

namespace A099634

/-- `A020500(n+2)*A051543(2*(n+1))` -/
def P12602934344876984414.Spec : Prop :=
  ∀ n, P12602934344876984414.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P4973736756875825599

`A014963(A103517(n+1))*A014963(n+2)`
-/

namespace A099634.P4973736756875825599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A103517 (n + 1)).toNat * A014963 (n + 2)

end

end A099634.P4973736756875825599

namespace A099634

/-- `A014963(A103517(n+1))*A014963(n+2)` -/
def P4973736756875825599.Spec : Prop :=
  ∀ n, P4973736756875825599.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P7143996416056487038

`A014963(n+2)*A014963(A051755(n+3))`
-/

namespace A099634.P7143996416056487038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A014963 (A051755 (n + 3)).toNat

end

end A099634.P7143996416056487038

namespace A099634

/-- `A014963(n+2)*A014963(A051755(n+3))` -/
def P7143996416056487038.Spec : Prop :=
  ∀ n, P7143996416056487038.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P13728743904682323562

`A014963(A020705(2*n))*A014963(n+2)`
-/

namespace A099634.P13728743904682323562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020705 (2 * n)).toNat * A014963 (n + 2)

end

end A099634.P13728743904682323562

namespace A099634

/-- `A014963(A020705(2*n))*A014963(n+2)` -/
def P13728743904682323562.Spec : Prop :=
  ∀ n, P13728743904682323562.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P6227658558957210425

`A014963(A284459(2*(n+1)))*A014963(n+2)`
-/

namespace A099634.P6227658558957210425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A284459 (2 * (n + 1))).toNat * A014963 (n + 2)

end

end A099634.P6227658558957210425

namespace A099634

/-- `A014963(A284459(2*(n+1)))*A014963(n+2)` -/
def P6227658558957210425.Spec : Prop :=
  ∀ n, P6227658558957210425.a n = A099634 (n + 2)

end A099634

/-! ## A099634.P8922340699880144799

`A082299(A066048(n+2))`
-/

namespace A099634.P8922340699880144799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (A066048 (n + 2)).toNat

end

end A099634.P8922340699880144799

namespace A099634

/-- `A082299(A066048(n+2))` -/
def P8922340699880144799.Spec : Prop :=
  ∀ n, P8922340699880144799.a n = A099634 (n + 2)

end A099634

/-!
# A099635: a(n) = gcd(sum of all prime factors of n, n).

The programs for A099635, the canonical program `A099635.P7439026485216592655` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099635 has offset 1).

The definition of A099635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099635.P7439026485216592655

`gcd(n+1, ∑{p}[n+1, #])`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099635

/-- `gcd(n+1, ∑{p}[n+1, #])` -/
def P7439026485216592655.Spec : Prop :=
  ∀ n, (P7439026485216592655.a n : ℤ) = A099635 (n + 1)

theorem P7439026485216592655.correct : P7439026485216592655.Spec := by
  intro n
  simp only [A099635, Nat.add_sub_cancel]

end A099635

/-! ## A099635.P8518075449096902093

`gcd(n+1, Δ[A024924(n)])`
-/

namespace A099635.P8518075449096902093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A099635.P8518075449096902093

namespace A099635

/-- `gcd(n+1, Δ[A024924(n)])` -/
def P8518075449096902093.Spec : Prop :=
  ∀ n, (P8518075449096902093.a n : ℤ) = A099635 (n + 1)

end A099635

/-! ## A099635.P304550346037317974

`gcd(xor(n, -1), A008472(n+1))`
-/

namespace A099635.P304550346037317974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A008472 (n + 1))

end

end A099635.P304550346037317974

namespace A099635

/-- `gcd(xor(n, -1), A008472(n+1))` -/
def P304550346037317974.Spec : Prop :=
  ∀ n, (P304550346037317974.a n : ℤ) = A099635 (n + 1)

end A099635

/-! ## A099635.P3101693751351654967

`gcd(A076694(n+1), A131738(n))`
-/

namespace A099635.P3101693751351654967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076694 (n + 1)) (A131738 n)

end

end A099635.P3101693751351654967

namespace A099635

/-- `gcd(A076694(n+1), A131738(n))` -/
def P3101693751351654967.Spec : Prop :=
  ∀ n, (P3101693751351654967.a n : ℤ) = A099635 (n + 1)

end A099635

/-! ## A099635.P13157757500256640156

`gcd(A000027(n+1), A075653(n+1))`
-/

namespace A099635.P13157757500256640156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A075653 (n + 1))

end

end A099635.P13157757500256640156

namespace A099635

/-- `gcd(A000027(n+1), A075653(n+1))` -/
def P13157757500256640156.Spec : Prop :=
  ∀ n, (P13157757500256640156.a n : ℤ) = A099635 (n + 1)

end A099635

/-! ## A099635.P12133005508080373586

`gcd(A061019(n+1), A334341(n+1))`
-/

namespace A099635.P12133005508080373586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A334341 (n + 1))

end

end A099635.P12133005508080373586

namespace A099635

/-- `gcd(A061019(n+1), A334341(n+1))` -/
def P12133005508080373586.Spec : Prop :=
  ∀ n, (P12133005508080373586.a n : ℤ) = A099635 (n + 1)

end A099635

/-! ## A099635.P12184637841673259718

`gcd((n+1)*A014963(n+1), A001414(A007947(n+1)))`
-/

namespace A099635.P12184637841673259718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A014963 (n + 1)) (A001414 (A007947 (n + 1)).toNat)

end

end A099635.P12184637841673259718

namespace A099635

/-- `gcd((n+1)*A014963(n+1), A001414(A007947(n+1)))` -/
def P12184637841673259718.Spec : Prop :=
  ∀ n, (P12184637841673259718.a n : ℤ) = A099635 (n + 1)

end A099635

/-!
# A099636: a(n) = gcd(sum of distinct prime factors of n, product of distinct prime factors of n).

The programs for A099636, the canonical program `A099636.P93957620969448997` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099636 has offset 1).

The definition of A099636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099636.P4814154889658100064

`A007947(n+1)/A340677(n+1)`
-/

namespace A099636.P4814154889658100064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A340677 (n + 1) : ℚ)

end

end A099636.P4814154889658100064

namespace A099636

/-- `A007947(n+1)/A340677(n+1)` -/
def P4814154889658100064.Spec : Prop :=
  ∀ n, P4814154889658100064.a n = (A099636 (n + 1) : ℚ)

end A099636

/-! ## A099636.P93957620969448997

`gcd(A007947(n+1), A008472(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099636

/-- `gcd(A007947(n+1), A008472(n+1))` -/
def P93957620969448997.Spec : Prop :=
  ∀ n, (P93957620969448997.a n : ℤ) = A099636 (n + 1)

theorem P93957620969448997.correct : P93957620969448997.Spec := by
  intro n
  simp only [A099636, Nat.add_sub_cancel]

end A099636

/-! ## A099636.P13601309160301149210

`A082299(∏{p}[n+1, #])`
-/

namespace A099636.P13601309160301149210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A099636.P13601309160301149210

namespace A099636

/-- `A082299(∏{p}[n+1, #])` -/
def P13601309160301149210.Spec : Prop :=
  ∀ n, P13601309160301149210.a n = A099636 (n + 1)

end A099636

/-! ## A099636.P16685864089861880245

`A082299(A007947(n+1))`
-/

namespace A099636.P16685864089861880245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (A007947 (n + 1)).toNat

end

end A099636.P16685864089861880245

namespace A099636

/-- `A082299(A007947(n+1))` -/
def P16685864089861880245.Spec : Prop :=
  ∀ n, P16685864089861880245.a n = A099636 (n + 1)

end A099636

/-! ## A099636.P17804623422637605380

`A007947(A099635(n+1))`
-/

namespace A099636.P17804623422637605380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A099635 (n + 1)).toNat

end

end A099636.P17804623422637605380

namespace A099636

/-- `A007947(A099635(n+1))` -/
def P17804623422637605380.Spec : Prop :=
  ∀ n, P17804623422637605380.a n = A099636 (n + 1)

end A099636

/-! ## A099636.P587641627613823504

`A082299((n+1)/A003557(n+1))`
-/

namespace A099636.P587641627613823504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A099636.P587641627613823504

namespace A099636

/-- `A082299((n+1)/A003557(n+1))` -/
def P587641627613823504.Spec : Prop :=
  ∀ n, P587641627613823504.a n = A099636 (n + 1)

end A099636

/-! ## A099636.P2796749490936741940

`gcd(A062953(n+1), A088865(n+1))`
-/

namespace A099636.P2796749490936741940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062953 (n + 1)) (A088865 (n + 1))

end

end A099636.P2796749490936741940

namespace A099636

/-- `gcd(A062953(n+1), A088865(n+1))` -/
def P2796749490936741940.Spec : Prop :=
  ∀ n, (P2796749490936741940.a n : ℤ) = A099636 (n + 1)

end A099636

/-! ## A099636.P1217384066535969541

`gcd(A056315(n+1), A099635(n+1))`
-/

namespace A099636.P1217384066535969541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056315 (n + 1)) (A099635 (n + 1))

end

end A099636.P1217384066535969541

namespace A099636

/-- `gcd(A056315(n+1), A099635(n+1))` -/
def P1217384066535969541.Spec : Prop :=
  ∀ n, (P1217384066535969541.a n : ℤ) = A099636 (n + 1)

end A099636

/-! ## A099636.P12974874926883076658

`A099635(n+1)%A002189(n)`
-/

namespace A099636.P12974874926883076658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099635 (n + 1)) (A002189 n)

end

end A099636.P12974874926883076658

namespace A099636

/-- `A099635(n+1)%A002189(n)` -/
def P12974874926883076658.Spec : Prop :=
  ∀ n, P12974874926883076658.a n = A099636 (n + 1)

end A099636

/-! ## A099636.P932245409689330399

`gcd(n+1, ∑{p}[n+1, (n+1)!+#])`
-/

namespace A099636.P932245409689330399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorial (n + 1) + p))

end

end A099636.P932245409689330399

namespace A099636

/-- `gcd(n+1, ∑{p}[n+1, (n+1)!+#])` -/
def P932245409689330399.Spec : Prop :=
  ∀ n, (P932245409689330399.a n : ℤ) = A099636 (n + 1)

end A099636

/-!
# A099637: Numbers such that gcd(Sum,n) = A099635 and gcd(Sum,Product) = A099636 are not identical. Sum and Product here are the sum and product of all distinct prime factors of n.

The programs for A099637, the canonical program `A099637.P7631160485541919359` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099637 has offset 1).

The definition of A099637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099637.P5797752372364362442

`eq[0, A077618(A099635(n+1))]+1`
-/

namespace A099637.P5797752372364362442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A099635 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099637.P5797752372364362442

namespace A099637

/-- `eq[0, A077618(A099635(n+1))]+1` -/
def P5797752372364362442.Spec : Prop :=
  ∀ n, (P5797752372364362442.a n : ℤ) = A099637 (n + 1)

end A099637

/-! ## A099637.P7631160485541919359

`lt[A099636(n+1), A099635(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099637

/-- `lt[A099636(n+1), A099635(n+1)]+1` -/
def P7631160485541919359.Spec : Prop :=
  ∀ n, (P7631160485541919359.a n : ℤ) = A099637 (n + 1)

theorem P7631160485541919359.correct : P7631160485541919359.Spec := by
  intro n
  simp only [A099637, Nat.add_sub_cancel]

end A099637

/-!
# A099638: a(n) = A098210(n)/15.

The programs for A099638, the canonical program `A099638.P15899235441177012148` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099638 has offset 1).

The definition of A099638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099638.P15899235441177012148

`A098210(n+1)/15`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099638

/-- `A098210(n+1)/15` -/
def P15899235441177012148.Spec : Prop :=
  ∀ n, P15899235441177012148.a n = (A099638 (n + 1) : ℚ)

end A099638

/-! ## A099638.P4565568316503557112

`(lcm(2, floor(10^n/3))+1)*∑[10^n]`
-/

namespace A099638.P4565568316503557112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌊(10 ^ n : ℚ) / 3⌋ + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099638.P4565568316503557112

namespace A099638

/-- `(lcm(2, floor(10^n/3))+1)*∑[10^n]` -/
def P4565568316503557112.Spec : Prop :=
  ∀ n, (P4565568316503557112.a n : ℤ) = A099638 (n + 1)

end A099638

/-! ## A099638.P13510885069281751631

`∑[A011557(n)]*∑[A090019(n)]`
-/

namespace A099638.P13510885069281751631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A099638.P13510885069281751631

namespace A099638

/-- `∑[A011557(n)]*∑[A090019(n)]` -/
def P13510885069281751631.Spec : Prop :=
  ∀ n, P13510885069281751631.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P15932066792553723545

`(A002280(n)+1)*A000042(n+1)`
-/

namespace A099638.P15932066792553723545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002280 n + 1) * A000042 (n + 1)

end

end A099638.P15932066792553723545

namespace A099638

/-- `(A002280(n)+1)*A000042(n+1)` -/
def P15932066792553723545.Spec : Prop :=
  ∀ n, P15932066792553723545.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P11821475415462082761

`A002275(n+1)*A067275(n+1)`
-/

namespace A099638.P11821475415462082761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A067275 (n + 1)

end

end A099638.P11821475415462082761

namespace A099638

/-- `A002275(n+1)*A067275(n+1)` -/
def P11821475415462082761.Spec : Prop :=
  ∀ n, P11821475415462082761.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P12507511415921921887

`(A011557(n)-A002277(n))*∑[A011557(n)]`
-/

namespace A099638.P12507511415921921887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n - A002277 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099638.P12507511415921921887

namespace A099638

/-- `(A011557(n)-A002277(n))*∑[A011557(n)]` -/
def P12507511415921921887.Spec : Prop :=
  ∀ n, P12507511415921921887.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P13678077942428787983

`(A093142(n)+A002275(n))*A002275(n+1)`
-/

namespace A099638.P13678077942428787983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093142 n + A002275 n) * A002275 (n + 1)

end

end A099638.P13678077942428787983

namespace A099638

/-- `(A093142(n)+A002275(n))*A002275(n+1)` -/
def P13678077942428787983.Spec : Prop :=
  ∀ n, P13678077942428787983.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P10084910317233207102

`A000042(n+1)+A002276(n+1)*A002277(n)`
-/

namespace A099638.P10084910317233207102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A002276 (n + 1) * A002277 n

end

end A099638.P10084910317233207102

namespace A099638

/-- `A000042(n+1)+A002276(n+1)*A002277(n)` -/
def P10084910317233207102.Spec : Prop :=
  ∀ n, P10084910317233207102.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P17986324434126508981

`(A000042(n+1)-A002278(n))*A000042(n+1)`
-/

namespace A099638.P17986324434126508981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000042 (n + 1) - A002278 n) * A000042 (n + 1)

end

end A099638.P17986324434126508981

namespace A099638

/-- `(A000042(n+1)-A002278(n))*A000042(n+1)` -/
def P17986324434126508981.Spec : Prop :=
  ∀ n, P17986324434126508981.a n = A099638 (n + 1)

end A099638

/-! ## A099638.P16598648486852726818

`(A002275(n+1)-A002278(n))*A002275(n+1)`
-/

namespace A099638.P16598648486852726818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002275 (n + 1) - A002278 n) * A002275 (n + 1)

end

end A099638.P16598648486852726818

namespace A099638

/-- `(A002275(n+1)-A002278(n))*A002275(n+1)` -/
def P16598648486852726818.Spec : Prop :=
  ∀ n, P16598648486852726818.a n = A099638 (n + 1)

end A099638

/-!
# A099640: Primes with subscripts described in A098213.

The programs for A099640, there is no canonical definition to state claims against.
-/

/-! ## A099640.P16358899934427203287

`A000040(A098213(n+1))`
-/

namespace A099640.P16358899934427203287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098213 (n + 1)).toNat

end

end A099640.P16358899934427203287

/-! ## A099640.P10461801794353880893

`A008578(A098213(n+1)+1)`
-/

namespace A099640.P10461801794353880893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098213 (n + 1) + 1).toNat

end

end A099640.P10461801794353880893

/-! ## A099640.P17744245317880341001

`A182986(A098213(n+1)+1)`
-/

namespace A099640.P17744245317880341001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A098213 (n + 1) + 1).toNat

end

end A099640.P17744245317880341001

/-! ## A099640.P2606380485670682999

`A008864(A098213(n+1))-A079724(n+1)`
-/

namespace A099640.P2606380485670682999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A098213 (n + 1)).toNat - A079724 (n + 1)

end

end A099640.P2606380485670682999

/-!
# A099641: Number of solutions to x*frac[p(x)/x]<=Log[n] or A004648(n)<=Log[n].

The programs for A099641, there is no canonical definition to state claims against.
-/

/-! ## A099641.P7846523885748830010

`lt[A004669(A004648(n+1)), n+2]+1`
-/

namespace A099641.P7846523885748830010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A004648 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A099641.P7846523885748830010

/-! ## A099641.P17920342983987205159

`lt[A317612(n+1), A317638(A317612(3*n+2))]`
-/

namespace A099641.P17920342983987205159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317638 (A317612 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099641.P17920342983987205159

/-! ## A099641.P1821246767347000093

`∑[A117136(record[A028326(n)])]`
-/

namespace A099641.P1821246767347000093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099641.P1821246767347000093

/-! ## A099641.P3821453804495007275

`∑[A355334(A354861(n+4))]`
-/

namespace A099641.P3821453804495007275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355334 (A354861 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099641.P3821453804495007275

/-! ## A099641.P9393742555782132116

`∑[gcd(A322260(n+3), A322305(n))]`
-/

namespace A099641.P9393742555782132116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322260 (n + 3)) (A322305 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099641.P9393742555782132116

/-!
# A099644: a[n]=Mod[q(n),PrimePi[q(n)]]=Mod[A001359(n), A000720(A001359(n))] where q(n) is the n-th lesser-twin-prime. A004648 restricted to lesser twins.

The programs for A099644, the canonical program `A099644.P15863311159365486932` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099644 has offset 1).

The definition of A099644 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099644.P15863311159365486932

`A001359(n+1)%A000720(A001359(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A099644

/-- `A001359(n+1)%A000720(A001359(n+1))` -/
def P15863311159365486932.Spec : Prop :=
  ∀ n, P15863311159365486932.a n = A099644 (n + 1)

theorem P15863311159365486932.correct : P15863311159365486932.Spec := by
  intro n
  simp only [A099644, Nat.add_sub_cancel]

end A099644

/-! ## A099644.P9273507186266122634

`A001359(n+1)%A000720(A001359(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099644.P9273507186266122634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A000720 (A001359 (n + 1) + 1).toNat)

end

end A099644.P9273507186266122634

namespace A099644

/-- `A001359(n+1)%A000720(A001359(n+1)+1)` -/
def P9273507186266122634.Spec : Prop :=
  ∀ n, P9273507186266122634.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P11559434631671090976

`A004648(A029707(n+1))`
-/

namespace A099644.P11559434631671090976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A029707 (n + 1)).toNat

end

end A099644.P11559434631671090976

namespace A099644

/-- `A004648(A029707(n+1))` -/
def P11559434631671090976.Spec : Prop :=
  ∀ n, P11559434631671090976.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P9596355554641234353

`A065134(A001359(n+1))`
-/

namespace A099644.P9596355554641234353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A001359 (n + 1)).toNat

end

end A099644.P9596355554641234353

namespace A099644

/-- `A065134(A001359(n+1))` -/
def P9596355554641234353.Spec : Prop :=
  ∀ n, P9596355554641234353.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P12183021267951402937

`A073438(A014574(n+1))`
-/

namespace A099644.P12183021267951402937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073438 (A014574 (n + 1)).toNat

end

end A099644.P12183021267951402937

namespace A099644

/-- `A073438(A014574(n+1))` -/
def P12183021267951402937.Spec : Prop :=
  ∀ n, P12183021267951402937.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P1206511296165527160

`A065134(A124588(n+2))`
-/

namespace A099644.P1206511296165527160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A124588 (n + 2)).toNat

end

end A099644.P1206511296165527160

namespace A099644

/-- `A065134(A124588(n+2))` -/
def P1206511296165527160.Spec : Prop :=
  ∀ n, P1206511296165527160.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P1867094805935696044

`A065134(A181747(n+2))`
-/

namespace A099644.P1867094805935696044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A181747 (n + 2)).toNat

end

end A099644.P1867094805935696044

namespace A099644

/-- `A065134(A181747(n+2))` -/
def P1867094805935696044.Spec : Prop :=
  ∀ n, P1867094805935696044.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P10824179543648280202

`A004648(eq[2, A075526(n)])`
-/

namespace A099644.P10824179543648280202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099644.P10824179543648280202

namespace A099644

/-- `A004648(eq[2, A075526(n)])` -/
def P10824179543648280202.Spec : Prop :=
  ∀ n, P10824179543648280202.a n = A099644 (n + 1)

end A099644

/-! ## A099644.P16385288095403966696

`A073464(A111166(n+1))+1`
-/

namespace A099644.P16385288095403966696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073464 (A111166 (n + 1)).toNat + 1

end

end A099644.P16385288095403966696

namespace A099644

/-- `A073464(A111166(n+1))+1` -/
def P16385288095403966696.Spec : Prop :=
  ∀ n, P16385288095403966696.a n = A099644 (n + 1)

end A099644

/-!
# A099645: Number of iterations until n reaches a number in A039943 under the sum-of-squares-of-digits map A003132.

The programs for A099645, there is no canonical definition to state claims against.
-/

/-! ## A099645.P12219839639793221990

`A364682(n+1)-1`
-/

namespace A099645.P12219839639793221990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364682 (n + 1) - 1

end

end A099645.P12219839639793221990

/-! ## A099645.P5597052580734349991

`A055400(A193995(n+1))`
-/

namespace A099645.P5597052580734349991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A193995 (n + 1)).toNat

end

end A099645.P5597052580734349991

/-! ## A099645.P8281859934891408591

`A000401(A364682(n+1))`
-/

namespace A099645.P8281859934891408591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A364682 (n + 1)).toNat

end

end A099645.P8281859934891408591

/-! ## A099645.P9662684167155692602

`A193995(n+1)-A031176(n+1)`
-/

namespace A099645.P9662684167155692602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (n + 1) - A031176 (n + 1)

end

end A099645.P9662684167155692602

/-! ## A099645.P7972381765079150439

`A003621(n+1)-A003621(A103369(n+1))`
-/

namespace A099645.P7972381765079150439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (n + 1) - A003621 (A103369 (n + 1)).toNat

end

end A099645.P7972381765079150439

/-! ## A099645.P10521531666235059142

`A193995(n+1)-A193995(A103369(n+1))`
-/

namespace A099645.P10521531666235059142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (n + 1) - A193995 (A103369 (n + 1)).toNat

end

end A099645.P10521531666235059142

/-! ## A099645.P2387643496428768735

`A300081(n+1)-A300081(A103369(n+1))`
-/

namespace A099645.P2387643496428768735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (n + 1) - A300081 (A103369 (n + 1)).toNat

end

end A099645.P2387643496428768735

/-!
# A099646: Function f(n) = 1 + Sum(digit^2 of n) is iterated and a(n) is the length of terminal cycle at initial value n.

The programs for A099646, there is no canonical definition to state claims against.
-/

/-! ## A099646.P2852344329035589523

`A336302(A099652(∏{p}[n+1, gcd((n+1)*(n+2), #²)]))`
-/

namespace A099646.P2852344329035589523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A099652 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2))).toNat

end

end A099646.P2852344329035589523

/-! ## A099646.P10323908867642232107

`A336302(A099652(n+1))`
-/

namespace A099646.P10323908867642232107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A099652 (n + 1)).toNat

end

end A099646.P10323908867642232107

/-! ## A099646.P17702042386468549079

`A178334(2*A099652(n+1))`
-/

namespace A099646.P17702042386468549079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * A099652 (n + 1)).toNat

end

end A099646.P17702042386468549079

/-! ## A099646.P2589356364794662478

`A300838(floor(log(A099652(n+1))))`
-/

namespace A099646.P2589356364794662478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 ⌊Real.log (A099652 (n + 1) : ℝ)⌋.toNat

end

end A099646.P2589356364794662478

/-! ## A099646.P16477696211247937950

`A341538(floor(log(A099652(n+1))))`
-/

namespace A099646.P16477696211247937950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 ⌊Real.log (A099652 (n + 1) : ℝ)⌋.toNat

end

end A099646.P16477696211247937950

/-! ## A099646.P9004073163932421013

`A008459(ceil(log2(A099652(n+1))))`
-/

namespace A099646.P9004073163932421013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 ⌈Real.logb 2 (A099652 (n + 1) : ℝ)⌉.toNat

end

end A099646.P9004073163932421013

/-! ## A099646.P4708848353965356705

`A157169(ceil(log2(A099652(n+1))))`
-/

namespace A099646.P4708848353965356705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157169 ⌈Real.logb 2 (A099652 (n + 1) : ℝ)⌉.toNat

end

end A099646.P4708848353965356705

/-! ## A099646.P13428831769555327710

`A008459(round(log2(A099652(n+1))))`
-/

namespace A099646.P13428831769555327710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 (SequenceMachineLib.roundAway (Real.logb 2 (A099652 (n + 1) : ℝ))).toNat

end

end A099646.P13428831769555327710

/-! ## A099646.P13564238405847695668

`9%A000010(ceil(log(A099652(n+1)))²)`
-/

namespace A099646.P13564238405847695668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A000010 (⌈Real.log (A099652 (n + 1) : ℝ)⌉ ^ 2).toNat)

end

end A099646.P13564238405847695668

/-!
# A099647: Function f[n]=1+Sum[digit^2 of n] is iterated as in A099646. Values x for which A099646[x]=1 are listed here. These terms are analogous to happy-numbers [=A007770].

The programs for A099647, there is no canonical definition to state claims against.
-/

/-! ## A099647.P5376276431166912369

`eq[1, A099646(n+1)]+1`
-/

namespace A099647.P5376276431166912369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099646 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099647.P5376276431166912369

/-! ## A099647.P9751473473755091720

`eq[1, A099646(A028310(n))]`
-/

namespace A099647.P9751473473755091720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099646 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099647.P9751473473755091720

/-! ## A099647.P5755739122081997542

`eq[1, A099646(A060000(n+1))]`
-/

namespace A099647.P5755739122081997542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099646 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099647.P5755739122081997542

/-! ## A099647.P7725536586363112337

`A063660(eq[1, A099646(n+1)])`
-/

namespace A099647.P7725536586363112337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099647.P7725536586363112337

/-! ## A099647.P13158676664021002054

`eq[1, A099646(A233583(n+1))]`
-/

namespace A099647.P13158676664021002054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099646 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099647.P13158676664021002054

/-! ## A099647.P9941189569226167458

`eq[1, A099646(A000007(n)+n)]`
-/

namespace A099647.P9941189569226167458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099646 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099647.P9941189569226167458

/-!
# A099649: Solutions to A099648(k) > k; i.e., numbers such that the largest term in the iteration of the A003132() function strictly exceeds the initial value.

The programs for A099649, there is no canonical definition to state claims against.
-/

/-! ## A099649.P2191716593533977775

`lt[acot(A102677(n)), A031176(n)]`
-/

namespace A099649.P2191716593533977775
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A102677 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A099649.P2191716593533977775

/-! ## A099649.P2087853252828179264

`lt[acot(A102679(n)), A031176(n)]`
-/

namespace A099649.P2087853252828179264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A102679 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A099649.P2087853252828179264

/-! ## A099649.P2827708603706241231

`lt[A033999(A004086(2*n)), A031176(n)]`
-/

namespace A099649.P2827708603706241231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004086 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099649.P2827708603706241231

/-!
# A099651: For each of the C(10,2) = 45 pairs of decimal digits, record the smallest prime containing only these digits (if one exists); sort.

The programs for A099651, there is no canonical definition to state claims against.
-/

/-! ## A099651.P7524765538833998699

`∩[A031955(n+1), A100370(n+1)]`
-/

namespace A099651.P7524765538833998699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099651.P7524765538833998699

/-! ## A099651.P8742153454032363347

`∩[A100370(n+1), A132077(n+1)]`
-/

namespace A099651.P8742153454032363347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099651.P8742153454032363347

/-! ## A099651.P1387841915220242226

`∩[A100370(n+1), A235154(n+1)]`
-/

namespace A099651.P1387841915220242226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099651.P1387841915220242226

/-! ## A099651.P9542428666977600541

`A015161(n)!*A100370(n+6)`
-/

namespace A099651.P9542428666977600541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015161 n).toNat : ℤ) * A100370 (n + 6)

end

end A099651.P9542428666977600541

/-! ## A099651.P14018233621827288040

`A006530(A100370(n+6)*A168523(n))`
-/

namespace A099651.P14018233621827288040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100370 (n + 6) * A168523 n).toNat

end

end A099651.P14018233621827288040

/-!
# A099652: Largest number arising if f[x]=1+A003132(x) function is iterated until steady state reached. Compare with A099648.

The programs for A099652, there is no canonical definition to state claims against.
-/

/-! ## A099652.P793190656254790006

`A308893(or(27, A308873(n)))`
-/

namespace A099652.P793190656254790006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308893 (Int.lor 27 (A308873 n)).toNat

end

end A099652.P793190656254790006

/-! ## A099652.P13432123599793958260

`A038081(A048993(n))+106`
-/

namespace A099652.P13432123599793958260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038081 (A048993 n).toNat + 106

end

end A099652.P13432123599793958260

/-! ## A099652.P5910527488147833977

`A308003(A110217(4*n+2))-3`
-/

namespace A099652.P5910527488147833977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 (A110217 (4 * n + 2)).toNat - 3

end

end A099652.P5910527488147833977

/-! ## A099652.P5269417235775036868

`A308893(or(27, A328376(n)))`
-/

namespace A099652.P5269417235775036868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308893 (Int.lor 27 (A328376 n)).toNat

end

end A099652.P5269417235775036868

/-! ## A099652.P18047348704815940894

`A064113(A028657(n)^A051775(2*n+1)+9)`
-/

namespace A099652.P18047348704815940894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (SequenceMachineLib.roundAway ((A028657 n : ℚ) ^ (A051775 (2 * n + 1) : ℤ) + 9)).toNat

end

end A099652.P18047348704815940894

/-!
# A099655: a[n]=A098085[n]-A096215[n], difference between next and previous primes to A011974[n], the sum of two consecutive primes.

The programs for A099655, there is no canonical definition to state claims against.
-/

/-! ## A099655.P17030663845426703996

`A013633(Δ[A061802(n)])`
-/

namespace A099655.P17030663845426703996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (f1 (n + 1) - f1 n).toNat

end

end A099655.P17030663845426703996

/-! ## A099655.P1019019969494775556

`A013633(A001043(n+1))`
-/

namespace A099655.P1019019969494775556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A001043 (n + 1)).toNat

end

end A099655.P1019019969494775556

/-! ## A099655.P1849082264183435840

`A013633(A011974(n+2))`
-/

namespace A099655.P1849082264183435840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A011974 (n + 2)).toNat

end

end A099655.P1849082264183435840

/-! ## A099655.P14834648286643169291

`A013633(A013634(p?[xor(1, n)]))`
-/

namespace A099655.P14834648286643169291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A013634 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A099655.P14834648286643169291

/-! ## A099655.P2159974236650654776

`A013633(A092949(n+1)-1)`
-/

namespace A099655.P2159974236650654776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A092949 (n + 1) - 1).toNat

end

end A099655.P2159974236650654776

/-! ## A099655.P11667167876274220692

`A166597(lcm(2, A001043(n+1)))`
-/

namespace A099655.P11667167876274220692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (Int.lcm 2 (A001043 (n + 1)))

end

end A099655.P11667167876274220692

/-! ## A099655.P14908772617018446766

`A013633(∑{p}[A006094(n+1), #])`
-/

namespace A099655.P14908772617018446766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A099655.P14908772617018446766

/-! ## A099655.P3268734974309013003

`A013633(A013635(p?[2*n+1]))`
-/

namespace A099655.P3268734974309013003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A013635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A099655.P3268734974309013003

/-! ## A099655.P5130221326468231966

`A013633(A013634(A008578(n+2)))`
-/

namespace A099655.P5130221326468231966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A013634 (A008578 (n + 2)).toNat).toNat

end

end A099655.P5130221326468231966

/-! ## A099655.P6741381175507129508

`A013633(A000040(n+1)+A000040(n+2))`
-/

namespace A099655.P6741381175507129508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A099655.P6741381175507129508

/-!
# A099656: a(n) is the least prime following A002276(n) repdigits.

The programs for A099656, there is no canonical definition to state claims against.
-/

/-! ## A099656.P8003604322159344059

`A151800(∑[floor(10^n/5)])`
-/

namespace A099656.P8003604322159344059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099656.P8003604322159344059

/-! ## A099656.P10343288731133304033

`or(n, A151800(2*(10^n-1)/9))`
-/

namespace A099656.P10343288731133304033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A151800 (SequenceMachineLib.roundAway (2 * (((10 ^ n : ℤ) - 1 : ℚ) / 9))).toNat)

end

end A099656.P10343288731133304033

/-!
# A099657: a(n) is the least prime following A002277(n) repdigits.

The programs for A099657, there is no canonical definition to state claims against.
-/

/-! ## A099657.P18168340057601045546

`A195985(∑[∑[A287283(n)]])`
-/

namespace A099657.P18168340057601045546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099657.P18168340057601045546

/-! ## A099657.P17343910218295364306

`A195985(A004277(n)^A005710(n))`
-/

namespace A099657.P17343910218295364306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195985 (SequenceMachineLib.roundAway ((A004277 n : ℚ) ^ (A005710 n : ℤ))).toNat

end

end A099657.P17343910218295364306

/-! ## A099657.P15247937715358171813

`A195985(A004277(n)^A144871(n+1))`
-/

namespace A099657.P15247937715358171813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195985 (SequenceMachineLib.roundAway ((A004277 n : ℚ) ^ (A144871 (n + 1) : ℤ))).toNat

end

end A099657.P15247937715358171813

/-! ## A099657.P3213053984069172760

`A119788(A098657(n))*A195985(A004277(n))`
-/

namespace A099657.P3213053984069172760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A098657 n).toNat * A195985 (A004277 n).toNat

end

end A099657.P3213053984069172760

/-!
# A099658: a(n) is the smallest prime greater than 4(10^n - 1)/9.

The programs for A099658, there is no canonical definition to state claims against.
-/

/-! ## A099658.P1124532551604899153

`A151800(floor(4/9*10^n))`
-/

namespace A099658.P1124532551604899153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(4 : ℚ) / 9 * (10 ^ n : ℚ)⌋.toNat

end

end A099658.P1124532551604899153

/-!
# A099659: a(n) is the least prime following A002279(n) repdigits.

The programs for A099659, there is no canonical definition to state claims against.
-/

/-! ## A099659.P10108493188151087005

`A151800(∑[5*10^n])`
-/

namespace A099659.P10108493188151087005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099659.P10108493188151087005

/-!
# A099660: a(n) is the least prime following A002280[n] repdigits.

The programs for A099660, there is no canonical definition to state claims against.
-/

/-! ## A099660.P1612445010684872138

`A151800(floor(2/3*10^n))`
-/

namespace A099660.P1612445010684872138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋.toNat

end

end A099660.P1612445010684872138

/-!
# A099661: a(n) is the least prime following A002281(n) repdigits.

The programs for A099661, there is no canonical definition to state claims against.
-/

/-! ## A099661.P16189804076574764182

`A151800(floor(7/9*10^n))`
-/

namespace A099661.P16189804076574764182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋.toNat

end

end A099661.P16189804076574764182

/-! ## A099661.P14522303079492817323

`or(n, A151800(A002281(n)))`
-/

namespace A099661.P14522303079492817323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A151800 (A002281 n).toNat)

end

end A099661.P14522303079492817323

/-!
# A099662: a(n) is the least prime following A002282(n) repdigits.

The programs for A099662, there is no canonical definition to state claims against.
-/

/-! ## A099662.P16712917908603929493

`A151800(floor(8/9*10^n))`
-/

namespace A099662.P16712917908603929493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(8 : ℚ) / 9 * (10 ^ n : ℚ)⌋.toNat

end

end A099662.P16712917908603929493

/-! ## A099662.P551551712678251514

`and(-1, A151800(A002282(n)))`
-/

namespace A099662.P551551712678251514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (A002282 n).toNat)

end

end A099662.P551551712678251514

/-!
# A099668: a(n) is the largest prime before A002282(n) repdigits.

The programs for A099668, there is no canonical definition to state claims against.
-/

/-! ## A099668.P11089802400756708249

`A068692(n+1)-A005882(A003374(3*n+5))`
-/

namespace A099668.P11089802400756708249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068692 (n + 1) - A005882 (A003374 (3 * n + 5)).toNat

end

end A099668.P11089802400756708249

/-! ## A099668.P13110659036408087146

`A068692(n+1)-A128064(A319056(3*(n+1)))`
-/

namespace A099668.P13110659036408087146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068692 (n + 1) - A128064 (A319056 (3 * (n + 1))).toNat

end

end A099668.P13110659036408087146

/-!
# A099669: Partial sums of repdigits of A002276.

The programs for A099669, the canonical program `A099669.P1520235688391122638` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099669 has offset 1).

The definition of A099669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099669.P1520235688391122638

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=2, a(1)=24, a(2)=246`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099669

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P1520235688391122638.Spec : Prop :=
  ∀ n, P1520235688391122638.a n = A099669 (n + 1)

theorem P1520235688391122638.correct : P1520235688391122638.Spec := by
  intro n
  simp only [A099669, Nat.add_sub_cancel]

end A099669

/-! ## A099669.P7806025980164317642

`2*A014824(n+1)`
-/

namespace A099669.P7806025980164317642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014824 (n + 1)

end

end A099669.P7806025980164317642

namespace A099669

/-- `2*A014824(n+1)` -/
def P7806025980164317642.Spec : Prop :=
  ∀ n, P7806025980164317642.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P3633162824089397522

`2/81*(10^(n+2)-9*(n+1)-10)`
-/

namespace A099669.P3633162824089397522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 81 * ((10 ^ (n + 2) : ℤ) - (9 * (n + 1) : ℤ) - 10 : ℚ)

end

end A099669.P3633162824089397522

namespace A099669

/-- `2/81*(10^(n+2)-9*(n+1)-10)` -/
def P3633162824089397522.Spec : Prop :=
  ∀ n, P3633162824089397522.a n = (A099669 (n + 1) : ℚ)

theorem P3633162824089397522.correct : P3633162824089397522.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099669, Nat.add_sub_cancel, A099669.P3633162824089397522.a, A099669.P1520235688391122638.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099669, Nat.add_sub_cancel, A099669.P3633162824089397522.a, A099669.P1520235688391122638.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099669

/-! ## A099669.P7518082835605202307

`∑[ogf(2/(1-11x+10x^2))]`
-/

namespace A099669.P7518082835605202307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P7518082835605202307

namespace A099669

/-- `∑[ogf(2/(1-11x+10x^2))]` -/
def P7518082835605202307.Spec : Prop :=
  ∀ n, P7518082835605202307.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P4411343815337311377

`ogf(2/(1-12x+21x^2-10x^3))`
-/

namespace A099669.P4411343815337311377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -12, 21, -10] n

end

end A099669.P4411343815337311377

namespace A099669

/-- `ogf(2/(1-12x+21x^2-10x^3))` -/
def P4411343815337311377.Spec : Prop :=
  ∀ n, P4411343815337311377.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P13635692493957179205

`∑[∑[10*a(n-1)]]` with `a(0)=2`
-/

namespace A099669.P13635692493957179205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P13635692493957179205

namespace A099669

/-- `∑[∑[10*a(n-1)]]` -/
def P13635692493957179205.Spec : Prop :=
  ∀ n, (P13635692493957179205.a n : ℤ) = A099669 (n + 1)

end A099669

/-! ## A099669.P4757493962011865166

`∑[A002276(n+1)]`
-/

namespace A099669.P4757493962011865166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P4757493962011865166

namespace A099669

/-- `∑[A002276(n+1)]` -/
def P4757493962011865166.Spec : Prop :=
  ∀ n, P4757493962011865166.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P4087034706405928935

`Δ[2*A052262(n)]`
-/

namespace A099669.P4087034706405928935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099669.P4087034706405928935

namespace A099669

/-- `Δ[2*A052262(n)]` -/
def P4087034706405928935.Spec : Prop :=
  ∀ n, P4087034706405928935.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P10128156168042143465

`A099671(n+1)/2`
-/

namespace A099669.P10128156168042143465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099671 (n + 1) : ℚ) / 2

end

end A099669.P10128156168042143465

namespace A099669

/-- `A099671(n+1)/2` -/
def P10128156168042143465.Spec : Prop :=
  ∀ n, P10128156168042143465.a n = (A099669 (n + 1) : ℚ)

end A099669

/-! ## A099669.P14258729754326275217

`A099673(n+1)/3`
-/

namespace A099669.P14258729754326275217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099673 (n + 1) : ℚ) / 3

end

end A099669.P14258729754326275217

namespace A099669

/-- `A099673(n+1)/3` -/
def P14258729754326275217.Spec : Prop :=
  ∀ n, P14258729754326275217.a n = (A099669 (n + 1) : ℚ)

end A099669

/-! ## A099669.P16968325950679938718

`A099675(n+1)/4`
-/

namespace A099669.P16968325950679938718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099675 (n + 1) : ℚ) / 4

end

end A099669.P16968325950679938718

namespace A099669

/-- `A099675(n+1)/4` -/
def P16968325950679938718.Spec : Prop :=
  ∀ n, P16968325950679938718.a n = (A099669 (n + 1) : ℚ)

end A099669

/-! ## A099669.P8365221275408745135

`A346535(9*n+2)`
-/

namespace A099669.P8365221275408745135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (9 * n + 2)

end

end A099669.P8365221275408745135

namespace A099669

/-- `A346535(9*n+2)` -/
def P8365221275408745135.Spec : Prop :=
  ∀ n, P8365221275408745135.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P11103133173356467235

`∑[∑[A093136(n+1)]]`
-/

namespace A099669.P11103133173356467235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P11103133173356467235

namespace A099669

/-- `∑[∑[A093136(n+1)]]` -/
def P11103133173356467235.Spec : Prop :=
  ∀ n, P11103133173356467235.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P2581907417237705744

`∑[∑[A035071(2*n)]]`
-/

namespace A099669.P2581907417237705744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P2581907417237705744

namespace A099669

/-- `∑[∑[A035071(2*n)]]` -/
def P2581907417237705744.Spec : Prop :=
  ∀ n, P2581907417237705744.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P16392284590320280089

`Δ[2*∑[A014824(n)]]`
-/

namespace A099669.P16392284590320280089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099669.P16392284590320280089

namespace A099669

/-- `Δ[2*∑[A014824(n)]]` -/
def P16392284590320280089.Spec : Prop :=
  ∀ n, P16392284590320280089.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P11018123782212065342

`∑[A094626(2*(n+1))]`
-/

namespace A099669.P11018123782212065342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P11018123782212065342

namespace A099669

/-- `∑[A094626(2*(n+1))]` -/
def P11018123782212065342.Spec : Prop :=
  ∀ n, P11018123782212065342.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P1477458988351808548

`∑[A228158(2*n+1)]`
-/

namespace A099669.P1477458988351808548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228158 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P1477458988351808548

namespace A099669

/-- `∑[A228158(2*n+1)]` -/
def P1477458988351808548.Spec : Prop :=
  ∀ n, P1477458988351808548.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P18029577077674706853

`∑[A322925(2*(n+1))]`
-/

namespace A099669.P18029577077674706853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P18029577077674706853

namespace A099669

/-- `∑[A322925(2*(n+1))]` -/
def P18029577077674706853.Spec : Prop :=
  ∀ n, P18029577077674706853.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P9068985519220752991

`∑[∑[A004643(2*n+1)]]`
-/

namespace A099669.P9068985519220752991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099669.P9068985519220752991

namespace A099669

/-- `∑[∑[A004643(2*n+1)]]` -/
def P9068985519220752991.Spec : Prop :=
  ∀ n, P9068985519220752991.a n = A099669 (n + 1)

end A099669

/-! ## A099669.P17479669733155548437

`(A064617(n+1)-(n+1))/4`
-/

namespace A099669.P17479669733155548437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064617 (n + 1) - (n + 1 : ℤ) : ℚ) / 4

end

end A099669.P17479669733155548437

namespace A099669

/-- `(A064617(n+1)-(n+1))/4` -/
def P17479669733155548437.Spec : Prop :=
  ∀ n, P17479669733155548437.a n = (A099669 (n + 1) : ℚ)

end A099669

/-!
# A099670: Partial sums of repdigits of A002277.

The programs for A099670, the canonical program `A099670.P10091738512832222339` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099670 has offset 1).

The definition of A099670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099670.P10091738512832222339

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=3, a(1)=36, a(2)=369`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099670

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P10091738512832222339.Spec : Prop :=
  ∀ n, P10091738512832222339.a n = A099670 (n + 1)

theorem P10091738512832222339.correct : P10091738512832222339.Spec := by
  intro n
  simp only [A099670, Nat.add_sub_cancel]

end A099670

/-! ## A099670.P11041066307997110430

`3*A014824(n+1)`
-/

namespace A099670.P11041066307997110430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014824 (n + 1)

end

end A099670.P11041066307997110430

namespace A099670

/-- `3*A014824(n+1)` -/
def P11041066307997110430.Spec : Prop :=
  ∀ n, P11041066307997110430.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P16046079242234832085

`3/81*(10^(n+2)-9*(n+1)-10)`
-/

namespace A099670.P16046079242234832085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 81 * ((10 ^ (n + 2) : ℤ) - (9 * (n + 1) : ℤ) - 10 : ℚ)

end

end A099670.P16046079242234832085

namespace A099670

/-- `3/81*(10^(n+2)-9*(n+1)-10)` -/
def P16046079242234832085.Spec : Prop :=
  ∀ n, P16046079242234832085.a n = (A099670 (n + 1) : ℚ)

theorem P16046079242234832085.correct : P16046079242234832085.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099670, Nat.add_sub_cancel, A099670.P16046079242234832085.a, A099670.P10091738512832222339.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099670, Nat.add_sub_cancel, A099670.P16046079242234832085.a, A099670.P10091738512832222339.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099670

/-! ## A099670.P10054156403266689856

`∑[ogf(3/(1-11x+10x^2))]`
-/

namespace A099670.P10054156403266689856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P10054156403266689856

namespace A099670

/-- `∑[ogf(3/(1-11x+10x^2))]` -/
def P10054156403266689856.Spec : Prop :=
  ∀ n, P10054156403266689856.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P1413542105456193119

`ogf(3/(1-12x+21x^2-10x^3))`
-/

namespace A099670.P1413542105456193119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -12, 21, -10] n

end

end A099670.P1413542105456193119

namespace A099670

/-- `ogf(3/(1-12x+21x^2-10x^3))` -/
def P1413542105456193119.Spec : Prop :=
  ∀ n, P1413542105456193119.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P5296210474784873107

`∑[∑[10*a(n-1)]]` with `a(0)=3`
-/

namespace A099670.P5296210474784873107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P5296210474784873107

namespace A099670

/-- `∑[∑[10*a(n-1)]]` -/
def P5296210474784873107.Spec : Prop :=
  ∀ n, (P5296210474784873107.a n : ℤ) = A099670 (n + 1)

end A099670

/-! ## A099670.P11027725310126576686

`3*(n+1)+10*a(n-1)` with `a(0)=3`
-/

namespace A099670.P11027725310126576686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * (n + 1) + 10 * a (n - 1)

end

end A099670.P11027725310126576686

namespace A099670

/-- `3*(n+1)+10*a(n-1)` -/
def P11027725310126576686.Spec : Prop :=
  ∀ n, (P11027725310126576686.a n : ℤ) = A099670 (n + 1)

end A099670

/-! ## A099670.P17060742705967696549

`∑[A002277(n+1)]`
-/

namespace A099670.P17060742705967696549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P17060742705967696549

namespace A099670

/-- `∑[A002277(n+1)]` -/
def P17060742705967696549.Spec : Prop :=
  ∀ n, P17060742705967696549.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P16371728109056784776

`A133462(n+2)-1`
-/

namespace A099670.P16371728109056784776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133462 (n + 2) - 1

end

end A099670.P16371728109056784776

namespace A099670

/-- `A133462(n+2)-1` -/
def P16371728109056784776.Spec : Prop :=
  ∀ n, P16371728109056784776.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P485541898326818761

`A099673(n+1)/2`
-/

namespace A099670.P485541898326818761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099673 (n + 1) : ℚ) / 2

end

end A099670.P485541898326818761

namespace A099670

/-- `A099673(n+1)/2` -/
def P485541898326818761.Spec : Prop :=
  ∀ n, P485541898326818761.a n = (A099670 (n + 1) : ℚ)

end A099670

/-! ## A099670.P5439539911391874092

`∑[∑[A093138(n+1)]]`
-/

namespace A099670.P5439539911391874092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P5439539911391874092

namespace A099670

/-- `∑[∑[A093138(n+1)]]` -/
def P5439539911391874092.Spec : Prop :=
  ∀ n, P5439539911391874092.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P6495886289071598772

`∑[A096483(2*(n+1))]`
-/

namespace A099670.P6495886289071598772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096483 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P6495886289071598772

namespace A099670

/-- `∑[A096483(2*(n+1))]` -/
def P6495886289071598772.Spec : Prop :=
  ∀ n, P6495886289071598772.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P13586823317716066746

`∑[A083178(3*(n+1))]`
-/

namespace A099670.P13586823317716066746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083178 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P13586823317716066746

namespace A099670

/-- `∑[A083178(3*(n+1))]` -/
def P13586823317716066746.Spec : Prop :=
  ∀ n, P13586823317716066746.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P11856531580804981424

`∑[A133201(3*(n+1))]`
-/

namespace A099670.P11856531580804981424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P11856531580804981424

namespace A099670

/-- `∑[A133201(3*(n+1))]` -/
def P11856531580804981424.Spec : Prop :=
  ∀ n, P11856531580804981424.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P2261141309175428316

`∑[A289006(3*(n+1))]`
-/

namespace A099670.P2261141309175428316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289006 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P2261141309175428316

namespace A099670

/-- `∑[A289006(3*(n+1))]` -/
def P2261141309175428316.Spec : Prop :=
  ∀ n, P2261141309175428316.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P18167555567373217689

`∑[∑[A004663(2*n+1)]]`
-/

namespace A099670.P18167555567373217689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P18167555567373217689

namespace A099670

/-- `∑[∑[A004663(2*n+1)]]` -/
def P18167555567373217689.Spec : Prop :=
  ∀ n, P18167555567373217689.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P2631712379582844302

`∑[∑[A125521(2*n+1)]]`
-/

namespace A099670.P2631712379582844302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125521 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099670.P2631712379582844302

namespace A099670

/-- `∑[∑[A125521(2*n+1)]]` -/
def P2631712379582844302.Spec : Prop :=
  ∀ n, P2631712379582844302.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P2363957284409561046

`A346535(A017197(n))`
-/

namespace A099670.P2363957284409561046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017197 n).toNat

end

end A099670.P2363957284409561046

namespace A099670

/-- `A346535(A017197(n))` -/
def P2363957284409561046.Spec : Prop :=
  ∀ n, P2363957284409561046.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P983619923564949384

`A346535(A017209(n)-1)`
-/

namespace A099670.P983619923564949384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017209 n - 1).toNat

end

end A099670.P983619923564949384

namespace A099670

/-- `A346535(A017209(n)-1)` -/
def P983619923564949384.Spec : Prop :=
  ∀ n, P983619923564949384.a n = A099670 (n + 1)

end A099670

/-! ## A099670.P795093399534354036

`A346535(A017221(n)-2)`
-/

namespace A099670.P795093399534354036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017221 n - 2).toNat

end

end A099670.P795093399534354036

namespace A099670

/-- `A346535(A017221(n)-2)` -/
def P795093399534354036.Spec : Prop :=
  ∀ n, P795093399534354036.a n = A099670 (n + 1)

end A099670

/-!
# A099671: Partial sums of repdigits of A002278.

The programs for A099671, the canonical program `A099671.P4128966633216356795` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099671 has offset 1).

The definition of A099671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099671.P4128966633216356795

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=4, a(1)=48, a(2)=492`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099671

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P4128966633216356795.Spec : Prop :=
  ∀ n, P4128966633216356795.a n = A099671 (n + 1)

theorem P4128966633216356795.correct : P4128966633216356795.Spec := by
  intro n
  simp only [A099671, Nat.add_sub_cancel]

end A099671

/-! ## A099671.P10183717536641047761

`4*A014824(n+1)`
-/

namespace A099671.P10183717536641047761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014824 (n + 1)

end

end A099671.P10183717536641047761

namespace A099671

/-- `4*A014824(n+1)` -/
def P10183717536641047761.Spec : Prop :=
  ∀ n, P10183717536641047761.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P15514535747358433936

`4/81*(10^(n+2)-9*(n+1)-10)`
-/

namespace A099671.P15514535747358433936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 81 * ((10 ^ (n + 2) : ℤ) - (9 * (n + 1) : ℤ) - 10 : ℚ)

end

end A099671.P15514535747358433936

namespace A099671

/-- `4/81*(10^(n+2)-9*(n+1)-10)` -/
def P15514535747358433936.Spec : Prop :=
  ∀ n, P15514535747358433936.a n = (A099671 (n + 1) : ℚ)

theorem P15514535747358433936.correct : P15514535747358433936.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099671, Nat.add_sub_cancel, A099671.P15514535747358433936.a, A099671.P4128966633216356795.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099671, Nat.add_sub_cancel, A099671.P15514535747358433936.a, A099671.P4128966633216356795.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099671

/-! ## A099671.P10924965466105213949

`∑[ogf(4/(1-11x+10x^2))]`
-/

namespace A099671.P10924965466105213949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099671.P10924965466105213949

namespace A099671

/-- `∑[ogf(4/(1-11x+10x^2))]` -/
def P10924965466105213949.Spec : Prop :=
  ∀ n, P10924965466105213949.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P4575561084144693810

`ogf(4/(1-12x+21x^2-10x^3))`
-/

namespace A099671.P4575561084144693810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -12, 21, -10] n

end

end A099671.P4575561084144693810

namespace A099671

/-- `ogf(4/(1-12x+21x^2-10x^3))` -/
def P4575561084144693810.Spec : Prop :=
  ∀ n, P4575561084144693810.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P8524421738228860766

`∑[∑[10*a(n-1)]]` with `a(0)=4`
-/

namespace A099671.P8524421738228860766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099671.P8524421738228860766

namespace A099671

/-- `∑[∑[10*a(n-1)]]` -/
def P8524421738228860766.Spec : Prop :=
  ∀ n, (P8524421738228860766.a n : ℤ) = A099671 (n + 1)

end A099671

/-! ## A099671.P17356852666170757415

`4*(n+1)+10*a(n-1)` with `a(0)=4`
-/

namespace A099671.P17356852666170757415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * (n + 1) + 10 * a (n - 1)

end

end A099671.P17356852666170757415

namespace A099671

/-- `4*(n+1)+10*a(n-1)` -/
def P17356852666170757415.Spec : Prop :=
  ∀ n, (P17356852666170757415.a n : ℤ) = A099671 (n + 1)

end A099671

/-! ## A099671.P5236981151152360121

`∑[A002278(n+1)]`
-/

namespace A099671.P5236981151152360121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099671.P5236981151152360121

namespace A099671

/-- `∑[A002278(n+1)]` -/
def P5236981151152360121.Spec : Prop :=
  ∀ n, P5236981151152360121.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P1731660023513874793

`Δ[4*A052262(n)]`
-/

namespace A099671.P1731660023513874793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099671.P1731660023513874793

namespace A099671

/-- `Δ[4*A052262(n)]` -/
def P1731660023513874793.Spec : Prop :=
  ∀ n, P1731660023513874793.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P6441348824823643131

`A099675(n+1)/2`
-/

namespace A099671.P6441348824823643131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099675 (n + 1) : ℚ) / 2

end

end A099671.P6441348824823643131

namespace A099671

/-- `A099675(n+1)/2` -/
def P6441348824823643131.Spec : Prop :=
  ∀ n, P6441348824823643131.a n = (A099671 (n + 1) : ℚ)

end A099671

/-! ## A099671.P17974981753100888278

`∑[∑[A093141(n+1)]]`
-/

namespace A099671.P17974981753100888278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099671.P17974981753100888278

namespace A099671

/-- `∑[∑[A093141(n+1)]]` -/
def P17974981753100888278.Spec : Prop :=
  ∀ n, P17974981753100888278.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P14105303507443794442

`∑[A002282(n+1)]/2`
-/

namespace A099671.P14105303507443794442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A099671.P14105303507443794442

namespace A099671

/-- `∑[A002282(n+1)]/2` -/
def P14105303507443794442.Spec : Prop :=
  ∀ n, P14105303507443794442.a n = (A099671 (n + 1) : ℚ)

end A099671

/-! ## A099671.P8956608887987724464

`4*A099669(n+1)/2`
-/

namespace A099671.P8956608887987724464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A099669 (n + 1) : ℚ) / 2

end

end A099671.P8956608887987724464

namespace A099671

/-- `4*A099669(n+1)/2` -/
def P8956608887987724464.Spec : Prop :=
  ∀ n, P8956608887987724464.a n = (A099671 (n + 1) : ℚ)

end A099671

/-! ## A099671.P10401564076090637710

`∑[∑[A097112(2*n+1)]]`
-/

namespace A099671.P10401564076090637710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099671.P10401564076090637710

namespace A099671

/-- `∑[∑[A097112(2*n+1)]]` -/
def P10401564076090637710.Spec : Prop :=
  ∀ n, P10401564076090637710.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P8650986792642822331

`∑[∑[A346178(n+1)]]/2`
-/

namespace A099671.P8650986792642822331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A099671.P8650986792642822331

namespace A099671

/-- `∑[∑[A346178(n+1)]]/2` -/
def P8650986792642822331.Spec : Prop :=
  ∀ n, P8650986792642822331.a n = (A099671 (n + 1) : ℚ)

end A099671

/-! ## A099671.P15664325126157732583

`(A064617(n+1)-(n+1))/2`
-/

namespace A099671.P15664325126157732583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064617 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A099671.P15664325126157732583

namespace A099671

/-- `(A064617(n+1)-(n+1))/2` -/
def P15664325126157732583.Spec : Prop :=
  ∀ n, P15664325126157732583.a n = (A099671 (n + 1) : ℚ)

end A099671

/-! ## A099671.P18115241854919414667

`A346535(A017209(n))`
-/

namespace A099671.P18115241854919414667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017209 n).toNat

end

end A099671.P18115241854919414667

namespace A099671

/-- `A346535(A017209(n))` -/
def P18115241854919414667.Spec : Prop :=
  ∀ n, P18115241854919414667.a n = A099671 (n + 1)

end A099671

/-! ## A099671.P6751774521511566345

`A099672(n+1)-A014824(n+1)`
-/

namespace A099671.P6751774521511566345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099672 (n + 1) - A014824 (n + 1)

end

end A099671.P6751774521511566345

namespace A099671

/-- `A099672(n+1)-A014824(n+1)` -/
def P6751774521511566345.Spec : Prop :=
  ∀ n, P6751774521511566345.a n = A099671 (n + 1)

end A099671

/-!
# A099672: Partial sums of repdigits of A002279.

The programs for A099672, the canonical program `A099672.P7127574140454588012` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099672 has offset 1).

The definition of A099672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099672.P7127574140454588012

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=5, a(1)=60, a(2)=615`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099672

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P7127574140454588012.Spec : Prop :=
  ∀ n, P7127574140454588012.a n = A099672 (n + 1)

theorem P7127574140454588012.correct : P7127574140454588012.Spec := by
  intro n
  simp only [A099672, Nat.add_sub_cancel]

end A099672

/-! ## A099672.P7516862131492015028

`5*A014824(n+1)`
-/

namespace A099672.P7516862131492015028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014824 (n + 1)

end

end A099672.P7516862131492015028

namespace A099672

/-- `5*A014824(n+1)` -/
def P7516862131492015028.Spec : Prop :=
  ∀ n, P7516862131492015028.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P13408017640590497900

`5/81*(10^(n+2)-9*(n+1)-10)`
-/

namespace A099672.P13408017640590497900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 81 * ((10 ^ (n + 2) : ℤ) - (9 * (n + 1) : ℤ) - 10 : ℚ)

end

end A099672.P13408017640590497900

namespace A099672

/-- `5/81*(10^(n+2)-9*(n+1)-10)` -/
def P13408017640590497900.Spec : Prop :=
  ∀ n, P13408017640590497900.a n = (A099672 (n + 1) : ℚ)

theorem P13408017640590497900.correct : P13408017640590497900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099672, Nat.add_sub_cancel, A099672.P13408017640590497900.a, A099672.P7127574140454588012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099672, Nat.add_sub_cancel, A099672.P13408017640590497900.a, A099672.P7127574140454588012.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099672

/-! ## A099672.P5434540738457389324

`∑[ogf(5/(1-11x+10x^2))]`
-/

namespace A099672.P5434540738457389324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P5434540738457389324

namespace A099672

/-- `∑[ogf(5/(1-11x+10x^2))]` -/
def P5434540738457389324.Spec : Prop :=
  ∀ n, P5434540738457389324.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P14898308618309485742

`ogf(5/(1-12x+21x^2-10x^3))`
-/

namespace A099672.P14898308618309485742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -12, 21, -10] n

end

end A099672.P14898308618309485742

namespace A099672

/-- `ogf(5/(1-12x+21x^2-10x^3))` -/
def P14898308618309485742.Spec : Prop :=
  ∀ n, P14898308618309485742.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P5498085940997765598

`∑[∑[10*a(n-1)]]` with `a(0)=5`
-/

namespace A099672.P5498085940997765598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P5498085940997765598

namespace A099672

/-- `∑[∑[10*a(n-1)]]` -/
def P5498085940997765598.Spec : Prop :=
  ∀ n, (P5498085940997765598.a n : ℤ) = A099672 (n + 1)

end A099672

/-! ## A099672.P6211173159023585926

`∑[A002279(n+1)]`
-/

namespace A099672.P6211173159023585926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P6211173159023585926

namespace A099672

/-- `∑[A002279(n+1)]` -/
def P6211173159023585926.Spec : Prop :=
  ∀ n, P6211173159023585926.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P5203841578553912716

`Δ[5*A052262(n)]`
-/

namespace A099672.P5203841578553912716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A052262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099672.P5203841578553912716

namespace A099672

/-- `Δ[5*A052262(n)]` -/
def P5203841578553912716.Spec : Prop :=
  ∀ n, P5203841578553912716.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P13153261176167304982

`A346535(9*n+5)`
-/

namespace A099672.P13153261176167304982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (9 * n + 5)

end

end A099672.P13153261176167304982

namespace A099672

/-- `A346535(9*n+5)` -/
def P13153261176167304982.Spec : Prop :=
  ∀ n, P13153261176167304982.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P18323926860179912251

`∑[∑[A093143(n+1)]]`
-/

namespace A099672.P18323926860179912251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P18323926860179912251

namespace A099672

/-- `∑[∑[A093143(n+1)]]` -/
def P18323926860179912251.Spec : Prop :=
  ∀ n, P18323926860179912251.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P7444929616862993811

`∑[A322927(2*(n+1))]`
-/

namespace A099672.P7444929616862993811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P7444929616862993811

namespace A099672

/-- `∑[A322927(2*(n+1))]` -/
def P7444929616862993811.Spec : Prop :=
  ∀ n, P7444929616862993811.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P7003587861658509934

`∑[∑[A101654(2*n+1)]]`
-/

namespace A099672.P7003587861658509934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101654 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P7003587861658509934

namespace A099672

/-- `∑[∑[A101654(2*n+1)]]` -/
def P7003587861658509934.Spec : Prop :=
  ∀ n, P7003587861658509934.a n = A099672 (n + 1)

end A099672

/-! ## A099672.P12460677575207208059

`∑[∑[A268100(2*n+1)]]`
-/

namespace A099672.P12460677575207208059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099672.P12460677575207208059

namespace A099672

/-- `∑[∑[A268100(2*n+1)]]` -/
def P12460677575207208059.Spec : Prop :=
  ∀ n, P12460677575207208059.a n = A099672 (n + 1)

end A099672

/-!
# A099673: Partial sums of repdigits of A002280.

The programs for A099673, the canonical program `A099673.P5846720670170329284` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099673 has offset 1).

The definition of A099673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099673.P5846720670170329284

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=6, a(1)=72, a(2)=738`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099673

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P5846720670170329284.Spec : Prop :=
  ∀ n, P5846720670170329284.a n = A099673 (n + 1)

theorem P5846720670170329284.correct : P5846720670170329284.Spec := by
  intro n
  simp only [A099673, Nat.add_sub_cancel]

end A099673

/-! ## A099673.P10965203935592505357

`6*A014824(n+1)`
-/

namespace A099673.P10965203935592505357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014824 (n + 1)

end

end A099673.P10965203935592505357

namespace A099673

/-- `6*A014824(n+1)` -/
def P10965203935592505357.Spec : Prop :=
  ∀ n, P10965203935592505357.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P2871322169390105946

`2/27*(10^(n+2)-9*(n+1)-10)`
-/

namespace A099673.P2871322169390105946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 27 * ((10 ^ (n + 2) : ℤ) - (9 * (n + 1) : ℤ) - 10 : ℚ)

end

end A099673.P2871322169390105946

namespace A099673

/-- `2/27*(10^(n+2)-9*(n+1)-10)` -/
def P2871322169390105946.Spec : Prop :=
  ∀ n, P2871322169390105946.a n = (A099673 (n + 1) : ℚ)

theorem P2871322169390105946.correct : P2871322169390105946.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099673, Nat.add_sub_cancel, A099673.P2871322169390105946.a, A099673.P5846720670170329284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099673, Nat.add_sub_cancel, A099673.P2871322169390105946.a, A099673.P5846720670170329284.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099673

/-! ## A099673.P12916657320412712187

`∑[ogf(6/(1-11x+10x^2))]`
-/

namespace A099673.P12916657320412712187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P12916657320412712187

namespace A099673

/-- `∑[ogf(6/(1-11x+10x^2))]` -/
def P12916657320412712187.Spec : Prop :=
  ∀ n, P12916657320412712187.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P7956298962182308417

`ogf(6/(1-12x+21x^2-10x^3))`
-/

namespace A099673.P7956298962182308417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -12, 21, -10] n

end

end A099673.P7956298962182308417

namespace A099673

/-- `ogf(6/(1-12x+21x^2-10x^3))` -/
def P7956298962182308417.Spec : Prop :=
  ∀ n, P7956298962182308417.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P7402122725796397737

`∑[∑[10*a(n-1)]]` with `a(0)=6`
-/

namespace A099673.P7402122725796397737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P7402122725796397737

namespace A099673

/-- `∑[∑[10*a(n-1)]]` -/
def P7402122725796397737.Spec : Prop :=
  ∀ n, (P7402122725796397737.a n : ℤ) = A099673 (n + 1)

end A099673

/-! ## A099673.P5894479340246326173

`6*(n+1)+10*a(n-1)` with `a(0)=6`
-/

namespace A099673.P5894479340246326173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  6 * (n + 1) + 10 * a (n - 1)

end

end A099673.P5894479340246326173

namespace A099673

/-- `6*(n+1)+10*a(n-1)` -/
def P5894479340246326173.Spec : Prop :=
  ∀ n, (P5894479340246326173.a n : ℤ) = A099673 (n + 1)

end A099673

/-! ## A099673.P2157377755070813147

`∑[A002280(n+1)]`
-/

namespace A099673.P2157377755070813147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P2157377755070813147

namespace A099673

/-- `∑[A002280(n+1)]` -/
def P2157377755070813147.Spec : Prop :=
  ∀ n, P2157377755070813147.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P4464693960559185195

`∑[A073548(n+2)]`
-/

namespace A099673.P4464693960559185195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P4464693960559185195

namespace A099673

/-- `∑[A073548(n+2)]` -/
def P4464693960559185195.Spec : Prop :=
  ∀ n, P4464693960559185195.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P8539470821962864632

`∑[∑[A090019(n+1)]]`
-/

namespace A099673.P8539470821962864632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P8539470821962864632

namespace A099673

/-- `∑[∑[A090019(n+1)]]` -/
def P8539470821962864632.Spec : Prop :=
  ∀ n, P8539470821962864632.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P12019029628100681690

`∑[record[A308900(n+2)]]`
-/

namespace A099673.P12019029628100681690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P12019029628100681690

namespace A099673

/-- `∑[record[A308900(n+2)]]` -/
def P12019029628100681690.Spec : Prop :=
  ∀ n, P12019029628100681690.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P6823413521163756783

`∑[A308900(2*(n+1))]`
-/

namespace A099673.P6823413521163756783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099673.P6823413521163756783

namespace A099673

/-- `∑[A308900(2*(n+1))]` -/
def P6823413521163756783.Spec : Prop :=
  ∀ n, P6823413521163756783.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P16809084660113952649

`A346535(A017233(n))`
-/

namespace A099673.P16809084660113952649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017233 n).toNat

end

end A099673.P16809084660113952649

namespace A099673

/-- `A346535(A017233(n))` -/
def P16809084660113952649.Spec : Prop :=
  ∀ n, P16809084660113952649.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P16719718156435393108

`A346535(A122709(n+1))`
-/

namespace A099673.P16719718156435393108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A122709 (n + 1)).toNat

end

end A099673.P16719718156435393108

namespace A099673

/-- `A346535(A122709(n+1))` -/
def P16719718156435393108.Spec : Prop :=
  ∀ n, P16719718156435393108.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P468036536282682557

`A099672(n+1)+A014824(n+1)`
-/

namespace A099673.P468036536282682557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099672 (n + 1) + A014824 (n + 1)

end

end A099673.P468036536282682557

namespace A099673

/-- `A099672(n+1)+A014824(n+1)` -/
def P468036536282682557.Spec : Prop :=
  ∀ n, P468036536282682557.a n = A099673 (n + 1)

end A099673

/-! ## A099673.P9711884539330751170

`A099674(n+1)-A014824(n+1)`
-/

namespace A099673.P9711884539330751170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099674 (n + 1) - A014824 (n + 1)

end

end A099673.P9711884539330751170

namespace A099673

/-- `A099674(n+1)-A014824(n+1)` -/
def P9711884539330751170.Spec : Prop :=
  ∀ n, P9711884539330751170.a n = A099673 (n + 1)

end A099673

/-!
# A099674: Partial sums of repdigits of A002281.

The programs for A099674, the canonical program `A099674.P10031925822857989779` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099674 has offset 0).

The definition of A099674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099674.P10031925822857989779

`7*A014824(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099674

/-- `7*A014824(n)` -/
def P10031925822857989779.Spec : Prop :=
  ∀ n, P10031925822857989779.a n = A099674 n

theorem P10031925822857989779.correct : P10031925822857989779.Spec := by
  intro n
  simp only [A099674]

end A099674

/-! ## A099674.P3323188574651802028

`7/81*(10^(n+1)-9*n-10)`
-/

namespace A099674.P3323188574651802028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 81 * ((10 ^ (n + 1) : ℤ) - (9 * n : ℤ) - 10 : ℚ)

end

end A099674.P3323188574651802028

namespace A099674

/-- `7/81*(10^(n+1)-9*n-10)` -/
def P3323188574651802028.Spec : Prop :=
  ∀ n, P3323188574651802028.a n = (A099674 n : ℚ)

end A099674

/-! ## A099674.P5018473631967199026

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=0, a(1)=7, a(2)=84`
-/

namespace A099674.P5018473631967199026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 84] fun n a =>
  12 * a (n - 1) - 21 * a (n - 2) + 10 * a (n - 3)

end

end A099674.P5018473631967199026

namespace A099674

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P5018473631967199026.Spec : Prop :=
  ∀ n, P5018473631967199026.a n = A099674 n

end A099674

/-! ## A099674.P2403255471553999400

`∑[ogf(7x/(1-11x+10x^2))]`
-/

namespace A099674.P2403255471553999400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099674.P2403255471553999400

namespace A099674

/-- `∑[ogf(7x/(1-11x+10x^2))]` -/
def P2403255471553999400.Spec : Prop :=
  ∀ n, P2403255471553999400.a n = A099674 n

end A099674

/-! ## A099674.P4386546063160593917

`∑[10*a(n-1)+7]` with `a(0)=0`
-/

namespace A099674.P4386546063160593917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  10 * f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099674.P4386546063160593917

namespace A099674

/-- `∑[10*a(n-1)+7]` -/
def P4386546063160593917.Spec : Prop :=
  ∀ n, (P4386546063160593917.a n : ℤ) = A099674 n

end A099674

/-! ## A099674.P1158794868485896441

`∑[∑[10*a(n-1)]]` with `a(0)=0, a(1)=7`
-/

namespace A099674.P1158794868485896441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099674.P1158794868485896441

namespace A099674

/-- `∑[∑[10*a(n-1)]]` -/
def P1158794868485896441.Spec : Prop :=
  ∀ n, (P1158794868485896441.a n : ℤ) = A099674 n

end A099674

/-! ## A099674.P6968210598668191503

`7*n+10*a(n-1)` with `a(0)=0`
-/

namespace A099674.P6968210598668191503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 * n + 10 * a (n - 1)

end

end A099674.P6968210598668191503

namespace A099674

/-- `7*n+10*a(n-1)` -/
def P6968210598668191503.Spec : Prop :=
  ∀ n, (P6968210598668191503.a n : ℤ) = A099674 n

end A099674

/-! ## A099674.P7859879051953229469

`∑[A002281(n)]`
-/

namespace A099674.P7859879051953229469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099674.P7859879051953229469

namespace A099674

/-- `∑[A002281(n)]` -/
def P7859879051953229469.Spec : Prop :=
  ∀ n, P7859879051953229469.a n = A099674 n

end A099674

/-! ## A099674.P7034820606407231954

`∑[sqrt(A075416(n))]`
-/

namespace A099674.P7034820606407231954
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075416 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099674.P7034820606407231954

namespace A099674

/-- `∑[sqrt(A075416(n))]` -/
def P7034820606407231954.Spec : Prop :=
  ∀ n, P7034820606407231954.a n = (A099674 n : ℝ)

end A099674

/-!
# A099675: Partial sums of repdigits of A002282.

The programs for A099675, the canonical program `A099675.P4108578776624383721` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099675 has offset 1).

The definition of A099675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099675.P3436027808690249244

`8*A014824(n+1)`
-/

namespace A099675.P3436027808690249244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A014824 (n + 1)

end

end A099675.P3436027808690249244

namespace A099675

/-- `8*A014824(n+1)` -/
def P3436027808690249244.Spec : Prop :=
  ∀ n, P3436027808690249244.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P9378614361238033682

`8/81*(10^(n+2)-9*(n+1)-10)`
-/

namespace A099675.P9378614361238033682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 81 * ((10 ^ (n + 2) : ℤ) - (9 * (n + 1) : ℤ) - 10 : ℚ)

end

end A099675.P9378614361238033682

namespace A099675

/-- `8/81*(10^(n+2)-9*(n+1)-10)` -/
def P9378614361238033682.Spec : Prop :=
  ∀ n, P9378614361238033682.a n = (A099675 (n + 1) : ℚ)

theorem P9378614361238033682.correct : P9378614361238033682.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A099675, Nat.add_sub_cancel, A099675.P9378614361238033682.a, A099675.P4108578776624383721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A099675, Nat.add_sub_cancel, A099675.P9378614361238033682.a, A099675.P4108578776624383721.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099675

/-! ## A099675.P4108578776624383721

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=8, a(1)=96, a(2)=984`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099675

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P4108578776624383721.Spec : Prop :=
  ∀ n, P4108578776624383721.a n = A099675 (n + 1)

theorem P4108578776624383721.correct : P4108578776624383721.Spec := by
  intro n
  simp only [A099675, Nat.add_sub_cancel]

end A099675

/-! ## A099675.P6823931914997832046

`∑[ogf(8/(1-11x+10x^2))]`
-/

namespace A099675.P6823931914997832046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099675.P6823931914997832046

namespace A099675

/-- `∑[ogf(8/(1-11x+10x^2))]` -/
def P6823931914997832046.Spec : Prop :=
  ∀ n, P6823931914997832046.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P13799312580911944915

`ogf(8/(1-12x+21x^2-10x^3))`
-/

namespace A099675.P13799312580911944915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -12, 21, -10] n

end

end A099675.P13799312580911944915

namespace A099675

/-- `ogf(8/(1-12x+21x^2-10x^3))` -/
def P13799312580911944915.Spec : Prop :=
  ∀ n, P13799312580911944915.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P1153544110529532328

`∑[∑[10*a(n-1)]]` with `a(0)=8`
-/

namespace A099675.P1153544110529532328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099675.P1153544110529532328

namespace A099675

/-- `∑[∑[10*a(n-1)]]` -/
def P1153544110529532328.Spec : Prop :=
  ∀ n, (P1153544110529532328.a n : ℤ) = A099675 (n + 1)

end A099675

/-! ## A099675.P9311666512709094847

`8*(n+1)+10*a(n-1)` with `a(0)=8`
-/

namespace A099675.P9311666512709094847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  8 * (n + 1) + 10 * a (n - 1)

end

end A099675.P9311666512709094847

namespace A099675

/-- `8*(n+1)+10*a(n-1)` -/
def P9311666512709094847.Spec : Prop :=
  ∀ n, (P9311666512709094847.a n : ℤ) = A099675 (n + 1)

end A099675

/-! ## A099675.P6566614750979141551

`∑[A002282(n+1)]`
-/

namespace A099675.P6566614750979141551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099675.P6566614750979141551

namespace A099675

/-- `∑[A002282(n+1)]` -/
def P6566614750979141551.Spec : Prop :=
  ∀ n, P6566614750979141551.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P13440588314939178385

`A179477(n)-(n+2)`
-/

namespace A099675.P13440588314939178385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179477 n - (n + 2 : ℤ)

end

end A099675.P13440588314939178385

namespace A099675

/-- `A179477(n)-(n+2)` -/
def P13440588314939178385.Spec : Prop :=
  ∀ n, P13440588314939178385.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P4545814216554311577

`∑[∑[A346178(n+1)]]`
-/

namespace A099675.P4545814216554311577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099675.P4545814216554311577

namespace A099675

/-- `∑[∑[A346178(n+1)]]` -/
def P4545814216554311577.Spec : Prop :=
  ∀ n, P4545814216554311577.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P1402470231293401031

`∑[A249572(2*(n+1))]`
-/

namespace A099675.P1402470231293401031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099675.P1402470231293401031

namespace A099675

/-- `∑[A249572(2*(n+1))]` -/
def P1402470231293401031.Spec : Prop :=
  ∀ n, P1402470231293401031.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P18294661886446540070

`∑[A363377(2*(n+1))]`
-/

namespace A099675.P18294661886446540070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363377 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099675.P18294661886446540070

namespace A099675

/-- `∑[A363377(2*(n+1))]` -/
def P18294661886446540070.Spec : Prop :=
  ∀ n, P18294661886446540070.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P6223712786923165332

`A064617(n+1)-(n+1)`
-/

namespace A099675.P6223712786923165332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064617 (n + 1) - (n + 1 : ℤ)

end

end A099675.P6223712786923165332

namespace A099675

/-- `A064617(n+1)-(n+1)` -/
def P6223712786923165332.Spec : Prop :=
  ∀ n, P6223712786923165332.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P5658992742545068790

`A346535(A017257(n))`
-/

namespace A099675.P5658992742545068790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017257 n).toNat

end

end A099675.P5658992742545068790

namespace A099675

/-- `A346535(A017257(n))` -/
def P5658992742545068790.Spec : Prop :=
  ∀ n, P5658992742545068790.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P10048314224454863910

`A346535(A017245(n)+1)`
-/

namespace A099675.P10048314224454863910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017245 n + 1).toNat

end

end A099675.P10048314224454863910

namespace A099675

/-- `A346535(A017245(n)+1)` -/
def P10048314224454863910.Spec : Prop :=
  ∀ n, P10048314224454863910.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P7736559092535073619

`A346535(A017233(n)+2)`
-/

namespace A099675.P7736559092535073619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A017233 n + 2).toNat

end

end A099675.P7736559092535073619

namespace A099675

/-- `A346535(A017233(n)+2)` -/
def P7736559092535073619.Spec : Prop :=
  ∀ n, P7736559092535073619.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P16683879829476237068

`A346535(A122709(n+1)+2)`
-/

namespace A099675.P16683879829476237068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346535 (A122709 (n + 1) + 2).toNat

end

end A099675.P16683879829476237068

namespace A099675

/-- `A346535(A122709(n+1)+2)` -/
def P16683879829476237068.Spec : Prop :=
  ∀ n, P16683879829476237068.a n = A099675 (n + 1)

end A099675

/-! ## A099675.P18329019930895402771

`A099674(n+1)+A014824(n+1)`
-/

namespace A099675.P18329019930895402771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099674 (n + 1) + A014824 (n + 1)

end

end A099675.P18329019930895402771

namespace A099675

/-- `A099674(n+1)+A014824(n+1)` -/
def P18329019930895402771.Spec : Prop :=
  ∀ n, P18329019930895402771.a n = A099675 (n + 1)

end A099675

/-!
# A099676: Partial sums of repdigits of A002283.

The programs for A099676, the canonical program `A099676.P3764748090040276148` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099676 has offset 1).

The definition of A099676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099676.P3764748090040276148

`10/9*(10^(n+1)-1)-(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099676

/-- `10/9*(10^(n+1)-1)-(n+1)` -/
def P3764748090040276148.Spec : Prop :=
  ∀ n, P3764748090040276148.a n = (A099676 (n + 1) : ℚ)

end A099676

/-! ## A099676.P13016823819727321691

`∑[ogf(9/(1-11x+10x^2))]`
-/

namespace A099676.P13016823819727321691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P13016823819727321691

namespace A099676

/-- `∑[ogf(9/(1-11x+10x^2))]` -/
def P13016823819727321691.Spec : Prop :=
  ∀ n, P13016823819727321691.a n = A099676 (n + 1)

end A099676

/-! ## A099676.P16723008682707164961

`ogf(9/(1-12x+21x^2-10x^3))`
-/

namespace A099676.P16723008682707164961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -12, 21, -10] n

end

end A099676.P16723008682707164961

namespace A099676

/-- `ogf(9/(1-12x+21x^2-10x^3))` -/
def P16723008682707164961.Spec : Prop :=
  ∀ n, P16723008682707164961.a n = A099676 (n + 1)

end A099676

/-! ## A099676.P3446811719313642447

`abs(∑[∑[10*a(n-1)]])` with `a(0)=9`
-/

namespace A099676.P3446811719313642447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P3446811719313642447

namespace A099676

/-- `abs(∑[∑[10*a(n-1)]])` -/
def P3446811719313642447.Spec : Prop :=
  ∀ n, (P3446811719313642447.a n : ℤ) = A099676 (n + 1)

end A099676

/-! ## A099676.P2712335403150125237

`floor(∑[∑[10*a(n-1)]])` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A099676.P2712335403150125237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P2712335403150125237

namespace A099676

/-- `floor(∑[∑[10*a(n-1)]])` -/
def P2712335403150125237.Spec : Prop :=
  ∀ n, (P2712335403150125237.a n : ℤ) = A099676 (n + 1)

end A099676

/-! ## A099676.P11967033417107453123

`ceil(∑[∑[10*a(n-1)]])` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A099676.P11967033417107453123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P11967033417107453123

namespace A099676

/-- `ceil(∑[∑[10*a(n-1)]])` -/
def P11967033417107453123.Spec : Prop :=
  ∀ n, (P11967033417107453123.a n : ℤ) = A099676 (n + 1)

end A099676

/-! ## A099676.P13906035922594284233

`round(∑[∑[10*a(n-1)]])` with `a(0)=9`

`round` is left out, it is the identity on integers.
-/

namespace A099676.P13906035922594284233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P13906035922594284233

namespace A099676

/-- `round(∑[∑[10*a(n-1)]])` -/
def P13906035922594284233.Spec : Prop :=
  ∀ n, (P13906035922594284233.a n : ℤ) = A099676 (n + 1)

end A099676

/-! ## A099676.P10897332280472703881

`3*∑[∑[10*a(n-1)]]` with `a(0)=3`
-/

namespace A099676.P10897332280472703881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099676.P10897332280472703881

namespace A099676

/-- `3*∑[∑[10*a(n-1)]]` -/
def P10897332280472703881.Spec : Prop :=
  ∀ n, (P10897332280472703881.a n : ℤ) = A099676 (n + 1)

end A099676

/-! ## A099676.P8142371524824004993

`∑[A002283(n+1)]`
-/

namespace A099676.P8142371524824004993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P8142371524824004993

namespace A099676

/-- `∑[A002283(n+1)]` -/
def P8142371524824004993.Spec : Prop :=
  ∀ n, P8142371524824004993.a n = A099676 (n + 1)

end A099676

/-! ## A099676.P7389986680506000578

`∑[A103456(n+1)]`
-/

namespace A099676.P7389986680506000578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099676.P7389986680506000578

namespace A099676

/-- `∑[A103456(n+1)]` -/
def P7389986680506000578.Spec : Prop :=
  ∀ n, P7389986680506000578.a n = A099676 (n + 1)

end A099676

/-!
# A099677: Primes arising in A032682.

The programs for A099677, there is no canonical definition to state claims against.
-/

/-! ## A099677.P16564253399647116973

`A069691(A032682(n+1))%A064808(3*n+4)`
-/

namespace A099677.P16564253399647116973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069691 (A032682 (n + 1)).toNat) (A064808 (3 * n + 4))

end

end A099677.P16564253399647116973

/-! ## A099677.P7621440856598774909

`p?[A061601(5*n+1)+10*n+3]`
-/

namespace A099677.P7621440856598774909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (5 * n + 1) + (10 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099677.P7621440856598774909

/-! ## A099677.P15753110287685564066

`A069691(A032682(n+1))%A097372(n+1)`
-/

namespace A099677.P15753110287685564066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069691 (A032682 (n + 1)).toNat) (A097372 (n + 1))

end

end A099677.P15753110287685564066

/-!
# A099679: Least m such that repunit R_m is a multiple of A045572(n) (i.e., odd numbers not divisible by 5).

The programs for A099679, there is no canonical definition to state claims against.
-/

/-! ## A099679.P3699312868065408738

`A084681(A045572(n+1))`
-/

namespace A099679.P3699312868065408738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A045572 (n + 1)).toNat

end

end A099679.P3699312868065408738

/-! ## A099679.P16201061972272440564

`A084681(2*A047207(n+1)+1)`
-/

namespace A099679.P16201061972272440564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (2 * A047207 (n + 1) + 1).toNat

end

end A099679.P16201061972272440564

/-! ## A099679.P6345468653354760796

`A084681(lt[1, A084681(n+1)+1]+1)`
-/

namespace A099679.P6345468653354760796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A099679.P6345468653354760796

/-! ## A099679.P434145557991835292

`A084681(record[n%(A084681(n+1)+n)]+1)`
-/

namespace A099679.P434145557991835292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A084681 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A099679.P434145557991835292

/-! ## A099679.P4268586652284877444

`A084681(A047207(n+1)+A047207(n+1)+1)`
-/

namespace A099679.P4268586652284877444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A047207 (n + 1) + (A047207 (n + 1) + 1)).toNat

end

end A099679.P4268586652284877444

/-! ## A099679.P13030871208463733515

`A007732(record[A132740(9*(n+1))])`
-/

namespace A099679.P13030871208463733515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (9 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099679.P13030871208463733515

/-! ## A099679.P4437206785302144823

`A051626(record[A132740(9*(n+1))])`
-/

namespace A099679.P4437206785302144823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (9 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099679.P4437206785302144823

/-! ## A099679.P129228946017529946

`A216473(A032769(n+2))`
-/

namespace A099679.P129228946017529946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216473 (A032769 (n + 2)).toNat

end

end A099679.P129228946017529946

/-!
# A099692: Consider the family of multigraphs enriched by the species of directed sets. Sequence gives number of those multigraphs with n labeled edges.

The programs for A099692, there is no canonical definition to state claims against.
-/

/-! ## A099692.P16357982023137756147

`A245303(A136221(n))-A136218(n)`
-/

namespace A099692.P16357982023137756147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (A136221 n).toNat - A136218 n

end

end A099692.P16357982023137756147

/-!
# A099693: Consider the family of multigraphs enriched by the species of directed sets. Sequence gives number of those multigraphs with n loops and edges.

The programs for A099693, there is no canonical definition to state claims against.
-/

/-! ## A099693.P14833339261384903859

`A166546(A118789(n))`
-/

namespace A099693.P14833339261384903859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (A118789 n).toNat

end

end A099693.P14833339261384903859

/-!
# A099694: Consider the family of directed multigraphs enriched by the species of directed sets. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A099694, there is no canonical definition to state claims against.
-/

/-! ## A099694.P1085515062472903701

`A047702(floor(n*a(n-1)/ϕ)+1)` with `a(0)=1, a(1)=2`
-/

namespace A099694.P1085515062472903701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A047702 (⌊(n : ℝ) * ((a (n - 1) : ℝ) / Real.goldenRatio)⌋ + 1).toNat

end

end A099694.P1085515062472903701

/-!
# A099695: Consider the family of directed multigraphs enriched by the species of directed sets. Sequence gives number of those multigraphs with n labeled arcs.

The programs for A099695, there is no canonical definition to state claims against.
-/

/-! ## A099695.P1276514743123560081

`A046699(A380663(n))`
-/

namespace A099695.P1276514743123560081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A380663 n).toNat

end

end A099695.P1276514743123560081

/-!
# A099696: Consider the family of multigraphs enriched by the species of involutions. Sequence gives number of those multigraphs with n labeled edges.

The programs for A099696, there is no canonical definition to state claims against.
-/

/-! ## A099696.P4604305863385850896

`A067076(A197772(n)+A138212(n))`
-/

namespace A099696.P4604305863385850896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A197772 n + A138212 n).toNat

end

end A099696.P4604305863385850896

/-!
# A099697: Consider the family of multigraphs enriched by the species of involutions. Sequence gives number of those multigraphs with n loops and edges.

The programs for A099697, there is no canonical definition to state claims against.
-/

/-! ## A099697.P2826507333160241129

`A147706(A260150(n))`
-/

namespace A099697.P2826507333160241129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (A260150 n).toNat

end

end A099697.P2826507333160241129

/-!
# A099698: Consider the family of directed multigraphs enriched by the species of involutions. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A099698, there is no canonical definition to state claims against.
-/

/-! ## A099698.P5985292687368954038

`A217813(n)+A008617(A127135(n))`
-/

namespace A099698.P5985292687368954038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217813 n + A008617 (A127135 n).toNat

end

end A099698.P5985292687368954038

/-!
# A099699: Consider the family of directed multigraphs enriched by the species of involutions. Sequence gives number of those multigraphs with n labeled arcs.

The programs for A099699, there is no canonical definition to state claims against.
-/

/-! ## A099699.P1524918155332815568

`A000010(A133819(7^n))`
-/

namespace A099699.P1524918155332815568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A133819 (7 ^ n)).toNat

end

end A099699.P1524918155332815568


import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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
import Seq.Opaque.C024

/-!
# A202400: Number of (n+2) X 4 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202400, the canonical program `A202400.P3943635139202331291` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202400 has offset 1).

The definition of A202400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202400.P3943635139202331291

`or(1, A048739(n+3))²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202400

/-- `or(1, A048739(n+3))²` -/
def P3943635139202331291.Spec : Prop :=
  ∀ n, P3943635139202331291.a n = A202400 (n + 1)

theorem P3943635139202331291.correct : P3943635139202331291.Spec := by
  intro n
  simp only [A202400, Nat.add_sub_cancel]

end A202400

/-! ## A202400.P14198295907362913723

`or(1, A048739(n+3))^A028326(∑[n])`
-/

namespace A202400.P14198295907362913723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A048739 (n + 3)) : ℚ) ^ (A028326 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A202400.P14198295907362913723

namespace A202400

/-- `or(1, A048739(n+3))^A028326(∑[n])` -/
def P14198295907362913723.Spec : Prop :=
  ∀ n, P14198295907362913723.a n = (A202400 (n + 1) : ℚ)

end A202400

/-! ## A202400.P4485008248734911180

`or(1, A048739(n+3))^A007877(4*n+2)`
-/

namespace A202400.P4485008248734911180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A048739 (n + 3)) : ℚ) ^ (A007877 (4 * n + 2) : ℤ)

end

end A202400.P4485008248734911180

namespace A202400

/-- `or(1, A048739(n+3))^A007877(4*n+2)` -/
def P4485008248734911180.Spec : Prop :=
  ∀ n, P4485008248734911180.a n = (A202400 (n + 1) : ℚ)

end A202400

/-! ## A202400.P1122204219070212339

`or(1, A048739(n+3))^A000005(A001359(n+1))`
-/

namespace A202400.P1122204219070212339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A048739 (n + 3)) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A202400.P1122204219070212339

namespace A202400

/-- `or(1, A048739(n+3))^A000005(A001359(n+1))` -/
def P1122204219070212339.Spec : Prop :=
  ∀ n, P1122204219070212339.a n = (A202400 (n + 1) : ℚ)

end A202400

/-! ## A202400.P10100524101836616303

`or(1, A048739(n+3))^A000005(A040984(n+1))`
-/

namespace A202400.P10100524101836616303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A048739 (n + 3)) : ℚ) ^ (A000005 (A040984 (n + 1)).toNat : ℤ)

end

end A202400.P10100524101836616303

namespace A202400

/-- `or(1, A048739(n+3))^A000005(A040984(n+1))` -/
def P10100524101836616303.Spec : Prop :=
  ∀ n, P10100524101836616303.a n = (A202400 (n + 1) : ℚ)

end A202400

/-! ## A202400.P12328167197269101302

`or(1, A048739(n+3))^A000005(A142282(n+1))`
-/

namespace A202400.P12328167197269101302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A048739 (n + 3)) : ℚ) ^ (A000005 (A142282 (n + 1)).toNat : ℤ)

end

end A202400.P12328167197269101302

namespace A202400

/-- `or(1, A048739(n+3))^A000005(A142282(n+1))` -/
def P12328167197269101302.Spec : Prop :=
  ∀ n, P12328167197269101302.a n = (A202400 (n + 1) : ℚ)

end A202400

/-! ## A202400.P14026859961525484229

`A202401(n+1)/A202402(n+1)*A202401(n+1)`
-/

namespace A202400.P14026859961525484229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202401 (n + 1) : ℚ) / (A202402 (n + 1) : ℚ) * (A202401 (n + 1) : ℚ)

end

end A202400.P14026859961525484229

namespace A202400

/-- `A202401(n+1)/A202402(n+1)*A202401(n+1)` -/
def P14026859961525484229.Spec : Prop :=
  ∀ n, P14026859961525484229.a n = (A202400 (n + 1) : ℚ)

end A202400

/-! ## A202400.P4097210564739142045

`A202401(n+1)²/A202402(n+1)`
-/

namespace A202400.P4097210564739142045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202401 (n + 1) ^ 2 : ℚ) / (A202402 (n + 1) : ℚ)

end

end A202400.P4097210564739142045

namespace A202400

/-- `A202401(n+1)²/A202402(n+1)` -/
def P4097210564739142045.Spec : Prop :=
  ∀ n, P4097210564739142045.a n = (A202400 (n + 1) : ℚ)

end A202400

/-!
# A202401: Number of (n+2)X5 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202401, there is no canonical definition to state claims against.
-/

/-! ## A202401.P10641460543142071203

`sqrt(A202400(n+1))*sqrt(A202402(n+1))`
-/

namespace A202401.P10641460543142071203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202400 (n + 1) : ℝ) * Real.sqrt (A202402 (n + 1) : ℝ)

end

end A202401.P10641460543142071203

/-! ## A202401.P16404300292535307319

`sqrt(A202400(n+1)*A202402(n+1))`
-/

namespace A202401.P16404300292535307319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202400 (n + 1) * A202402 (n + 1) : ℝ)

end

end A202401.P16404300292535307319

/-! ## A202401.P16192728410863059052

`A202406(∑[n+2]+4)`
-/

namespace A202401.P16192728410863059052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202401.P16192728410863059052

/-! ## A202401.P2807135635639915565

`or(1, A202406(A167614(n+1)))`
-/

namespace A202401.P2807135635639915565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202406 (A167614 (n + 1)).toNat)

end

end A202401.P2807135635639915565

/-! ## A202401.P3816196437594966898

`A202406(A167614(n+1))+A025469(n)`
-/

namespace A202401.P3816196437594966898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A167614 (n + 1)).toNat + A025469 n

end

end A202401.P3816196437594966898

/-!
# A202402: Number of (n+2) X 6 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202402, there is no canonical definition to state claims against.
-/

/-! ## A202402.P8172304991491136611

`A202401(n+1)/A202400(n+1)*A202401(n+1)`
-/

namespace A202402.P8172304991491136611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202401 (n + 1) : ℚ) / (A202400 (n + 1) : ℚ) * (A202401 (n + 1) : ℚ)

end

end A202402.P8172304991491136611

/-! ## A202402.P1143677550352868787

`A202403(n+1)/A202404(n+1)*A202403(n+1)`
-/

namespace A202402.P1143677550352868787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202403 (n + 1) : ℚ) / (A202404 (n + 1) : ℚ) * (A202403 (n + 1) : ℚ)

end

end A202402.P1143677550352868787

/-! ## A202402.P12467740529168587685

`A202401(n+1)²/A202400(n+1)`
-/

namespace A202402.P12467740529168587685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202401 (n + 1) ^ 2 : ℚ) / (A202400 (n + 1) : ℚ)

end

end A202402.P12467740529168587685

/-! ## A202402.P17368258543090972001

`A202403(n+1)²/A202404(n+1)`
-/

namespace A202402.P17368258543090972001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202403 (n + 1) ^ 2 : ℚ) / (A202404 (n + 1) : ℚ)

end

end A202402.P17368258543090972001

/-! ## A202402.P10659875903853457864

`A202406(A374004(n+1))`
-/

namespace A202402.P10659875903853457864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A374004 (n + 1)).toNat

end

end A202402.P10659875903853457864

/-!
# A202403: Number of (n+2) X 7 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202403, there is no canonical definition to state claims against.
-/

/-! ## A202403.P1640446357038610400

`sqrt(A202402(n+1))*sqrt(A202404(n+1))`
-/

namespace A202403.P1640446357038610400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202402 (n + 1) : ℝ) * Real.sqrt (A202404 (n + 1) : ℝ)

end

end A202403.P1640446357038610400

/-! ## A202403.P18007877412614127156

`sqrt(A202402(n+1)*A202404(n+1))`
-/

namespace A202403.P18007877412614127156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202402 (n + 1) * A202404 (n + 1) : ℝ)

end

end A202403.P18007877412614127156

/-! ## A202403.P2800488662584466993

`A202406(A374005(n+1))`
-/

namespace A202403.P2800488662584466993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A374005 (n + 1)).toNat

end

end A202403.P2800488662584466993

/-! ## A202403.P13881175193898616842

`A202406(A056000(n)+15)`
-/

namespace A202403.P13881175193898616842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A056000 n + 15).toNat

end

end A202403.P13881175193898616842

/-! ## A202403.P4637165567698669319

`A202406(A167614(n+3)+2)`
-/

namespace A202403.P4637165567698669319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A167614 (n + 3) + 2).toNat

end

end A202403.P4637165567698669319

/-!
# A202404: Number of (n+2)X8 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202404, there is no canonical definition to state claims against.
-/

/-! ## A202404.P3861259200786872627

`A202403(n+1)/A202402(n+1)*A202403(n+1)`
-/

namespace A202404.P3861259200786872627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202403 (n + 1) : ℚ) / (A202402 (n + 1) : ℚ) * (A202403 (n + 1) : ℚ)

end

end A202404.P3861259200786872627

/-! ## A202404.P3558909402948345465

`A202403(n+1)²/A202402(n+1)`
-/

namespace A202404.P3558909402948345465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202403 (n + 1) ^ 2 : ℚ) / (A202402 (n + 1) : ℚ)

end

end A202404.P3558909402948345465

/-! ## A202404.P14373831219365410904

`A202406(A374007(n+1))`
-/

namespace A202404.P14373831219365410904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A374007 (n + 1)).toNat

end

end A202404.P14373831219365410904

/-! ## A202404.P1131368370072110484

`A202406(eq[7, A131818(n+1)])`
-/

namespace A202404.P1131368370072110484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202404.P1131368370072110484

/-! ## A202404.P3031933237701258628

`A202406(A052905(n+3))`
-/

namespace A202404.P3031933237701258628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A052905 (n + 3)).toNat

end

end A202404.P3031933237701258628

/-!
# A202405: Number of (n+2)X9 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202405, there is no canonical definition to state claims against.
-/

/-! ## A202405.P8754937572775809842

`A202406(A374008(n+1))`
-/

namespace A202405.P8754937572775809842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A374008 (n + 1)).toNat

end

end A202405.P8754937572775809842

/-! ## A202405.P2803733885827021324

`A202406(eq[8, A131818(n+1)])`
-/

namespace A202405.P2803733885827021324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202405.P2803733885827021324

/-! ## A202405.P5627583333950381582

`A202406(A055999(n+4))`
-/

namespace A202405.P5627583333950381582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A055999 (n + 4)).toNat

end

end A202405.P5627583333950381582

/-! ## A202405.P10365688239840003478

`A202406(eq[4, A219347(n)])`
-/

namespace A202405.P10365688239840003478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202405.P10365688239840003478

/-! ## A202405.P12082501916340491119

`A202406(eq[6, A193592(n)])`
-/

namespace A202405.P12082501916340491119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202405.P12082501916340491119

/-!
# A202408: Denominator of series coefficients for Archimedes' spiral which transforms into Galileo's spiral.

The programs for A202408, there is no canonical definition to state claims against.
-/

/-! ## A202408.P5468169954934628629

`A116882(∏[comp[or(n, 2*n)]])`
-/

namespace A202408.P5468169954934628629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A202408.P5468169954934628629

/-!
# A202409: Triangle read by rows, n>=1, 1<=k<=n, T(n,k) = k*binomial(n,k)^3*(n^2+n-k*n-k+k^2)/((n-k+1)^2*n).

The programs for A202409, there is no canonical definition to state claims against.
-/

/-! ## A202409.P6811949032694151551

`A051597(n)*A132812(n+1)`
-/

namespace A202409.P6811949032694151551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n * A132812 (n + 1)

end

end A202409.P6811949032694151551

/-! ## A202409.P17691351046447624855

`A051597(n)*A074909(n)*A135278(n)`
-/

namespace A202409.P17691351046447624855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n * A074909 n * A135278 n

end

end A202409.P17691351046447624855

/-! ## A202409.P1436732230225917058

`A074909(n+1)*A074909(n)*A051597(n)`
-/

namespace A202409.P1436732230225917058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A074909 n * A051597 n

end

end A202409.P1436732230225917058

/-! ## A202409.P7456338557008801407

`A001263(n+1)*A002024(n+1)*A051597(n)`
-/

namespace A202409.P7456338557008801407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A002024 (n + 1) * A051597 n

end

end A202409.P7456338557008801407

/-! ## A202409.P12088505237562472487

`A001263(n+1)*A123578(n+1)*A051597(n)`
-/

namespace A202409.P12088505237562472487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A123578 (n + 1) * A051597 n

end

end A202409.P12088505237562472487

/-!
# A202410: Inverse Lah transform of 1,2,3,...; e.g.f. exp(x/(x-1))*(2*x-1)/(x-1).

The programs for A202410, there is no canonical definition to state claims against.
-/

/-! ## A202410.P10854841153580485749

`2*A293116(n)-A009940(n)`
-/

namespace A202410.P10854841153580485749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293116 n - A009940 n

end

end A202410.P10854841153580485749

/-! ## A202410.P8075007090947122031

`2*A293116(n)+A009940(n)*A033999(2*n+1)`
-/

namespace A202410.P8075007090947122031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293116 n + A009940 n * A033999 (2 * n + 1)

end

end A202410.P8075007090947122031

/-! ## A202410.P1935126895872564674

`A293116(n)+A293116(n)-(A000142(n)-A087860(n))`
-/

namespace A202410.P1935126895872564674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293116 n + (A293116 n - (A000142 n - A087860 n))

end

end A202410.P1935126895872564674

/-!
# A202411: a(n) = Sum_{k=floor(n/4)..R} C(k, m*k - (-1)^n*(R - k)) * C(k + 1, m*(k + 2) - (-1)^n*(R - k + 1)) where m = (n + 1) mod 2 and R = (n + m - 3)/2 for n > 0 and a(0) = 1.

The programs for A202411, there is no canonical definition to state claims against.
-/

/-! ## A202411.P17400362553182049374

`A077419(n)-a(n-1)` with `a(0)=1`
-/

namespace A202411.P17400362553182049374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077419 n - a (n - 1)

end

end A202411.P17400362553182049374

/-! ## A202411.P9130052406862857014

`A078807(A000982(n+1))`
-/

namespace A202411.P9130052406862857014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078807 (A000982 (n + 1)).toNat

end

end A202411.P9130052406862857014

/-! ## A202411.P11216050851908072526

`A078808(A087327(n+2))`
-/

namespace A202411.P11216050851908072526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A087327 (n + 2)).toNat

end

end A202411.P11216050851908072526

/-! ## A202411.P7764561118219891484

`A079487(A000982(n))-char[1]`
-/

namespace A202411.P7764561118219891484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A000982 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202411.P7764561118219891484

/-! ## A202411.P12075599497666226809

`abs(∑[A033999(n)*A077419(n)])`
-/

namespace A202411.P12075599497666226809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A202411.P12075599497666226809

/-!
# A202413: Number of (n+2)X(n+2) binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202413, there is no canonical definition to state claims against.
-/

/-! ## A202413.P16274653998753289119

`A202421(∑[4*n]+1)`
-/

namespace A202413.P16274653998753289119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202413.P16274653998753289119

/-! ## A202413.P1254626111424664822

`lcm(A016327(n), A202421(A001844(n)))`
-/

namespace A202413.P1254626111424664822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016327 n) (A202421 (A001844 n).toNat)

end

end A202413.P1254626111424664822

/-! ## A202413.P17236656015599026168

`A018252(gcd(n, n+1))*A202421(A001844(n))`
-/

namespace A202413.P17236656015599026168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A202421 (A001844 n).toNat

end

end A202413.P17236656015599026168

/-! ## A202413.P1582716110863101447

`A001222(A000043(n+1))*A202421(A001844(n))`
-/

namespace A202413.P1582716110863101447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A202421 (A001844 n).toNat

end

end A202413.P1582716110863101447

/-! ## A202413.P465618206302675115

`A001222(A120364(n+1))*A202421(A001844(n))`
-/

namespace A202413.P465618206302675115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A120364 (n + 1)).toNat * A202421 (A001844 n).toNat

end

end A202413.P465618206302675115

/-!
# A202414: Number of (n+2) X 3 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202414, the canonical program `A202414.P4200359668891302172` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202414 has offset 1).

The definition of A202414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202414.P4200359668891302172

`2*a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=34, a(1)=94, a(2)=265, a(3)=739`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202414

/-- `2*a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P4200359668891302172.Spec : Prop :=
  ∀ n, (P4200359668891302172.a n : ℤ) = A202414 (n + 1)

theorem P4200359668891302172.correct : P4200359668891302172.Spec := by
  intro n
  simp only [A202414, Nat.add_sub_cancel]

end A202414

/-! ## A202414.P13928247464526289526

`A202421(∑[n]+1)`
-/

namespace A202414.P13928247464526289526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202414.P13928247464526289526

namespace A202414

/-- `A202421(∑[n]+1)` -/
def P13928247464526289526.Spec : Prop :=
  ∀ n, P13928247464526289526.a n = A202414 (n + 1)

end A202414

/-! ## A202414.P11285224169078348453

`record[A202421(A286235(n+1))]`
-/

namespace A202414.P11285224169078348453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202414.P11285224169078348453

namespace A202414

/-- `record[A202421(A286235(n+1))]` -/
def P11285224169078348453.Spec : Prop :=
  ∀ n, P11285224169078348453.a n = A202414 (n + 1)

end A202414

/-! ## A202414.P8816592983525090419

`record[A202421(n+1)/A046802(n)]`
-/

namespace A202414.P8816592983525090419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202421 (n + 1) : ℚ) / (A046802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202414.P8816592983525090419

namespace A202414

/-- `record[A202421(n+1)/A046802(n)]` -/
def P8816592983525090419.Spec : Prop :=
  ∀ n, P8816592983525090419.a n = (A202414 (n + 1) : ℚ)

end A202414

/-! ## A202414.P1610280471729712702

`record[root(A202421(n+1), A103406(n))]`
-/

namespace A202414.P1610280471729712702
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202421 (n + 1) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202414.P1610280471729712702

namespace A202414

/-- `record[root(A202421(n+1), A103406(n))]` -/
def P1610280471729712702.Spec : Prop :=
  ∀ n, P1610280471729712702.a n = (A202414 (n + 1) : ℝ)

end A202414

/-!
# A202415: Number of (n+2)X4 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202415, there is no canonical definition to state claims against.
-/

/-! ## A202415.P1081410872844780702

`A202421(∑[n+1]+2)`
-/

namespace A202415.P1081410872844780702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202415.P1081410872844780702

/-! ## A202415.P3751937549624117898

`record[A202421(A286235(n+1)+1)]`
-/

namespace A202415.P3751937549624117898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202415.P3751937549624117898

/-! ## A202415.P1322372102676398383

`record[root(A202421(n+2), A103406(n))]`
-/

namespace A202415.P1322372102676398383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202421 (n + 2) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202415.P1322372102676398383

/-! ## A202415.P3150153408107752125

`record[gcd(A202421(n+2), A213191(n))]`
-/

namespace A202415.P3150153408107752125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202421 (n + 2)) (A213191 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202415.P3150153408107752125

/-! ## A202415.P18132020951401065622

`record[A202421(abs(A201163(n)))]`
-/

namespace A202415.P18132020951401065622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202415.P18132020951401065622

/-!
# A202416: Number of (n+2)X5 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202416, there is no canonical definition to state claims against.
-/

/-! ## A202416.P5343171007888813614

`A202421(∑[n+2]+4)`
-/

namespace A202416.P5343171007888813614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202416.P5343171007888813614

/-! ## A202416.P13885659780902737233

`or(1, A202421(A167614(n+1)))`
-/

namespace A202416.P13885659780902737233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202421 (A167614 (n + 1)).toNat)

end

end A202416.P13885659780902737233

/-! ## A202416.P16203049105751123046

`A202421(A167614(n+1))+A025469(n)`
-/

namespace A202416.P16203049105751123046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A167614 (n + 1)).toNat + A025469 n

end

end A202416.P16203049105751123046

/-! ## A202416.P9617992089724438679

`A063435(n)*A202421(A167614(n+1))`
-/

namespace A202416.P9617992089724438679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A202421 (A167614 (n + 1)).toNat

end

end A202416.P9617992089724438679

/-! ## A202416.P1789283935690243118

`A202421(A167614(n+1))+A034457(n+1)`
-/

namespace A202416.P1789283935690243118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A167614 (n + 1)).toNat + A034457 (n + 1)

end

end A202416.P1789283935690243118

/-!
# A202417: Number of (n+2)X6 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202417, there is no canonical definition to state claims against.
-/

/-! ## A202417.P7345208815527215382

`A202421(A374004(n+1))`
-/

namespace A202417.P7345208815527215382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A374004 (n + 1)).toNat

end

end A202417.P7345208815527215382

/-! ## A202417.P7688931331922896722

`A202421(A141214(n)+7)`
-/

namespace A202417.P7688931331922896722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A141214 n + 7).toNat

end

end A202417.P7688931331922896722

/-! ## A202417.P8322939024653936648

`A202421(A055999(n)+10)`
-/

namespace A202417.P8322939024653936648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A055999 n + 10).toNat

end

end A202417.P8322939024653936648

/-! ## A202417.P15264040870569042844

`A202421(A167614(n+2)+1)`
-/

namespace A202417.P15264040870569042844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A167614 (n + 2) + 1).toNat

end

end A202417.P15264040870569042844

/-! ## A202417.P3101051020381316583

`A202421(A166136(n+2)-2)`
-/

namespace A202417.P3101051020381316583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A166136 (n + 2) - 2).toNat

end

end A202417.P3101051020381316583

/-!
# A202418: Number of (n+2)X7 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202418, there is no canonical definition to state claims against.
-/

/-! ## A202418.P18416552694812580825

`A202421(A374005(n+1))`
-/

namespace A202418.P18416552694812580825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A374005 (n + 1)).toNat

end

end A202418.P18416552694812580825

/-! ## A202418.P7194605532893181623

`A202421(A167499(n+3))`
-/

namespace A202418.P7194605532893181623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A167499 (n + 3)).toNat

end

end A202418.P7194605532893181623

/-! ## A202418.P6519374931555148817

`A202421(A155212(n)+13)`
-/

namespace A202418.P6519374931555148817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A155212 n + 13).toNat

end

end A202418.P6519374931555148817

/-! ## A202418.P1015453572527764020

`A202421(A056000(n)+15)`
-/

namespace A202418.P1015453572527764020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A056000 n + 15).toNat

end

end A202418.P1015453572527764020

/-! ## A202418.P3885465506744732309

`A202421(A167614(n+3)+2)`
-/

namespace A202418.P3885465506744732309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A167614 (n + 3) + 2).toNat

end

end A202418.P3885465506744732309

/-!
# A202419: Number of (n+2)X8 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202419, there is no canonical definition to state claims against.
-/

/-! ## A202419.P13184877738915015475

`A202421(A374007(n+1))`
-/

namespace A202419.P13184877738915015475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A374007 (n + 1)).toNat

end

end A202419.P13184877738915015475

/-! ## A202419.P15845238589635491665

`A202421(eq[7, A131818(n+1)])`
-/

namespace A202419.P15845238589635491665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202419.P15845238589635491665

/-! ## A202419.P6249094997333960766

`A202421(A052905(n+3))`
-/

namespace A202419.P6249094997333960766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A052905 (n + 3)).toNat

end

end A202419.P6249094997333960766

/-! ## A202419.P17523062537293629912

`A202421(eq[5, A193592(n)])`
-/

namespace A202419.P17523062537293629912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202419.P17523062537293629912

/-! ## A202419.P8108905755101755813

`A202421(Δ[Δ[A006504(n+1)]])`
-/

namespace A202419.P8108905755101755813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (f1 (n + 1) - f1 n).toNat

end

end A202419.P8108905755101755813

/-!
# A202420: Number of (n+2)X9 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202420, there is no canonical definition to state claims against.
-/

/-! ## A202420.P7918631992040382610

`A202421(A374008(n+1))`
-/

namespace A202420.P7918631992040382610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A374008 (n + 1)).toNat

end

end A202420.P7918631992040382610

/-! ## A202420.P1015004560874462967

`A202421(A034856(n+5)+9)`
-/

namespace A202420.P1015004560874462967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A034856 (n + 5) + 9).toNat

end

end A202420.P1015004560874462967

/-! ## A202420.P627362326204575289

`A202421(eq[8, A131818(n+1)])`
-/

namespace A202420.P627362326204575289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202420.P627362326204575289

/-! ## A202420.P9398685792999398127

`A202421(A055999(n+4))`
-/

namespace A202420.P9398685792999398127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A055999 (n + 4)).toNat

end

end A202420.P9398685792999398127

/-! ## A202420.P881999566522414679

`A202421(eq[6, A193592(n)])`
-/

namespace A202420.P881999566522414679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202420.P881999566522414679

/-!
# A202422: Primes of the form k!*k!! + 1.

The programs for A202422, there is no canonical definition to state claims against.
-/

/-! ## A202422.P6349771557792362426

`A006530(∏{d}[n, #]+(n+1)!²)`
-/

namespace A202422.P6349771557792362426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n), d + Nat.factorial (n + 1) ^ 2)

end

end A202422.P6349771557792362426

/-!
# A202423: Numbers k such that k!*k!! + 1 is prime.

The programs for A202423, there is no canonical definition to state claims against.
-/

/-! ## A202423.P8195430013036729396

`a(n!*n!!+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=14, a(6)=37, a(7)=48, a(8)=50`
-/

namespace A202423.P8195430013036729396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 14, 37, 48, 50] fun n a =>
  a (Nat.factorial n * Nat.factorial (Nat.factorial n) + 1)

end

end A202423.P8195430013036729396

/-!
# A202425: Number of partitions of n into parts having pairwise common factors but no overall common factor.

The programs for A202425, there is no canonical definition to state claims against.
-/

/-! ## A202425.P2971590498940418197

`A328672(n+31)-1`
-/

namespace A202425.P2971590498940418197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 (n + 31) - 1

end

end A202425.P2971590498940418197

/-!
# A202427: Number of (n+2)X(n+2) binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202427, there is no canonical definition to state claims against.
-/

/-! ## A202427.P5640082648772963308

`A202435(∑[4*n]+1)`
-/

namespace A202427.P5640082648772963308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202427.P5640082648772963308

/-! ## A202427.P9438822262545067758

`lcm(2, A202435(A001844(n)))`
-/

namespace A202427.P9438822262545067758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202435 (A001844 n).toNat)

end

end A202427.P9438822262545067758

/-! ## A202427.P9779358327508609693

`record[gcd(A202435(n+1), A288530(n))]`
-/

namespace A202427.P9779358327508609693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202435 (n + 1)) (A288530 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202427.P9779358327508609693

/-! ## A202427.P11803687831083803591

`record[root(A202435(n+1), A341458(n+1))]`
-/

namespace A202427.P11803687831083803591
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202435 (n + 1) : ℝ) ^ (1 / (A341458 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202427.P11803687831083803591

/-! ## A202427.P14662113856031003099

`A202435(A001844(n))*A284562(n)`
-/

namespace A202427.P14662113856031003099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A001844 n).toNat * A284562 n

end

end A202427.P14662113856031003099

/-!
# A202428: Number of (n+2) X 3 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202428, there is no canonical definition to state claims against.
-/

/-! ## A202428.P8511726010719051677

`A202435(∑[n]+1)`
-/

namespace A202428.P8511726010719051677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202428.P8511726010719051677

/-! ## A202428.P10642242588343759562

`lcm(2, A202435(A000124(n)))`
-/

namespace A202428.P10642242588343759562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202435 (A000124 n).toNat)

end

end A202428.P10642242588343759562

/-! ## A202428.P4890430343782413587

`record[gcd(A002262(n), A202435(n+1))]`
-/

namespace A202428.P4890430343782413587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202435 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202428.P4890430343782413587

/-! ## A202428.P9462826415202543356

`record[(1-A081576(n))*A202435(n+1)]`
-/

namespace A202428.P9462826415202543356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A081576 n) * A202435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202428.P9462826415202543356

/-! ## A202428.P4853288305184181019

`A202435(A000124(n))+A000035(2*n)`
-/

namespace A202428.P4853288305184181019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A000124 n).toNat + A000035 (2 * n)

end

end A202428.P4853288305184181019

/-!
# A202429: Number of (n+2)X4 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202429, there is no canonical definition to state claims against.
-/

/-! ## A202429.P11454241467640193929

`A202435(∑[n+1]+2)`
-/

namespace A202429.P11454241467640193929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202429.P11454241467640193929

/-! ## A202429.P12381267895021182511

`record[A202435(C(A288530(n), 2)+2)]`
-/

namespace A202429.P12381267895021182511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (Nat.choose (A288530 n).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202429.P12381267895021182511

/-! ## A202429.P8424050373472107936

`record[gcd(A002262(n), A202435(n+2))]`
-/

namespace A202429.P8424050373472107936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202435 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202429.P8424050373472107936

/-! ## A202429.P16432109634018040172

`record[A202435(C(A049084(n+1), 2)+2)]`
-/

namespace A202429.P16432109634018040172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (Nat.choose (A049084 (n + 1)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202429.P16432109634018040172

/-! ## A202429.P7497645439258070248

`record[A202435(abs(A201163(n)))]`
-/

namespace A202429.P7497645439258070248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202429.P7497645439258070248

/-!
# A202430: Number of (n+2) X 5 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202430, there is no canonical definition to state claims against.
-/

/-! ## A202430.P9680780222222145553

`A202435(∑[n+2]+4)`
-/

namespace A202430.P9680780222222145553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202430.P9680780222222145553

/-! ## A202430.P10465045955819307160

`lcm(2, A202435(A167614(n+1)))`
-/

namespace A202430.P10465045955819307160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202435 (A167614 (n + 1)).toNat)

end

end A202430.P10465045955819307160

/-! ## A202430.P14556632877587053377

`A202435(A167614(n+1))*A262681(n)`
-/

namespace A202430.P14556632877587053377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A167614 (n + 1)).toNat * A262681 n

end

end A202430.P14556632877587053377

/-! ## A202430.P14619720736223076961

`A202435(A167614(n+1))+A034457(n+1)`
-/

namespace A202430.P14619720736223076961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A167614 (n + 1)).toNat + A034457 (n + 1)

end

end A202430.P14619720736223076961

/-! ## A202430.P9007306618721470181

`A202435(A167614(n+1))%A065341(n+1)`
-/

namespace A202430.P9007306618721470181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202435 (A167614 (n + 1)).toNat) (A065341 (n + 1))

end

end A202430.P9007306618721470181

/-!
# A202431: Number of (n+2)X6 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202431, there is no canonical definition to state claims against.
-/

/-! ## A202431.P2301340666694845959

`A202435(A374004(n+1))`
-/

namespace A202431.P2301340666694845959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A374004 (n + 1)).toNat

end

end A202431.P2301340666694845959

/-! ## A202431.P7766398550813062624

`A202435(A141214(n)+7)`
-/

namespace A202431.P7766398550813062624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A141214 n + 7).toNat

end

end A202431.P7766398550813062624

/-! ## A202431.P10996752062172817102

`A202435(A052905(n)+9)`
-/

namespace A202431.P10996752062172817102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A052905 n + 9).toNat

end

end A202431.P10996752062172817102

/-! ## A202431.P5186350814331178120

`A202435(A167614(n+2)+1)`
-/

namespace A202431.P5186350814331178120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A167614 (n + 2) + 1).toNat

end

end A202431.P5186350814331178120

/-! ## A202431.P5821332992197991016

`A202435(A055998(n+2))`
-/

namespace A202431.P5821332992197991016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A055998 (n + 2)).toNat

end

end A202431.P5821332992197991016

/-!
# A202432: Number of (n+2)X7 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202432, there is no canonical definition to state claims against.
-/

/-! ## A202432.P3584330207597544455

`A202435(A374005(n+1))`
-/

namespace A202432.P3584330207597544455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A374005 (n + 1)).toNat

end

end A202432.P3584330207597544455

/-! ## A202432.P18319282380099276529

`A202435(A155212(n)+13)`
-/

namespace A202432.P18319282380099276529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A155212 n + 13).toNat

end

end A202432.P18319282380099276529

/-! ## A202432.P8664078233820496906

`A202435(A056000(n)+15)`
-/

namespace A202432.P8664078233820496906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A056000 n + 15).toNat

end

end A202432.P8664078233820496906

/-! ## A202432.P15790086022744163297

`A202435(A167614(n+3)+2)`
-/

namespace A202432.P15790086022744163297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A167614 (n + 3) + 2).toNat

end

end A202432.P15790086022744163297

/-! ## A202432.P4562507132306877649

`A202435(A046691(n+3))`
-/

namespace A202432.P4562507132306877649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A046691 (n + 3)).toNat

end

end A202432.P4562507132306877649

/-!
# A202433: Number of (n+2)X8 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202433, there is no canonical definition to state claims against.
-/

/-! ## A202433.P9194929333942063336

`A202435(A374007(n+1))`
-/

namespace A202433.P9194929333942063336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A374007 (n + 1)).toNat

end

end A202433.P9194929333942063336

/-! ## A202433.P7696708011265343352

`A202435(eq[7, A131818(n+1)])`
-/

namespace A202433.P7696708011265343352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202433.P7696708011265343352

/-! ## A202433.P10221653047974323955

`lcm(2, A202435(A167499(n+4)+1))`
-/

namespace A202433.P10221653047974323955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202435 (A167499 (n + 4) + 1).toNat)

end

end A202433.P10221653047974323955

/-! ## A202433.P7739348389116105516

`A202435(A000035(2*n)+A167499(n+4)+1)`
-/

namespace A202433.P7739348389116105516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A000035 (2 * n) + (A167499 (n + 4) + 1)).toNat

end

end A202433.P7739348389116105516

/-! ## A202433.P10838348464269032510

`A202435(A052905(n+3))`
-/

namespace A202433.P10838348464269032510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A052905 (n + 3)).toNat

end

end A202433.P10838348464269032510

/-!
# A202434: Number of (n+2) X 9 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202434, there is no canonical definition to state claims against.
-/

/-! ## A202434.P12626414867839921712

`A202435(A374008(n+1))`
-/

namespace A202434.P12626414867839921712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A374008 (n + 1)).toNat

end

end A202434.P12626414867839921712

/-! ## A202434.P14656763094038327468

`A202435(A055998(n+4)+10)`
-/

namespace A202434.P14656763094038327468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A055998 (n + 4) + 10).toNat

end

end A202434.P14656763094038327468

/-! ## A202434.P10568236317801521712

`A202435(eq[8, A131818(n+1)])`
-/

namespace A202434.P10568236317801521712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202434.P10568236317801521712

/-! ## A202434.P15270280569551364039

`A202435(eq[4, A219347(n)])`
-/

namespace A202434.P15270280569551364039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202434.P15270280569551364039

/-! ## A202434.P13617434642626283310

`A202435(eq[6, A193592(n)])`
-/

namespace A202434.P13617434642626283310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202434.P13617434642626283310

/-!
# A202436: G.f.: A(x) = ( Sum_{n>=0} (-10)^n*(2*n+1) * x^(n*(n+1)/2) )^(-1/3).

The programs for A202436, there is no canonical definition to state claims against.
-/

/-! ## A202436.P5125378744941893658

`A219094(5^(n+1))*A227791(n)`
-/

namespace A202436.P5125378744941893658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219094 (5 ^ (n + 1)) * A227791 n

end

end A202436.P5125378744941893658

/-!
# A202439: Number of (n+2)X(n+2) binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202439, there is no canonical definition to state claims against.
-/

/-! ## A202439.P3915901910385338027

`A202447(∑[4*n]+1)`
-/

namespace A202439.P3915901910385338027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202439.P3915901910385338027

/-! ## A202439.P15697229409057414639

`lcm(2, A202447(A001844(n)))`
-/

namespace A202439.P15697229409057414639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202447 (A001844 n).toNat)

end

end A202439.P15697229409057414639

/-! ## A202439.P8192442819653520296

`record[A202447(Δ[A235355(n)])]`
-/

namespace A202439.P8192442819653520296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202439.P8192442819653520296

/-! ## A202439.P2723922489628460397

`record[A003982(n)*A202447(n+1)]`
-/

namespace A202439.P2723922489628460397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202439.P2723922489628460397

/-! ## A202439.P18424444981148604641

`record[A202447(n+1)/A143182(n)]`
-/

namespace A202439.P18424444981148604641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202447 (n + 1) : ℚ) / (A143182 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202439.P18424444981148604641

/-!
# A202440: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202440, the canonical program `A202440.P13954623535123565726` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202440 has offset 1).

The definition of A202440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202440.P13954623535123565726

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=80, a(1)=138, a(2)=224, a(3)=338, a(4)=484`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202440

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13954623535123565726.Spec : Prop :=
  ∀ n, P13954623535123565726.a n = A202440 (n + 1)

theorem P13954623535123565726.correct : P13954623535123565726.Spec := by
  intro n
  simp only [A202440, Nat.add_sub_cancel]

end A202440

/-! ## A202440.P13403386559678955065

`A202447(∑[n]+1)`
-/

namespace A202440.P13403386559678955065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202440.P13403386559678955065

namespace A202440

/-- `A202447(∑[n]+1)` -/
def P13403386559678955065.Spec : Prop :=
  ∀ n, P13403386559678955065.a n = A202440 (n + 1)

end A202440

/-! ## A202440.P5847980726500258145

`lcm(2, A202447(A000124(n)))`
-/

namespace A202440.P5847980726500258145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202447 (A000124 n).toNat)

end

end A202440.P5847980726500258145

namespace A202440

/-- `lcm(2, A202447(A000124(n)))` -/
def P5847980726500258145.Spec : Prop :=
  ∀ n, (P5847980726500258145.a n : ℤ) = A202440 (n + 1)

end A202440

/-! ## A202440.P7935229221026406048

`record[A202447(A114091(n+1))]`
-/

namespace A202440.P7935229221026406048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202440.P7935229221026406048

namespace A202440

/-- `record[A202447(A114091(n+1))]` -/
def P7935229221026406048.Spec : Prop :=
  ∀ n, P7935229221026406048.a n = A202440 (n + 1)

end A202440

/-! ## A202440.P17694333343072518555

`record[A202447(A246276(n+1))]`
-/

namespace A202440.P17694333343072518555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202440.P17694333343072518555

namespace A202440

/-- `record[A202447(A246276(n+1))]` -/
def P17694333343072518555.Spec : Prop :=
  ∀ n, P17694333343072518555.a n = A202440 (n + 1)

end A202440

/-!
# A202441: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202441, there is no canonical definition to state claims against.
-/

/-! ## A202441.P18156980509861531487

`A202447(∑[n+1]+2)`
-/

namespace A202441.P18156980509861531487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202441.P18156980509861531487

/-! ## A202441.P17284036617162493631

`lcm(2, A202447(A133263(n+1)))`
-/

namespace A202441.P17284036617162493631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202447 (A133263 (n + 1)).toNat)

end

end A202441.P17284036617162493631

/-! ## A202441.P17743540011703094153

`record[A202447(A114091(n+1)+1)]`
-/

namespace A202441.P17743540011703094153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202441.P17743540011703094153

/-! ## A202441.P7179507755661804437

`record[root(A202447(n+3), A093561(n))]`
-/

namespace A202441.P7179507755661804437
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202447 (n + 3) : ℝ) ^ (1 / (A093561 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202441.P7179507755661804437

/-! ## A202441.P4021060883110814409

`record[gcd(A002262(n), A202447(n+2))]`
-/

namespace A202441.P4021060883110814409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202447 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202441.P4021060883110814409

/-!
# A202442: Number of (n+2) X 5 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202442, there is no canonical definition to state claims against.
-/

/-! ## A202442.P12139712524921857330

`A202447(∑[n+2]+4)`
-/

namespace A202442.P12139712524921857330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202442.P12139712524921857330

/-! ## A202442.P15848115462102007672

`lcm(2, A202447(A167614(n+1)))`
-/

namespace A202442.P15848115462102007672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202447 (A167614 (n + 1)).toNat)

end

end A202442.P15848115462102007672

/-! ## A202442.P9296243391903244077

`record[A202447(n+4)/A093561(n)]`
-/

namespace A202442.P9296243391903244077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202447 (n + 4) : ℚ) / (A093561 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202442.P9296243391903244077

/-! ## A202442.P2300346918383261000

`A285007(n+1)+A202447(A167614(n+1))`
-/

namespace A202442.P2300346918383261000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A202447 (A167614 (n + 1)).toNat

end

end A202442.P2300346918383261000

/-! ## A202442.P13432978066336223175

`A202447(A167614(n+1))%A033423(n+1)`
-/

namespace A202442.P13432978066336223175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202447 (A167614 (n + 1)).toNat) (A033423 (n + 1))

end

end A202442.P13432978066336223175

/-!
# A202443: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202443, there is no canonical definition to state claims against.
-/

/-! ## A202443.P6266474994527133098

`A202447(∑[n+3]+7)`
-/

namespace A202443.P6266474994527133098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202443.P6266474994527133098

/-! ## A202443.P15370834618394687231

`lcm(2, A202447(A027379(n+1)+7))`
-/

namespace A202443.P15370834618394687231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202447 (A027379 (n + 1) + 7).toNat)

end

end A202443.P15370834618394687231

/-! ## A202443.P16225480383396459910

`A007318(C(2, n))*A202447(A027379(n+1)+7)`
-/

namespace A202443.P16225480383396459910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A202447 (A027379 (n + 1) + 7).toNat

end

end A202443.P16225480383396459910

/-! ## A202443.P14445327236135254258

`A000041(C(n, n²))*A202447(A027379(n+1)+7)`
-/

namespace A202443.P14445327236135254258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A202447 (A027379 (n + 1) + 7).toNat

end

end A202443.P14445327236135254258

/-! ## A202443.P8353392823260423522

`A202447(A027379(n+1)+7)/A007318(C(n, n²))`
-/

namespace A202443.P8353392823260423522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202447 (A027379 (n + 1) + 7).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A202443.P8353392823260423522

/-!
# A202444: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202444, there is no canonical definition to state claims against.
-/

/-! ## A202444.P14549888165623625917

`A202447(∑[n+4]+11)`
-/

namespace A202444.P14549888165623625917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A202444.P14549888165623625917

/-!
# A202445: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202445, there is no canonical definition to state claims against.
-/

/-! ## A202445.P6298811870526661916

`A202447(A374007(n+1))`
-/

namespace A202445.P6298811870526661916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A374007 (n + 1)).toNat

end

end A202445.P6298811870526661916

/-! ## A202445.P272101825042830870

`A202447(A166136(n+4))`
-/

namespace A202445.P272101825042830870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A166136 (n + 4)).toNat

end

end A202445.P272101825042830870

/-! ## A202445.P7840579998087672651

`A202447(A056115(n)+21)`
-/

namespace A202445.P7840579998087672651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A056115 n + 21).toNat

end

end A202445.P7840579998087672651

/-! ## A202445.P6015262020108079026

`A202447(∑[A020710(n)]+16)`
-/

namespace A202445.P6015262020108079026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A202445.P6015262020108079026

/-! ## A202445.P17570584723972191768

`A202447(A167499(n+4)+1)`
-/

namespace A202445.P17570584723972191768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A167499 (n + 4) + 1).toNat

end

end A202445.P17570584723972191768

/-!
# A202446: Number of (n+2) X 9 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202446, there is no canonical definition to state claims against.
-/

/-! ## A202446.P4766501588446363170

`A202447(A374008(n+1))`
-/

namespace A202446.P4766501588446363170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A374008 (n + 1)).toNat

end

end A202446.P4766501588446363170

/-! ## A202446.P2558169723244031306

`A202447(A167487(n+5))`
-/

namespace A202446.P2558169723244031306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A167487 (n + 5)).toNat

end

end A202446.P2558169723244031306

/-! ## A202446.P18289254551081483911

`A202447(A056119(n)+28)`
-/

namespace A202446.P18289254551081483911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A056119 n + 28).toNat

end

end A202446.P18289254551081483911

/-! ## A202446.P18411426311137501379

`A202447(eq[11, A066657(n)])`
-/

namespace A202446.P18411426311137501379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202446.P18411426311137501379

/-! ## A202446.P4125329161774156739

`A202447(A166136(n+5)+1)`
-/

namespace A202446.P4125329161774156739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202447 (A166136 (n + 5) + 1).toNat

end

end A202446.P4125329161774156739

/-!
# A202449: Least k such that k*n!! - 1 is a prime number.

The programs for A202449, there is no canonical definition to state claims against.
-/

/-! ## A202449.P11293767672505377630

`A001222(A167487(n)+A056448(n+1))`
-/

namespace A202449.P11293767672505377630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A167487 n + A056448 (n + 1)).toNat

end

end A202449.P11293767672505377630

/-! ## A202449.P11532347599293207555

`A087704(A000040(n+4)*A092049(n+1))`
-/

namespace A202449.P11532347599293207555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087704 (A000040 (n + 4) * A092049 (n + 1)).toNat

end

end A202449.P11532347599293207555

/-!
# A202451: Upper triangular Fibonacci matrix, by SW antidiagonals.

The programs for A202451, the canonical program `A202451.P8607763733024815919` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202451 has offset 1).

The definition of A202451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202451.P8607763733024815919

`A000045(A101688(n)*A143182(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202451

/-- `A000045(A101688(n)*A143182(n))` -/
def P8607763733024815919.Spec : Prop :=
  ∀ n, P8607763733024815919.a n = A202451 (n + 1)

theorem P8607763733024815919.correct : P8607763733024815919.Spec := by
  intro n
  simp only [A202451, Nat.add_sub_cancel]

end A202451

/-! ## A202451.P3960193144756046368

`A000045(A002260(n+1)+∑[A068344(n)])`
-/

namespace A202451.P3960193144756046368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202451.P3960193144756046368

namespace A202451

/-- `A000045(A002260(n+1)+∑[A068344(n)])` -/
def P3960193144756046368.Spec : Prop :=
  ∀ n, P3960193144756046368.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P14915461741169688606

`A202452(A038722(n+1))`
-/

namespace A202451.P14915461741169688606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (A038722 (n + 1)).toNat

end

end A202451.P14915461741169688606

namespace A202451

/-- `A202452(A038722(n+1))` -/
def P14915461741169688606.Spec : Prop :=
  ∀ n, P14915461741169688606.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P7812054248441788275

`A202452(A061579(n)+1)`
-/

namespace A202451.P7812054248441788275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (A061579 n + 1).toNat

end

end A202451.P7812054248441788275

namespace A202451

/-- `A202452(A061579(n)+1)` -/
def P7812054248441788275.Spec : Prop :=
  ∀ n, P7812054248441788275.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P11601082376850347746

`A128618(A185180(n+1))`
-/

namespace A202451.P11601082376850347746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128618 (A185180 (n + 1)).toNat

end

end A202451.P11601082376850347746

namespace A202451

/-- `A128618(A185180(n+1))` -/
def P11601082376850347746.Spec : Prop :=
  ∀ n, P11601082376850347746.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P222601122026395392

`A202452(A093995(n+1)-n)`
-/

namespace A202451.P222601122026395392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A202451.P222601122026395392

namespace A202451

/-- `A202452(A093995(n+1)-n)` -/
def P222601122026395392.Spec : Prop :=
  ∀ n, P222601122026395392.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P6083669173981057845

`A079977(A253146(n+1)-1)`
-/

namespace A202451.P6083669173981057845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A253146 (n + 1) - 1).toNat

end

end A202451.P6083669173981057845

namespace A202451

/-- `A079977(A253146(n+1)-1)` -/
def P6083669173981057845.Spec : Prop :=
  ∀ n, P6083669173981057845.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P15794296417097265047

`A053602((A253146(n+1)+1)*A101688(n))`
-/

namespace A202451.P15794296417097265047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 ((A253146 (n + 1) + 1) * A101688 n).toNat

end

end A202451.P15794296417097265047

namespace A202451

/-- `A053602((A253146(n+1)+1)*A101688(n))` -/
def P15794296417097265047.Spec : Prop :=
  ∀ n, P15794296417097265047.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P10831098592867127330

`A027926(2*n+1)*A101688(n)`
-/

namespace A202451.P10831098592867127330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (2 * n + 1) * A101688 n

end

end A202451.P10831098592867127330

namespace A202451

/-- `A027926(2*n+1)*A101688(n)` -/
def P10831098592867127330.Spec : Prop :=
  ∀ n, P10831098592867127330.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P17923470205559868090

`round(A202502(n+1)/ϕ)`
-/

namespace A202451.P17923470205559868090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A202502 (n + 1) : ℝ) / Real.goldenRatio)

end

end A202451.P17923470205559868090

namespace A202451

/-- `round(A202502(n+1)/ϕ)` -/
def P17923470205559868090.Spec : Prop :=
  ∀ n, P17923470205559868090.a n = A202451 (n + 1)

end A202451

/-!
# A202452: Lower triangular Fibonacci matrix, by SW antidiagonals.

The programs for A202452, the canonical program `A202452.P9644415859408235148` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202452 has offset 1).

The definition of A202452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202452.P9644415859408235148

`A000045(A185914(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A202452

/-- `A000045(A185914(n+1))` -/
def P9644415859408235148.Spec : Prop :=
  ∀ n, P9644415859408235148.a n = A202452 (n + 1)

theorem P9644415859408235148.correct : P9644415859408235148.Spec := by
  intro n
  simp only [A202452, Nat.add_sub_cancel]

end A202452

/-! ## A202452.P10606775266031224194

`A000045(A004736(n+1)-A053616(n))`
-/

namespace A202452.P10606775266031224194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) - A053616 n).toNat

end

end A202452.P10606775266031224194

namespace A202452

/-- `A000045(A004736(n+1)-A053616(n))` -/
def P10606775266031224194.Spec : Prop :=
  ∀ n, P10606775266031224194.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P12923308942739243422

`A128618(A064789(n+1))`
-/

namespace A202452.P12923308942739243422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128618 (A064789 (n + 1)).toNat

end

end A202452.P12923308942739243422

namespace A202452

/-- `A128618(A064789(n+1))` -/
def P12923308942739243422.Spec : Prop :=
  ∀ n, P12923308942739243422.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P13748622866756579354

`A202451(A038722(n+1))`
-/

namespace A202452.P13748622866756579354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (A038722 (n + 1)).toNat

end

end A202452.P13748622866756579354

namespace A202452

/-- `A202451(A038722(n+1))` -/
def P13748622866756579354.Spec : Prop :=
  ∀ n, P13748622866756579354.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P17702741056839911205

`A202451(A278818(n))`
-/

namespace A202452.P17702741056839911205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (A278818 n).toNat

end

end A202452.P17702741056839911205

namespace A202452

/-- `A202451(A278818(n))` -/
def P17702741056839911205.Spec : Prop :=
  ∀ n, P17702741056839911205.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P15508306558485791752

`A077605(n+1)*A227431(n+1)`
-/

namespace A202452.P15508306558485791752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A227431 (n + 1)

end

end A202452.P15508306558485791752

namespace A202452

/-- `A077605(n+1)*A227431(n+1)` -/
def P15508306558485791752.Spec : Prop :=
  ∀ n, P15508306558485791752.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P13153105526019826648

`A079977(A082375(2*n))`
-/

namespace A202452.P13153105526019826648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A082375 (2 * n)).toNat

end

end A202452.P13153105526019826648

namespace A202452

/-- `A079977(A082375(2*n))` -/
def P13153105526019826648.Spec : Prop :=
  ∀ n, P13153105526019826648.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P11001426173281879345

`A000045(A159780(A130328(n)))`
-/

namespace A202452.P11001426173281879345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A159780 (A130328 n).toNat).toNat

end

end A202452.P11001426173281879345

namespace A202452

/-- `A000045(A159780(A130328(n)))` -/
def P11001426173281879345.Spec : Prop :=
  ∀ n, P11001426173281879345.a n = A202452 (n + 1)

end A202452

/-!
# A202453: Fibonacci self-fusion matrix, by antidiagonals.

The programs for A202453, there is no canonical definition to state claims against.
-/

/-! ## A202453.P15228670145421962447

`xor(A007814(A045912(n)), A131410(n+1))`
-/

namespace A202453.P15228670145421962447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A045912 n).toNat) (A131410 (n + 1))

end

end A202453.P15228670145421962447

/-! ## A202453.P1039173576150404098

`A131410(n+1)+A033665(A059922(n))`
-/

namespace A202453.P1039173576150404098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A033665 (A059922 n).toNat

end

end A202453.P1039173576150404098

/-! ## A202453.P5067785262094066966

`A131410(n+1)+A124762(A099594(n))`
-/

namespace A202453.P5067785262094066966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A124762 (A099594 n).toNat

end

end A202453.P5067785262094066966

/-! ## A202453.P261862973685996164

`A131410(n+1)+A082858(A289481(n))`
-/

namespace A202453.P261862973685996164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A082858 (A289481 n).toNat

end

end A202453.P261862973685996164

/-! ## A202453.P16235765460503180283

`A244415(A168549(n))+A131410(n+1)`
-/

namespace A202453.P16235765460503180283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A168549 n).toNat + A131410 (n + 1)

end

end A202453.P16235765460503180283

/-!
# A202454: Number of (n+2) X (n+2) binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202454, there is no canonical definition to state claims against.
-/

/-! ## A202454.P11986769707165980385

`A202461(∑[4*n]+1)`
-/

namespace A202454.P11986769707165980385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202454.P11986769707165980385

/-! ## A202454.P15793819026765811904

`A202461(A001844(n))%A202430(n+1)`
-/

namespace A202454.P15793819026765811904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A001844 n).toNat) (A202430 (n + 1))

end

end A202454.P15793819026765811904

/-! ## A202454.P1853129664884815233

`A320332(A219347(n))+A202461(A001844(n))`
-/

namespace A202454.P1853129664884815233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 (A219347 n).toNat + A202461 (A001844 n).toNat

end

end A202454.P1853129664884815233

/-! ## A202454.P1766009803262500203

`A202461(A001844(n))/A188919(A320332(n))`
-/

namespace A202454.P1766009803262500203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202461 (A001844 n).toNat : ℚ) / (A188919 (A320332 n).toNat : ℚ)

end

end A202454.P1766009803262500203

/-! ## A202454.P229955756602586695

`A320332(A004737(n+1))+A202461(A001844(n))`
-/

namespace A202454.P229955756602586695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 (A004737 (n + 1)).toNat + A202461 (A001844 n).toNat

end

end A202454.P229955756602586695

/-!
# A202455: Number of (n+2) X 4 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202455, the canonical program `A202455.P6900419488968996005` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202455 has offset 1).

The definition of A202455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202455.P6900419488968996005

`1/4*(n+1)^4+15/2*(n+1)^3+229/4*(n+1)²+237*(n+1)+427`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202455

/-- `1/4*(n+1)^4+15/2*(n+1)^3+229/4*(n+1)²+237*(n+1)+427` -/
def P6900419488968996005.Spec : Prop :=
  ∀ n, P6900419488968996005.a n = (A202455 (n + 1) : ℚ)

end A202455

/-! ## A202455.P14098916412145446630

`A202461(∑[n+1]+2)`
-/

namespace A202455.P14098916412145446630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202455.P14098916412145446630

namespace A202455

/-- `A202461(∑[n+1]+2)` -/
def P14098916412145446630.Spec : Prop :=
  ∀ n, P14098916412145446630.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P12726810773904173240

`or(char[3], A202461(A000096(n+1)))`
-/

namespace A202455.P12726810773904173240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202461 (A000096 (n + 1)).toNat)

end

end A202455.P12726810773904173240

namespace A202455

/-- `or(char[3], A202461(A000096(n+1)))` -/
def P12726810773904173240.Spec : Prop :=
  ∀ n, P12726810773904173240.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P1014560051831691172

`abs(A020985(n)*A202461(A000096(n+1)))`
-/

namespace A202455.P1014560051831691172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A202461 (A000096 (n + 1)).toNat|

end

end A202455.P1014560051831691172

namespace A202455

/-- `abs(A020985(n)*A202461(A000096(n+1)))` -/
def P1014560051831691172.Spec : Prop :=
  ∀ n, P1014560051831691172.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P2390717319572259643

`A202461(A000096(n+1))%A053743(n)²`
-/

namespace A202455.P2390717319572259643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A000096 (n + 1)).toNat) (A053743 n ^ 2)

end

end A202455.P2390717319572259643

namespace A202455

/-- `A202461(A000096(n+1))%A053743(n)²` -/
def P2390717319572259643.Spec : Prop :=
  ∀ n, P2390717319572259643.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P12032680421465150125

`A054977(n+1)*A202461(A000096(n+1))`
-/

namespace A202455.P12032680421465150125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A202461 (A000096 (n + 1)).toNat

end

end A202455.P12032680421465150125

namespace A202455

/-- `A054977(n+1)*A202461(A000096(n+1))` -/
def P12032680421465150125.Spec : Prop :=
  ∀ n, P12032680421465150125.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P1594991990897385854

`A040001(2*n+1)*A202461(A000096(n+1))`
-/

namespace A202455.P1594991990897385854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A202461 (A000096 (n + 1)).toNat

end

end A202455.P1594991990897385854

namespace A202455

/-- `A040001(2*n+1)*A202461(A000096(n+1))` -/
def P1594991990897385854.Spec : Prop :=
  ∀ n, P1594991990897385854.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P9822121968445472792

`A014963(6*(n+1))*A202461(A000096(n+1))`
-/

namespace A202455.P9822121968445472792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A202461 (A000096 (n + 1)).toNat

end

end A202455.P9822121968445472792

namespace A202455

/-- `A014963(6*(n+1))*A202461(A000096(n+1))` -/
def P9822121968445472792.Spec : Prop :=
  ∀ n, P9822121968445472792.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P11348552841601383663

`A020985(2*n+1)²*A202461(A000096(n+1))`
-/

namespace A202455.P11348552841601383663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) ^ 2 * A202461 (A000096 (n + 1)).toNat

end

end A202455.P11348552841601383663

namespace A202455

/-- `A020985(2*n+1)²*A202461(A000096(n+1))` -/
def P11348552841601383663.Spec : Prop :=
  ∀ n, P11348552841601383663.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P2014357480713885597

`A007318(A000096(n))*A202461(A000096(n+1))`
-/

namespace A202455.P2014357480713885597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A202461 (A000096 (n + 1)).toNat

end

end A202455.P2014357480713885597

namespace A202455

/-- `A007318(A000096(n))*A202461(A000096(n+1))` -/
def P2014357480713885597.Spec : Prop :=
  ∀ n, P2014357480713885597.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P5703487755197259607

`-(A008683(A007918(n))*A202461(A000096(n+1)))`
-/

namespace A202455.P5703487755197259607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A007918 n).toNat * A202461 (A000096 (n + 1)).toNat)

end

end A202455.P5703487755197259607

namespace A202455

/-- `-(A008683(A007918(n))*A202461(A000096(n+1)))` -/
def P5703487755197259607.Spec : Prop :=
  ∀ n, P5703487755197259607.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P9929660358910582057

`A001222(A182312(n+1))*A202461(A000096(n+1))`
-/

namespace A202455.P9929660358910582057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A182312 (n + 1)).toNat * A202461 (A000096 (n + 1)).toNat

end

end A202455.P9929660358910582057

namespace A202455

/-- `A001222(A182312(n+1))*A202461(A000096(n+1))` -/
def P9929660358910582057.Spec : Prop :=
  ∀ n, P9929660358910582057.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P2604239991419241973

`A072195(A006530(n+2))*A202461(A000096(n+1))`
-/

namespace A202455.P2604239991419241973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072195 (A006530 (n + 2)).toNat * A202461 (A000096 (n + 1)).toNat

end

end A202455.P2604239991419241973

namespace A202455

/-- `A072195(A006530(n+2))*A202461(A000096(n+1))` -/
def P2604239991419241973.Spec : Prop :=
  ∀ n, P2604239991419241973.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P579802091160584035

`A000045(A020639(2*(n+1)))*A202461(A000096(n+1))`
-/

namespace A202455.P579802091160584035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A202461 (A000096 (n + 1)).toNat

end

end A202455.P579802091160584035

namespace A202455

/-- `A000045(A020639(2*(n+1)))*A202461(A000096(n+1))` -/
def P579802091160584035.Spec : Prop :=
  ∀ n, P579802091160584035.a n = A202455 (n + 1)

end A202455

/-! ## A202455.P5776205322425987891

`A202461(A000096(n+1))/A000045(A020639(n+2+n))`
-/

namespace A202455.P5776205322425987891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202461 (A000096 (n + 1)).toNat : ℚ) / (A000045 (A020639 (n + 2 + n)).toNat : ℚ)

end

end A202455.P5776205322425987891

namespace A202455

/-- `A202461(A000096(n+1))/A000045(A020639(n+2+n))` -/
def P5776205322425987891.Spec : Prop :=
  ∀ n, P5776205322425987891.a n = (A202455 (n + 1) : ℚ)

end A202455

/-! ## A202455.P17339981220165900853

`A202461(A000096(n+1))/A040001(A191118(n+2))`
-/

namespace A202455.P17339981220165900853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202461 (A000096 (n + 1)).toNat : ℚ) / (A040001 (A191118 (n + 2)).toNat : ℚ)

end

end A202455.P17339981220165900853

namespace A202455

/-- `A202461(A000096(n+1))/A040001(A191118(n+2))` -/
def P17339981220165900853.Spec : Prop :=
  ∀ n, P17339981220165900853.a n = (A202455 (n + 1) : ℚ)

end A202455

/-!
# A202456: Number of (n+2) X 5 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202456, there is no canonical definition to state claims against.
-/

/-! ## A202456.P12673988682281791126

`A202461(∑[n+2]+4)`
-/

namespace A202456.P12673988682281791126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202456.P12673988682281791126

/-! ## A202456.P4834175581994839151

`A202461(A167614(n+1))%A017505(n)`
-/

namespace A202456.P4834175581994839151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A167614 (n + 1)).toNat) (A017505 n)

end

end A202456.P4834175581994839151

/-! ## A202456.P2189526859010859621

`lcm(A033999(n), A202461(A167614(n+1)))`
-/

namespace A202456.P2189526859010859621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202461 (A167614 (n + 1)).toNat)

end

end A202456.P2189526859010859621

/-! ## A202456.P13093786201767150432

`A346218(∑{d}[n, C(2, #)]!)+A202461(A167614(n+1))`
-/

namespace A202456.P13093786201767150432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346218 (Nat.factorial (∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 d)) + A202461 (A167614 (n + 1)).toNat

end

end A202456.P13093786201767150432

/-! ## A202456.P833799325306788297

`A158388(n+1)*A202461(A034856(n+2))`
-/

namespace A202456.P833799325306788297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A202461 (A034856 (n + 2)).toNat

end

end A202456.P833799325306788297

/-! ## A202456.P1773846672390835745

`A202461(A034856(n+2))%A202471(n+3)`
-/

namespace A202456.P1773846672390835745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A034856 (n + 2)).toNat) (A202471 (n + 3))

end

end A202456.P1773846672390835745

/-!
# A202457: Number of (n+2) X 6 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202457, there is no canonical definition to state claims against.
-/

/-! ## A202457.P3696317399015612589

`A202461(∑[n+3]+7)`
-/

namespace A202457.P3696317399015612589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202457.P3696317399015612589

/-! ## A202457.P3815883974499499577

`lcm(A008836(n+1), A202461(A052905(n)+9))`
-/

namespace A202457.P3815883974499499577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A202461 (A052905 n + 9).toNat)

end

end A202457.P3815883974499499577

/-! ## A202457.P3432620119460906396

`A033999(n)²*A202461(Δ[A008778(n)]+6)`
-/

namespace A202457.P3432620119460906396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A202461 (f1 (n + 1) - f1 n + 6).toNat

end

end A202457.P3432620119460906396

/-! ## A202457.P10080476570705929313

`A008836(A000688(n+1)²)*A202461(A052905(n)+9)`
-/

namespace A202457.P10080476570705929313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000688 (n + 1) ^ 2).toNat * A202461 (A052905 n + 9).toNat

end

end A202457.P10080476570705929313

/-! ## A202457.P15996404669432923714

`A008836(A023193(n+1)²)*A202461(A052905(n)+9)`
-/

namespace A202457.P15996404669432923714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A023193 (n + 1) ^ 2).toNat * A202461 (A052905 n + 9).toNat

end

end A202457.P15996404669432923714

/-! ## A202457.P2933448455837920121

`A014963(A181924(n+1))*A202461(A027379(n+1)+7)`
-/

namespace A202457.P2933448455837920121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A181924 (n + 1)).toNat * A202461 (A027379 (n + 1) + 7).toNat

end

end A202457.P2933448455837920121

/-! ## A202457.P11899634133390204671

`A033999(n)²*A202461(A055998(n+2))`
-/

namespace A202457.P11899634133390204671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A202461 (A055998 (n + 2)).toNat

end

end A202457.P11899634133390204671

/-! ## A202457.P595991513720507766

`A057979(2*n)*A202461(A055998(n+2))`
-/

namespace A202457.P595991513720507766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A202461 (A055998 (n + 2)).toNat

end

end A202457.P595991513720507766

/-! ## A202457.P4887371931814953456

`A100401(n)%2*A202461(A055998(n+2))`
-/

namespace A202457.P4887371931814953456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100401 n) 2 * A202461 (A055998 (n + 2)).toNat

end

end A202457.P4887371931814953456

/-! ## A202457.P18124937157251225981

`A202461(A055998(n+2))%A056601(n+9)`
-/

namespace A202457.P18124937157251225981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A055998 (n + 2)).toNat) (A056601 (n + 9))

end

end A202457.P18124937157251225981

/-! ## A202457.P9299111973252504703

`A202461(A000217(n+4)-3)%A250541(n+1)`
-/

namespace A202457.P9299111973252504703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A000217 (n + 4) - 3).toNat) (A250541 (n + 1))

end

end A202457.P9299111973252504703

/-! ## A202457.P15194017816748073524

`A202461(A000124(n+4)-4)%A202458(n+1)`
-/

namespace A202457.P15194017816748073524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202461 (A000124 (n + 4) - 4).toNat) (A202458 (n + 1))

end

end A202457.P15194017816748073524

/-! ## A202457.P10541444602101349138

`A000040(n+2)²%2*A202461(A055998(n+2))`
-/

namespace A202457.P10541444602101349138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 2) 2 * A202461 (A055998 (n + 2)).toNat

end

end A202457.P10541444602101349138

/-! ## A202457.P3107577480120197073

`A202461(A055998(n+2))+A031286(A000120(n))`
-/

namespace A202457.P3107577480120197073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A055998 (n + 2)).toNat + A031286 (A000120 n).toNat

end

end A202457.P3107577480120197073

/-! ## A202457.P6830835702367716724

`A202461(A055998(n+2))+A031286(A052409(n+1))`
-/

namespace A202457.P6830835702367716724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A055998 (n + 2)).toNat + A031286 (A052409 (n + 1)).toNat

end

end A202457.P6830835702367716724

/-! ## A202457.P7120241440868472657

`A202461(A055998(n+2))+A003966(A190640(n+1))`
-/

namespace A202457.P7120241440868472657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A055998 (n + 2)).toNat + A003966 (A190640 (n + 1)).toNat

end

end A202457.P7120241440868472657

/-! ## A202457.P8216523430848053398

`A202461(A027379(n+2))/A033273(A033253(n+1))`
-/

namespace A202457.P8216523430848053398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202461 (A027379 (n + 2)).toNat : ℚ) / (A033273 (A033253 (n + 1)).toNat : ℚ)

end

end A202457.P8216523430848053398

/-! ## A202457.P17682402231585621978

`A202461(A027379(n+2))/A033273(A172071(n+1))`
-/

namespace A202457.P17682402231585621978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202461 (A027379 (n + 2)).toNat : ℚ) / (A033273 (A172071 (n + 1)).toNat : ℚ)

end

end A202457.P17682402231585621978

/-! ## A202457.P6248577703834430984

`A202461(A027379(n+2))/A033273(A033274(n+1))`
-/

namespace A202457.P6248577703834430984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202461 (A027379 (n + 2)).toNat : ℚ) / (A033273 (A033274 (n + 1)).toNat : ℚ)

end

end A202457.P6248577703834430984

/-!
# A202458: Number of (n+2) X 7 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202458, there is no canonical definition to state claims against.
-/

/-! ## A202458.P15047886314365709753

`A202461(A374005(n+1))`
-/

namespace A202458.P15047886314365709753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A374005 (n + 1)).toNat

end

end A202458.P15047886314365709753

/-! ## A202458.P5963384513315219147

`A202461(A167499(n+3))`
-/

namespace A202458.P5963384513315219147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A167499 (n + 3)).toNat

end

end A202458.P5963384513315219147

/-! ## A202458.P11989011484114969381

`A202461(A000217(n+4)+5)`
-/

namespace A202458.P11989011484114969381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A000217 (n + 4) + 5).toNat

end

end A202458.P11989011484114969381

/-! ## A202458.P4472686798173730701

`A202461(A046691(n+3))`
-/

namespace A202458.P4472686798173730701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A046691 (n + 3)).toNat

end

end A202458.P4472686798173730701

/-! ## A202458.P5261380815015813125

`A202461(Δ[A023545(n+1)])`
-/

namespace A202458.P5261380815015813125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (f1 (n + 1) - f1 n).toNat

end

end A202458.P5261380815015813125

/-!
# A202459: Number of (n+2) X 8 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202459, there is no canonical definition to state claims against.
-/

/-! ## A202459.P10661332046220248790

`A202461(A374007(n+1))`
-/

namespace A202459.P10661332046220248790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A374007 (n + 1)).toNat

end

end A202459.P10661332046220248790

/-! ## A202459.P918426047829898940

`A202461(A166136(n+4))`
-/

namespace A202459.P918426047829898940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A166136 (n + 4)).toNat

end

end A202459.P918426047829898940

/-! ## A202459.P1989784326709154818

`A202461(A000217(n+5)+6)`
-/

namespace A202459.P1989784326709154818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A000217 (n + 5) + 6).toNat

end

end A202459.P1989784326709154818

/-! ## A202459.P9759845335458249171

`A202461(Δ[A023545(n+1)]+10)`
-/

namespace A202459.P9759845335458249171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (f1 (n + 1) - f1 n + 10).toNat

end

end A202459.P9759845335458249171

/-! ## A202459.P1832434241334734252

`A202461(A052905(n+3))`
-/

namespace A202459.P1832434241334734252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A052905 (n + 3)).toNat

end

end A202459.P1832434241334734252

/-! ## A202459.P15143378651655436942

`A202461(A046691(n+4)-1)`
-/

namespace A202459.P15143378651655436942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A046691 (n + 4) - 1).toNat

end

end A202459.P15143378651655436942

/-! ## A202459.P2025124048890464912

`A202461(Δ[Δ[A006504(n+1)]])`
-/

namespace A202459.P2025124048890464912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (f1 (n + 1) - f1 n).toNat

end

end A202459.P2025124048890464912

/-!
# A202460: Number of (n+2) X 9 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202460, there is no canonical definition to state claims against.
-/

/-! ## A202460.P12394805146411631279

`A202461(A374008(n+1))`
-/

namespace A202460.P12394805146411631279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A374008 (n + 1)).toNat

end

end A202460.P12394805146411631279

/-! ## A202460.P6816151051465831645

`A202461(A167499(n+5)+2)`
-/

namespace A202460.P6816151051465831645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A167499 (n + 5) + 2).toNat

end

end A202460.P6816151051465831645

/-! ## A202460.P18355980811457885721

`A202461(A000217(n+6)+7)`
-/

namespace A202460.P18355980811457885721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A000217 (n + 6) + 7).toNat

end

end A202460.P18355980811457885721

/-! ## A202460.P13256424043196405494

`A202461(A161680(n+7)+7)`
-/

namespace A202460.P13256424043196405494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A161680 (n + 7) + 7).toNat

end

end A202460.P13256424043196405494

/-! ## A202460.P10365895955838720891

`A202461(A055999(n+4))`
-/

namespace A202460.P10365895955838720891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202461 (A055999 (n + 4)).toNat

end

end A202460.P10365895955838720891

/-!
# A202462: a(n) = Sum_{j=1..n} Sum_{i=1..n} F(i,j), where F is the Fibonacci fusion array of A202453.

The programs for A202462, the canonical program `A202462.P2387931892721886796` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202462 has offset 1).

The definition of A202462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202462.P2387931892721886796

`A000045(n+3)*A000045(n+4)-2*A000045(n+5)+n+1+4`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202462

/-- `A000045(n+3)*A000045(n+4)-2*A000045(n+5)+n+1+4` -/
def P2387931892721886796.Spec : Prop :=
  ∀ n, P2387931892721886796.a n = A202462 (n + 1)

theorem P2387931892721886796.correct : P2387931892721886796.Spec := by
  intro n
  simp only [A202462, Nat.add_sub_cancel]

end A202462

/-! ## A202462.P18349035311770606396

`∑[∑[round(ϕ*a(n-1))]²]` with `a(0)=1, a(1)=1`
-/

namespace A202462.P18349035311770606396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P18349035311770606396

namespace A202462

/-- `∑[∑[round(ϕ*a(n-1))]²]` -/
def P18349035311770606396.Spec : Prop :=
  ∀ n, P18349035311770606396.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P2011727991851401650

`∑[∑[a(n-1)+a(n-2)]²]` with `a(0)=1, a(1)=1`
-/

namespace A202462.P2011727991851401650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P2011727991851401650

namespace A202462

/-- `∑[∑[a(n-1)+a(n-2)]²]` -/
def P2011727991851401650.Spec : Prop :=
  ∀ n, (P2011727991851401650.a n : ℤ) = A202462 (n + 1)

end A202462

/-! ## A202462.P2257455284050561823

`∑[Δ[A001924(n)]²]`
-/

namespace A202462.P2257455284050561823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P2257455284050561823

namespace A202462

/-- `∑[Δ[A001924(n)]²]` -/
def P2257455284050561823.Spec : Prop :=
  ∀ n, P2257455284050561823.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P18030377655043758063

`∑[(A001911(n)+1)²]`
-/

namespace A202462.P18030377655043758063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001911 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P18030377655043758063

namespace A202462

/-- `∑[(A001911(n)+1)²]` -/
def P18030377655043758063.Spec : Prop :=
  ∀ n, P18030377655043758063.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P16418312507771601813

`∑[(1-A020695(n))²]`
-/

namespace A202462.P16418312507771601813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A020695 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P16418312507771601813

namespace A202462

/-- `∑[(1-A020695(n))²]` -/
def P16418312507771601813.Spec : Prop :=
  ∀ n, P16418312507771601813.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P7264196742290089170

`∑[A000071(n+3)²]`
-/

namespace A202462.P7264196742290089170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P7264196742290089170

namespace A202462

/-- `∑[A000071(n+3)²]` -/
def P7264196742290089170.Spec : Prop :=
  ∀ n, P7264196742290089170.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P529227397522577411

`∑[(2-A048577(n))²]`
-/

namespace A202462.P529227397522577411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A048577 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P529227397522577411

namespace A202462

/-- `∑[(2-A048577(n))²]` -/
def P529227397522577411.Spec : Prop :=
  ∀ n, P529227397522577411.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P14367972528102688848

`∑[(3-A018910(n))²]`
-/

namespace A202462.P14367972528102688848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A018910 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P14367972528102688848

namespace A202462

/-- `∑[(3-A018910(n))²]` -/
def P14367972528102688848.Spec : Prop :=
  ∀ n, P14367972528102688848.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P12773874739339496319

`∑[A226538(2*n)²]`
-/

namespace A202462.P12773874739339496319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P12773874739339496319

namespace A202462

/-- `∑[A226538(2*n)²]` -/
def P12773874739339496319.Spec : Prop :=
  ∀ n, P12773874739339496319.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P14413339154553008797

`∑[∑[∑[A212804(n)]]²]`
-/

namespace A202462.P14413339154553008797
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P14413339154553008797

namespace A202462

/-- `∑[∑[∑[A212804(n)]]²]` -/
def P14413339154553008797.Spec : Prop :=
  ∀ n, P14413339154553008797.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P15993630795608120861

`∑[A267661(n+1)/2]`
-/

namespace A202462.P15993630795608120861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267661 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P15993630795608120861

namespace A202462

/-- `∑[A267661(n+1)/2]` -/
def P15993630795608120861.Spec : Prop :=
  ∀ n, P15993630795608120861.a n = (A202462 (n + 1) : ℚ)

end A202462

/-! ## A202462.P338709327974920786

`∑[∑[A000045(n+1)]²]`
-/

namespace A202462.P338709327974920786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P338709327974920786

namespace A202462

/-- `∑[∑[A000045(n+1)]²]` -/
def P338709327974920786.Spec : Prop :=
  ∀ n, P338709327974920786.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P12511977111637398662

`∑[∑[A324969(n+2)]²]`
-/

namespace A202462.P12511977111637398662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P12511977111637398662

namespace A202462

/-- `∑[∑[A324969(n+2)]²]` -/
def P12511977111637398662.Spec : Prop :=
  ∀ n, P12511977111637398662.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P14498944376311887957

`∑[(1-Δ[A020701(n)])²]`
-/

namespace A202462.P14498944376311887957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P14498944376311887957

namespace A202462

/-- `∑[(1-Δ[A020701(n)])²]` -/
def P14498944376311887957.Spec : Prop :=
  ∀ n, P14498944376311887957.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P15051984377765881550

`∑[(1-Δ[A020706(n)])²]`
-/

namespace A202462.P15051984377765881550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P15051984377765881550

namespace A202462

/-- `∑[(1-Δ[A020706(n)])²]` -/
def P15051984377765881550.Spec : Prop :=
  ∀ n, P15051984377765881550.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P3123900552411749021

`∑[∑[A079977(2*n)]²]`
-/

namespace A202462.P3123900552411749021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P3123900552411749021

namespace A202462

/-- `∑[∑[A079977(2*n)]²]` -/
def P3123900552411749021.Spec : Prop :=
  ∀ n, P3123900552411749021.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P8061158820433149642

`∑[record[(1-A000045(n))²]]`
-/

namespace A202462.P8061158820433149642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000045 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P8061158820433149642

namespace A202462

/-- `∑[record[(1-A000045(n))²]]` -/
def P8061158820433149642.Spec : Prop :=
  ∀ n, P8061158820433149642.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P16896411576074923548

`A188516(n)+a(n-1)` with `a(0)=1`
-/

namespace A202462.P16896411576074923548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188516 n + a (n - 1)

end

end A202462.P16896411576074923548

namespace A202462

/-- `A188516(n)+a(n-1)` -/
def P16896411576074923548.Spec : Prop :=
  ∀ n, P16896411576074923548.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P14733034358702899263

`∑[(2-A226271(n+1))²]`
-/

namespace A202462.P14733034358702899263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A226271 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202462.P14733034358702899263

namespace A202462

/-- `∑[(2-A226271(n+1))²]` -/
def P14733034358702899263.Spec : Prop :=
  ∀ n, P14733034358702899263.a n = A202462 (n + 1)

end A202462

/-!
# A202464: Number of (n+2) X 3 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202464, there is no canonical definition to state claims against.
-/

/-! ## A202464.P528600482503565552

`A202471(∑[n+1])`
-/

namespace A202464.P528600482503565552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202464.P528600482503565552

/-! ## A202464.P17536989518678967675

`or(1, A202471(A000124(n)))`
-/

namespace A202464.P17536989518678967675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202471 (A000124 n).toNat)

end

end A202464.P17536989518678967675

/-! ## A202464.P17780781508883502681

`record[root(A202471(n+1), A013611(n))]`
-/

namespace A202464.P17780781508883502681
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202471 (n + 1) : ℝ) ^ (1 / (A013611 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202464.P17780781508883502681

/-! ## A202464.P7521479058950856817

`record[root(A202471(n+1), A077028(n))]`
-/

namespace A202464.P7521479058950856817
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202471 (n + 1) : ℝ) ^ (1 / (A077028 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202464.P7521479058950856817

/-! ## A202464.P3862739931317870720

`record[gcd(A143844(n), A202471(n+1))]`
-/

namespace A202464.P3862739931317870720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A202471 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202464.P3862739931317870720

/-!
# A202465: Number of (n+2)X4 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202465, there is no canonical definition to state claims against.
-/

/-! ## A202465.P18421880512566289144

`A202471(∑[n+2])`
-/

namespace A202465.P18421880512566289144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202465.P18421880512566289144

/-! ## A202465.P2310192199119201386

`record[A202471(Δ[A003453(n+5)])]`
-/

namespace A202465.P2310192199119201386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202465.P2310192199119201386

/-! ## A202465.P17862626110454069529

`record[root(A202471(n+2), A013611(n))]`
-/

namespace A202465.P17862626110454069529
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202471 (n + 2) : ℝ) ^ (1 / (A013611 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202465.P17862626110454069529

/-! ## A202465.P4176177259158486831

`record[gcd(A143844(n), A202471(n+2))]`
-/

namespace A202465.P4176177259158486831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A202471 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202465.P4176177259158486831

/-! ## A202465.P8270003662332534262

`-xor(A202471(A034856(n+1)+1)-1, -1)`
-/

namespace A202465.P8270003662332534262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A202471 (A034856 (n + 1) + 1).toNat - 1) (-1)

end

end A202465.P8270003662332534262

/-!
# A202466: Number of (n+2)X5 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202466, there is no canonical definition to state claims against.
-/

/-! ## A202466.P16675923051712764685

`A202471(∑[n+2]+4)`
-/

namespace A202466.P16675923051712764685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202466.P16675923051712764685

/-! ## A202466.P13266383660138460814

`or(char[1], A202471(A167614(n+1)))`
-/

namespace A202466.P13266383660138460814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202471 (A167614 (n + 1)).toNat)

end

end A202466.P13266383660138460814

/-! ## A202466.P7821969568813010411

`lcm(A158388(n), A202471(A167614(n+1)))`
-/

namespace A202466.P7821969568813010411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A202471 (A167614 (n + 1)).toNat)

end

end A202466.P7821969568813010411

/-! ## A202466.P10612739719318507700

`A202471(A167614(n+1))%A202467(n+1)`
-/

namespace A202466.P10612739719318507700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202471 (A167614 (n + 1)).toNat) (A202467 (n + 1))

end

end A202466.P10612739719318507700

/-! ## A202466.P12431138645180137939

`A202471(A167614(n+1))+A000035(2*(n+1))`
-/

namespace A202466.P12431138645180137939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A167614 (n + 1)).toNat + A000035 (2 * (n + 1))

end

end A202466.P12431138645180137939

/-!
# A202467: Number of (n+2)X6 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202467, there is no canonical definition to state claims against.
-/

/-! ## A202467.P6377075160177514476

`A202471(A141214(n+1))`
-/

namespace A202467.P6377075160177514476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A141214 (n + 1)).toNat

end

end A202467.P6377075160177514476

/-! ## A202467.P9522568039850046400

`A202471(A374004(n+1))`
-/

namespace A202467.P9522568039850046400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A374004 (n + 1)).toNat

end

end A202467.P9522568039850046400

/-! ## A202467.P16828033161736721400

`A202471(A052905(n)+9)`
-/

namespace A202467.P16828033161736721400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A052905 n + 9).toNat

end

end A202467.P16828033161736721400

/-! ## A202467.P18293693232223307134

`A202471(A055999(n)+10)`
-/

namespace A202467.P18293693232223307134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A055999 n + 10).toNat

end

end A202467.P18293693232223307134

/-! ## A202467.P5271276901521142644

`A202471(A167614(n+2)+1)`
-/

namespace A202467.P5271276901521142644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A167614 (n + 2) + 1).toNat

end

end A202467.P5271276901521142644

/-!
# A202468: Number of (n+2)X7 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202468, there is no canonical definition to state claims against.
-/

/-! ## A202468.P17341224662451736690

`A202471(A374005(n+1))`
-/

namespace A202468.P17341224662451736690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A374005 (n + 1)).toNat

end

end A202468.P17341224662451736690

/-! ## A202468.P2694069898087343215

`A202471(A046691(n+3))`
-/

namespace A202468.P2694069898087343215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A046691 (n + 3)).toNat

end

end A202468.P2694069898087343215

/-! ## A202468.P645061504469762749

`A202471(A167499(n+3))`
-/

namespace A202468.P645061504469762749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A167499 (n + 3)).toNat

end

end A202468.P645061504469762749

/-!
# A202469: Number of (n+2) X 8 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202469, there is no canonical definition to state claims against.
-/

/-! ## A202469.P8003513438383522006

`A202471(A374007(n+1))`
-/

namespace A202469.P8003513438383522006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A374007 (n + 1)).toNat

end

end A202469.P8003513438383522006

/-! ## A202469.P2274670107932550067

`A202471(A052905(n+3))`
-/

namespace A202469.P2274670107932550067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A052905 (n + 3)).toNat

end

end A202469.P2274670107932550067

/-! ## A202469.P4419227278653832579

`A202471(A046691(n+4)-1)`
-/

namespace A202469.P4419227278653832579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (A046691 (n + 4) - 1).toNat

end

end A202469.P4419227278653832579

/-! ## A202469.P13258249273488059007

`A202471(2*(n+1)+A141214(n+1)+7)`
-/

namespace A202469.P13258249273488059007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 ((2 * (n + 1) : ℤ) + (A141214 (n + 1) + 7)).toNat

end

end A202469.P13258249273488059007

/-!
# A202472: Goldbach's Problem extended to subtraction: number of decompositions of 2n into unordered differences of two primes, p, q, where p < 2n < q.

The programs for A202472, there is no canonical definition to state claims against.
-/

/-! ## A202472.P7172615145446394771

`A092953(2*(n+1))`
-/

namespace A202472.P7172615145446394771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (2 * (n + 1))

end

end A202472.P7172615145446394771

/-! ## A202472.P11134063830689053609

`A092953(n+n+2)%(n+1)`
-/

namespace A202472.P11134063830689053609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092953 (n + n + 2)) (n + 1 : ℤ)

end

end A202472.P11134063830689053609

/-! ## A202472.P7861328797543633960

`lcm(Δ[A106249(n)], A092953(n+2+n))`
-/

namespace A202472.P7861328797543633960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A092953 (n + 2 + n))

end

end A202472.P7861328797543633960

/-! ## A202472.P17721028476166776694

`A092953(n+2+n)+A000007(n+1)`
-/

namespace A202472.P17721028476166776694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (n + 2 + n) + A000007 (n + 1)

end

end A202472.P17721028476166776694

/-! ## A202472.P3659446049071948957

`A061357(A072511(A092953(n+2+n)))`
-/

namespace A202472.P3659446049071948957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A072511 (A092953 (n + 2 + n)).toNat).toNat

end

end A202472.P3659446049071948957

/-! ## A202472.P4350469194347686020

`A092953(n+2+n)/A295884(A233583(n+1))!`
-/

namespace A202472.P4350469194347686020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092953 (n + 2 + n) : ℚ) / (Nat.factorial (A295884 (A233583 (n + 1)).toNat).toNat : ℚ)

end

end A202472.P4350469194347686020

/-! ## A202472.P8467502523858525862

`A000196(A092953(n+2+n)²)`
-/

namespace A202472.P8467502523858525862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A092953 (n + 2 + n) ^ 2).toNat

end

end A202472.P8467502523858525862

/-! ## A202472.P16838145071898503969

`A092953(n+2+n)/A001221(A220519(n+1))`
-/

namespace A202472.P16838145071898503969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092953 (n + 2 + n) : ℚ) / (A001221 (A220519 (n + 1)).toNat : ℚ)

end

end A202472.P16838145071898503969

/-! ## A202472.P1301402960954767910

`A001222(2^A092953(n+2+n))`
-/

namespace A202472.P1301402960954767910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A092953 (n + 2 + n) : ℤ))).toNat

end

end A202472.P1301402960954767910

/-!
# A202474: Coefficients of y^(n-1) in Product_{k=1..n} (1 + k*y + y^2) for n >= 1.

The programs for A202474, there is no canonical definition to state claims against.
-/

/-! ## A202474.P1745389326109047329

`A201950(n+2)/2`
-/

namespace A202474.P1745389326109047329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201950 (n + 2) : ℚ) / 2

end

end A202474.P1745389326109047329

/-! ## A202474.P3872952615096761665

`record[ceil(A201950(n)/2)]`
-/

namespace A202474.P3872952615096761665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201950 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202474.P3872952615096761665

/-! ## A202474.P18400906277294574244

`A249790((n+1)²+n)`
-/

namespace A202474.P18400906277294574244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249790 ((n + 1) ^ 2 + n)

end

end A202474.P18400906277294574244

/-! ## A202474.P1526125914811623942

`A201949((n+2)*(n+3))/2`
-/

namespace A202474.P1526125914811623942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201949 ((n + 2) * (n + 3)) : ℚ) / 2

end

end A202474.P1526125914811623942

/-!
# A202476: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 + k*x + x^2).

The programs for A202476, there is no canonical definition to state claims against.
-/

/-! ## A202476.P6229331533873200657

`A210528(ceil(4^(n-1)))`
-/

namespace A202476.P6229331533873200657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210528 ⌈(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A202476.P6229331533873200657

/-! ## A202476.P1727229818700581553

`A382717(A317876(n+1))`
-/

namespace A202476.P1727229818700581553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A317876 (n + 1)).toNat

end

end A202476.P1727229818700581553

/-! ## A202476.P1317876263658650644

`A024417(A227937(n)+A071724(n))`
-/

namespace A202476.P1317876263658650644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A227937 n + A071724 n).toNat

end

end A202476.P1317876263658650644

/-! ## A202476.P4437152095360064881

`A210517(n+1)-A308991(A005251(n))`
-/

namespace A202476.P4437152095360064881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210517 (n + 1) - A308991 (A005251 n).toNat

end

end A202476.P4437152095360064881

/-!
# A202477: The number of ways to build all endofunctions on each block of every set partition of {1,2,...,n}.

The programs for A202477, there is no canonical definition to state claims against.
-/

/-! ## A202477.P7044407466267556208

`A028310(A291110(n)+A290932(n))`
-/

namespace A202477.P7044407466267556208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A291110 n + A290932 n).toNat

end

end A202477.P7044407466267556208

/-!
# A202479: The number of equivalence classes of the set {1,2,...,n} under the equivalence relation x ~ y iff lcm(x,n) = lcm(y,n).

The programs for A202479, there is no canonical definition to state claims against.
-/

/-! ## A202479.P17795361215115999462

`A261079(n+1)+A056239(A066781(n+1))`
-/

namespace A202479.P17795361215115999462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) + A056239 (A066781 (n + 1)).toNat

end

end A202479.P17795361215115999462

/-! ## A202479.P2694365224816277949

`A261079(n+1)+A163109(A005179(n+1))`
-/

namespace A202479.P2694365224816277949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) + A163109 (A005179 (n + 1)).toNat

end

end A202479.P2694365224816277949

/-! ## A202479.P8835433702183528055

`A326844(n+1)+A056239(A066781(n+1))`
-/

namespace A202479.P8835433702183528055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) + A056239 (A066781 (n + 1)).toNat

end

end A202479.P8835433702183528055

/-! ## A202479.P947479226598129470

`A326844(n+1)+A163109(A005179(n+1))`
-/

namespace A202479.P947479226598129470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) + A163109 (A005179 (n + 1)).toNat

end

end A202479.P947479226598129470

/-! ## A202479.P815986839299776556

`A261079(A045970(n+1))+A000010(n+1)`
-/

namespace A202479.P815986839299776556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (A045970 (n + 1)).toNat + A000010 (n + 1)

end

end A202479.P815986839299776556

/-!
# A202480: Riordan array (1/(1-x), x(2x-1)/(1-x)^2).

The programs for A202480, the canonical program `A202480.P5692605724471315245` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202480 has offset 0).

The definition of A202480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202480.P5692605724471315245

`2*T(n-1,k)+2*T(n-2,k-1)-T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202480

/-- `2*T(n-1,k)+2*T(n-2,k-1)-T(n-1,k-1)-T(n-2,k)` -/
def P5692605724471315245.Spec : Prop :=
  ∀ n, P5692605724471315245.a n = A202480 n

theorem P5692605724471315245.correct : P5692605724471315245.Spec := by
  intro n
  simp only [A202480]

end A202480

/-! ## A202480.P16465312845034171148

`A033999(A003056(n))*A124341(n)`
-/

namespace A202480.P16465312845034171148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A124341 n

end

end A202480.P16465312845034171148

namespace A202480

/-- `A033999(A003056(n))*A124341(n)` -/
def P16465312845034171148.Spec : Prop :=
  ∀ n, P16465312845034171148.a n = A202480 n

end A202480

/-! ## A202480.P10862415767869260846

`A033999(A002262(n))*A146314(n)`
-/

namespace A202480.P10862415767869260846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A146314 n

end

end A202480.P10862415767869260846

namespace A202480

/-- `A033999(A002262(n))*A146314(n)` -/
def P10862415767869260846.Spec : Prop :=
  ∀ n, P10862415767869260846.a n = A202480 n

end A202480

/-! ## A202480.P2183568758513492450

`A097807(A061579(n))*A146314(n)`
-/

namespace A202480.P2183568758513492450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A146314 n

end

end A202480.P2183568758513492450

namespace A202480

/-- `A097807(A061579(n))*A146314(n)` -/
def P2183568758513492450.Spec : Prop :=
  ∀ n, P2183568758513492450.a n = A202480 n

end A202480

/-! ## A202480.P14496719531286149424

`A124341(A057944(n))*A124341(n)`
-/

namespace A202480.P14496719531286149424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124341 (A057944 n).toNat * A124341 n

end

end A202480.P14496719531286149424

namespace A202480

/-- `A124341(A057944(n))*A124341(n)` -/
def P14496719531286149424.Spec : Prop :=
  ∀ n, P14496719531286149424.a n = A202480 n

end A202480

/-! ## A202480.P16770419394530088245

`A062157(A002260(n+1))*A146314(n)`
-/

namespace A202480.P16770419394530088245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A146314 n

end

end A202480.P16770419394530088245

namespace A202480

/-- `A062157(A002260(n+1))*A146314(n)` -/
def P16770419394530088245.Spec : Prop :=
  ∀ n, P16770419394530088245.a n = A202480 n

end A202480

/-! ## A202480.P8900299641246969941

`A124341(n)/A033999(A003056(n)²)`
-/

namespace A202480.P8900299641246969941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124341 n : ℚ) / (A033999 (A003056 n ^ 2).toNat : ℚ)

end

end A202480.P8900299641246969941

namespace A202480

/-- `A124341(n)/A033999(A003056(n)²)` -/
def P8900299641246969941.Spec : Prop :=
  ∀ n, P8900299641246969941.a n = (A202480 n : ℚ)

end A202480

/-! ## A202480.P11727362091564666599

`A065359(A059268(n))*A146314(n)`
-/

namespace A202480.P11727362091564666599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059268 n).toNat * A146314 n

end

end A202480.P11727362091564666599

namespace A202480

/-- `A065359(A059268(n))*A146314(n)` -/
def P11727362091564666599.Spec : Prop :=
  ∀ n, P11727362091564666599.a n = A202480 n

end A202480

/-! ## A202480.P17067769445172338120

`A065359(A137688(n))*A124341(n)`
-/

namespace A202480.P17067769445172338120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A137688 n).toNat * A124341 n

end

end A202480.P17067769445172338120

namespace A202480

/-- `A065359(A137688(n))*A124341(n)` -/
def P17067769445172338120.Spec : Prop :=
  ∀ n, P17067769445172338120.a n = A202480 n

end A202480

/-!
# A202481: Column k = 3 of triangular array in A165241.

The programs for A202481, there is no canonical definition to state claims against.
-/

/-! ## A202481.P16005706533034560198

`A165241(A167614(n+2))`
-/

namespace A202481.P16005706533034560198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A167614 (n + 2)).toNat

end

end A202481.P16005706533034560198

/-! ## A202481.P14031916295390888255

`A165241(A052905(n)+8)`
-/

namespace A202481.P14031916295390888255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A052905 n + 8).toNat

end

end A202481.P14031916295390888255

/-! ## A202481.P13815151156906018613

`A165241(eq[3, A002262(n)])`
-/

namespace A202481.P13815151156906018613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202481.P13815151156906018613

/-! ## A202481.P7443061947553124258

`A165241(eq[8, A059268(n)])`
-/

namespace A202481.P7443061947553124258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202481.P7443061947553124258

/-! ## A202481.P2797827642167713545

`A165241(A000096(n+2)+4)`
-/

namespace A202481.P2797827642167713545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A000096 (n + 2) + 4).toNat

end

end A202481.P2797827642167713545

/-! ## A202481.P1376827946380901157

`A165241(eq[4, A002260(n+1)])`
-/

namespace A202481.P1376827946380901157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202481.P1376827946380901157

/-! ## A202481.P17950441767293136528

`A165241(A000217(n+4)-(n+1))`
-/

namespace A202481.P17950441767293136528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A202481.P17950441767293136528

/-! ## A202481.P6424284172777468327

`A165241(A167499(n+3)-(n+6))`
-/

namespace A202481.P6424284172777468327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A167499 (n + 3) - (n + 6 : ℤ)).toNat

end

end A202481.P6424284172777468327

/-!
# A202482: Expansion of (1-(1-9*x)^(1/3))/(4-(1-9*x)^(1/3)).

The programs for A202482, there is no canonical definition to state claims against.
-/

/-! ## A202482.P14974677029793180193

`A202483(∑[n]+1)`
-/

namespace A202482.P14974677029793180193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202483 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202482.P14974677029793180193

/-! ## A202482.P1283111180586063772

`record[A202483(n+1)]`
-/

namespace A202482.P1283111180586063772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202482.P1283111180586063772

/-! ## A202482.P13283602874915474043

`record[ratio[A202483(A028310(n))]]`
-/

namespace A202482.P13283602874915474043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202483 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202482.P13283602874915474043

/-! ## A202482.P10287549378997443387

`A007318(∑[n])*A202483(A000124(n))`
-/

namespace A202482.P10287549378997443387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A202483 (A000124 n).toNat

end

end A202482.P10287549378997443387

/-!
# A202484: Number of (n+2)X(n+2) binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202484, there is no canonical definition to state claims against.
-/

/-! ## A202484.P17319541446725721281

`A202492((n+1)²+n²)`
-/

namespace A202484.P17319541446725721281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 ((n + 1) ^ 2 + n ^ 2)

end

end A202484.P17319541446725721281

/-! ## A202484.P343987637041226250

`lcm(2, A202492(A001844(n)))`
-/

namespace A202484.P343987637041226250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202492 (A001844 n).toNat)

end

end A202484.P343987637041226250

/-! ## A202484.P14117621935262957117

`record[A003982(n)*A202492(n+1)]`
-/

namespace A202484.P14117621935262957117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202484.P14117621935262957117

/-! ## A202484.P15015368705536545296

`record[gcd(A114327(n), A202492(n+1))]`
-/

namespace A202484.P15015368705536545296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202492 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202484.P15015368705536545296

/-! ## A202484.P1546643142010184665

`A007318(C(2, n))*A202492(A001844(n))`
-/

namespace A202484.P1546643142010184665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A202492 (A001844 n).toNat

end

end A202484.P1546643142010184665

/-!
# A202485: Number of (n+2) X 3 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202485, there is no canonical definition to state claims against.
-/

/-! ## A202485.P3533219726255715128

`A202492(∑[n]+1)`
-/

namespace A202485.P3533219726255715128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202485.P3533219726255715128

/-! ## A202485.P518254576278558080

`or(char[3], A202492(A000124(n)))`
-/

namespace A202485.P518254576278558080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202492 (A000124 n).toNat)

end

end A202485.P518254576278558080

/-! ## A202485.P5360755466661214439

`record[gcd(A139600(n), A202492(n+1))]`
-/

namespace A202485.P5360755466661214439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139600 n) (A202492 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202485.P5360755466661214439

/-! ## A202485.P7851883276877408601

`record[A202492(n+1)/A236463(n+1)]`
-/

namespace A202485.P7851883276877408601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202492 (n + 1) : ℚ) / (A236463 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202485.P7851883276877408601

/-! ## A202485.P14787075673619438549

`A202492(A000124(n))/Δ[A090223(n)]!`
-/

namespace A202485.P14787075673619438549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202492 (A000124 n).toNat : ℚ) / (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A202485.P14787075673619438549

/-!
# A202486: Number of (n+2)X4 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202486, the canonical program `A202486.P8789427035128539930` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202486 has offset 1).

The definition of A202486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202486.P8789427035128539930

`A264365(n+4)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A202486

/-- `A264365(n+4)²` -/
def P8789427035128539930.Spec : Prop :=
  ∀ n, P8789427035128539930.a n = A202486 (n + 1)

theorem P8789427035128539930.correct : P8789427035128539930.Spec := by
  intro n
  simp only [A202486, Nat.add_sub_cancel]

end A202486

/-! ## A202486.P2977741226937475858

`A264365(n+4)^A001316(A001316(n))`
-/

namespace A202486.P2977741226937475858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A202486.P2977741226937475858

namespace A202486

/-- `A264365(n+4)^A001316(A001316(n))` -/
def P2977741226937475858.Spec : Prop :=
  ∀ n, P2977741226937475858.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P2352213359693654747

`A264365(n+4)^A000034(A016813(n))`
-/

namespace A202486.P2352213359693654747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A000034 (A016813 n).toNat : ℤ)

end

end A202486.P2352213359693654747

namespace A202486

/-- `A264365(n+4)^A000034(A016813(n))` -/
def P2352213359693654747.Spec : Prop :=
  ∀ n, P2352213359693654747.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P7724961912426746481

`A264365(n+4)^A000034(A000959(n+1))`
-/

namespace A202486.P7724961912426746481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A000034 (A000959 (n + 1)).toNat : ℤ)

end

end A202486.P7724961912426746481

namespace A202486

/-- `A264365(n+4)^A000034(A000959(n+1))` -/
def P7724961912426746481.Spec : Prop :=
  ∀ n, P7724961912426746481.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P12047039103462112083

`A264365(n+4)^A000005(A005384(n+1))`
-/

namespace A202486.P12047039103462112083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A000005 (A005384 (n + 1)).toNat : ℤ)

end

end A202486.P12047039103462112083

namespace A202486

/-- `A264365(n+4)^A000005(A005384(n+1))` -/
def P12047039103462112083.Spec : Prop :=
  ∀ n, P12047039103462112083.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P7732834939825143381

`A264365(n+4)^A000005(A005385(n+1))`
-/

namespace A202486.P7732834939825143381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A000005 (A005385 (n + 1)).toNat : ℤ)

end

end A202486.P7732834939825143381

namespace A202486

/-- `A264365(n+4)^A000005(A005385(n+1))` -/
def P7732834939825143381.Spec : Prop :=
  ∀ n, P7732834939825143381.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P13147381439711149872

`A264365(n+4)^A000034(A137168(n+1))`
-/

namespace A202486.P13147381439711149872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A000034 (A137168 (n + 1)).toNat : ℤ)

end

end A202486.P13147381439711149872

namespace A202486

/-- `A264365(n+4)^A000034(A137168(n+1))` -/
def P13147381439711149872.Spec : Prop :=
  ∀ n, P13147381439711149872.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P17531364036826196781

`A264365(n+4)^A000005(A303705(n+1))`
-/

namespace A202486.P17531364036826196781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A000005 (A303705 (n + 1)).toNat : ℤ)

end

end A202486.P17531364036826196781

namespace A202486

/-- `A264365(n+4)^A000005(A303705(n+1))` -/
def P17531364036826196781.Spec : Prop :=
  ∀ n, P17531364036826196781.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P17678699496703207242

`A264365(n+4)^A319342(A267009(n+1))`
-/

namespace A202486.P17678699496703207242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A319342 (A267009 (n + 1)).toNat : ℤ)

end

end A202486.P17678699496703207242

namespace A202486

/-- `A264365(n+4)^A319342(A267009(n+1))` -/
def P17678699496703207242.Spec : Prop :=
  ∀ n, P17678699496703207242.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P9218394360142111422

`A264365(n+4)^A020639(A007621(n+2))`
-/

namespace A202486.P9218394360142111422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A020639 (A007621 (n + 2)).toNat : ℤ)

end

end A202486.P9218394360142111422

namespace A202486

/-- `A264365(n+4)^A020639(A007621(n+2))` -/
def P9218394360142111422.Spec : Prop :=
  ∀ n, P9218394360142111422.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P11468051643424327529

`A264365(n+4)^A020639(6*A061879(n+1))`
-/

namespace A202486.P11468051643424327529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264365 (n + 4) : ℚ) ^ (A020639 (6 * A061879 (n + 1)).toNat : ℤ)

end

end A202486.P11468051643424327529

namespace A202486

/-- `A264365(n+4)^A020639(6*A061879(n+1))` -/
def P11468051643424327529.Spec : Prop :=
  ∀ n, P11468051643424327529.a n = (A202486 (n + 1) : ℚ)

end A202486

/-! ## A202486.P8983440100604003264

`A202487(n+1)/A202488(n+1)*A202487(n+1)`
-/

namespace A202486.P8983440100604003264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202487 (n + 1) : ℚ) / (A202488 (n + 1) : ℚ) * (A202487 (n + 1) : ℚ)

end

end A202486.P8983440100604003264

namespace A202486

/-- `A202487(n+1)/A202488(n+1)*A202487(n+1)` -/
def P8983440100604003264.Spec : Prop :=
  ∀ n, P8983440100604003264.a n = (A202486 (n + 1) : ℚ)

end A202486

/-!
# A202487: Number of (n+2)X5 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202487, there is no canonical definition to state claims against.
-/

/-! ## A202487.P15694611133612806497

`sqrt(A202486(n+1))*sqrt(A202488(n+1))`
-/

namespace A202487.P15694611133612806497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202486 (n + 1) : ℝ) * Real.sqrt (A202488 (n + 1) : ℝ)

end

end A202487.P15694611133612806497

/-! ## A202487.P3186989461894735063

`sqrt(A202486(n+1)*A202488(n+1))`
-/

namespace A202487.P3186989461894735063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202486 (n + 1) * A202488 (n + 1) : ℝ)

end

end A202487.P3186989461894735063

/-! ## A202487.P2402452297633163992

`A202492(∑[n+2]+4)`
-/

namespace A202487.P2402452297633163992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202487.P2402452297633163992

/-! ## A202487.P10593847486569367869

`A202492(A167614(n+1))+A025466(n)`
-/

namespace A202487.P10593847486569367869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A167614 (n + 1)).toNat + A025466 n

end

end A202487.P10593847486569367869

/-! ## A202487.P2580590386238771458

`A202492(A167614(n+1))%A202488(n+1)`
-/

namespace A202487.P2580590386238771458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202492 (A167614 (n + 1)).toNat) (A202488 (n + 1))

end

end A202487.P2580590386238771458

/-!
# A202488: Number of (n+2)X6 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202488, there is no canonical definition to state claims against.
-/

/-! ## A202488.P5440741381036385572

`A202487(n+1)/A202486(n+1)*A202487(n+1)`
-/

namespace A202488.P5440741381036385572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202487 (n + 1) : ℚ) / (A202486 (n + 1) : ℚ) * (A202487 (n + 1) : ℚ)

end

end A202488.P5440741381036385572

/-! ## A202488.P9603930455927517941

`A202489(n+1)/A202490(n+1)*A202489(n+1)`
-/

namespace A202488.P9603930455927517941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202489 (n + 1) : ℚ) / (A202490 (n + 1) : ℚ) * (A202489 (n + 1) : ℚ)

end

end A202488.P9603930455927517941

/-! ## A202488.P5623879335238063867

`A202487(n+1)²/A202486(n+1)`
-/

namespace A202488.P5623879335238063867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202487 (n + 1) ^ 2 : ℚ) / (A202486 (n + 1) : ℚ)

end

end A202488.P5623879335238063867

/-! ## A202488.P13728322016705720152

`A202489(n+1)²/A202490(n+1)`
-/

namespace A202488.P13728322016705720152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202489 (n + 1) ^ 2 : ℚ) / (A202490 (n + 1) : ℚ)

end

end A202488.P13728322016705720152

/-! ## A202488.P15542401829388026712

`A202492(A141214(n)+7)`
-/

namespace A202488.P15542401829388026712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A141214 n + 7).toNat

end

end A202488.P15542401829388026712

/-!
# A202489: Number of (n+2)X7 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202489, there is no canonical definition to state claims against.
-/

/-! ## A202489.P8228753186513670776

`sqrt(A202488(n+1))*sqrt(A202490(n+1))`
-/

namespace A202489.P8228753186513670776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202488 (n + 1) : ℝ) * Real.sqrt (A202490 (n + 1) : ℝ)

end

end A202489.P8228753186513670776

/-! ## A202489.P8349637594607079021

`sqrt(A202488(n+1)*A202490(n+1))`
-/

namespace A202489.P8349637594607079021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202488 (n + 1) * A202490 (n + 1) : ℝ)

end

end A202489.P8349637594607079021

/-! ## A202489.P5574133048477106651

`A202492(A167499(n+3))`
-/

namespace A202489.P5574133048477106651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A167499 (n + 3)).toNat

end

end A202489.P5574133048477106651

/-! ## A202489.P2098001993089531098

`A202492(A056000(n)+15)`
-/

namespace A202489.P2098001993089531098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A056000 n + 15).toNat

end

end A202489.P2098001993089531098

/-! ## A202489.P18366688397969615867

`A202492(A374005(n+1))`
-/

namespace A202489.P18366688397969615867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A374005 (n + 1)).toNat

end

end A202489.P18366688397969615867

/-!
# A202490: Number of (n+2)X8 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202490, there is no canonical definition to state claims against.
-/

/-! ## A202490.P14808534069625687681

`A202489(n+1)/A202488(n+1)*A202489(n+1)`
-/

namespace A202490.P14808534069625687681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202489 (n + 1) : ℚ) / (A202488 (n + 1) : ℚ) * (A202489 (n + 1) : ℚ)

end

end A202490.P14808534069625687681

/-! ## A202490.P1360613176791807023

`A202489(n+1)²/A202488(n+1)`
-/

namespace A202490.P1360613176791807023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202489 (n + 1) ^ 2 : ℚ) / (A202488 (n + 1) : ℚ)

end

end A202490.P1360613176791807023

/-! ## A202490.P4369634579387684367

`A202492(eq[7, A131818(n+1)])`
-/

namespace A202490.P4369634579387684367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202490.P4369634579387684367

/-! ## A202490.P5471607631293938442

`A202492(A374007(n+1))`
-/

namespace A202490.P5471607631293938442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A374007 (n + 1)).toNat

end

end A202490.P5471607631293938442

/-! ## A202490.P12732456031507770199

`A202492(A052905(n+3))`
-/

namespace A202490.P12732456031507770199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A052905 (n + 3)).toNat

end

end A202490.P12732456031507770199

/-!
# A202491: Number of (n+2)X9 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202491, there is no canonical definition to state claims against.
-/

/-! ## A202491.P1094109667549479325

`A202492(eq[8, A131818(n+1)])`
-/

namespace A202491.P1094109667549479325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202491.P1094109667549479325

/-! ## A202491.P263373989149790948

`A202492(A374008(n+1))`
-/

namespace A202491.P263373989149790948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A374008 (n + 1)).toNat

end

end A202491.P263373989149790948

/-! ## A202491.P11898171351534247031

`A202492(A055999(n+4))`
-/

namespace A202491.P11898171351534247031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A055999 (n + 4)).toNat

end

end A202491.P11898171351534247031

/-! ## A202491.P3939417125554901467

`A202492(eq[4, A219347(n)])`
-/

namespace A202491.P3939417125554901467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202491.P3939417125554901467

/-! ## A202491.P1187825896753897058

`A202492(eq[6, A193592(n)])`
-/

namespace A202491.P1187825896753897058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202491.P1187825896753897058

/-!
# A202492: T(n,k)=Number of (n+2)X(k+2) binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202492, there is no canonical definition to state claims against.
-/

/-! ## A202492.P9587792408576760575

`9*A182235(A183782(n+1))`
-/

namespace A202492.P9587792408576760575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A182235 (A183782 (n + 1)).toNat

end

end A202492.P9587792408576760575

/-!
# A202493: Column k = 4 of triangular array in A165241.

The programs for A202493, there is no canonical definition to state claims against.
-/

/-! ## A202493.P2482227110523498881

`A165241(eq[4, A002262(n)])`
-/

namespace A202493.P2482227110523498881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202493.P2482227110523498881

/-! ## A202493.P4451440868024713654

`A165241(A167499(n+3)-1)`
-/

namespace A202493.P4451440868024713654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A167499 (n + 3) - 1).toNat

end

end A202493.P4451440868024713654

/-! ## A202493.P13587972259714238479

`A165241(A000217(n+4)+4)`
-/

namespace A202493.P13587972259714238479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A000217 (n + 4) + 4).toNat

end

end A202493.P13587972259714238479

/-! ## A202493.P2123480239486675992

`A165241(eq[5, A002260(n+1)])`
-/

namespace A202493.P2123480239486675992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202493.P2123480239486675992

/-! ## A202493.P11569556703493874651

`A165241(A052905(n+3)-2*(n+1))`
-/

namespace A202493.P11569556703493874651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A052905 (n + 3) - (2 * (n + 1) : ℤ)).toNat

end

end A202493.P11569556703493874651

/-! ## A202493.P9405570706489009108

`A165241(A000124(n+4)+4-A003215(n)%2)`
-/

namespace A202493.P9405570706489009108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A000124 (n + 4) + 4 - Int.tmod (A003215 n) 2).toNat

end

end A202493.P9405570706489009108

/-! ## A202493.P2000392139935782783

`A165241(A004273(n+5)+A052905(n)+4-n)`
-/

namespace A202493.P2000392139935782783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A004273 (n + 5) + (A052905 n + (4 - (n : ℤ)))).toNat

end

end A202493.P2000392139935782783

/-!
# A202494: Decimal expansion of x satisfying x=e^(x-3).

The programs for A202494, there is no canonical definition to state claims against.
-/

/-! ## A202494.P12171527558073675762

`9-A202324(n+2)`
-/

namespace A202494.P12171527558073675762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A202324 (n + 2 + 1)

end

end A202494.P12171527558073675762


import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A202400: Number of (n+2) X 4 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202400, the canonical program `A202400.P8692098697326433586` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202400 has offset 1).

The definition of A202400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202400.P8692098697326433586

`or(1, A048739(3+n))²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A202400

/-- `or(1, A048739(3+n))²` -/
def P8692098697326433586.Spec : Prop :=
  ∀ n, P8692098697326433586.a n = A202400 (n + 1)

theorem P8692098697326433586.correct : P8692098697326433586.Spec := by
  intro n
  simp only [A202400, Nat.add_sub_cancel]

end A202400

/-! ## A202400.P14120148937640339333

`or(1, A048739(n+3))^2`
-/

namespace A202400.P14120148937640339333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048739 (n + 3)) ^ 2

end

end A202400.P14120148937640339333

namespace A202400

/-- `or(1, A048739(n+3))^2` -/
def P14120148937640339333.Spec : Prop :=
  ∀ n, P14120148937640339333.a n = A202400 (n + 1)

theorem P14120148937640339333.correct : P14120148937640339333.Spec := by
  intro n
  simp only [A202400, Nat.add_sub_cancel, A202400.P14120148937640339333.a, A202400.P8692098697326433586.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A202400.P11915273505172709237

`A202406(∑[n+1]+2)`
-/

namespace A202400.P11915273505172709237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202400.P11915273505172709237

namespace A202400

/-- `A202406(∑[n+1]+2)` -/
def P11915273505172709237.Spec : Prop :=
  ∀ n, P11915273505172709237.a n = A202400 (n + 1)

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

/-!
# A202408: Denominator of series coefficients for Archimedes' spiral which transforms into Galileo's spiral.

The programs for A202408, there is no canonical definition to state claims against.
-/

/-! ## A202408.P738409125639891601

`∏[A045836(n^6+1)]`
-/

namespace A202408.P738409125639891601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045836 (n ^ 6 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202408.P738409125639891601

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

/-!
# A202414: Number of (n+2) X 3 binary arrays with no more than one of any consecutive three bits set in any row or column.

The programs for A202414, the canonical program `A202414.P4200359668891302172` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202414 has offset 1).

The definition of A202414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202414.P15162626344622901709

`ogf((34+26x+43x^2+13x^3)/(1-2x-x^2-3x^3-x^4))`
-/

namespace A202414.P15162626344622901709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [34, 26, 43, 13] [1, -2, -1, -3, -1] n

end

end A202414.P15162626344622901709

namespace A202414

/-- `ogf((34+26x+43x^2+13x^3)/(1-2x-x^2-3x^3-x^4))` -/
def P15162626344622901709.Spec : Prop :=
  ∀ n, P15162626344622901709.a n = A202414 (n + 1)

end A202414

/-! ## A202414.P4200359668891302172

`2*a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=34, a(1)=94, a(2)=265, a(3)=739`

The canonical program, it is in `Seq.B000.C034`.
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

/-! ## A202417.P8704658390725805230

`A202421(A141214(n+1))`
-/

namespace A202417.P8704658390725805230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202421 (A141214 (n + 1)).toNat

end

end A202417.P8704658390725805230

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

/-! ## A202427.P2496701810741203516

`record[A202435(Δ[A235355(n)])]`
-/

namespace A202427.P2496701810741203516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202427.P2496701810741203516

/-! ## A202427.P10094120432101968292

`record[A003982(n)*A202435(n+1)]`
-/

namespace A202427.P10094120432101968292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202427.P10094120432101968292

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

/-!
# A202428: Number of (n+2) X 3 binary arrays avoiding patterns 000 and 001 in rows, columns and nw-to-se diagonals.

The programs for A202428, the canonical program `A202428.P4991204143210046105` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202428 has offset 1).

The definition of A202428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202428.P4991204143210046105

`ogf((108+282x+198x^2-42x^3-66x^4+36x^5)/(1-x-7x^2-6x^3+x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202428

/-- `ogf((108+282x+198x^2-42x^3-66x^4+36x^5)/(1-x-7x^2-6x^3+x^4+2x^5-x^6))` -/
def P4991204143210046105.Spec : Prop :=
  ∀ n, P4991204143210046105.a n = A202428 (n + 1)

theorem P4991204143210046105.correct : P4991204143210046105.Spec := by
  intro n
  simp only [A202428, Nat.add_sub_cancel]

end A202428

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

namespace A202428

/-- `A202435(∑[n]+1)` -/
def P8511726010719051677.Spec : Prop :=
  ∀ n, P8511726010719051677.a n = A202428 (n + 1)

end A202428

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

namespace A202428

/-- `record[gcd(A002262(n), A202435(n+1))]` -/
def P4890430343782413587.Spec : Prop :=
  ∀ n, (P4890430343782413587.a n : ℤ) = A202428 (n + 1)

end A202428

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

namespace A202428

/-- `record[(1-A081576(n))*A202435(n+1)]` -/
def P9462826415202543356.Spec : Prop :=
  ∀ n, P9462826415202543356.a n = A202428 (n + 1)

end A202428

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

/-! ## A202431.P5959280317111986953

`A202435(A141214(n+1))`
-/

namespace A202431.P5959280317111986953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202435 (A141214 (n + 1)).toNat

end

end A202431.P5959280317111986953

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
# A202437: G.f.: A(x) = ( Sum_{n>=0} 9^n*(2*n+1) * (-x)^(n*(n+1)/2) )^(-1/9).

The programs for A202437, there is no canonical definition to state claims against.
-/

/-! ## A202437.P12902633228205093622

`A032742(A004988(n))*A249762(n)`
-/

namespace A202437.P12902633228205093622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004988 n).toNat * A249762 n

end

end A202437.P12902633228205093622

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

The programs for A202440, the canonical program `A202440.P13954623535123565726` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202440 has offset 1).

The definition of A202440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202440.P7053912733617613595

`ogf((80-182x+152x^2-50x^3+4x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A202440.P7053912733617613595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [80, -182, 152, -50, 4] [1, -4, 6, -4, 1] n

end

end A202440.P7053912733617613595

namespace A202440

/-- `ogf((80-182x+152x^2-50x^3+4x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P7053912733617613595.Spec : Prop :=
  ∀ n, P7053912733617613595.a n = A202440 (n + 1)

end A202440

/-! ## A202440.P13954623535123565726

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=80, a(1)=138, a(2)=224, a(3)=338, a(4)=484`

The canonical program, it is in `Seq.B000.C034`.
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

/-! ## A202440.P7272153141555878507

`record[A202447(n+1)^(1-col(n))]`
-/

namespace A202440.P7272153141555878507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202447 (n + 1) : ℚ) ^ (1 - (SequenceMachineLib.triCol n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202440.P7272153141555878507

namespace A202440

/-- `record[A202447(n+1)^(1-col(n))]` -/
def P7272153141555878507.Spec : Prop :=
  ∀ n, P7272153141555878507.a n = (A202440 (n + 1) : ℚ)

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

/-!
# A202441: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202441, the canonical program `A202441.P1225351271065478596` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202441 has offset 1).

The definition of A202441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202441.P1225351271065478596

`ogf((138-188x-26x^2+174x^3-96x^4+14x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202441

/-- `ogf((138-188x-26x^2+174x^3-96x^4+14x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P1225351271065478596.Spec : Prop :=
  ∀ n, P1225351271065478596.a n = A202441 (n + 1)

theorem P1225351271065478596.correct : P1225351271065478596.Spec := by
  intro n
  simp only [A202441, Nat.add_sub_cancel]

end A202441

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

namespace A202441

/-- `A202447(∑[n+1]+2)` -/
def P18156980509861531487.Spec : Prop :=
  ∀ n, P18156980509861531487.a n = A202441 (n + 1)

end A202441

/-! ## A202441.P12976950303310941727

`record[A202447(n+2)^(1-col(n))]`
-/

namespace A202441.P12976950303310941727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202447 (n + 2) : ℚ) ^ (1 - (SequenceMachineLib.triCol n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202441.P12976950303310941727

namespace A202441

/-- `record[A202447(n+2)^(1-col(n))]` -/
def P12976950303310941727.Spec : Prop :=
  ∀ n, P12976950303310941727.a n = (A202441 (n + 1) : ℚ)

end A202441

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

namespace A202441

/-- `record[A202447(A114091(n+1)+1)]` -/
def P17743540011703094153.Spec : Prop :=
  ∀ n, P17743540011703094153.a n = A202441 (n + 1)

end A202441

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

namespace A202441

/-- `record[root(A202447(n+3), A093561(n))]` -/
def P7179507755661804437.Spec : Prop :=
  ∀ n, P7179507755661804437.a n = (A202441 (n + 1) : ℝ)

end A202441

/-!
# A202442: Number of (n+2) X 5 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202442, the canonical program `A202442.P4334194873091239128` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202442 has offset 1).

The definition of A202442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202442.P4334194873091239128

`ogf((224-296x-228x^2+570x^3-148x^4-244x^5+168x^6-30x^7)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202442

/-- `ogf((224-296x-228x^2+570x^3-148x^4-244x^5+168x^6-30x^7)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` -/
def P4334194873091239128.Spec : Prop :=
  ∀ n, P4334194873091239128.a n = A202442 (n + 1)

theorem P4334194873091239128.correct : P4334194873091239128.Spec := by
  intro n
  simp only [A202442, Nat.add_sub_cancel]

end A202442

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

namespace A202442

/-- `A202447(∑[n+2]+4)` -/
def P12139712524921857330.Spec : Prop :=
  ∀ n, P12139712524921857330.a n = A202442 (n + 1)

end A202442

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

namespace A202442

/-- `record[A202447(n+4)/A093561(n)]` -/
def P9296243391903244077.Spec : Prop :=
  ∀ n, P9296243391903244077.a n = (A202442 (n + 1) : ℚ)

end A202442

/-!
# A202443: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 110 in rows, columns and nw-to-se diagonals.

The programs for A202443, the canonical program `A202443.P5918193501019223114` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202443 has offset 1).

The definition of A202443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202443.P5918193501019223114

`ogf((338-440x-282x^2+848x^3-266x^4-352x^5+274x^6-56x^7)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202443

/-- `ogf((338-440x-282x^2+848x^3-266x^4-352x^5+274x^6-56x^7)/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` -/
def P5918193501019223114.Spec : Prop :=
  ∀ n, P5918193501019223114.a n = A202443 (n + 1)

theorem P5918193501019223114.correct : P5918193501019223114.Spec := by
  intro n
  simp only [A202443, Nat.add_sub_cancel]

end A202443

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

namespace A202443

/-- `A202447(∑[n+3]+7)` -/
def P6266474994527133098.Spec : Prop :=
  ∀ n, P6266474994527133098.a n = A202443 (n + 1)

end A202443

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

/-! ## A202449.P5755337151660513024

`A329028(A207050(2*n+3)-A270079(n))`
-/

namespace A202449.P5755337151660513024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A207050 (2 * n + 3) - A270079 n).toNat

end

end A202449.P5755337151660513024

/-!
# A202451: Upper triangular Fibonacci matrix, by SW antidiagonals.

The programs for A202451, the canonical program `A202451.P8607763733024815919` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202451 has offset 1).

The definition of A202451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202451.P14546634219743366293

`T(n-1,k)*T(n-2,k-1)+(T(n,k-1)+T(n-1,k-1))*(1-T(n-1,k))` with `a(0)=1`
-/

namespace A202451.P14546634219743366293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n * SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triLeft a n + SequenceMachineLib.triUpLeft a n) * (1 - SequenceMachineLib.triUp a n)

end

end A202451.P14546634219743366293

namespace A202451

/-- `T(n-1,k)*T(n-2,k-1)+(T(n,k-1)+T(n-1,k-1))*(1-T(n-1,k))` -/
def P14546634219743366293.Spec : Prop :=
  ∀ n, P14546634219743366293.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P5037856909891768715

`T(n-2,k-1)+(1-T(n-2,k-1))*(T(n,k-1)+T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A202451.P5037856909891768715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + (1 - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triLeft a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A202451.P5037856909891768715

namespace A202451

/-- `T(n-2,k-1)+(1-T(n-2,k-1))*(T(n,k-1)+T(n-1,k-1)-T(n-2,k-1))` -/
def P5037856909891768715.Spec : Prop :=
  ∀ n, P5037856909891768715.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P13617526589483299948

`A127647(1+n)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A202451.P13617526589483299948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127647 (1 + n) + SequenceMachineLib.triUp2Left a n

end

end A202451.P13617526589483299948

namespace A202451

/-- `A127647(1+n)+T(n-2,k-1)` -/
def P13617526589483299948.Spec : Prop :=
  ∀ n, P13617526589483299948.a n = A202451 (n + 1)

end A202451

/-! ## A202451.P8607763733024815919

`A000045(A101688(n)*A143182(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A202451

/-- `A000045(A101688(n)*A143182(n))` -/
def P8607763733024815919.Spec : Prop :=
  ∀ n, P8607763733024815919.a n = A202451 (n + 1)

theorem P8607763733024815919.correct : P8607763733024815919.Spec := by
  intro n
  simp only [A202451, Nat.add_sub_cancel]

end A202451

/-! ## A202451.P2385395773187387415

`A202452(row(n)*(row(n)+3)/2-col(n)+1)`
-/

namespace A202451.P2385395773187387415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ) + 1)).toNat

end

end A202451.P2385395773187387415

namespace A202451

/-- `A202452(row(n)*(row(n)+3)/2-col(n)+1)` -/
def P2385395773187387415.Spec : Prop :=
  ∀ n, P2385395773187387415.a n = A202451 (n + 1)

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

/-! ## A202451.P6861989696898781000

`A005206(A202502(n+1))`
-/

namespace A202451.P6861989696898781000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A202502 (n + 1)).toNat

end

end A202451.P6861989696898781000

namespace A202451

/-- `A005206(A202502(n+1))` -/
def P6861989696898781000.Spec : Prop :=
  ∀ n, P6861989696898781000.a n = A202451 (n + 1)

end A202451

/-!
# A202452: Lower triangular Fibonacci matrix, by SW antidiagonals.

The programs for A202452, the canonical program `A202452.P2108318135328297887` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202452 has offset 1).

The definition of A202452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202452.P2108318135328297887

`T(n-1,k-1)*T(n-2,k-1)+(T(n-2,k)+T(n-1,k))*(1-T(n-1,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202452

/-- `T(n-1,k-1)*T(n-2,k-1)+(T(n-2,k)+T(n-1,k))*(1-T(n-1,k-1))` -/
def P2108318135328297887.Spec : Prop :=
  ∀ n, P2108318135328297887.a n = A202452 (n + 1)

theorem P2108318135328297887.correct : P2108318135328297887.Spec := by
  intro n
  simp only [A202452, Nat.add_sub_cancel]

end A202452

/-! ## A202452.P595240729802591004

`T(n-2,k-1)+(1-T(n-2,k-1))*(T(n-2,k)+T(n-1,k)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A202452.P595240729802591004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + (1 - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n)

end

end A202452.P595240729802591004

namespace A202452

/-- `T(n-2,k-1)+(1-T(n-2,k-1))*(T(n-2,k)+T(n-1,k)-T(n-2,k-1))` -/
def P595240729802591004.Spec : Prop :=
  ∀ n, P595240729802591004.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P5901142404740263879

`T(row(n)-2, col(n)-T(T(n-1,k+1), T(n-1,k)))+T(n-1,k)` with `a(0)=1`
-/

namespace A202452.P5901142404740263879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ)) + SequenceMachineLib.triUp a n

end

end A202452.P5901142404740263879

namespace A202452

/-- `T(row(n)-2, col(n)-T(T(n-1,k+1), T(n-1,k)))+T(n-1,k)` -/
def P5901142404740263879.Spec : Prop :=
  ∀ n, (P5901142404740263879.a n : ℤ) = A202452 (n + 1)

end A202452

/-! ## A202452.P6722144820207173275

`∑{#}[row(n)-2*col(n), A212804(#)]`
-/

namespace A202452.P6722144820207173275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A212804 k

end

end A202452.P6722144820207173275

namespace A202452

/-- `∑{#}[row(n)-2*col(n), A212804(#)]` -/
def P6722144820207173275.Spec : Prop :=
  ∀ n, P6722144820207173275.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P1424517163581570314

`A000045(A185914(1+n))`
-/

namespace A202452.P1424517163581570314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185914 (1 + n)).toNat

end

end A202452.P1424517163581570314

namespace A202452

/-- `A000045(A185914(1+n))` -/
def P1424517163581570314.Spec : Prop :=
  ∀ n, P1424517163581570314.a n = A202452 (n + 1)

end A202452

/-! ## A202452.P14375767956049462163

`A202451(∑[char[∑[n]]]²-n)`
-/

namespace A202452.P14375767956049462163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A202452.P14375767956049462163

namespace A202452

/-- `A202451(∑[char[∑[n]]]²-n)` -/
def P14375767956049462163.Spec : Prop :=
  ∀ n, P14375767956049462163.a n = A202452 (n + 1)

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

/-! ## A202452.P5071712038442366167

`A127647(row(n-1)+2+n)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A202452.P5071712038442366167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127647 (SequenceMachineLib.triRow ((n : ℤ) - 1).toNat + 2 + n) + SequenceMachineLib.triUp2Left a n

end

end A202452.P5071712038442366167

namespace A202452

/-- `A127647(row(n-1)+2+n)+T(n-2,k-1)` -/
def P5071712038442366167.Spec : Prop :=
  ∀ n, P5071712038442366167.a n = A202452 (n + 1)

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

/-!
# A202453: Fibonacci self-fusion matrix, by antidiagonals.

The programs for A202453, the canonical program `A202453.P11187451353944395922` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202453 has offset 1).

The definition of A202453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202453.P11187451353944395922

`A058071(n)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A202453

/-- `A058071(n)+T(n-2,k-1)` -/
def P11187451353944395922.Spec : Prop :=
  ∀ n, P11187451353944395922.a n = A202453 (n + 1)

theorem P11187451353944395922.correct : P11187451353944395922.Spec := by
  intro n
  simp only [A202453, Nat.add_sub_cancel]

end A202453

/-! ## A202453.P10154789970389324505

`A202503(1+n)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A202453.P10154789970389324505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A202503 (1 + n) - SequenceMachineLib.triUpLeft a n

end

end A202453.P10154789970389324505

namespace A202453

/-- `A202503(1+n)-T(n-1,k-1)` -/
def P10154789970389324505.Spec : Prop :=
  ∀ n, P10154789970389324505.a n = A202453 (n + 1)

end A202453

/-! ## A202453.P2947328770459869783

`min(A144154(n+1), A144154(n+2))`
-/

namespace A202453.P2947328770459869783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A144154 (n + 1)) (A144154 (n + 2))

end

end A202453.P2947328770459869783

namespace A202453

/-- `min(A144154(n+1), A144154(n+2))` -/
def P2947328770459869783.Spec : Prop :=
  ∀ n, P2947328770459869783.a n = A202453 (n + 1)

end A202453

/-! ## A202453.P15228670145421962447

`xor(A007814(A045912(n)), A131410(n+1))`
-/

namespace A202453.P15228670145421962447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A045912 n).toNat) (A131410 (n + 1))

end

end A202453.P15228670145421962447

namespace A202453

/-- `xor(A007814(A045912(n)), A131410(n+1))` -/
def P15228670145421962447.Spec : Prop :=
  ∀ n, P15228670145421962447.a n = A202453 (n + 1)

end A202453

/-! ## A202453.P1039173576150404098

`A131410(n+1)+A033665(A059922(n))`
-/

namespace A202453.P1039173576150404098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A033665 (A059922 n).toNat

end

end A202453.P1039173576150404098

namespace A202453

/-- `A131410(n+1)+A033665(A059922(n))` -/
def P1039173576150404098.Spec : Prop :=
  ∀ n, P1039173576150404098.a n = A202453 (n + 1)

end A202453

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

/-!
# A202455: Number of (n+2) X 4 binary arrays with consecutive windows of three bits considered as a binary number nondecreasing in every row and column.

The programs for A202455, the canonical program `A202455.P1344664283223936712` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202455 has offset 1).

The definition of A202455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202455.P1344664283223936712

`1/4*(n+1)^4+15/2*(n+1)^3+229/4*(n+1)²+(n+1)*237+427`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202455

/-- `1/4*(n+1)^4+15/2*(n+1)^3+229/4*(n+1)²+(n+1)*237+427` -/
def P1344664283223936712.Spec : Prop :=
  ∀ n, P1344664283223936712.a n = (A202455 (n + 1) : ℚ)

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

/-!
# A202462: a(n) = Sum_{j=1..n} Sum_{i=1..n} F(i,j), where F is the Fibonacci fusion array of A202453.

The programs for A202462, the canonical program `A202462.P2387931892721886796` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202462 has offset 1).

The definition of A202462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202462.P2155110071921839747

`ogf((1+2x^2-x^3)/(1-5x+6x^2+4x^3-10x^4+2x^5+3x^6-x^7))`
-/

namespace A202462.P2155110071921839747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, -1] [1, -5, 6, 4, -10, 2, 3, -1] n

end

end A202462.P2155110071921839747

namespace A202462

/-- `ogf((1+2x^2-x^3)/(1-5x+6x^2+4x^3-10x^4+2x^5+3x^6-x^7))` -/
def P2155110071921839747.Spec : Prop :=
  ∀ n, P2155110071921839747.a n = A202462 (n + 1)

end A202462

/-! ## A202462.P2387931892721886796

`A000045(n+3)*A000045(n+4)-2*A000045(n+5)+n+1+4`

The canonical program, it is in `Seq.B001.C009`.
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

/-!
# A202464: Number of (n+2) X 3 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202464, the canonical program `A202464.P105169304505309045` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202464 has offset 1).

The definition of A202464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202464.P105169304505309045

`ogf((265+513x+841x^2-281x^3+91x^4-49x^5)/(1-4x-8x^2-18x^3+6x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202464

/-- `ogf((265+513x+841x^2-281x^3+91x^4-49x^5)/(1-4x-8x^2-18x^3+6x^4-2x^5+x^6))` -/
def P105169304505309045.Spec : Prop :=
  ∀ n, P105169304505309045.a n = A202464 (n + 1)

theorem P105169304505309045.correct : P105169304505309045.Spec := by
  intro n
  simp only [A202464, Nat.add_sub_cancel]

end A202464

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

namespace A202464

/-- `A202471(∑[n+1])` -/
def P528600482503565552.Spec : Prop :=
  ∀ n, P528600482503565552.a n = A202464 (n + 1)

end A202464

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

namespace A202464

/-- `record[root(A202471(n+1), A013611(n))]` -/
def P17780781508883502681.Spec : Prop :=
  ∀ n, P17780781508883502681.a n = (A202464 (n + 1) : ℝ)

end A202464

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

namespace A202464

/-- `record[root(A202471(n+1), A077028(n))]` -/
def P7521479058950856817.Spec : Prop :=
  ∀ n, P7521479058950856817.a n = (A202464 (n + 1) : ℝ)

end A202464

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

namespace A202464

/-- `record[gcd(A143844(n), A202471(n+1))]` -/
def P3862739931317870720.Spec : Prop :=
  ∀ n, (P3862739931317870720.a n : ℤ) = A202464 (n + 1)

end A202464

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

/-!
# A202468: Number of (n+2)X7 binary arrays with no more than two of any consecutive three bits set in any row or column.

The programs for A202468, there is no canonical definition to state claims against.
-/

/-! ## A202468.P150845277802960668

`A202471(Δ[A264443(n)])`
-/

namespace A202468.P150845277802960668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202471 (f1 (n + 1) - f1 n).toNat

end

end A202468.P150845277802960668

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

/-! ## A202474.P53179319785095055

`record[A249790(A024206(n+1))]`
-/

namespace A202474.P53179319785095055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249790 (A024206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202474.P53179319785095055

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

/-! ## A202476.P16350329412903557436

`A024417(A131203(n)+A000045(n))`
-/

namespace A202476.P16350329412903557436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A131203 n + A000045 n).toNat

end

end A202476.P16350329412903557436

/-!
# A202477: The number of ways to build all endofunctions on each block of every set partition of {1,2,...,n}.

The programs for A202477, the canonical program `A202477.P1197290685806056884` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202477 has offset 0).

The definition of A202477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202477.P1197290685806056884

`∑{#}[n, (-1)^(n-#)*A137452(C(n+1, 2)+#)*A000262(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A202477

/-- `∑{#}[n, (-1)^(n-#)*A137452(C(n+1, 2)+#)*A000262(#)]` -/
def P1197290685806056884.Spec : Prop :=
  ∀ n, P1197290685806056884.a n = (A202477 n : ℚ)

end A202477

/-! ## A202477.P8920195223969458028

`∑{#}[n, A394436(C(n+1, 2)+#)]`
-/

namespace A202477.P8920195223969458028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A394436 (Nat.choose (n + 1) 2 + k)

end

end A202477.P8920195223969458028

namespace A202477

/-- `∑{#}[n, A394436(C(n+1, 2)+#)]` -/
def P8920195223969458028.Spec : Prop :=
  ∀ n, P8920195223969458028.a n = A202477 n

end A202477

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

The programs for A202480, the canonical program `A202480.P5692605724471315245` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202480 has offset 0).

The definition of A202480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202480.P5692605724471315245

`2*T(n-1,k)+2*T(n-2,k-1)-T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202480

/-- `2*T(n-1,k)+2*T(n-2,k-1)-T(n-1,k-1)-T(n-2,k)` -/
def P5692605724471315245.Spec : Prop :=
  ∀ n, P5692605724471315245.a n = A202480 n

theorem P5692605724471315245.correct : P5692605724471315245.Spec := by
  intro n
  simp only [A202480]

end A202480

/-! ## A202480.P1238644300648335682

`(-1)^row(n)*A124341(C(row(n)+1, 2)+col(n))`
-/

namespace A202480.P1238644300648335682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triRow n * A124341 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A202480.P1238644300648335682

namespace A202480

/-- `(-1)^row(n)*A124341(C(row(n)+1, 2)+col(n))` -/
def P1238644300648335682.Spec : Prop :=
  ∀ n, P1238644300648335682.a n = A202480 n

end A202480

/-! ## A202480.P11613344383946658026

`2*(T(n-2,k-1)+T(n-1,k))-(T(n-2,k)+T(n-1,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A202480.P11613344383946658026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n) - (SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUpLeft a n)

end

end A202480.P11613344383946658026

namespace A202480

/-- `2*(T(n-2,k-1)+T(n-1,k))-(T(n-2,k)+T(n-1,k-1))` -/
def P11613344383946658026.Spec : Prop :=
  ∀ n, P11613344383946658026.a n = A202480 n

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

The programs for A202481, the canonical program `A202481.P18364610673435921749` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202481 has offset 0).

The definition of A202481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202481.P18364610673435921749

`ogf((1+2x-x^2-x^3+x^4)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202481

/-- `ogf((1+2x-x^2-x^3+x^4)/(1-8x+24x^2-32x^3+16x^4))` -/
def P18364610673435921749.Spec : Prop :=
  ∀ n, P18364610673435921749.a n = A202481 n

theorem P18364610673435921749.correct : P18364610673435921749.Spec := by
  intro n
  simp only [A202481]

end A202481

/-! ## A202481.P16005706533034560198

`A165241(A167614(n+2))`
-/

namespace A202481.P16005706533034560198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A167614 (n + 2)).toNat

end

end A202481.P16005706533034560198

namespace A202481

/-- `A165241(A167614(n+2))` -/
def P16005706533034560198.Spec : Prop :=
  ∀ n, P16005706533034560198.a n = A202481 n

end A202481

/-!
# A202482: Expansion of (1-(1-9*x)^(1/3))/(4-(1-9*x)^(1/3)).

The programs for A202482, there is no canonical definition to state claims against.
-/

/-! ## A202482.P8447806407364229422

`A202483(1+∑[n])`
-/

namespace A202482.P8447806407364229422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202483 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202482.P8447806407364229422

/-! ## A202482.P3489622582562259876

`record[A202483(1+n)]`
-/

namespace A202482.P3489622582562259876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202483 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202482.P3489622582562259876

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

/-! ## A202484.P17147656049227332163

`record[A202492(Δ[A235355(n)])]`
-/

namespace A202484.P17147656049227332163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202484.P17147656049227332163

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

/-!
# A202486: Number of (n+2)X4 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202486, the canonical program `A202486.P8789427035128539930` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202486 has offset 1).

The definition of A202486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202486.P8789427035128539930

`A264365(n+4)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A202486

/-- `A264365(n+4)²` -/
def P8789427035128539930.Spec : Prop :=
  ∀ n, P8789427035128539930.a n = A202486 (n + 1)

theorem P8789427035128539930.correct : P8789427035128539930.Spec := by
  intro n
  simp only [A202486, Nat.add_sub_cancel]

end A202486

/-! ## A202486.P13916268064508567157

`A264365(4+n)^2`
-/

namespace A202486.P13916268064508567157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264365 (4 + n) ^ 2

end

end A202486.P13916268064508567157

namespace A202486

/-- `A264365(4+n)^2` -/
def P13916268064508567157.Spec : Prop :=
  ∀ n, P13916268064508567157.a n = A202486 (n + 1)

theorem P13916268064508567157.correct : P13916268064508567157.Spec := by
  intro n
  simp only [A202486, Nat.add_sub_cancel, A202486.P13916268064508567157.a, A202486.P8789427035128539930.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A202486.P17398860139110592324

`A202492(∑[n+1]+2)`
-/

namespace A202486.P17398860139110592324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202486.P17398860139110592324

namespace A202486

/-- `A202492(∑[n+1]+2)` -/
def P17398860139110592324.Spec : Prop :=
  ∀ n, P17398860139110592324.a n = A202486 (n + 1)

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

/-! ## A202489.P1180981292862657819

`A202492(∑[n+4]+11)`
-/

namespace A202489.P1180981292862657819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A202489.P1180981292862657819

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

/-!
# A202491: Number of (n+2)X9 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202491, there is no canonical definition to state claims against.
-/

/-! ## A202491.P17743628962396493656

`A202492(A000217(n+6)+7)`
-/

namespace A202491.P17743628962396493656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A000217 (n + 6) + 7).toNat

end

end A202491.P17743628962396493656

/-! ## A202491.P263373989149790948

`A202492(A374008(n+1))`
-/

namespace A202491.P263373989149790948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202492 (A374008 (n + 1)).toNat

end

end A202491.P263373989149790948

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

The programs for A202493, the canonical program `A202493.P8284141302809033792` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202493 has offset 0).

The definition of A202493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202493.P8284141302809033792

`ogf((1+5x-5x^2+2x^3+x^4-x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A202493

/-- `ogf((1+5x-5x^2+2x^3+x^4-x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P8284141302809033792.Spec : Prop :=
  ∀ n, P8284141302809033792.a n = A202493 n

theorem P8284141302809033792.correct : P8284141302809033792.Spec := by
  intro n
  simp only [A202493]

end A202493

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

namespace A202493

/-- `A165241(eq[4, A002262(n)])` -/
def P2482227110523498881.Spec : Prop :=
  ∀ n, P2482227110523498881.a n = A202493 n

end A202493

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


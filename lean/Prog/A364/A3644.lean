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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A364401: a(n) is the number of regions into which three-dimensional Euclidean space is divided by n-1 planes parallel to each face of a regular tetrahedron with edge length n, dividing the edges into unit segments.

The programs for A364401, the canonical program `A364401.P4069669393159638288` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364401 has offset 1).

The definition of A364401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364401.P4069669393159638288

`(23*(n+1)^3-30*(n+1)²+13*(n+1))/6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A364401

/-- `(23*(n+1)^3-30*(n+1)²+13*(n+1))/6` -/
def P4069669393159638288.Spec : Prop :=
  ∀ n, P4069669393159638288.a n = (A364401 (n + 1) : ℚ)

end A364401

/-! ## A364401.P14375000084795674747

`Δ[n^4]-C(n, 3)`
-/

namespace A364401.P14375000084795674747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.choose n 3 : ℤ)

end

end A364401.P14375000084795674747

namespace A364401

/-- `Δ[n^4]-C(n, 3)` -/
def P14375000084795674747.Spec : Prop :=
  ∀ n, P14375000084795674747.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P365536312827962810

`Δ[n²²-C(n, 4)]`
-/

namespace A364401.P365536312827962810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364401.P365536312827962810

namespace A364401

/-- `Δ[n²²-C(n, 4)]` -/
def P365536312827962810.Spec : Prop :=
  ∀ n, P365536312827962810.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P1558977108729062913

`A005906(n)-∑[n]`
-/

namespace A364401.P1558977108729062913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005906 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A364401.P1558977108729062913

namespace A364401

/-- `A005906(n)-∑[n]` -/
def P1558977108729062913.Spec : Prop :=
  ∀ n, P1558977108729062913.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P18066955425614812447

`∑[A022280(n)]+(n+1)²`
-/

namespace A364401.P18066955425614812447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A364401.P18066955425614812447

namespace A364401

/-- `∑[A022280(n)]+(n+1)²` -/
def P18066955425614812447.Spec : Prop :=
  ∀ n, P18066955425614812447.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P10242646458295189179

`A100171(n+1)+∑[n²]`
-/

namespace A364401.P10242646458295189179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100171 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A364401.P10242646458295189179

namespace A364401

/-- `A100171(n+1)+∑[n²]` -/
def P10242646458295189179.Spec : Prop :=
  ∀ n, P10242646458295189179.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P15198161587384713697

`A005915(n)+A002413(n)`
-/

namespace A364401.P15198161587384713697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + A002413 n

end

end A364401.P15198161587384713697

namespace A364401

/-- `A005915(n)+A002413(n)` -/
def P15198161587384713697.Spec : Prop :=
  ∀ n, P15198161587384713697.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P2240916293702196063

`A050509(n)+A050409(n)`
-/

namespace A364401.P2240916293702196063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n + A050409 n

end

end A364401.P2240916293702196063

namespace A364401

/-- `A050509(n)+A050409(n)` -/
def P2240916293702196063.Spec : Prop :=
  ∀ n, P2240916293702196063.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P5338177455317447550

`A299646(n)+A004188(n)`
-/

namespace A364401.P5338177455317447550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n + A004188 n

end

end A364401.P5338177455317447550

namespace A364401

/-- `A299646(n)+A004188(n)` -/
def P5338177455317447550.Spec : Prop :=
  ∀ n, P5338177455317447550.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P14014952415902667058

`A237617(n)+A090197(n)`
-/

namespace A364401.P14014952415902667058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 n + A090197 n

end

end A364401.P14014952415902667058

namespace A364401

/-- `A237617(n)+A090197(n)` -/
def P14014952415902667058.Spec : Prop :=
  ∀ n, P14014952415902667058.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P15782516510350225683

`A257093(n)+A096000(n)`
-/

namespace A364401.P15782516510350225683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n + A096000 n

end

end A364401.P15782516510350225683

namespace A364401

/-- `A257093(n)+A096000(n)` -/
def P15782516510350225683.Spec : Prop :=
  ∀ n, P15782516510350225683.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P11213320440874566929

`A220084(n)+A135503(n)`
-/

namespace A364401.P11213320440874566929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + A135503 n

end

end A364401.P11213320440874566929

namespace A364401

/-- `A220084(n)+A135503(n)` -/
def P11213320440874566929.Spec : Prop :=
  ∀ n, P11213320440874566929.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P9215368247680270645

`A139757(n)-A006503(n)`
-/

namespace A364401.P9215368247680270645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - A006503 n

end

end A364401.P9215368247680270645

namespace A364401

/-- `A139757(n)-A006503(n)` -/
def P9215368247680270645.Spec : Prop :=
  ∀ n, P9215368247680270645.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P4629179232995551567

`A027849(n)-A245301(n)`
-/

namespace A364401.P4629179232995551567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n - A245301 n

end

end A364401.P4629179232995551567

namespace A364401

/-- `A027849(n)-A245301(n)` -/
def P4629179232995551567.Spec : Prop :=
  ∀ n, P4629179232995551567.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P12336134977988666348

`A092966(n+1)+A001844(n)`
-/

namespace A364401.P12336134977988666348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092966 (n + 1) + A001844 n

end

end A364401.P12336134977988666348

namespace A364401

/-- `A092966(n+1)+A001844(n)` -/
def P12336134977988666348.Spec : Prop :=
  ∀ n, P12336134977988666348.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P8030569793988532059

`A064808(n)+A035005(n+1)`
-/

namespace A364401.P8030569793988532059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n + A035005 (n + 1)

end

end A364401.P8030569793988532059

namespace A364401

/-- `A064808(n)+A035005(n+1)` -/
def P8030569793988532059.Spec : Prop :=
  ∀ n, P8030569793988532059.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P3637968048714024889

`A100174(n+1)+A002411(n)`
-/

namespace A364401.P3637968048714024889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + A002411 n

end

end A364401.P3637968048714024889

namespace A364401

/-- `A100174(n+1)+A002411(n)` -/
def P3637968048714024889.Spec : Prop :=
  ∀ n, P3637968048714024889.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P7361705201676038460

`A100157(n+1)+A007584(n)`
-/

namespace A364401.P7361705201676038460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1) + A007584 n

end

end A364401.P7361705201676038460

namespace A364401

/-- `A100157(n+1)+A007584(n)` -/
def P7361705201676038460.Spec : Prop :=
  ∀ n, P7361705201676038460.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P2779432722018420650

`A132124(n)+A006564(n+1)`
-/

namespace A364401.P2779432722018420650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + A006564 (n + 1)

end

end A364401.P2779432722018420650

namespace A364401

/-- `A132124(n)+A006564(n+1)` -/
def P2779432722018420650.Spec : Prop :=
  ∀ n, P2779432722018420650.a n = A364401 (n + 1)

end A364401

/-! ## A364401.P6357889552821124778

`A169607(n)+A100175(n+1)`
-/

namespace A364401.P6357889552821124778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + A100175 (n + 1)

end

end A364401.P6357889552821124778

namespace A364401

/-- `A169607(n)+A100175(n+1)` -/
def P6357889552821124778.Spec : Prop :=
  ∀ n, P6357889552821124778.a n = A364401 (n + 1)

end A364401

/-!
# A364402: a(n) = (3*n)!*(10*n)!/((2*n)!*(5*n)!*(6*n)!).

The programs for A364402, there is no canonical definition to state claims against.
-/

/-! ## A364402.P9958377743062078927

`A262732(2*n)`
-/

namespace A364402.P9958377743062078927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262732 (2 * n)

end

end A364402.P9958377743062078927

/-! ## A364402.P6535915724043777950

`A016777(2*n)*A245112(2*n)`
-/

namespace A364402.P6535915724043777950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) * A245112 (2 * n)

end

end A364402.P6535915724043777950

/-! ## A364402.P12458395391160958350

`A262732(A005843(n))+A243836(n)`
-/

namespace A364402.P12458395391160958350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262732 (A005843 n).toNat + A243836 n

end

end A364402.P12458395391160958350

/-! ## A364402.P9464832833606252874

`A330843(A052905(2*(n+1)))`
-/

namespace A364402.P9464832833606252874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (A052905 (2 * (n + 1))).toNat

end

end A364402.P9464832833606252874

/-! ## A364402.P12059047491695045191

`A001451(2*n)/A001450(n)`
-/

namespace A364402.P12059047491695045191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001451 (2 * n) : ℚ) / (A001450 n : ℚ)

end

end A364402.P12059047491695045191

/-!
# A364403: G.f. A(x) satisfies A(x) = 1 + x^4 * (A(x) / (1 - x))^3.

The programs for A364403, there is no canonical definition to state claims against.
-/

/-! ## A364403.P18260145814791460093

`A390532(A393276(n))`
-/

namespace A364403.P18260145814791460093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A393276 n).toNat

end

end A364403.P18260145814791460093

/-!
# A364404: Number of (strictly) 1-connected cubic graphs on 2n nodes.

The programs for A364404, there is no canonical definition to state claims against.
-/

/-! ## A364404.P15552303012647621839

`A002851(n+1)-A387146(n+1)`
-/

namespace A364404.P15552303012647621839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (n + 1) - A387146 (n + 1)

end

end A364404.P15552303012647621839

/-! ## A364404.P13877717861792330440

`A369802(A318644(n))`
-/

namespace A364404.P13877717861792330440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369802 (A318644 n).toNat

end

end A364404.P13877717861792330440

/-! ## A364404.P12546708030991484186

`A111892(A014521(n)+2)`
-/

namespace A364404.P12546708030991484186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111892 (A014521 n + 2).toNat

end

end A364404.P12546708030991484186

/-! ## A364404.P10576545694452995833

`A090620(A231228(n)+4)`
-/

namespace A364404.P10576545694452995833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A231228 n + 4).toNat

end

end A364404.P10576545694452995833

/-!
# A364405: Numbers k such that k is never the smallest number which requires the maximum number of steps for the Euclidean algorithm for computing gcd(k,m) for any m > k.

The programs for A364405, there is no canonical definition to state claims against.
-/

/-! ## A364405.P8803143524084210905

`comp[A084242(n+1)-floor(1/(n+1))]`
-/

namespace A364405.P8803143524084210905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (n + 1) - ⌊1 / (n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364405.P8803143524084210905

/-! ## A364405.P2497267942400772202

`comp[A023443(A084242(n+1))]+1`
-/

namespace A364405.P2497267942400772202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084242 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364405.P2497267942400772202

/-! ## A364405.P12891068919397120452

`comp[A084242(n+1)%A051845(n+1)]`
-/

namespace A364405.P12891068919397120452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084242 (n + 1)) (A051845 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364405.P12891068919397120452

/-!
# A364407: G.f. satisfies A(x) = 1 + x*(1 + 1/A(x)^3).

The programs for A364407, there is no canonical definition to state claims against.
-/

/-! ## A364407.P2450577497326557842

`A001918(A220181(n))*A366364(n)`
-/

namespace A364407.P2450577497326557842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (A220181 n).toNat * A366364 n

end

end A364407.P2450577497326557842

/-!
# A364408: G.f. satisfies A(x) = 1 + x*(1 + 1/A(x)^4).

The programs for A364408, there is no canonical definition to state claims against.
-/

/-! ## A364408.P18047728181618572522

`A010554(A010579(n))/A000367(n)`
-/

namespace A364408.P18047728181618572522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010554 (A010579 n).toNat : ℚ) / (A000367 n : ℚ)

end

end A364408.P18047728181618572522

/-!
# A364409: G.f. satisfies A(x) = 1 + x*(1 + 1/A(x)^5).

The programs for A364409, there is no canonical definition to state claims against.
-/

/-! ## A364409.P14370902630923983781

`A108299(n)*A274616(A329557(n))`
-/

namespace A364409.P14370902630923983781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n * A274616 (A329557 n).toNat

end

end A364409.P14370902630923983781

/-!
# A364410: G.f. A(x) satisfies A(x) = 1 + x^2 * (A(x) / (1 - x))^4.

The programs for A364410, there is no canonical definition to state claims against.
-/

/-! ## A364410.P17858431667351267546

`A378291(∑[n+1]+2*n)`
-/

namespace A364410.P17858431667351267546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A364410.P17858431667351267546

/-! ## A364410.P8131891244246250194

`A369001(n+1)+A002265(A141201(n+2))`
-/

namespace A364410.P8131891244246250194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (n + 1) + A002265 (A141201 (n + 2)).toNat

end

end A364410.P8131891244246250194

/-! ## A364410.P3853296758826079194

`A000110(n)-A008624(A014381(n))`
-/

namespace A364410.P3853296758826079194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A008624 (A014381 n).toNat

end

end A364410.P3853296758826079194

/-!
# A364411: a(n) = prime(n) + 2*prime(n+1).

The programs for A364411, the canonical program `A364411.P4113167057820616581` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364411 has offset 1).

The definition of A364411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364411.P4113167057820616581

`a(n-1)+A191472(n)` with `a(0)=8`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364411

/-- `a(n-1)+A191472(n)` -/
def P4113167057820616581.Spec : Prop :=
  ∀ n, P4113167057820616581.a n = A364411 (n + 1)

theorem P4113167057820616581.correct : P4113167057820616581.Spec := by
  intro n
  simp only [A364411, Nat.add_sub_cancel]

end A364411

/-! ## A364411.P1378281357653518597

`A000040(n+2)+A001043(n+1)`
-/

namespace A364411.P1378281357653518597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + A001043 (n + 1)

end

end A364411.P1378281357653518597

namespace A364411

/-- `A000040(n+2)+A001043(n+1)` -/
def P1378281357653518597.Spec : Prop :=
  ∀ n, P1378281357653518597.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P7503607751085320838

`A000040(n+1)+A100484(n+2)`
-/

namespace A364411.P7503607751085320838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A100484 (n + 2)

end

end A364411.P7503607751085320838

namespace A364411

/-- `A000040(n+1)+A100484(n+2)` -/
def P7503607751085320838.Spec : Prop :=
  ∀ n, P7503607751085320838.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P2647354280335908369

`A065091(n+1)+A001043(n+1)`
-/

namespace A364411.P2647354280335908369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001043 (n + 1)

end

end A364411.P2647354280335908369

namespace A364411

/-- `A065091(n+1)+A001043(n+1)` -/
def P2647354280335908369.Spec : Prop :=
  ∀ n, P2647354280335908369.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P9956411150433749531

`A210497(n+1)+A100484(n+1)`
-/

namespace A364411.P9956411150433749531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + A100484 (n + 1)

end

end A364411.P9956411150433749531

namespace A364411

/-- `A210497(n+1)+A100484(n+1)` -/
def P9956411150433749531.Spec : Prop :=
  ∀ n, P9956411150433749531.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P7676716833302579918

`A001749(n+1)-A107471(n+1)`
-/

namespace A364411.P7676716833302579918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A107471 (n + 1)

end

end A364411.P7676716833302579918

namespace A364411

/-- `A001749(n+1)-A107471(n+1)` -/
def P7676716833302579918.Spec : Prop :=
  ∀ n, P7676716833302579918.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P3468694920593883177

`A126199(n+1)-A037167(n+1)`
-/

namespace A364411.P3468694920593883177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A037167 (n + 1)

end

end A364411.P3468694920593883177

namespace A364411

/-- `A126199(n+1)-A037167(n+1)` -/
def P3468694920593883177.Spec : Prop :=
  ∀ n, P3468694920593883177.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P12632337750271787995

`A096277(n+1)-A215848(n+1)`
-/

namespace A364411.P12632337750271787995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 1) - A215848 (n + 1)

end

end A364411.P12632337750271787995

namespace A364411

/-- `A096277(n+1)-A215848(n+1)` -/
def P12632337750271787995.Spec : Prop :=
  ∀ n, P12632337750271787995.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P3247706053097255506

`A345727(n+1)-A037165(n+1)`
-/

namespace A364411.P3247706053097255506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) - A037165 (n + 1)

end

end A364411.P3247706053097255506

namespace A364411

/-- `A345727(n+1)-A037165(n+1)` -/
def P3247706053097255506.Spec : Prop :=
  ∀ n, P3247706053097255506.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P16838602224486775165

`A283623(n+1)+A168565(n+2)`
-/

namespace A364411.P16838602224486775165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283623 (n + 1) + A168565 (n + 2)

end

end A364411.P16838602224486775165

namespace A364411

/-- `A283623(n+1)+A168565(n+2)` -/
def P16838602224486775165.Spec : Prop :=
  ∀ n, P16838602224486775165.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P16279816542014603089

`A367335(n+1)-A261465(n+1)`
-/

namespace A364411.P16279816542014603089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367335 (n + 1) - A261465 (n + 1)

end

end A364411.P16279816542014603089

namespace A364411

/-- `A367335(n+1)-A261465(n+1)` -/
def P16279816542014603089.Spec : Prop :=
  ∀ n, P16279816542014603089.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P3880265128284260103

`A001748(n+2)-A001223(n+1)`
-/

namespace A364411.P3880265128284260103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 2) - A001223 (n + 1)

end

end A364411.P3880265128284260103

namespace A364411

/-- `A001748(n+2)-A001223(n+1)` -/
def P3880265128284260103.Spec : Prop :=
  ∀ n, P3880265128284260103.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P5959520396150487383

`A034961(n+1)-A001223(n+2)`
-/

namespace A364411.P5959520396150487383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - A001223 (n + 2)

end

end A364411.P5959520396150487383

namespace A364411

/-- `A034961(n+1)-A001223(n+2)` -/
def P5959520396150487383.Spec : Prop :=
  ∀ n, P5959520396150487383.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P16790582386037737041

`A065091(n+1)+A092949(n+1)-1`
-/

namespace A364411.P16790582386037737041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A092949 (n + 1) - 1)

end

end A364411.P16790582386037737041

namespace A364411

/-- `A065091(n+1)+A092949(n+1)-1` -/
def P16790582386037737041.Spec : Prop :=
  ∀ n, P16790582386037737041.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P17908996407596254537

`A001748(n+1)+2*A001223(n+1)`
-/

namespace A364411.P17908996407596254537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + 2 * A001223 (n + 1)

end

end A364411.P17908996407596254537

namespace A364411

/-- `A001748(n+1)+2*A001223(n+1)` -/
def P17908996407596254537.Spec : Prop :=
  ∀ n, P17908996407596254537.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P16577234003781453142

`A000040(n+1)+2*A065091(n+1)`
-/

namespace A364411.P16577234003781453142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A065091 (n + 1)

end

end A364411.P16577234003781453142

namespace A364411

/-- `A000040(n+1)+2*A065091(n+1)` -/
def P16577234003781453142.Spec : Prop :=
  ∀ n, P16577234003781453142.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P8617122441125966440

`A096379(n+1)+2*A024675(n+1)`
-/

namespace A364411.P8617122441125966440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + 2 * A024675 (n + 1)

end

end A364411.P8617122441125966440

namespace A364411

/-- `A096379(n+1)+2*A024675(n+1)` -/
def P8617122441125966440.Spec : Prop :=
  ∀ n, P8617122441125966440.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P1165111319911385255

`A210497(n+1)+2*A000040(n+1)`
-/

namespace A364411.P1165111319911385255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + 2 * A000040 (n + 1)

end

end A364411.P1165111319911385255

namespace A364411

/-- `A210497(n+1)+2*A000040(n+1)` -/
def P1165111319911385255.Spec : Prop :=
  ∀ n, P1165111319911385255.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P5242211560570674670

`A046933(n+1)+2*A283623(n+1)`
-/

namespace A364411.P5242211560570674670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + 2 * A283623 (n + 1)

end

end A364411.P5242211560570674670

namespace A364411

/-- `A046933(n+1)+2*A283623(n+1)` -/
def P5242211560570674670.Spec : Prop :=
  ∀ n, P5242211560570674670.a n = A364411 (n + 1)

end A364411

/-! ## A364411.P3461026078815944445

`2*A100484(n+1)-A107471(n+1)`
-/

namespace A364411.P3461026078815944445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1) - A107471 (n + 1)

end

end A364411.P3461026078815944445

namespace A364411

/-- `2*A100484(n+1)-A107471(n+1)` -/
def P3461026078815944445.Spec : Prop :=
  ∀ n, P3461026078815944445.a n = A364411 (n + 1)

end A364411

/-!
# A364414: Numbers k with the property that the second part of the symmetric representation of sigma(k) is an octagon of width 1 and one of its vertices is also the central vertex of the first valley of the largest Dyck path of the diagram.

The programs for A364414, there is no canonical definition to state claims against.
-/

/-! ## A364414.P1868820908480054360

`3*(2*comp[5*n]+5)`
-/

namespace A364414.P1868820908480054360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 5)

end

end A364414.P1868820908480054360

/-! ## A364414.P5730184317770591117

`A074837(n+3)/2`
-/

namespace A364414.P5730184317770591117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074837 (n + 3) : ℚ) / 2

end

end A364414.P5730184317770591117

/-! ## A364414.P1678474042533190274

`A353530(n+1)+15`
-/

namespace A364414.P1678474042533190274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353530 (n + 1) + 15

end

end A364414.P1678474042533190274

/-! ## A364414.P14085262194871221098

`record[3*A096431(n+4)]`
-/

namespace A364414.P14085262194871221098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A096431 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364414.P14085262194871221098

/-! ## A364414.P10377920009431967579

`A248969(2*(n+2))+3`
-/

namespace A364414.P10377920009431967579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248969 (2 * (n + 2)) + 3

end

end A364414.P10377920009431967579

/-!
# A364415: a(n) is the least k such that Sum_{j=1..k} 1/(j^(1 + 1/j)) >= n.

The programs for A364415, there is no canonical definition to state claims against.
-/

/-! ## A364415.P11920725864734127350

`A332023(A007678(n+2))`
-/

namespace A364415.P11920725864734127350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332023 (A007678 (n + 2)).toNat

end

end A364415.P11920725864734127350

/-! ## A364415.P4424043290073374360

`∑[∑[A286262(A321728(2*(n+1)))]]`
-/

namespace A364415.P4424043290073374360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286262 (A321728 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364415.P4424043290073374360

/-!
# A364419: Number of divisors of n of the form 5*k+3 that are at most sqrt(n).

The programs for A364419, there is no canonical definition to state claims against.
-/

/-! ## A364419.P1508282912727029278

`1-(A337934(n+1)-1)²%3`
-/

namespace A364419.P1508282912727029278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((A337934 (n + 1) - 1) ^ 2) 3

end

end A364419.P1508282912727029278

/-! ## A364419.P606254333234810545

`A337923(A337934(n+1)-1)`
-/

namespace A364419.P606254333234810545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (A337934 (n + 1) - 1).toNat

end

end A364419.P606254333234810545

/-! ## A364419.P6405040392698938970

`A186719(A145341(6/2+n))`
-/

namespace A364419.P6405040392698938970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (A145341 (SequenceMachineLib.roundAway ((6 : ℚ) / 2 + (n : ℚ))).toNat).toNat

end

end A364419.P6405040392698938970

/-! ## A364419.P2828781932162879316

`A004198(n²%A115302(n+1))`
-/

namespace A364419.P2828781932162879316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (Int.tmod (n ^ 2 : ℤ) (A115302 (n + 1))).toNat

end

end A364419.P2828781932162879316

/-! ## A364419.P12924179482764420049

`floor(A222256(n)/A328335(n+5))`
-/

namespace A364419.P12924179482764420049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222256 n : ℚ) / (A328335 (n + 5) : ℚ)⌋

end

end A364419.P12924179482764420049

/-! ## A364419.P2437704600626457720

`A186719(A054429(2*n+3)+2)`
-/

namespace A364419.P2437704600626457720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (A054429 (2 * n + 3) + 2).toNat

end

end A364419.P2437704600626457720

/-! ## A364419.P6422435863041182488

`A329315(A055239(n+1))%A132367(n)`
-/

namespace A364419.P6422435863041182488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329315 (A055239 (n + 1)).toNat) (A132367 n)

end

end A364419.P6422435863041182488

/-! ## A364419.P17203422347373461811

`A007814(A299266(n+4))%A026105(n)`
-/

namespace A364419.P17203422347373461811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A299266 (n + 4)).toNat) (A026105 n)

end

end A364419.P17203422347373461811

/-! ## A364419.P14375948437886199632

`A325177(A099896(n+1))%A099837(2*(n+1))`
-/

namespace A364419.P14375948437886199632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325177 (A099896 (n + 1)).toNat) (A099837 (2 * (n + 1)))

end

end A364419.P14375948437886199632

/-!
# A364420: Number of divisors of n of the form 5*k+4 that are at most sqrt(n).

The programs for A364420, there is no canonical definition to state claims against.
-/

/-! ## A364420.P7911651578310511670

`A069291(n+1)-A107078(A023197(n+1))`
-/

namespace A364420.P7911651578310511670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A107078 (A023197 (n + 1)).toNat

end

end A364420.P7911651578310511670

/-! ## A364420.P7022722956700422303

`A069291(n+1)-A000190(A243458(n+1))`
-/

namespace A364420.P7022722956700422303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A000190 (A243458 (n + 1)).toNat

end

end A364420.P7022722956700422303

/-! ## A364420.P3560753835579179011

`A069291(n+1)-A054977(A194174(n+5))`
-/

namespace A364420.P3560753835579179011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A054977 (A194174 (n + 5)).toNat

end

end A364420.P3560753835579179011

/-! ## A364420.P9602896263463380091

`A155175(A112798(2*(n+1)))%A069291(n+1)`
-/

namespace A364420.P9602896263463380091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155175 (A112798 (2 * (n + 1))).toNat) (A069291 (n + 1))

end

end A364420.P9602896263463380091

/-! ## A364420.P6264498337083798904

`A340377(A000124(n+5)-5)%A069291(n+1)`
-/

namespace A364420.P6264498337083798904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340377 (A000124 (n + 5) - 5).toNat) (A069291 (n + 1))

end

end A364420.P6264498337083798904

/-! ## A364420.P16483203182532019994

`A069291(n+1)-A069291(A077800(3*n+1))`
-/

namespace A364420.P16483203182532019994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A069291 (A077800 (3 * n + 1)).toNat

end

end A364420.P16483203182532019994

/-! ## A364420.P1812161176966730491

`A069291(n+1)-A069291(A175522(2*(n+2)))`
-/

namespace A364420.P1812161176966730491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A069291 (A175522 (2 * (n + 2))).toNat

end

end A364420.P1812161176966730491

/-! ## A364420.P7505920957670961756

`A069291(n+1)-A331182(A136079(n+1))`
-/

namespace A364420.P7505920957670961756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A331182 (A136079 (n + 1)).toNat

end

end A364420.P7505920957670961756

/-! ## A364420.P7242369478566902702

`A005355(n)%A069291(n+1)`
-/

namespace A364420.P7242369478566902702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005355 n) (A069291 (n + 1))

end

end A364420.P7242369478566902702

/-! ## A364420.P18177504442301257380

`A069291(n+1)-A055874(A272550(2*(n+1)))`
-/

namespace A364420.P18177504442301257380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A055874 (A272550 (2 * (n + 1))).toNat

end

end A364420.P18177504442301257380

/-! ## A364420.P16308882503482383109

`A069291(n+1)-A063919(A249374(3*n+1))`
-/

namespace A364420.P16308882503482383109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A063919 (A249374 (3 * n + 1)).toNat

end

end A364420.P16308882503482383109

/-! ## A364420.P6713173019640815232

`A002385(A005448(n+1))%A069291(n+1)`
-/

namespace A364420.P6713173019640815232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002385 (A005448 (n + 1)).toNat) (A069291 (n + 1))

end

end A364420.P6713173019640815232

/-! ## A364420.P596656158032127300

`A002589(n)%A069291(n+1)`
-/

namespace A364420.P596656158032127300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002589 n) (A069291 (n + 1))

end

end A364420.P596656158032127300

/-! ## A364420.P11570823448348002697

`A069129(A035513(n+5))%A069291(n+1)`
-/

namespace A364420.P11570823448348002697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069129 (A035513 (n + 5)).toNat) (A069291 (n + 1))

end

end A364420.P11570823448348002697

/-! ## A364420.P3876664892932147141

`A069291(n+1)-A327513(A006450(2*(n+1)))`
-/

namespace A364420.P3876664892932147141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A327513 (A006450 (2 * (n + 1))).toNat

end

end A364420.P3876664892932147141

/-! ## A364420.P14969343813942429353

`A295659(A072499(n+1))`
-/

namespace A364420.P14969343813942429353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A072499 (n + 1)).toNat

end

end A364420.P14969343813942429353

/-! ## A364420.P11374360069966307121

`A069291(n+1)-A069291(A001359(2*n+5))`
-/

namespace A364420.P11374360069966307121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A069291 (A001359 (2 * n + 5)).toNat

end

end A364420.P11374360069966307121

/-! ## A364420.P16067132096254985473

`A063962(2^A069293(n+1))`
-/

namespace A364420.P16067132096254985473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A069293 (n + 1) : ℤ))).toNat

end

end A364420.P16067132096254985473

/-! ## A364420.P13359572821379958400

`A288858(A069293(n+1)^4)`
-/

namespace A364420.P13359572821379958400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A069293 (n + 1) ^ 4).toNat

end

end A364420.P13359572821379958400

/-!
# A364421: For n >= 3, r >= 0, y an integer, a(n) is the number of integral solutions to the elliptic equation y^2 = n^3 + n^2 + 2*r*n + r^2.

The programs for A364421, there is no canonical definition to state claims against.
-/

/-! ## A364421.P2679232499347061526

`A327394(A086893(n+2))`
-/

namespace A364421.P2679232499347061526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327394 (A086893 (n + 2)).toNat

end

end A364421.P2679232499347061526

/-! ## A364421.P4321357875905556475

`A025442(∑[A005941(3*n+4)])+2`
-/

namespace A364421.P4321357875905556475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A364421.P4321357875905556475

/-! ## A364421.P14967817660109640206

`A163105(A163074(n+1)-A007094(n))`
-/

namespace A364421.P14967817660109640206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163105 (A163074 (n + 1) - A007094 n).toNat

end

end A364421.P14967817660109640206

/-!
# A364422: Expansion of e.g.f. x^2/(1-x-x^2)^2.

The programs for A364422, the canonical program `A364422.P9207797810229963099` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364422 has offset 0).

The definition of A364422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364422.P9207797810229963099

`A000142(n)*A001629(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364422

/-- `A000142(n)*A001629(n)` -/
def P9207797810229963099.Spec : Prop :=
  ∀ n, P9207797810229963099.a n = A364422 n

theorem P9207797810229963099.correct : P9207797810229963099.Spec := by
  intro n
  simp only [A364422]

end A364422

/-! ## A364422.P15053253508954431432

`n!*∑[A010049(A289207(n+1))]`
-/

namespace A364422.P15053253508954431432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364422.P15053253508954431432

namespace A364422

/-- `n!*∑[A010049(A289207(n+1))]` -/
def P15053253508954431432.Spec : Prop :=
  ∀ n, P15053253508954431432.a n = A364422 n

end A364422

/-! ## A364422.P17949010983061132416

`(A029907(n)-A212804(n+1))*n!`
-/

namespace A364422.P17949010983061132416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029907 n - A212804 (n + 1)) * (Nat.factorial n : ℤ)

end

end A364422.P17949010983061132416

namespace A364422

/-- `(A029907(n)-A212804(n+1))*n!` -/
def P17949010983061132416.Spec : Prop :=
  ∀ n, P17949010983061132416.a n = A364422 n

end A364422

/-! ## A364422.P5885912307761531444

`(A010049(n)-A240847(n+1))*n!`
-/

namespace A364422.P5885912307761531444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010049 n - A240847 (n + 1)) * (Nat.factorial n : ℤ)

end

end A364422.P5885912307761531444

namespace A364422

/-- `(A010049(n)-A240847(n+1))*n!` -/
def P5885912307761531444.Spec : Prop :=
  ∀ n, P5885912307761531444.a n = A364422 n

end A364422

/-! ## A364422.P2088755598147311837

`(A010049(n+1)-A000045(n+1))*n!`
-/

namespace A364422.P2088755598147311837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010049 (n + 1) - A000045 (n + 1)) * (Nat.factorial n : ℤ)

end

end A364422.P2088755598147311837

namespace A364422

/-- `(A010049(n+1)-A000045(n+1))*n!` -/
def P2088755598147311837.Spec : Prop :=
  ∀ n, P2088755598147311837.a n = A364422 n

end A364422

/-! ## A364422.P2530597168235278320

`(A010049(n+1)-A000045(n+1))*A000142(n)`
-/

namespace A364422.P2530597168235278320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010049 (n + 1) - A000045 (n + 1)) * A000142 n

end

end A364422.P2530597168235278320

namespace A364422

/-- `(A010049(n+1)-A000045(n+1))*A000142(n)` -/
def P2530597168235278320.Spec : Prop :=
  ∀ n, P2530597168235278320.a n = A364422 n

end A364422

/-! ## A364422.P8064245467025963805

`A001629(n)*A340556(A000096(n))`
-/

namespace A364422.P8064245467025963805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n * A340556 (A000096 n).toNat

end

end A364422.P8064245467025963805

namespace A364422

/-- `A001629(n)*A340556(A000096(n))` -/
def P8064245467025963805.Spec : Prop :=
  ∀ n, P8064245467025963805.a n = A364422 n

end A364422

/-!
# A364423: Number of order-3 ribbon tilings for a 3 X n strip.

The programs for A364423, there is no canonical definition to state claims against.
-/

/-! ## A364423.P12394305272530396839

`A085089(A305306(n)+A001105(n))`
-/

namespace A364423.P12394305272530396839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A305306 n + A001105 n).toNat

end

end A364423.P12394305272530396839

/-! ## A364423.P14747653121804430172

`A290103(A266976(n))+A074403(n+1)`
-/

namespace A364423.P14747653121804430172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A266976 n).toNat + A074403 (n + 1)

end

end A364423.P14747653121804430172

/-!
# A364424: Number of order-4 ribbon tilings for a 4 X n strip.

The programs for A364424, there is no canonical definition to state claims against.
-/

/-! ## A364424.P6779163653295897322

`A325781(C(n, floor(n/3))+2^n-1)`
-/

namespace A364424.P6779163653295897322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 ((Nat.choose n ⌊(n : ℚ) / 3⌋.toNat : ℤ) + ((2 ^ n : ℤ) - 1)).toNat

end

end A364424.P6779163653295897322

/-! ## A364424.P1003455644352554614

`∑{d}[∏[A286541(3*n+2)+1], ceil(2/#)]-1`
-/

namespace A364424.P1003455644352554614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286541 (3 * n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈2 / (d : ℚ)⌉ - 1

end

end A364424.P1003455644352554614

/-!
# A364425: Number of order-5 ribbon tilings for a 5 X n strip.

The programs for A364425, there is no canonical definition to state claims against.
-/

/-! ## A364425.P3376648193724684275

`lcm(A303761(n), A349079(A001997(n)))`
-/

namespace A364425.P3376648193724684275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A303761 n) (A349079 (A001997 n).toNat)

end

end A364425.P3376648193724684275

/-! ## A364425.P10097417560362524851

`∏[A367008((n+1)!)]`
-/

namespace A364425.P10097417560362524851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367008 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364425.P10097417560362524851

/-!
# A364426: Number of order-6 ribbon tilings for a 6 X n strip.

The programs for A364426, there is no canonical definition to state claims against.
-/

/-! ## A364426.P5967685976347732027

`(n+1)!/A043282((n+1)!)`
-/

namespace A364426.P5967685976347732027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A043282 (Nat.factorial (n + 1)) : ℚ)

end

end A364426.P5967685976347732027

/-! ## A364426.P4725629123378308047

`A333219(∏[comp[2*and(n, 2*n)]])`
-/

namespace A364426.P4725629123378308047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A364426.P4725629123378308047

/-! ## A364426.P2961979445814489191

`∏[n+1]/A323087(n²+(n+1)²)`
-/

namespace A364426.P2961979445814489191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A323087 (n ^ 2 + (n + 1) ^ 2) : ℚ)

end

end A364426.P2961979445814489191

/-!
# A364427: Number of order-7 ribbon tilings for a 7 X n strip.

The programs for A364427, there is no canonical definition to state claims against.
-/

/-! ## A364427.P12180891188354421207

`∏[A046942(n+1)%8]`
-/

namespace A364427.P12180891188354421207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046942 (n + 1)) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364427.P12180891188354421207

/-! ## A364427.P10319204850637294686

`A071364(∏[∏{p}[n+1, gcd(n+1, #²)]])`
-/

namespace A364427.P10319204850637294686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A364427.P10319204850637294686

/-! ## A364427.P18330658434770831960

`record[A094587(A366655(n))]`
-/

namespace A364427.P18330658434770831960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A366655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364427.P18330658434770831960

/-! ## A364427.P16600685934193036689

`record[A158777(A359907(n))]`
-/

namespace A364427.P16600685934193036689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 (A359907 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364427.P16600685934193036689

/-!
# A364428: Number of order-8 ribbon tilings for an 8 X n strip.

The programs for A364428, there is no canonical definition to state claims against.
-/

/-! ## A364428.P9433678068946989726

`record[∑{digits}[n, #!]/A248777(n+1)]`
-/

namespace A364428.P9433678068946989726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℚ) / (A248777 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364428.P9433678068946989726

/-! ## A364428.P10133668111944808828

`A000027(A276842(n+1))`
-/

namespace A364428.P10133668111944808828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A276842 (n + 1)).toNat

end

end A364428.P10133668111944808828

/-! ## A364428.P12013054857667954131

`A276842(A002998(n+1))`
-/

namespace A364428.P12013054857667954131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276842 (A002998 (n + 1)).toNat

end

end A364428.P12013054857667954131

/-! ## A364428.P18318735099336639035

`A276842(A032555(n+1))`
-/

namespace A364428.P18318735099336639035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276842 (A032555 (n + 1)).toNat

end

end A364428.P18318735099336639035

/-! ## A364428.P3065959945278901701

`A276842(A032557(n+1))`
-/

namespace A364428.P3065959945278901701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276842 (A032557 (n + 1)).toNat

end

end A364428.P3065959945278901701

/-!
# A364429: a(0) = 1, a(n) = (2*n^5 + 20*n^3 + 23*n) * 2/15 for n>=1.

The programs for A364429, the canonical program `A364429.P6142064425586013053` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364429 has offset 0).

The definition of A364429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364429.P14392638406878522957

`A008414(n)/A040001(2*n)`
-/

namespace A364429.P14392638406878522957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A364429.P14392638406878522957

namespace A364429

/-- `A008414(n)/A040001(2*n)` -/
def P14392638406878522957.Spec : Prop :=
  ∀ n, P14392638406878522957.a n = (A364429 n : ℚ)

end A364429

/-! ## A364429.P8572510168859371489

`A008414(n)/A000005(A006530(n+1))`
-/

namespace A364429.P8572510168859371489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A000005 (A006530 (n + 1)).toNat : ℚ)

end

end A364429.P8572510168859371489

namespace A364429

/-- `A008414(n)/A000005(A006530(n+1))` -/
def P8572510168859371489.Spec : Prop :=
  ∀ n, P8572510168859371489.a n = (A364429 n : ℚ)

end A364429

/-! ## A364429.P6142064425586013053

`A008414(n)/A034444(A034444(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A364429

/-- `A008414(n)/A034444(A034444(n+1))` -/
def P6142064425586013053.Spec : Prop :=
  ∀ n, P6142064425586013053.a n = (A364429 n : ℚ)

end A364429

/-! ## A364429.P13854531800194360515

`A008414(n)/A301830(A020639(n+1))`
-/

namespace A364429.P13854531800194360515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A301830 (A020639 (n + 1)).toNat : ℚ)

end

end A364429.P13854531800194360515

namespace A364429

/-- `A008414(n)/A301830(A020639(n+1))` -/
def P13854531800194360515.Spec : Prop :=
  ∀ n, P13854531800194360515.a n = (A364429 n : ℚ)

end A364429

/-! ## A364429.P9840501539788944363

`A008414(n)/A020639(A065302(n+1))`
-/

namespace A364429.P9840501539788944363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A020639 (A065302 (n + 1)).toNat : ℚ)

end

end A364429.P9840501539788944363

namespace A364429

/-- `A008414(n)/A020639(A065302(n+1))` -/
def P9840501539788944363.Spec : Prop :=
  ∀ n, P9840501539788944363.a n = (A364429 n : ℚ)

end A364429

/-! ## A364429.P15460035407742934289

`A008414(n)/A007947(A102376(n))`
-/

namespace A364429.P15460035407742934289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A007947 (A102376 n).toNat : ℚ)

end

end A364429.P15460035407742934289

namespace A364429

/-- `A008414(n)/A007947(A102376(n))` -/
def P15460035407742934289.Spec : Prop :=
  ∀ n, P15460035407742934289.a n = (A364429 n : ℚ)

end A364429

/-! ## A364429.P16506609262668881603

`A142978(A000217(n+4)+6)`
-/

namespace A364429.P16506609262668881603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A000217 (n + 4) + 6).toNat

end

end A364429.P16506609262668881603

namespace A364429

/-- `A142978(A000217(n+4)+6)` -/
def P16506609262668881603.Spec : Prop :=
  ∀ n, P16506609262668881603.a n = A364429 n

end A364429

/-! ## A364429.P1466310564447904626

`A008414(n)/A020639(A000123(n))`
-/

namespace A364429.P1466310564447904626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A020639 (A000123 n).toNat : ℚ)

end

end A364429.P1466310564447904626

namespace A364429

/-- `A008414(n)/A020639(A000123(n))` -/
def P1466310564447904626.Spec : Prop :=
  ∀ n, P1466310564447904626.a n = (A364429 n : ℚ)

end A364429

/-!
# A364430: G.f. satisfies A(x) = 1 - x*A(x)*(1 - 2*A(x)^3).

The programs for A364430, there is no canonical definition to state claims against.
-/

/-! ## A364430.P17954238908895744506

`A034887(A093136(n))`
-/

namespace A364430.P17954238908895744506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A093136 n).toNat

end

end A364430.P17954238908895744506

/-!
# A364432: G.f. satisfies A(x) = 1 + x*A(x)*(2 + A(x)^3).

The programs for A364432, there is no canonical definition to state claims against.
-/

/-! ## A364432.P5508111974947203687

`A319513(A183126(n))`
-/

namespace A364432.P5508111974947203687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319513 (A183126 n).toNat

end

end A364432.P5508111974947203687

/-!
# A364433: Numbers with multiplicities of primes per mod 3 residue in nonincreasing order.

The programs for A364433, there is no canonical definition to state claims against.
-/

/-! ## A364433.P17332832355804727107

`∩[A174995(n+1), A325031(n+1)]`
-/

namespace A364433.P17332832355804727107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364433.P17332832355804727107

/-! ## A364433.P17387142189135382624

`lt[A111467(A111008(n)), A359799(n+1)]`
-/

namespace A364433.P17387142189135382624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (A111008 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364433.P17387142189135382624

/-!
# A364434: a(1) = 12; for n >= 2, a(n) = least positive integer of the form prime(m)*prime(n-m)*prime(n) with m >= 1.

The programs for A364434, there is no canonical definition to state claims against.
-/

/-! ## A364434.P9107899210906528001

`A289691(C(A001006(n), A168396(n+1)))`
-/

namespace A364434.P9107899210906528001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289691 (Nat.choose (A001006 n).toNat (A168396 (n + 1)).toNat)

end

end A364434.P9107899210906528001

/-! ## A364434.P2058619297983941244

`A357636(A210671(n+4)-A303838(n+1))`
-/

namespace A364434.P2058619297983941244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (A210671 (n + 4) - A303838 (n + 1)).toNat

end

end A364434.P2058619297983941244

/-!
# A364437: G.f. satisfies A(x) = 1 - x*(1 - 2*A(x)^3).

The programs for A364437, there is no canonical definition to state claims against.
-/

/-! ## A364437.P1823899372186410421

`A033685(A126783(n+1))+A033296(n)`
-/

namespace A364437.P1823899372186410421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (A126783 (n + 1)).toNat + A033296 n

end

end A364437.P1823899372186410421

/-! ## A364437.P15789977800007091651

`A291786(A295495(n+3))+A033296(n)`
-/

namespace A364437.P15789977800007091651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291786 (A295495 (n + 3)).toNat + A033296 n

end

end A364437.P15789977800007091651

/-!
# A364439: a(n) is the number of paths with length 3*n that begin at (0,0), end at (0,0), and do not reach (0,0) at any point in between while 0 <= y <= x at every step, where a path is a sequence of steps in the form (1,1), (1,-1), and (-2,0).

The programs for A364439, there is no canonical definition to state claims against.
-/

/-! ## A364439.P2169868360697598742

`A109613(A308877(n))-A308870(3*n+1)`
-/

namespace A364439.P2169868360697598742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A308877 n).toNat - A308870 (3 * n + 1)

end

end A364439.P2169868360697598742

/-!
# A364443: a(n) is the number of integers k of the form x^2 + x*y + y^2 (A003136) with n^2 < k < (n+1)^2.

The programs for A364443, there is no canonical definition to state claims against.
-/

/-! ## A364443.P16693049471573600643

`Δ[A024610(n)]-1`
-/

namespace A364443.P16693049471573600643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A364443.P16693049471573600643

/-! ## A364443.P898628608565313542

`A024610(n+1)-(A024610(n)+1)`
-/

namespace A364443.P898628608565313542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024610 (n + 1) - (A024610 n + 1)

end

end A364443.P898628608565313542

/-! ## A364443.P17157541160003942469

`A024610(A004526(2*n+3))%(A024610(n)+1)`
-/

namespace A364443.P17157541160003942469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024610 (A004526 (2 * n + 3)).toNat) (A024610 n + 1)

end

end A364443.P17157541160003942469

/-! ## A364443.P10497767178154406496

`A260196(3*(n+1))+Δ[A024610(n)]`
-/

namespace A364443.P10497767178154406496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A364443.P10497767178154406496

/-! ## A364443.P18272966331080923147

`val(A131577(Δ[A024610(n)]), 2)`
-/

namespace A364443.P18272966331080923147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131577 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A364443.P18272966331080923147

/-! ## A364443.P16520600609786499549

`Δ[lt[A262678(A003136(n+1)), 1]+1-n]`
-/

namespace A364443.P16520600609786499549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A003136 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364443.P16520600609786499549

/-!
# A364444: a(n) is the number of integers k with n^2 < k < (n+1)^2 that are the sum of no more than 3 squares, counting multiple representations only once.

The programs for A364444, there is no canonical definition to state claims against.
-/

/-! ## A364444.P18019157709285081541

`Δ[A047809(n)]-1`
-/

namespace A364444.P18019157709285081541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A364444.P18019157709285081541

/-! ## A364444.P17207936542178184155

`2*n-A277194(n)`
-/

namespace A364444.P17207936542178184155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A277194 n

end

end A364444.P17207936542178184155

/-! ## A364444.P17365551707646129276

`Δ[A071377(n²)]-1`
-/

namespace A364444.P17365551707646129276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071377 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A364444.P17365551707646129276

/-! ## A364444.P7570604961046986127

`A077773(n)+A277193(n)`
-/

namespace A364444.P7570604961046986127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 n + A277193 n

end

end A364444.P7570604961046986127

/-! ## A364444.P12694033326542607682

`Δ[A047809(n)+A024000(n)]`
-/

namespace A364444.P12694033326542607682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364444.P12694033326542607682

/-! ## A364444.P8932600095374779165

`A277193(n)+Δ[A047808(n)]-1`
-/

namespace A364444.P8932600095374779165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + (f1 (n + 1) - f1 n - 1)

end

end A364444.P8932600095374779165

/-! ## A364444.P7784867420421531671

`A277193(n)+Δ[A102548(n²+1)]-1`
-/

namespace A364444.P7784867420421531671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + (f1 (n + 1) - f1 n - 1)

end

end A364444.P7784867420421531671

/-! ## A364444.P1475756288957108843

`A004277(n)+A077773(n)-A277192(n)`
-/

namespace A364444.P1475756288957108843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A077773 n - A277192 n)

end

end A364444.P1475756288957108843

/-! ## A364444.P18417974998954418202

`A277193(n)+A047808(n+1)-(A047808(n)+1)`
-/

namespace A364444.P18417974998954418202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + (A047808 (n + 1) - (A047808 n + 1))

end

end A364444.P18417974998954418202

/-!
# A364445: Complement of A364444.

The programs for A364445, there is no canonical definition to state claims against.
-/

/-! ## A364445.P18033458741605112520

`comp[2*n-A277194(n)]`
-/

namespace A364445.P18033458741605112520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A277194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364445.P18033458741605112520

/-! ## A364445.P8663562718197278074

`lt[char[Δ[A047809(n)]-1], 1]`
-/

namespace A364445.P8663562718197278074
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A364445.P8663562718197278074

/-! ## A364445.P15722422532471366985

`comp[A077773(n)+A004277(n)-A277192(n)]`
-/

namespace A364445.P15722422532471366985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 n + (A004277 n - A277192 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364445.P15722422532471366985

/-! ## A364445.P5940692556506635642

`comp[A077773(n)+A028310(n)+n-A277192(n)]`
-/

namespace A364445.P5940692556506635642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 n + (A028310 n + ((n : ℤ) - A277192 n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364445.P5940692556506635642

/-! ## A364445.P2538004678777563769

`comp[A277193(n)+A047808(n+1)-(A047808(n)+1)]`
-/

namespace A364445.P2538004678777563769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + (A047808 (n + 1) - (A047808 n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364445.P2538004678777563769

/-! ## A364445.P5056676532004065812

`comp[A277193(n)+(A277192(n)-A277194(n))%(n+1)]`
-/

namespace A364445.P5056676532004065812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + Int.tmod (A277192 n - A277194 n) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364445.P5056676532004065812

/-!
# A364446: Odd bisection of A097514.

The programs for A364446, there is no canonical definition to state claims against.
-/

/-! ## A364446.P14263682923227698508

`A097514(Δ[n²])`
-/

namespace A364446.P14263682923227698508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097514 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364446.P14263682923227698508

/-! ## A364446.P14872289826372826822

`A124498((n+1)²)`
-/

namespace A364446.P14872289826372826822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124498 ((n + 1) ^ 2)

end

end A364446.P14872289826372826822

/-! ## A364446.P4915492635656430989

`A123023(2*n+1)+A097514(2*n+1)`
-/

namespace A364446.P4915492635656430989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (2 * n + 1) + A097514 (2 * n + 1)

end

end A364446.P4915492635656430989

/-! ## A364446.P4961772511083265117

`A000110(2*n+1)-A327885(2*n+1)`
-/

namespace A364446.P4961772511083265117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * n + 1) - A327885 (2 * n + 1)

end

end A364446.P4961772511083265117

/-! ## A364446.P3918194037764775237

`A011971(A000217(2*n+1))-A327885(2*n+1)`
-/

namespace A364446.P3918194037764775237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 (2 * n + 1)).toNat - A327885 (2 * n + 1)

end

end A364446.P3918194037764775237

/-!
# A364447: Repeat [1,2,1,3].

The programs for A364447, the canonical program `A364447.P12323246567435588119` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364447 has offset 1).

The definition of A364447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364447.P12323246567435588119

`A131743(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364447

/-- `A131743(n)+1` -/
def P12323246567435588119.Spec : Prop :=
  ∀ n, P12323246567435588119.a n = A364447 (n + 1)

theorem P12323246567435588119.correct : P12323246567435588119.Spec := by
  intro n
  simp only [A364447, Nat.add_sub_cancel]

end A364447

/-!
# A364449: Lexicographically earliest sequence where n is banned for n^3 terms after each appearance.

The programs for A364449, there is no canonical definition to state claims against.
-/

/-! ## A364449.P4593223282729038109

`A229994(n+1)^A248663(A074473(n+1))`
-/

namespace A364449.P4593223282729038109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229994 (n + 1) : ℚ) ^ (A248663 (A074473 (n + 1)).toNat : ℤ)

end

end A364449.P4593223282729038109

/-! ## A364449.P13699273945444188907

`A229994(n+1)^A002464(A055396(n+5))`
-/

namespace A364449.P13699273945444188907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229994 (n + 1) : ℚ) ^ (A002464 (A055396 (n + 5)).toNat : ℤ)

end

end A364449.P13699273945444188907

/-! ## A364449.P12579280594732292753

`A229994(n+1)%(A125270(n+4)^(n%2)+1)`
-/

namespace A364449.P12579280594732292753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229994 (n + 1)) (A125270 (n + 4) ^ (n % 2) + 1)

end

end A364449.P12579280594732292753

/-! ## A364449.P15447815933634914428

`A229994(n+1)%A119300(A229994(n+5))`
-/

namespace A364449.P15447815933634914428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229994 (n + 1)) (A119300 (A229994 (n + 5)).toNat)

end

end A364449.P15447815933634914428

/-! ## A364449.P17482572106060429617

`A229994(n+1)^A010815(A022904(n+1))`
-/

namespace A364449.P17482572106060429617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229994 (n + 1) : ℚ) ^ (A010815 (A022904 (n + 1)).toNat : ℤ)

end

end A364449.P17482572106060429617

/-!
# A364452: Smallest k such that 4^(4^n) - k is prime.

The programs for A364452, there is no canonical definition to state claims against.
-/

/-! ## A364452.P13008707437783401518

`A058220(2*n+1)`
-/

namespace A364452.P13008707437783401518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058220 (2 * n + 1)

end

end A364452.P13008707437783401518

/-! ## A364452.P1556224945020675956

`A000027(A058220(n+1+n))`
-/

namespace A364452.P1556224945020675956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A058220 (n + 1 + n)).toNat

end

end A364452.P1556224945020675956

/-! ## A364452.P5223417031718894083

`A058220(Δ[n²])-A326592(n)-A326593(n)`
-/

namespace A364452.P5223417031718894083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058220 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A326592 n - A326593 n

end

end A364452.P5223417031718894083

/-! ## A364452.P364725464384153215

`A058220(A326835(n+1))-A326541(n)-A326542(n)`
-/

namespace A364452.P364725464384153215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058220 (A326835 (n + 1)).toNat - A326541 n - A326542 n

end

end A364452.P364725464384153215

/-!
# A364453: Smallest k such that 5^(5^n) - k is prime.

The programs for A364453, there is no canonical definition to state claims against.
-/

/-! ## A364453.P3891744445121276333

`A013605(5^n)`
-/

namespace A364453.P3891744445121276333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (5 ^ n)

end

end A364453.P3891744445121276333

/-!
# A364455: Record values of A365196.

The programs for A364455, there is no canonical definition to state claims against.
-/

/-! ## A364455.P17682014009125206109

`A365196(A365239(n+1))`
-/

namespace A364455.P17682014009125206109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365196 (A365239 (n + 1)).toNat

end

end A364455.P17682014009125206109

/-! ## A364455.P11862474993468489992

`record[or(A365196(3*n), A365196(n))]`
-/

namespace A364455.P11862474993468489992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A365196 (3 * n)) (A365196 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364455.P11862474993468489992

/-!
# A364459: Number of primes in the interval [n,n+log(n)^2].

The programs for A364459, there is no canonical definition to state claims against.
-/

/-! ## A364459.P5902573708200509326

`A275235(n+1)+A010051(n+1)`
-/

namespace A364459.P5902573708200509326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275235 (n + 1) + A010051 (n + 1)

end

end A364459.P5902573708200509326

/-! ## A364459.P7592582284874671147

`A275235(n+1)+abs(A129950(n+1))`
-/

namespace A364459.P7592582284874671147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275235 (n + 1) + |A129950 (n + 1)|

end

end A364459.P7592582284874671147

/-!
# A364460: Number of tilings of a 3 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364460, there is no canonical definition to state claims against.
-/

/-! ## A364460.P4311782854891241515

`A364457(A167614(n+2))`
-/

namespace A364460.P4311782854891241515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A167614 (n + 2)).toNat

end

end A364460.P4311782854891241515

/-! ## A364460.P14210286258870182437

`A364457(A056000(n)+6)`
-/

namespace A364460.P14210286258870182437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A056000 n + 6).toNat

end

end A364460.P14210286258870182437

/-! ## A364460.P11425128874478420193

`A364457(A055999(n+1)+2)`
-/

namespace A364460.P11425128874478420193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A055999 (n + 1) + 2).toNat

end

end A364460.P11425128874478420193

/-! ## A364460.P4991542427145010395

`A364457(A141214(n+1)-1)`
-/

namespace A364460.P4991542427145010395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A141214 (n + 1) - 1).toNat

end

end A364460.P4991542427145010395

/-! ## A364460.P8117438561111709352

`A364457(A034856(n+3)-2)`
-/

namespace A364460.P8117438561111709352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A034856 (n + 3) - 2).toNat

end

end A364460.P8117438561111709352

/-!
# A364461: Positive integers such that if prime(a)*prime(b) is a divisor, prime(a+b) is not.

The programs for A364461, there is no canonical definition to state claims against.
-/

/-! ## A364461.P2258215286455375806

`comp[A364462(n+1)-1]+1`
-/

namespace A364461.P2258215286455375806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364461.P2258215286455375806

/-! ## A364461.P4035538128876138002

`lt[A141056(n), A118462(A028896(n))]`
-/

namespace A364461.P4035538128876138002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118462 (A028896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364461.P4035538128876138002

/-! ## A364461.P9259331419566985221

`lt[A002618(A327642(n)), A000070(n)]`
-/

namespace A364461.P9259331419566985221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A327642 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364461.P9259331419566985221

/-! ## A364461.P8294637956441279350

`lt[A353744(A304442(n)), A353847(n)]`
-/

namespace A364461.P8294637956441279350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (A304442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364461.P8294637956441279350

/-! ## A364461.P12633071951823456032

`lt[A062921(A033630(n)), A004648(n+1)]`
-/

namespace A364461.P12633071951823456032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062921 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364461.P12633071951823456032

/-! ## A364461.P7554986663169547656

`lt[A179213(A326842(n)), A000041(n+3)]`
-/

namespace A364461.P7554986663169547656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179213 (A326842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364461.P7554986663169547656

/-!
# A364462: Positive integers having a divisor of the form prime(a)*prime(b) such that prime(a+b) is also a divisor.

The programs for A364462, there is no canonical definition to state claims against.
-/

/-! ## A364462.P13738223663579355257

`∩[A290965(n+1), A325777(n+1)]`
-/

namespace A364462.P13738223663579355257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364462.P13738223663579355257

/-! ## A364462.P1807834406693122450

`∩[A337806(n+1), A364537(n+1)]`
-/

namespace A364462.P1807834406693122450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364462.P1807834406693122450

/-! ## A364462.P1278093670713371

`∩[A299729(n+1), A328168(n+1)]`
-/

namespace A364462.P1278093670713371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364462.P1278093670713371

/-! ## A364462.P3980798790374851908

`∩[A325777(n+1), A328168(n+1)]`
-/

namespace A364462.P3980798790374851908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364462.P3980798790374851908

/-! ## A364462.P6229704030213419428

`∩[A325777(n+1), A297249(n+4)]`
-/

namespace A364462.P6229704030213419428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297249 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364462.P6229704030213419428

/-!
# A364463: Number of subsets of {1..n} with elements disjoint from first differences of elements.

The programs for A364463, there is no canonical definition to state claims against.
-/

/-! ## A364463.P14058806367089229659

`2^n-A364466(n)`
-/

namespace A364463.P14058806367089229659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A364466 n

end

end A364463.P14058806367089229659

/-! ## A364463.P15974744712817642323

`abs(A000079(n)-A364466(n))`
-/

namespace A364463.P15974744712817642323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A364466 n|

end

end A364463.P15974744712817642323

/-! ## A364463.P17600538873023962224

`A000051(n)-(A364466(n)+1)`
-/

namespace A364463.P17600538873023962224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A364466 n + 1)

end

end A364463.P17600538873023962224

/-! ## A364463.P15990460636343631654

`A000325(n)-A364466(n)+n`
-/

namespace A364463.P15990460636343631654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A364466 n + (n : ℤ)

end

end A364463.P15990460636343631654

/-! ## A364463.P10541604522054020033

`A050291(n)+A088808(n)-A364466(n)`
-/

namespace A364463.P10541604522054020033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088808 n - A364466 n)

end

end A364463.P10541604522054020033

/-!
# A364464: Number of strict integer partitions of n where no part is the difference of two consecutive parts.

The programs for A364464, there is no canonical definition to state claims against.
-/

/-! ## A364464.P3480579702612060622

`A000009(n)-A364536(n)`
-/

namespace A364464.P3480579702612060622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364536 n

end

end A364464.P3480579702612060622

/-! ## A364464.P15955772187824449188

`abs(A081360(n))-A364536(n)`
-/

namespace A364464.P15955772187824449188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364536 n

end

end A364464.P15955772187824449188

/-! ## A364464.P7172074345494535754

`A172033(2*n)-A364536(n)`
-/

namespace A364464.P7172074345494535754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A364536 n

end

end A364464.P7172074345494535754

/-! ## A364464.P17470617596852004250

`A000700(n)+A331848(n)-A364536(n)`
-/

namespace A364464.P17470617596852004250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A331848 n - A364536 n)

end

end A364464.P17470617596852004250

/-! ## A364464.P1862519707615437690

`gcd(A000038(n), A081360(n))-A364536(n)`
-/

namespace A364464.P1862519707615437690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A081360 n) : ℤ) - A364536 n

end

end A364464.P1862519707615437690

/-! ## A364464.P11031800559370838860

`lcm(A020985(n), A081360(n))-A364536(n)`
-/

namespace A364464.P11031800559370838860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A081360 n) : ℤ) - A364536 n

end

end A364464.P11031800559370838860

/-! ## A364464.P968428116896503581

`A367220(n)+A367221(n)-A364536(n)`
-/

namespace A364464.P968428116896503581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367220 n + (A367221 n - A364536 n)

end

end A364464.P968428116896503581

/-! ## A364464.P9587461835021838507

`A238785(n+1)-(A364536(n)+A238779(n+1))`
-/

namespace A364464.P9587461835021838507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - (A364536 n + A238779 (n + 1))

end

end A364464.P9587461835021838507

/-!
# A364465: Number of subsets of {1..n} with all different first differences of elements.

The programs for A364465, there is no canonical definition to state claims against.
-/

/-! ## A364465.P5928354020211374133

`∑[∑[2*A032058(n)-1]]-A229898(n)`
-/

namespace A364465.P5928354020211374133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032058 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A229898 n

end

end A364465.P5928354020211374133

/-! ## A364465.P11916676845274604862

`∑[(∑[A351017(n)]+1)/2]-A229898(n)`
-/

namespace A364465.P11916676845274604862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351017 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A229898 n : ℚ)

end

end A364465.P11916676845274604862

/-! ## A364465.P17954751206467304625

`∑[A302395(A011782(n))]`
-/

namespace A364465.P17954751206467304625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302395 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364465.P17954751206467304625

/-! ## A364465.P7747590639844850644

`A101268(n+1)-A007949(A090630(n))`
-/

namespace A364465.P7747590639844850644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 (n + 1) - A007949 (A090630 n).toNat

end

end A364465.P7747590639844850644

/-! ## A364465.P14826598602344896321

`A143823(n)+∑[A277327(A210326(n+1))]`
-/

namespace A364465.P14826598602344896321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A210326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364465.P14826598602344896321

/-!
# A364466: Number of subsets of {1..n} where some element is a difference of two consecutive elements.

The programs for A364466, there is no canonical definition to state claims against.
-/

/-! ## A364466.P14551920385157938719

`2^n-A364463(n)`
-/

namespace A364466.P14551920385157938719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A364463 n

end

end A364466.P14551920385157938719

/-! ## A364466.P8349101026072148335

`abs(A000079(n)-A364463(n))`
-/

namespace A364466.P8349101026072148335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A364463 n|

end

end A364466.P8349101026072148335

/-! ## A364466.P3639069893026759081

`A000051(n)-(A364463(n)+1)`
-/

namespace A364466.P3639069893026759081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A364463 n + 1)

end

end A364466.P3639069893026759081

/-! ## A364466.P5509929782393671629

`A000225(n)+1-A364463(n)`
-/

namespace A364466.P5509929782393671629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A364463 n)

end

end A364466.P5509929782393671629

/-! ## A364466.P6839973318577998749

`A050291(n)+A088808(n)-A364463(n)`
-/

namespace A364466.P6839973318577998749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n + (A088808 n - A364463 n)

end

end A364466.P6839973318577998749

/-!
# A364467: Number of integer partitions of n where some part is the difference of two consecutive parts.

The programs for A364467, there is no canonical definition to state claims against.
-/

/-! ## A364467.P15339354374690070768

`A000041(n)-A363260(n)`
-/

namespace A364467.P15339354374690070768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A363260 n

end

end A364467.P15339354374690070768

/-! ## A364467.P5037785449901583956

`A213598(n)-A363260(n)`
-/

namespace A364467.P5037785449901583956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A363260 n

end

end A364467.P5037785449901583956

/-! ## A364467.P17518818248962551747

`sqrt(A001255(n))-A363260(n)`
-/

namespace A364467.P17518818248962551747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A363260 n : ℝ)

end

end A364467.P17518818248962551747

/-! ## A364467.P12830562687250581757

`∑[A002865(n)]-A363260(n)`
-/

namespace A364467.P12830562687250581757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A363260 n

end

end A364467.P12830562687250581757

/-! ## A364467.P16379731433950108012

`A035363(2*n)-A363260(n)`
-/

namespace A364467.P16379731433950108012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A363260 n

end

end A364467.P16379731433950108012

/-!
# A364471: Number of chordless cycles (of length >= 4) in the complement of the n-Fibonacci cube graph.

The programs for A364471, there is no canonical definition to state claims against.
-/

/-! ## A364471.P5820451918360091515

`A247185(A131283(n+1))`
-/

namespace A364471.P5820451918360091515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247185 (A131283 (n + 1)).toNat

end

end A364471.P5820451918360091515

/-! ## A364471.P18087986734627980336

`A141097(Δ[A222082(n)²])`
-/

namespace A364471.P18087986734627980336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222082 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (f1 (n + 1) - f1 n).toNat

end

end A364471.P18087986734627980336

/-!
# A364472: G.f. satisfies A(x) = 1 + x*A(x) + x^2*A(x)^6.

The programs for A364472, there is no canonical definition to state claims against.
-/

/-! ## A364472.P11246272024399387456

`A071903(A007863(n)-A071899(n))`
-/

namespace A364472.P11246272024399387456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (A007863 n - A071899 n).toNat

end

end A364472.P11246272024399387456

/-! ## A364472.P3886089421151596284

`A008620(A005034(n+2)-A000792(n))`
-/

namespace A364472.P3886089421151596284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A005034 (n + 2) - A000792 n).toNat

end

end A364472.P3886089421151596284

/-!
# A364473: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^2*A(x)^6.

The programs for A364473, there is no canonical definition to state claims against.
-/

/-! ## A364473.P17065911041333411999

`A186577(n)-A046660(A008485(n))`
-/

namespace A364473.P17065911041333411999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186577 n - A046660 (A008485 n).toNat

end

end A364473.P17065911041333411999

/-! ## A364473.P12836915775457273386

`A186577(n)-A072670(A281774(n))`
-/

namespace A364473.P12836915775457273386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186577 n - A072670 (A281774 n).toNat

end

end A364473.P12836915775457273386

/-! ## A364473.P17299647727147946790

`A186577(n)-A353495(A001541(n))`
-/

namespace A364473.P17299647727147946790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186577 n - A353495 (A001541 n).toNat

end

end A364473.P17299647727147946790

/-!
# A364474: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^2*A(x).

The programs for A364474, there is no canonical definition to state claims against.
-/

/-! ## A364474.P13734861353066553198

`A276798(A000129(2*n)+n^3)`
-/

namespace A364474.P13734861353066553198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A000129 (2 * n) + (n ^ 3 : ℤ)).toNat

end

end A364474.P13734861353066553198

/-! ## A364474.P4409736063198487627

`A255906(n)+A117563(A000315(n+1))`
-/

namespace A364474.P4409736063198487627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n + A117563 (A000315 (n + 1)).toNat

end

end A364474.P4409736063198487627

/-!
# A364475: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^2*A(x)^3.

The programs for A364475, there is no canonical definition to state claims against.
-/

/-! ## A364475.P17932485087752239949

`A378323(∑[n+1]+n)`
-/

namespace A364475.P17932485087752239949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378323 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A364475.P17932485087752239949

/-! ## A364475.P14094762306303224977

`A381787(n)-a(n-1)` with `a(0)=1`
-/

namespace A364475.P14094762306303224977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381787 n - a (n - 1)

end

end A364475.P14094762306303224977

/-!
# A364476: G.f. satisfies A(x) = 1 + x*A(x) + x^2*A(x)^7.

The programs for A364476, there is no canonical definition to state claims against.
-/

/-! ## A364476.P384724742323670162

`A333524(A132977(n))`
-/

namespace A364476.P384724742323670162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333524 (A132977 n).toNat

end

end A364476.P384724742323670162

/-! ## A364476.P15621443544062750152

`A320115(∏[A261005(n)])`
-/

namespace A364476.P15621443544062750152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320115 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A364476.P15621443544062750152

/-!
# A364477: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^2*A(x)^7.

The programs for A364477, there is no canonical definition to state claims against.
-/

/-! ## A364477.P2804686734649143013

`A086623(∑[4*n]+1)`
-/

namespace A364477.P2804686734649143013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086623 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A364477.P2804686734649143013

/-! ## A364477.P14486891831423814376

`A269381(A078009(n))`
-/

namespace A364477.P14486891831423814376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A078009 n).toNat

end

end A364477.P14486891831423814376

/-!
# A364478: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^2*A(x)^8.

The programs for A364478, there is no canonical definition to state claims against.
-/

/-! ## A364478.P12286859471560684148

`A065033(A060138(ceil(2^(n-1))²))`
-/

namespace A364478.P12286859471560684148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A060138 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2).toNat).toNat

end

end A364478.P12286859471560684148

/-! ## A364478.P14302009667998077255

`A019298(A300121(∑[ceil(2^(n-1))]))`
-/

namespace A364478.P14302009667998077255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (A300121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A364478.P14302009667998077255

/-!
# A364479: Happy palindromic primes.

The programs for A364479, there is no canonical definition to state claims against.
-/

/-! ## A364479.P3224182686187758716

`∩[A002385(n+1), A215932(n+1)]`
-/

namespace A364479.P3224182686187758716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P3224182686187758716

/-! ## A364479.P15173644042656798858

`∩[A029950(n+1), A215932(n+1)]`
-/

namespace A364479.P15173644042656798858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P15173644042656798858

/-! ## A364479.P11020913001291784744

`∩[A056525(n+1), A215932(n+1)]`
-/

namespace A364479.P11020913001291784744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P11020913001291784744

/-! ## A364479.P7788450371767639476

`∩[A062687(n+1), A215932(n+1)]`
-/

namespace A364479.P7788450371767639476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P7788450371767639476

/-! ## A364479.P13143727652955499719

`∩[A071251(n+1), A215932(n+1)]`
-/

namespace A364479.P13143727652955499719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P13143727652955499719

/-! ## A364479.P14705882409512807991

`∩[A075800(n+1), A215932(n+1)]`
-/

namespace A364479.P14705882409512807991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P14705882409512807991

/-! ## A364479.P7939961410530703025

`∩[A083136(n+1), A215932(n+1)]`
-/

namespace A364479.P7939961410530703025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P7939961410530703025

/-! ## A364479.P9561862705435560982

`∩[A083137(n+1), A215932(n+1)]`
-/

namespace A364479.P9561862705435560982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P9561862705435560982

/-! ## A364479.P10434041171652028404

`∩[A188650(n+1), A215932(n+1)]`
-/

namespace A364479.P10434041171652028404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P10434041171652028404

/-! ## A364479.P1725482970721098049

`∩[A215932(n+1), A226732(n+1)]`
-/

namespace A364479.P1725482970721098049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364479.P1725482970721098049

/-!
# A364480: Table of Sprague-Grundy values for M X N Pop-It! hooks read by antidiagonals.

The programs for A364480, there is no canonical definition to state claims against.
-/

/-! ## A364480.P11614646806939013907

`and(A000225(A354586(n+1)), A002024(n+1))`
-/

namespace A364480.P11614646806939013907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A354586 (n + 1)).toNat) (A002024 (n + 1))

end

end A364480.P11614646806939013907

/-! ## A364480.P11429120634758767293

`gcd(A000290(A155797(n)), A002024(n+1))`
-/

namespace A364480.P11429120634758767293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A155797 n).toNat) (A002024 (n + 1))

end

end A364480.P11429120634758767293

/-! ## A364480.P13752278581323543391

`A002024(n+1)%A052126(A345409(n+4))`
-/

namespace A364480.P13752278581323543391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A052126 (A345409 (n + 4)).toNat)

end

end A364480.P13752278581323543391

/-!
# A364485: Number of fixed triangular polyominoes with 2n cells of the regular tiling with Schläfli symbol {3,6} that have a common axis of symmetry coincident with cell edges.

The programs for A364485, there is no canonical definition to state claims against.
-/

/-! ## A364485.P2078991480884177859

`2*A030223(2*(n+1))-A364486(2*(n+1))-A364487(2*(n+1))`
-/

namespace A364485.P2078991480884177859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030223 (2 * (n + 1)) - A364486 (2 * (n + 1)) - A364487 (2 * (n + 1))

end

end A364485.P2078991480884177859

/-! ## A364485.P12835351470230730969

`A321018(A290898(n+1))`
-/

namespace A364485.P12835351470230730969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A290898 (n + 1)).toNat

end

end A364485.P12835351470230730969

/-! ## A364485.P7524375745135367687

`A244040(A063896(n))+A002426(n)`
-/

namespace A364485.P7524375745135367687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (A063896 n).toNat + A002426 n

end

end A364485.P7524375745135367687

/-! ## A364485.P15908305897831705688

`A260734(A364486(2*(n+1)))-A027868(n)`
-/

namespace A364485.P15908305897831705688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A364486 (2 * (n + 1))).toNat - A027868 n

end

end A364485.P15908305897831705688

/-!
# A364486: Number of fixed triangular n-ominoes of the regular tiling with Schläfli symbol {3,6} that have a common axis of symmetry coincident with cell altitudes and the point of the polyomino farthest along that axis in a specified direction is a cell vertex.

The programs for A364486, there is no canonical definition to state claims against.
-/

/-! ## A364486.P6296447397831906160

`A322111(n)-A294175(A241643(n))`
-/

namespace A364486.P6296447397831906160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - A294175 (A241643 n).toNat

end

end A364486.P6296447397831906160

/-! ## A364486.P9008844222527117022

`xor(A115981(A036380(n+1)), A322111(n))`
-/

namespace A364486.P9008844222527117022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115981 (A036380 (n + 1)).toNat) (A322111 n)

end

end A364486.P9008844222527117022

/-! ## A364486.P2738079949819675231

`A165105(or(7, ∑[∑[1-n*(-1)^n]]))`
-/

namespace A364486.P2738079949819675231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165105 (Int.lor 7 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A364486.P2738079949819675231

/-! ## A364486.P4305244696374247288

`A032539(A321408(n+1))`
-/

namespace A364486.P4305244696374247288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A321408 (n + 1)).toNat

end

end A364486.P4305244696374247288

/-! ## A364486.P14730969232044721214

`round(A055606(n+5)/A008475(n+5))`
-/

namespace A364486.P14730969232044721214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055606 (n + 5) : ℚ) / (A008475 (n + 5) : ℚ))

end

end A364486.P14730969232044721214

/-!
# A364489: Values of n for which the Sprague-Grundy value of Heat-Charge Toggle on an (n+2)-vertex path with initial weights -1,1^n,-1 is evil for odd n or odious for even n.

The programs for A364489, there is no canonical definition to state claims against.
-/

/-! ## A364489.P11244469233272109038

`eq[A003849(n), A222656(A123125(n))]`
-/

namespace A364489.P11244469233272109038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A123125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364489.P11244469233272109038

/-! ## A364489.P14126050554818292075

`eq[A003849(n), A060130(A256161(n+1))]`
-/

namespace A364489.P14126050554818292075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A256161 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364489.P14126050554818292075

/-! ## A364489.P17013204620106904361

`eq[A085242(n+1), A363007(A085216(n))]`
-/

namespace A364489.P17013204620106904361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (A085216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364489.P17013204620106904361

/-! ## A364489.P15211266292444974542

`lt[A165053(A284949(n+1)), A003842(n)]`
-/

namespace A364489.P15211266292444974542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 (A284949 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364489.P15211266292444974542

/-! ## A364489.P13225924786121425240

`eq[A003849(n), A013942(A192584(2*n+1))]`
-/

namespace A364489.P13225924786121425240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (A192584 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364489.P13225924786121425240

/-!
# A364491: a(n) = n / gcd(n, A163511(n)).

The programs for A364491, the canonical program `A364491.P14827580004623166337` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364491 has offset 0).

The definition of A364491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364491.P14827580004623166337

`n/A364255(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A364491

/-- `n/A364255(n)` -/
def P14827580004623166337.Spec : Prop :=
  ∀ n, P14827580004623166337.a n = (A364491 n : ℚ)

end A364491

/-! ## A364491.P2997074932524130062

`n/gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364491.P2997074932524130062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A163511 n) : ℚ)

end

end A364491.P2997074932524130062

namespace A364491

/-- `n/gcd(n, A163511(n))` -/
def P2997074932524130062.Spec : Prop :=
  ∀ n, P2997074932524130062.a n = (A364491 n : ℚ)

end A364491

/-! ## A364491.P17789284572497444636

`A364493(n)/A364492(n)`
-/

namespace A364491.P17789284572497444636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364493 n : ℚ) / (A364492 n : ℚ)

end

end A364491.P17789284572497444636

namespace A364491

/-- `A364493(n)/A364492(n)` -/
def P17789284572497444636.Spec : Prop :=
  ∀ n, P17789284572497444636.a n = (A364491 n : ℚ)

end A364491

/-! ## A364491.P16142758758381659644

`n/A163511(n)*A364492(n)`
-/

namespace A364491.P16142758758381659644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A163511 n : ℚ) * (A364492 n : ℚ)

end

end A364491.P16142758758381659644

namespace A364491

/-- `n/A163511(n)*A364492(n)` -/
def P16142758758381659644.Spec : Prop :=
  ∀ n, P16142758758381659644.a n = (A364491 n : ℚ)

end A364491

/-! ## A364491.P6013520689766812570

`n/gcd(A028310(n), A364258(n))`
-/

namespace A364491.P6013520689766812570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A028310 n) (A364258 n) : ℚ)

end

end A364491.P6013520689766812570

namespace A364491

/-- `n/gcd(A028310(n), A364258(n))` -/
def P6013520689766812570.Spec : Prop :=
  ∀ n, P6013520689766812570.a n = (A364491 n : ℚ)

end A364491

/-! ## A364491.P187320737087299878

`n/A364256(A163511(n))`
-/

namespace A364491.P187320737087299878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A364256 (A163511 n).toNat : ℚ)

end

end A364491.P187320737087299878

namespace A364491

/-- `n/A364256(A163511(n))` -/
def P187320737087299878.Spec : Prop :=
  ∀ n, P187320737087299878.a n = (A364491 n : ℚ)

end A364491

/-! ## A364491.P4690903371535854347

`2*n/A364256(A364297(2*n))`
-/

namespace A364491.P4690903371535854347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A364256 (A364297 (2 * n)).toNat : ℚ)

end

end A364491.P4690903371535854347

namespace A364491

/-- `2*n/A364256(A364297(2*n))` -/
def P4690903371535854347.Spec : Prop :=
  ∀ n, P4690903371535854347.a n = (A364491 n : ℚ)

end A364491

/-!
# A364492: a(n) = A163511(n) / gcd(n, A163511(n)).

The programs for A364492, the canonical program `A364492.P17999923725189708202` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364492 has offset 0).

The definition of A364492 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364492.P17999923725189708202

`A163511(n)/A364255(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A364492

/-- `A163511(n)/A364255(n)` -/
def P17999923725189708202.Spec : Prop :=
  ∀ n, P17999923725189708202.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P1202315504747477539

`A163511(n)/gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364492.P1202315504747477539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 n : ℚ) / (Int.gcd (n : ℤ) (A163511 n) : ℚ)

end

end A364492.P1202315504747477539

namespace A364492

/-- `A163511(n)/gcd(n, A163511(n))` -/
def P1202315504747477539.Spec : Prop :=
  ∀ n, P1202315504747477539.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P2221446315685875626

`(A364258(n)+n)/A364255(n)`
-/

namespace A364492.P2221446315685875626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364258 n + (n : ℤ) : ℚ) / (A364255 n : ℚ)

end

end A364492.P2221446315685875626

namespace A364492

/-- `(A364258(n)+n)/A364255(n)` -/
def P2221446315685875626.Spec : Prop :=
  ∀ n, P2221446315685875626.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P17689917749077879885

`A243353(A180200(n))/A364255(n)`
-/

namespace A364492.P17689917749077879885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243353 (A180200 n).toNat : ℚ) / (A364255 n : ℚ)

end

end A364492.P17689917749077879885

namespace A364492

/-- `A243353(A180200(n))/A364255(n)` -/
def P17689917749077879885.Spec : Prop :=
  ∀ n, P17689917749077879885.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P12370192348277733749

`A364297(2*n)/A364255(2*n)`
-/

namespace A364492.P12370192348277733749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364297 (2 * n) : ℚ) / (A364255 (2 * n) : ℚ)

end

end A364492.P12370192348277733749

namespace A364492

/-- `A364297(2*n)/A364255(2*n)` -/
def P12370192348277733749.Spec : Prop :=
  ∀ n, P12370192348277733749.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P15568869973679837173

`A279338(A279342(n))/A364255(n)`
-/

namespace A364492.P15568869973679837173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279338 (A279342 n).toNat : ℚ) / (A364255 n : ℚ)

end

end A364492.P15568869973679837173

namespace A364492

/-- `A279338(A279342(n))/A364255(n)` -/
def P15568869973679837173.Spec : Prop :=
  ∀ n, P15568869973679837173.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P9515383074185323088

`A241916(A253563(n))/A364255(n)`
-/

namespace A364492.P9515383074185323088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 (A253563 n).toNat : ℚ) / (A364255 n : ℚ)

end

end A364492.P9515383074185323088

namespace A364492

/-- `A241916(A253563(n))/A364255(n)` -/
def P9515383074185323088.Spec : Prop :=
  ∀ n, P9515383074185323088.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P2607480658002946553

`A241916(A253563(n))/A364256(A163511(n))`
-/

namespace A364492.P2607480658002946553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 (A253563 n).toNat : ℚ) / (A364256 (A163511 n).toNat : ℚ)

end

end A364492.P2607480658002946553

namespace A364492

/-- `A241916(A253563(n))/A364256(A163511(n))` -/
def P2607480658002946553.Spec : Prop :=
  ∀ n, P2607480658002946553.a n = (A364492 n : ℚ)

end A364492

/-! ## A364492.P13904581899207864366

`A241916(A253563(n))/A364256(A364258(n)+n)`
-/

namespace A364492.P13904581899207864366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 (A253563 n).toNat : ℚ) / (A364256 (A364258 n + (n : ℤ)).toNat : ℚ)

end

end A364492.P13904581899207864366

namespace A364492

/-- `A241916(A253563(n))/A364256(A364258(n)+n)` -/
def P13904581899207864366.Spec : Prop :=
  ∀ n, P13904581899207864366.a n = (A364492 n : ℚ)

end A364492

/-!
# A364493: a(n) = A364491(n) * A364492(n).

The programs for A364493, the canonical program `A364493.P15479827431775127397` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364493 has offset 0).

The definition of A364493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364491, A364492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364493.P15479827431775127397

`A364491(n)*A364492(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A364493

/-- `A364491(n)*A364492(n)` -/
def P15479827431775127397.Spec : Prop :=
  ∀ n, P15479827431775127397.a n = A364493 n

theorem P15479827431775127397.correct : P15479827431775127397.Spec := by
  intro n
  simp only [A364493]

end A364493

/-! ## A364493.P1347282858734371088

`lcm(n, A163511(n))/A364255(n)`
-/

namespace A364493.P1347282858734371088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A163511 n) : ℚ) / (A364255 n : ℚ)

end

end A364493.P1347282858734371088

namespace A364493

/-- `lcm(n, A163511(n))/A364255(n)` -/
def P1347282858734371088.Spec : Prop :=
  ∀ n, P1347282858734371088.a n = (A364493 n : ℚ)

end A364493

/-! ## A364493.P1380681776851188769

`n/A364255(n)*A364492(n)`
-/

namespace A364493.P1380681776851188769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A364255 n : ℚ) * (A364492 n : ℚ)

end

end A364493.P1380681776851188769

namespace A364493

/-- `n/A364255(n)*A364492(n)` -/
def P1380681776851188769.Spec : Prop :=
  ∀ n, P1380681776851188769.a n = (A364493 n : ℚ)

end A364493

/-! ## A364493.P6913315805246737736

`n/gcd(n, A364258(n))*A364492(n)`
-/

namespace A364493.P6913315805246737736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A364258 n) : ℚ) * (A364492 n : ℚ)

end

end A364493.P6913315805246737736

namespace A364493

/-- `n/gcd(n, A364258(n))*A364492(n)` -/
def P6913315805246737736.Spec : Prop :=
  ∀ n, P6913315805246737736.a n = (A364493 n : ℚ)

end A364493

/-! ## A364493.P11156516051465451929

`A163511(n)/A364255(n)*A364491(n)`
-/

namespace A364493.P11156516051465451929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 n : ℚ) / (A364255 n : ℚ) * (A364491 n : ℚ)

end

end A364493.P11156516051465451929

namespace A364493

/-- `A163511(n)/A364255(n)*A364491(n)` -/
def P11156516051465451929.Spec : Prop :=
  ∀ n, P11156516051465451929.a n = (A364493 n : ℚ)

end A364493

/-! ## A364493.P17174261672763363319

`n/A364256(A163511(n))*A364492(n)`
-/

namespace A364493.P17174261672763363319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A364256 (A163511 n).toNat : ℚ) * (A364492 n : ℚ)

end

end A364493.P17174261672763363319

namespace A364493

/-- `n/A364256(A163511(n))*A364492(n)` -/
def P17174261672763363319.Spec : Prop :=
  ∀ n, P17174261672763363319.a n = (A364493 n : ℚ)

end A364493

/-!
# A364494: Numbers k such that k divides A163511(k).

The programs for A364494, there is no canonical definition to state claims against.
-/

/-! ## A364494.P10113383049219336788

`record[A364255(n)]`
-/

namespace A364494.P10113383049219336788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364494.P10113383049219336788

/-! ## A364494.P806650345105636027

`eq[1, A364491(n)]`
-/

namespace A364494.P806650345105636027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364494.P806650345105636027

/-! ## A364494.P15364102330518452913

`record[A366275(A057889(n))/A364492(n)]`
-/

namespace A364494.P15364102330518452913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366275 (A057889 n).toNat : ℚ) / (A364492 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364494.P15364102330518452913

/-! ## A364494.P16740255905265213302

`record[gcd(n, A163511(n))]`
-/

namespace A364494.P16740255905265213302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A163511 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364494.P16740255905265213302

/-! ## A364494.P12632597615900866970

`record[A163511(n)/A364492(n)]`
-/

namespace A364494.P12632597615900866970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 n : ℚ) / (A364492 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364494.P12632597615900866970

/-! ## A364494.P17843954170442842112

`eq[A254109(n), A364255(n)]`
-/

namespace A364494.P17843954170442842112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364494.P17843954170442842112

/-!
# A364495: Odd numbers k such that k divides A163511(k).

The programs for A364495, there is no canonical definition to state claims against.
-/

/-! ## A364495.P14310768299794160404

`record[A374469(A374469(n))]`
-/

namespace A364495.P14310768299794160404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374469 (A374469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364495.P14310768299794160404

/-! ## A364495.P10566167318869240546

`∩[A364494(n+1), A364561(n+1)]`
-/

namespace A364495.P10566167318869240546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364495.P10566167318869240546

/-! ## A364495.P16612770737571451769

`record[C(A364255(n), xor(1, n))]`
-/

namespace A364495.P16612770737571451769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A364255 n).toNat (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364495.P16612770737571451769

/-! ## A364495.P15640235260562326167

`record[A093178(record[A364255(n)])]`
-/

namespace A364495.P15640235260562326167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364495.P15640235260562326167

/-! ## A364495.P2793383694947940520

`record[A093411(record[A364255(n)])]`
-/

namespace A364495.P2793383694947940520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364495.P2793383694947940520

/-!
# A364496: Numbers k such that k is a multiple of A163511(k).

The programs for A364496, there is no canonical definition to state claims against.
-/

/-! ## A364496.P2176836584413193253

`eq[1, A365393(n)]`
-/

namespace A364496.P2176836584413193253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364496.P2176836584413193253

/-! ## A364496.P17744253105445495746

`eq[1, A364492(n)]`
-/

namespace A364496.P17744253105445495746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364496.P17744253105445495746

/-! ## A364496.P13359382293815348154

`record[A285327(n)]`
-/

namespace A364496.P13359382293815348154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364496.P13359382293815348154

/-! ## A364496.P12711282962332964970

`A065967(2^n)`
-/

namespace A364496.P12711282962332964970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (2 ^ n)

end

end A364496.P12711282962332964970

/-! ## A364496.P7414060539534920587

`A071045(2^n)`
-/

namespace A364496.P7414060539534920587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (2 ^ n)

end

end A364496.P7414060539534920587

/-!
# A364497: Numbers k such that k divides A243071(k).

The programs for A364497, there is no canonical definition to state claims against.
-/

/-! ## A364497.P13262870028599073663

`record[A364256(n+1)]`
-/

namespace A364497.P13262870028599073663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364497.P13262870028599073663

/-! ## A364497.P14624089840967828131

`eq[n, A364256(A028310(n))]`
-/

namespace A364497.P14624089840967828131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364256 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364497.P14624089840967828131

/-! ## A364497.P281066995942478202

`record[gcd(n+1, A243071(n+1))]`
-/

namespace A364497.P281066995942478202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A243071 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364497.P281066995942478202

/-! ## A364497.P1904154595039346073

`∩[A191281(n+1), A140951(n)]`
-/

namespace A364497.P1904154595039346073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364497.P1904154595039346073

/-! ## A364497.P17081596178841728881

`∩[A189302(n+1), A245709(n+1)]`
-/

namespace A364497.P17081596178841728881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364497.P17081596178841728881

/-!
# A364498: Odd numbers k such that k divides A243071(k).

The programs for A364498, there is no canonical definition to state claims against.
-/

/-! ## A364498.P11020360182526016279

`record[A000265(A364497(n+1))]`
-/

namespace A364498.P11020360182526016279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364498.P11020360182526016279

/-! ## A364498.P7861855452833619672

`filter[A364497(n+1), A322980(#)]`
-/

namespace A364498.P7861855452833619672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A364498.P7861855452833619672

/-!
# A364499: a(n) = A005940(n) - n.

The programs for A364499, the canonical program `A364499.P16700739225751135008` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364499 has offset 1).

The definition of A364499 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364499.P16700739225751135008

`A005940(n+1)-(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A364499

/-- `A005940(n+1)-(n+1)` -/
def P16700739225751135008.Spec : Prop :=
  ∀ n, P16700739225751135008.a n = A364499 (n + 1)

theorem P16700739225751135008.correct : P16700739225751135008.Spec := by
  intro n
  simp only [A364499, Nat.add_sub_cancel]

end A364499

/-! ## A364499.P13880095328517829277

`-A364559(A005940(n+1))`
-/

namespace A364499.P13880095328517829277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A364559 (A005940 (n + 1)).toNat

end

end A364499.P13880095328517829277

namespace A364499

/-- `-A364559(A005940(n+1))` -/
def P13880095328517829277.Spec : Prop :=
  ∀ n, P13880095328517829277.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P897493834573715512

`A366263(A193231(n))-(n+1)`
-/

namespace A364499.P897493834573715512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A193231 n).toNat - (n + 1 : ℤ)

end

end A364499.P897493834573715512

namespace A364499

/-- `A366263(A193231(n))-(n+1)` -/
def P897493834573715512.Spec : Prop :=
  ∀ n, P897493834573715512.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P4691879138351317647

`A243353(A006068(n))-(n+1)`
-/

namespace A364499.P4691879138351317647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A006068 n).toNat - (n + 1 : ℤ)

end

end A364499.P4691879138351317647

namespace A364499

/-- `A243353(A006068(n))-(n+1)` -/
def P4691879138351317647.Spec : Prop :=
  ∀ n, P4691879138351317647.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P16695113628733103832

`A279338(A279344(n))-(n+1)`
-/

namespace A364499.P16695113628733103832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 n).toNat - (n + 1 : ℤ)

end

end A364499.P16695113628733103832

namespace A364499

/-- `A279338(A279344(n))-(n+1)` -/
def P16695113628733103832.Spec : Prop :=
  ∀ n, P16695113628733103832.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P4207975236170970526

`A250246(A252753(n))-(n+1)`
-/

namespace A364499.P4207975236170970526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 n).toNat - (n + 1 : ℤ)

end

end A364499.P4207975236170970526

namespace A364499

/-- `A250246(A252753(n))-(n+1)` -/
def P4207975236170970526.Spec : Prop :=
  ∀ n, P4207975236170970526.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P11783875774520013646

`A302026(A269387(n))-(n+1)`
-/

namespace A364499.P11783875774520013646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269387 n).toNat - (n + 1 : ℤ)

end

end A364499.P11783875774520013646

namespace A364499

/-- `A302026(A269387(n))-(n+1)` -/
def P11783875774520013646.Spec : Prop :=
  ∀ n, P11783875774520013646.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P7691613167023539695

`A108548(A332815(n))-(n+1)`
-/

namespace A364499.P7691613167023539695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A332815 n).toNat - (n + 1 : ℤ)

end

end A364499.P7691613167023539695

namespace A364499

/-- `A108548(A332815(n))-(n+1)` -/
def P7691613167023539695.Spec : Prop :=
  ∀ n, P7691613167023539695.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P2312594580490373456

`A091203(A305417(n))-(n+1)`
-/

namespace A364499.P2312594580490373456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A305417 n).toNat - (n + 1 : ℤ)

end

end A364499.P2312594580490373456

namespace A364499

/-- `A091203(A305417(n))-(n+1)` -/
def P2312594580490373456.Spec : Prop :=
  ∀ n, P2312594580490373456.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P6751084697381450915

`A246367(A227413(n+1))-(n+1)`
-/

namespace A364499.P6751084697381450915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246367 (A227413 (n + 1)).toNat - (n + 1 : ℤ)

end

end A364499.P6751084697381450915

namespace A364499

/-- `A246367(A227413(n+1))-(n+1)` -/
def P6751084697381450915.Spec : Prop :=
  ∀ n, P6751084697381450915.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P12694121077014728109

`A064216(A244154(n))-(n+1)`
-/

namespace A364499.P12694121077014728109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A244154 n).toNat - (n + 1 : ℤ)

end

end A364499.P12694121077014728109

namespace A364499

/-- `A064216(A244154(n))-(n+1)` -/
def P12694121077014728109.Spec : Prop :=
  ∀ n, P12694121077014728109.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P8480412085985268244

`A241916(A253565(n))-(n+1)`
-/

namespace A364499.P8480412085985268244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A253565 n).toNat - (n + 1 : ℤ)

end

end A364499.P8480412085985268244

namespace A364499

/-- `A241916(A253565(n))-(n+1)` -/
def P8480412085985268244.Spec : Prop :=
  ∀ n, P8480412085985268244.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P2815231953357571832

`A275734(A276082(n))-(n+1)`
-/

namespace A364499.P2815231953357571832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 (A276082 n).toNat - (n + 1 : ℤ)

end

end A364499.P2815231953357571832

namespace A364499

/-- `A275734(A276082(n))-(n+1)` -/
def P2815231953357571832.Spec : Prop :=
  ∀ n, P2815231953357571832.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P201331786366515571

`A302024(A052330(n))-(n+1)`
-/

namespace A364499.P201331786366515571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (A052330 n).toNat - (n + 1 : ℤ)

end

end A364499.P201331786366515571

namespace A364499

/-- `A302024(A052330(n))-(n+1)` -/
def P201331786366515571.Spec : Prop :=
  ∀ n, P201331786366515571.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P7409682278095168893

`A366263(A156552(A366263(n)))-(n+1)`
-/

namespace A364499.P7409682278095168893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A156552 (A366263 n).toNat).toNat - (n + 1 : ℤ)

end

end A364499.P7409682278095168893

namespace A364499

/-- `A366263(A156552(A366263(n)))-(n+1)` -/
def P7409682278095168893.Spec : Prop :=
  ∀ n, P7409682278095168893.a n = A364499 (n + 1)

end A364499

/-! ## A364499.P7221488813152901150

`A122111(A253563(n))-(n+1)`
-/

namespace A364499.P7221488813152901150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253563 n).toNat - (n + 1 : ℤ)

end

end A364499.P7221488813152901150

namespace A364499

/-- `A122111(A253563(n))-(n+1)` -/
def P7221488813152901150.Spec : Prop :=
  ∀ n, P7221488813152901150.a n = A364499 (n + 1)

end A364499


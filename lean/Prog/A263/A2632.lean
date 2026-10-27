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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A263200: Number of perfect matchings on a Möbius strip of width 3 and length 2n.

The programs for A263200, the canonical program `A263200.P4916049120274623821` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263200 has offset 2).

The definition of A263200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263200.P4916049120274623821

`4*a(n-1)-a(n-2)` with `a(0)=28, a(1)=104`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263200

/-- `4*a(n-1)-a(n-2)` -/
def P4916049120274623821.Spec : Prop :=
  ∀ n, P4916049120274623821.a n = A263200 (n + 2)

theorem P4916049120274623821.correct : P4916049120274623821.Spec := by
  intro n
  simp only [A263200, Nat.add_sub_cancel]

end A263200

/-! ## A263200.P14667447928515730944

`4*A001075(n+2)`
-/

namespace A263200.P14667447928515730944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001075 (n + 2)

end

end A263200.P14667447928515730944

namespace A263200

/-- `4*A001075(n+2)` -/
def P14667447928515730944.Spec : Prop :=
  ∀ n, P14667447928515730944.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P14962489137031182700

`Δ[ogf((10-2x)/(1-4x+x^2))]`
-/

namespace A263200.P14962489137031182700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P14962489137031182700

namespace A263200

/-- `Δ[ogf((10-2x)/(1-4x+x^2))]` -/
def P14962489137031182700.Spec : Prop :=
  ∀ n, P14962489137031182700.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P1060497986567046106

`Δ[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=10`
-/

namespace A263200.P1060497986567046106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P1060497986567046106

namespace A263200

/-- `Δ[ceil((sqrt(3)+2)*a(n-1))]` -/
def P1060497986567046106.Spec : Prop :=
  ∀ n, P1060497986567046106.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P5113723358441536618

`2*A003500(n+2)`
-/

namespace A263200.P5113723358441536618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003500 (n + 2)

end

end A263200.P5113723358441536618

namespace A263200

/-- `2*A003500(n+2)` -/
def P5113723358441536618.Spec : Prop :=
  ∀ n, P5113723358441536618.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P7447142029242738514

`A321119(2*(n+2))`
-/

namespace A263200.P7447142029242738514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * (n + 2))

end

end A263200.P7447142029242738514

namespace A263200

/-- `A321119(2*(n+2))` -/
def P7447142029242738514.Spec : Prop :=
  ∀ n, P7447142029242738514.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P1616509259660041071

`A102091(n+2)-4`
-/

namespace A263200.P1616509259660041071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102091 (n + 2) - 4

end

end A263200.P1616509259660041071

namespace A263200

/-- `A102091(n+2)-4` -/
def P1616509259660041071.Spec : Prop :=
  ∀ n, P1616509259660041071.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P11399934619487538336

`Δ[2*Δ[A102206(n)]]`
-/

namespace A263200.P11399934619487538336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P11399934619487538336

namespace A263200

/-- `Δ[2*Δ[A102206(n)]]` -/
def P11399934619487538336.Spec : Prop :=
  ∀ n, P11399934619487538336.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P10195991172566582047

`Δ[2*A001834(n+1)]`
-/

namespace A263200.P10195991172566582047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P10195991172566582047

namespace A263200

/-- `Δ[2*A001834(n+1)]` -/
def P10195991172566582047.Spec : Prop :=
  ∀ n, P10195991172566582047.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P10437659460121303506

`Δ[4*A001571(n+1)]`
-/

namespace A263200.P10437659460121303506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P10437659460121303506

namespace A263200

/-- `Δ[4*A001571(n+1)]` -/
def P10437659460121303506.Spec : Prop :=
  ∀ n, P10437659460121303506.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P17368640259707416439

`Δ[4*A082840(n+1)]`
-/

namespace A263200.P17368640259707416439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P17368640259707416439

namespace A263200

/-- `Δ[4*A082840(n+1)]` -/
def P17368640259707416439.Spec : Prop :=
  ∀ n, P17368640259707416439.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P9941333103126263753

`Δ[4*A102871(n+1)]`
-/

namespace A263200.P9941333103126263753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P9941333103126263753

namespace A263200

/-- `Δ[4*A102871(n+1)]` -/
def P9941333103126263753.Spec : Prop :=
  ∀ n, P9941333103126263753.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P11922497390662462127

`Δ[4*A179167(n+2)]`
-/

namespace A263200.P11922497390662462127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A179167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P11922497390662462127

namespace A263200

/-- `Δ[4*A179167(n+2)]` -/
def P11922497390662462127.Spec : Prop :=
  ∀ n, P11922497390662462127.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P11705979752961938746

`Δ[A321119(n+3+n)]`
-/

namespace A263200.P11705979752961938746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P11705979752961938746

namespace A263200

/-- `Δ[A321119(n+3+n)]` -/
def P11705979752961938746.Spec : Prop :=
  ∀ n, P11705979752961938746.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P4881610330849208069

`2*(A016064(n+2)+1)`
-/

namespace A263200.P4881610330849208069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016064 (n + 2) + 1)

end

end A263200.P4881610330849208069

namespace A263200

/-- `2*(A016064(n+2)+1)` -/
def P4881610330849208069.Spec : Prop :=
  ∀ n, P4881610330849208069.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P7299797505123298547

`2*(A129743(n+2)+2)`
-/

namespace A263200.P7299797505123298547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A129743 (n + 2) + 2)

end

end A263200.P7299797505123298547

namespace A263200

/-- `2*(A129743(n+2)+2)` -/
def P7299797505123298547.Spec : Prop :=
  ∀ n, P7299797505123298547.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P8058816451528205429

`2*(A335025(n+2)-1)`
-/

namespace A263200.P8058816451528205429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A335025 (n + 2) - 1)

end

end A263200.P8058816451528205429

namespace A263200

/-- `2*(A335025(n+2)-1)` -/
def P8058816451528205429.Spec : Prop :=
  ∀ n, P8058816451528205429.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P7447572182190242598

`2/3*A334277(n+2)`
-/

namespace A263200.P7447572182190242598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A334277 (n + 2) : ℚ)

end

end A263200.P7447572182190242598

namespace A263200

/-- `2/3*A334277(n+2)` -/
def P7447572182190242598.Spec : Prop :=
  ∀ n, P7447572182190242598.a n = (A263200 (n + 2) : ℚ)

end A263200

/-! ## A263200.P11781649332750976724

`Δ[2*Δ[A092184(n+1)]]`
-/

namespace A263200.P11781649332750976724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P11781649332750976724

namespace A263200

/-- `Δ[2*Δ[A092184(n+1)]]` -/
def P11781649332750976724.Spec : Prop :=
  ∀ n, P11781649332750976724.a n = A263200 (n + 2)

end A263200

/-! ## A263200.P7096989976696559979

`Δ[2*Δ[A121401(n+1)]]`
-/

namespace A263200.P7096989976696559979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263200.P7096989976696559979

namespace A263200

/-- `Δ[2*Δ[A121401(n+1)]]` -/
def P7096989976696559979.Spec : Prop :=
  ∀ n, P7096989976696559979.a n = A263200 (n + 2)

end A263200

/-!
# A263204: Number of twin prime pairs between n^2 and (n+2)^2.

The programs for A263204, the canonical program `A263204.P2115118568935714077` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263204 has offset 1).

The definition of A263204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263204.P2115118568935714077

`A071538((n+3)²)-A071538((n+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A263204

/-- `A071538((n+3)²)-A071538((n+1)²)` -/
def P2115118568935714077.Spec : Prop :=
  ∀ n, P2115118568935714077.a n = A263204 (n + 1)

theorem P2115118568935714077.correct : P2115118568935714077.Spec := by
  intro n
  simp only [A263204, Nat.add_sub_cancel]

end A263204

/-!
# A263206: Number of primes p with n^2 < prime(p) < (n+2)^2.

The programs for A263206, there is no canonical definition to state claims against.
-/

/-! ## A263206.P14483925797091954069

`A230980(A038107(n+3))-A230980(A038107(n+1))`
-/

namespace A263206.P14483925797091954069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A038107 (n + 3)).toNat - A230980 (A038107 (n + 1)).toNat

end

end A263206.P14483925797091954069

/-! ## A263206.P4972296810209500821

`A132090((n+3)²)-A132090((n+1)²)`
-/

namespace A263206.P4972296810209500821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 ((n + 3) ^ 2) - A132090 ((n + 1) ^ 2)

end

end A263206.P4972296810209500821

/-! ## A263206.P15039980531395799232

`A318369(A318350(n+1))+A318369(A005709(n))`
-/

namespace A263206.P15039980531395799232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318369 (A318350 (n + 1)).toNat + A318369 (A005709 n).toNat

end

end A263206.P15039980531395799232

/-!
# A263207: Number of integer solutions for Product_{k=1..n}(c(k) + 1) = 2 * Product_{k=1..n}(c(k) - 1) with 1 < c(k) <= c(k+1).

The programs for A263207, there is no canonical definition to state claims against.
-/

/-! ## A263207.P12607192150869412370

`A020344(a(n-1)²)+1` with `a(0)=0`
-/

namespace A263207.P12607192150869412370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020344 (a (n - 1) ^ 2).toNat + 1

end

end A263207.P12607192150869412370

/-!
# A263212: Number of (n+3)X(1+3) 0..1 arrays with each row and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263212, there is no canonical definition to state claims against.
-/

/-! ## A263212.P3035435755103738242

`A263215(∑[n]+1)`
-/

namespace A263212.P3035435755103738242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263212.P3035435755103738242

/-! ## A263212.P7684592542843617065

`or(2, A263215(A000124(n)))`
-/

namespace A263212.P7684592542843617065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A263215 (A000124 n).toNat)

end

end A263212.P7684592542843617065

/-! ## A263212.P12688692030386386922

`record[A010054(n)*A263215(n+1)]`
-/

namespace A263212.P12688692030386386922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263212.P12688692030386386922

/-! ## A263212.P6625721569087542142

`record[A263215(n+1)/A022166(n)]`
-/

namespace A263212.P6625721569087542142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263215 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263212.P6625721569087542142

/-! ## A263212.P7737021726157123665

`record[gcd(A002262(n), A263215(n+1))]`
-/

namespace A263212.P7737021726157123665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263215 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263212.P7737021726157123665

/-!
# A263213: Number of (n+3)X(2+3) 0..1 arrays with each row and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263213, there is no canonical definition to state claims against.
-/

/-! ## A263213.P15357610331049708405

`A263215(∑[n+1]+2)`
-/

namespace A263213.P15357610331049708405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263213.P15357610331049708405

/-! ## A263213.P17878707571489018717

`record[A010054(n)*A263215(n+2)]`
-/

namespace A263213.P17878707571489018717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263213.P17878707571489018717

/-! ## A263213.P12545643945390779081

`record[gcd(A002262(n), A263215(n+2))]`
-/

namespace A263213.P12545643945390779081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263215 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263213.P12545643945390779081

/-! ## A263213.P5782210959090158370

`record[A263215(abs(A201163(n)))]`
-/

namespace A263213.P5782210959090158370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263215 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263213.P5782210959090158370

/-!
# A263214: Number of (n+3)X(3+3) 0..1 arrays with each row and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263214, there is no canonical definition to state claims against.
-/

/-! ## A263214.P326092752827361097

`A263215(∑[n+2]+4)`
-/

namespace A263214.P326092752827361097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263214.P326092752827361097

/-!
# A263217: Number of (n+1)X(n+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263217, there is no canonical definition to state claims against.
-/

/-! ## A263217.P14457606086307523522

`A263224((n+1)²+n²)`
-/

namespace A263217.P14457606086307523522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 ((n + 1) ^ 2 + n ^ 2)

end

end A263217.P14457606086307523522

/-!
# A263218: Number of (n+1)X(2+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263218, there is no canonical definition to state claims against.
-/

/-! ## A263218.P16480781010032892902

`A263224(∑[n+1]+2)`
-/

namespace A263218.P16480781010032892902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263218.P16480781010032892902

/-! ## A263218.P11117625343779532006

`record[A010054(n)*A263224(n+2)]`
-/

namespace A263218.P11117625343779532006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263218.P11117625343779532006

/-! ## A263218.P6117451148576804421

`record[A263224(abs(A201163(n)))]`
-/

namespace A263218.P6117451148576804421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263218.P6117451148576804421

/-! ## A263218.P17315116259526108861

`record[root(A263224(n+2), A262472(n+1))]`
-/

namespace A263218.P17315116259526108861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263224 (n + 2) : ℝ) ^ (1 / (A262472 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263218.P17315116259526108861

/-! ## A263218.P5680538628541714280

`A263224(A133263(n+1))%A159583(n+1)`
-/

namespace A263218.P5680538628541714280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263224 (A133263 (n + 1)).toNat) (A159583 (n + 1))

end

end A263218.P5680538628541714280

/-!
# A263219: Number of (n+1)X(3+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263219, there is no canonical definition to state claims against.
-/

/-! ## A263219.P1025226700436950122

`A263224(∑[n+2]+4)`
-/

namespace A263219.P1025226700436950122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263219.P1025226700436950122

/-! ## A263219.P17349832509666636106

`A063435(n)*A263224(A167614(n+1))`
-/

namespace A263219.P17349832509666636106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A263224 (A167614 (n + 1)).toNat

end

end A263219.P17349832509666636106

/-! ## A263219.P6851921424780207563

`lcm(A097807(n), A263224(A167614(n+1)))`
-/

namespace A263219.P6851921424780207563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A263224 (A167614 (n + 1)).toNat)

end

end A263219.P6851921424780207563

/-! ## A263219.P2109679399594881970

`A263224(A167614(n+1))+A070140(n+1)`
-/

namespace A263219.P2109679399594881970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A167614 (n + 1)).toNat + A070140 (n + 1)

end

end A263219.P2109679399594881970

/-! ## A263219.P18360285240991946384

`A001511(2*n+1)*A263224(A167614(n+1))`
-/

namespace A263219.P18360285240991946384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A263224 (A167614 (n + 1)).toNat

end

end A263219.P18360285240991946384

/-!
# A263220: Number of (n+1)X(4+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263220, there is no canonical definition to state claims against.
-/

/-! ## A263220.P9078407421147327109

`A263224(A374004(n+1))`
-/

namespace A263220.P9078407421147327109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A374004 (n + 1)).toNat

end

end A263220.P9078407421147327109

/-! ## A263220.P12047853942234582672

`A263224(A141214(n)+7)`
-/

namespace A263220.P12047853942234582672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A141214 n + 7).toNat

end

end A263220.P12047853942234582672

/-! ## A263220.P11386413133850170224

`A263224(A052905(n)+9)`
-/

namespace A263220.P11386413133850170224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A052905 n + 9).toNat

end

end A263220.P11386413133850170224

/-! ## A263220.P4429892921910875740

`A263224(A055999(n)+10)`
-/

namespace A263220.P4429892921910875740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A055999 n + 10).toNat

end

end A263220.P4429892921910875740

/-! ## A263220.P8285463638052446188

`A263224(A167614(n+2)+1)`
-/

namespace A263220.P8285463638052446188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A167614 (n + 2) + 1).toNat

end

end A263220.P8285463638052446188

/-!
# A263221: Number of (n+1) X (5+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263221, there is no canonical definition to state claims against.
-/

/-! ## A263221.P12074979930684967451

`A263224(A374005(n+1))`
-/

namespace A263221.P12074979930684967451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A374005 (n + 1)).toNat

end

end A263221.P12074979930684967451

/-! ## A263221.P7819374804394257758

`A263224(A167499(n+3))`
-/

namespace A263221.P7819374804394257758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A167499 (n + 3)).toNat

end

end A263221.P7819374804394257758

/-! ## A263221.P7503095939920848948

`A263224(A000096(n+3)+6)`
-/

namespace A263221.P7503095939920848948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A000096 (n + 3) + 6).toNat

end

end A263221.P7503095939920848948

/-! ## A263221.P14200880969566938259

`A263224(eq[6, A131818(n+1)])`
-/

namespace A263221.P14200880969566938259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263221.P14200880969566938259

/-! ## A263221.P1924401009837296242

`A263224(Δ[A264443(n)])`
-/

namespace A263221.P1924401009837296242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (f1 (n + 1) - f1 n).toNat

end

end A263221.P1924401009837296242

/-!
# A263222: Number of (n+1)X(6+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263222, there is no canonical definition to state claims against.
-/

/-! ## A263222.P14686274714350414075

`A263224(A374007(n+1))`
-/

namespace A263222.P14686274714350414075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A374007 (n + 1)).toNat

end

end A263222.P14686274714350414075

/-! ## A263222.P16772633330383121123

`A263224(A166136(n+4))`
-/

namespace A263222.P16772633330383121123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A166136 (n + 4)).toNat

end

end A263222.P16772633330383121123

/-! ## A263222.P2639181486673138460

`A263224(A052905(n+3))`
-/

namespace A263222.P2639181486673138460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A052905 (n + 3)).toNat

end

end A263222.P2639181486673138460

/-! ## A263222.P17080072361937613570

`A263224(Δ[A264443(n+1)]-1)`
-/

namespace A263222.P17080072361937613570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (f1 (n + 1) - f1 n - 1).toNat

end

end A263222.P17080072361937613570

/-!
# A263223: Number of (n+1)X(7+1) 0..2 arrays with each row and column divisible by 5, read as a base-3 number with top and left being the most significant digits.

The programs for A263223, there is no canonical definition to state claims against.
-/

/-! ## A263223.P16776708399757393427

`A263224(A374008(n+1))`
-/

namespace A263223.P16776708399757393427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A374008 (n + 1)).toNat

end

end A263223.P16776708399757393427

/-! ## A263223.P1335993428288792928

`A263224(A055999(n+4))`
-/

namespace A263223.P1335993428288792928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (A055999 (n + 4)).toNat

end

end A263223.P1335993428288792928

/-! ## A263223.P10438168488607164005

`A263224(eq[4, A219347(n)])`
-/

namespace A263223.P10438168488607164005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263223.P10438168488607164005

/-!
# A263226: a(n) = 15*n^2 - 13*n.

The programs for A263226, the canonical program `A263226.P10219769499938942172` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263226 has offset 0).

The definition of A263226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²-13*n` (program `A263226.P10219769499938942172`, by `A263226.P10219769499938942172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263226.P10219769499938942172

`15*n²-13*n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263226

/-- `15*n²-13*n` -/
def P10219769499938942172.Spec : Prop :=
  ∀ n, P10219769499938942172.a n = A263226 n

theorem P10219769499938942172.correct : P10219769499938942172.Spec := by
  intro n
  simp only [A263226]

end A263226

/-! ## A263226.P13025142854250441079

`∑[a(n-1)+30]` with `a(0)=0, a(1)=2`
-/

namespace A263226.P13025142854250441079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263226.P13025142854250441079

namespace A263226

/-- `∑[a(n-1)+30]` -/
def P13025142854250441079.Spec : Prop :=
  ∀ n, (P13025142854250441079.a n : ℤ) = A263226 n

end A263226

/-! ## A263226.P13836470311985805353

`2*A051869(n)`
-/

namespace A263226.P13836470311985805353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051869 n

end

end A263226.P13836470311985805353

namespace A263226

/-- `2*A051869(n)` -/
def P13836470311985805353.Spec : Prop :=
  ∀ n, P13836470311985805353.a n = A263226 n

end A263226

/-! ## A263226.P14510339034290417476

`2*(A226489(n)-n)`
-/

namespace A263226.P14510339034290417476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A226489 n - (n : ℤ))

end

end A263226.P14510339034290417476

namespace A263226

/-- `2*(A226489(n)-n)` -/
def P14510339034290417476.Spec : Prop :=
  ∀ n, P14510339034290417476.a n = A263226 n

end A263226

/-! ## A263226.P6144422533620835433

`2*A303305(comp[2*(n+1)])`
-/

namespace A263226.P6144422533620835433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A263226.P6144422533620835433

namespace A263226

/-- `2*A303305(comp[2*(n+1)])` -/
def P6144422533620835433.Spec : Prop :=
  ∀ n, P6144422533620835433.a n = A263226 n

end A263226

/-!
# A263227: a(n) = n*(67*n - 89)/2.

The programs for A263227, the canonical program `A263227.P757566438033262057` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263227 has offset 0).

The definition of A263227 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(67*n-89)/2` (program `A263227.P4594135087229785596`, by `A263227.P4594135087229785596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263227.P4594135087229785596

`n*(67*n-89)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263227.P4594135087229785596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((67 * n : ℤ) - 89) : ℚ) / 2

end

end A263227.P4594135087229785596

namespace A263227

/-- `n*(67*n-89)/2` -/
def P4594135087229785596.Spec : Prop :=
  ∀ n, P4594135087229785596.a n = (A263227 n : ℚ)

theorem P4594135087229785596.correct : P4594135087229785596.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A263227, Nat.add_sub_cancel, A263227.P4594135087229785596.a, A263227.P757566438033262057.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A263227, Nat.add_sub_cancel, A263227.P4594135087229785596.a, A263227.P757566438033262057.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A263227

/-! ## A263227.P757566438033262057

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=-11, a(2)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263227

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P757566438033262057.Spec : Prop :=
  ∀ n, P757566438033262057.a n = A263227 n

theorem P757566438033262057.correct : P757566438033262057.Spec := by
  intro n
  simp only [A263227]

end A263227

/-! ## A263227.P5884749038374504836

`78-∑[a(n-1)-67]` with `a(0)=78`
-/

namespace A263227.P5884749038374504836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [78] fun n f1 =>
  f1 (n - 1) - 67

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  78 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263227.P5884749038374504836

namespace A263227

/-- `78-∑[a(n-1)-67]` -/
def P5884749038374504836.Spec : Prop :=
  ∀ n, P5884749038374504836.a n = A263227 n

end A263227

/-! ## A263227.P12388464272057231490

`12*A326725(n)+7*C(n, 2)+n`
-/

namespace A263227.P12388464272057231490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A326725 n + (7 * Nat.choose n 2 + n : ℤ)

end

end A263227.P12388464272057231490

namespace A263227

/-- `12*A326725(n)+7*C(n, 2)+n` -/
def P12388464272057231490.Spec : Prop :=
  ∀ n, P12388464272057231490.a n = A263227 n

end A263227

/-! ## A263227.P16075501056720611770

`A098230(n)-A277978(n)`
-/

namespace A263227.P16075501056720611770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098230 n - A277978 n

end

end A263227.P16075501056720611770

namespace A263227

/-- `A098230(n)-A277978(n)` -/
def P16075501056720611770.Spec : Prop :=
  ∀ n, P16075501056720611770.a n = A263227 n

end A263227

/-! ## A263227.P1043944502821535018

`A153875(n)+A261191(n)-A139578(n)`
-/

namespace A263227.P1043944502821535018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n + (A261191 n - A139578 n)

end

end A263227.P1043944502821535018

namespace A263227

/-- `A153875(n)+A261191(n)-A139578(n)` -/
def P1043944502821535018.Spec : Prop :=
  ∀ n, P1043944502821535018.a n = A263227 n

end A263227

/-! ## A263227.P5062748799030120705

`A098230(n)-A008588(A000096(n))`
-/

namespace A263227.P5062748799030120705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098230 n - A008588 (A000096 n).toNat

end

end A263227.P5062748799030120705

namespace A263227

/-- `A098230(n)-A008588(A000096(n))` -/
def P5062748799030120705.Spec : Prop :=
  ∀ n, P5062748799030120705.a n = A263227 n

end A263227

/-! ## A263227.P14347445205746345786

`A098230(n)-A008585(A028552(n))`
-/

namespace A263227.P14347445205746345786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098230 n - A008585 (A028552 n).toNat

end

end A263227.P14347445205746345786

namespace A263227

/-- `A098230(n)-A008585(A028552(n))` -/
def P14347445205746345786.Spec : Prop :=
  ∀ n, P14347445205746345786.a n = A263227 n

end A263227

/-!
# A263228: a(n) = 2*n*(16*n - 13).

The programs for A263228, the canonical program `A263228.P10959549478456600720` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263228 has offset 0).

The definition of A263228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(16*n-13)` (program `A263228.P10959549478456600720`, by `A263228.P10959549478456600720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263228.P16888165835224276099

`32*n²-26*n`
-/

namespace A263228.P16888165835224276099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n ^ 2 : ℤ) - (26 * n : ℤ)

end

end A263228.P16888165835224276099

namespace A263228

/-- `32*n²-26*n` -/
def P16888165835224276099.Spec : Prop :=
  ∀ n, P16888165835224276099.a n = A263228 n

theorem P16888165835224276099.correct : P16888165835224276099.Spec := by
  intro n
  simp only [A263228, Nat.add_sub_cancel, A263228.P16888165835224276099.a, A263228.P10959549478456600720.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A263228

/-! ## A263228.P10959549478456600720

`2*n*(16*n-13)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263228

/-- `2*n*(16*n-13)` -/
def P10959549478456600720.Spec : Prop :=
  ∀ n, P10959549478456600720.a n = A263228 n

theorem P10959549478456600720.correct : P10959549478456600720.Spec := by
  intro n
  simp only [A263228]

end A263228

/-! ## A263228.P1868812255545808131

`∑[a(n-1)+64]` with `a(0)=0, a(1)=6`
-/

namespace A263228.P1868812255545808131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263228.P1868812255545808131

namespace A263228

/-- `∑[a(n-1)+64]` -/
def P1868812255545808131.Spec : Prop :=
  ∀ n, (P1868812255545808131.a n : ℤ) = A263228 n

end A263228

/-!
# A263229: a(n) = 4*n*(21*n - 26).

The programs for A263229, the canonical program `A263229.P7983867135012197287` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263229 has offset 0).

The definition of A263229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(21*n-26)` (program `A263229.P7983867135012197287`, by `A263229.P7983867135012197287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263229.P18126670936005164419

`84*n²-104*n`
-/

namespace A263229.P18126670936005164419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (84 * n ^ 2 : ℤ) - (104 * n : ℤ)

end

end A263229.P18126670936005164419

namespace A263229

/-- `84*n²-104*n` -/
def P18126670936005164419.Spec : Prop :=
  ∀ n, P18126670936005164419.a n = A263229 n

theorem P18126670936005164419.correct : P18126670936005164419.Spec := by
  intro n
  simp only [A263229, Nat.add_sub_cancel, A263229.P18126670936005164419.a, A263229.P7983867135012197287.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A263229

/-! ## A263229.P7983867135012197287

`4*n*(21*n-26)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263229

/-- `4*n*(21*n-26)` -/
def P7983867135012197287.Spec : Prop :=
  ∀ n, P7983867135012197287.a n = A263229 n

theorem P7983867135012197287.correct : P7983867135012197287.Spec := by
  intro n
  simp only [A263229]

end A263229

/-!
# A263230: Triangle read by rows: T(n,k) is the number of graphs with n vertices and k spanning forests.

The programs for A263230, there is no canonical definition to state claims against.
-/

/-! ## A263230.P15868254545893106030

`A005940(n+1)%A180597(A328097(2*(n+1)))`
-/

namespace A263230.P15868254545893106030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (n + 1)) (A180597 (A328097 (2 * (n + 1))).toNat)

end

end A263230.P15868254545893106030

/-!
# A263231: a(n) = n*(25*n - 39)/2.

The programs for A263231, the canonical program `A263231.P18029044682470281833` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263231 has offset 0).

The definition of A263231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n-39)/2` (program `A263231.P5738324296609849998`, by `A263231.P5738324296609849998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263231.P5738324296609849998

`n*(25*n-39)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263231.P5738324296609849998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((25 * n : ℤ) - 39) : ℚ) / 2

end

end A263231.P5738324296609849998

namespace A263231

/-- `n*(25*n-39)/2` -/
def P5738324296609849998.Spec : Prop :=
  ∀ n, P5738324296609849998.a n = (A263231 n : ℚ)

theorem P5738324296609849998.correct : P5738324296609849998.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A263231, Nat.add_sub_cancel, A263231.P5738324296609849998.a, A263231.P18029044682470281833.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A263231, Nat.add_sub_cancel, A263231.P5738324296609849998.a, A263231.P18029044682470281833.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A263231

/-! ## A263231.P18029044682470281833

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=-7, a(2)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263231

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18029044682470281833.Spec : Prop :=
  ∀ n, P18029044682470281833.a n = A263231 n

theorem P18029044682470281833.correct : P18029044682470281833.Spec := by
  intro n
  simp only [A263231]

end A263231

/-! ## A263231.P4034647853564553003

`∑[a(n-1)+25]` with `a(0)=0, a(1)=-7`
-/

namespace A263231.P4034647853564553003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -7] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263231.P4034647853564553003

namespace A263231

/-- `∑[a(n-1)+25]` -/
def P4034647853564553003.Spec : Prop :=
  ∀ n, P4034647853564553003.a n = A263231 n

end A263231

/-! ## A263231.P8779356758029158486

`25*C(n, 2)+n-8*n`
-/

namespace A263231.P8779356758029158486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * Nat.choose n 2 + n : ℤ) - (8 * n : ℤ)

end

end A263231.P8779356758029158486

namespace A263231

/-- `25*C(n, 2)+n-8*n` -/
def P8779356758029158486.Spec : Prop :=
  ∀ n, P8779356758029158486.a n = A263231 n

end A263231

/-! ## A263231.P11631947632629536839

`A022282(n)-A008601(n)`
-/

namespace A263231.P11631947632629536839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n - A008601 n

end

end A263231.P11631947632629536839

namespace A263231

/-- `A022282(n)-A008601(n)` -/
def P11631947632629536839.Spec : Prop :=
  ∀ n, P11631947632629536839.a n = A263231 n

end A263231

/-! ## A263231.P13311650209449602114

`A022283(n)-A008602(n)`
-/

namespace A263231.P13311650209449602114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n - A008602 n

end

end A263231.P13311650209449602114

namespace A263231

/-- `A022283(n)-A008602(n)` -/
def P13311650209449602114.Spec : Prop :=
  ∀ n, P13311650209449602114.a n = A263231 n

end A263231

/-! ## A263231.P11239626839560025690

`A080857(n)-A017533(n)`
-/

namespace A263231.P11239626839560025690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n - A017533 n

end

end A263231.P11239626839560025690

namespace A263231

/-- `A080857(n)-A017533(n)` -/
def P11239626839560025690.Spec : Prop :=
  ∀ n, P11239626839560025690.a n = A263231 n

end A263231

/-! ## A263231.P14783642365535732918

`A022285(n)-A120071(n)`
-/

namespace A263231.P14783642365535732918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - A120071 n

end

end A263231.P14783642365535732918

namespace A263231

/-- `A022285(n)-A120071(n)` -/
def P14783642365535732918.Spec : Prop :=
  ∀ n, P14783642365535732918.a n = A263231 n

end A263231

/-! ## A263231.P16514386300012257228

`A144312(n)-A008604(n)`
-/

namespace A263231.P16514386300012257228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n - A008604 n

end

end A263231.P16514386300012257228

namespace A263231

/-- `A144312(n)-A008604(n)` -/
def P16514386300012257228.Spec : Prop :=
  ∀ n, P16514386300012257228.a n = A263231 n

end A263231

/-! ## A263231.P12018458542989533244

`A022284(n)-A132762(n)`
-/

namespace A263231.P12018458542989533244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n - A132762 n

end

end A263231.P12018458542989533244

namespace A263231

/-- `A022284(n)-A132762(n)` -/
def P12018458542989533244.Spec : Prop :=
  ∀ n, P12018458542989533244.a n = A263231 n

end A263231

/-! ## A263231.P11874816792746333221

`A022286(n)-A139581(n)`
-/

namespace A263231.P11874816792746333221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n - A139581 n

end

end A263231.P11874816792746333221

namespace A263231

/-- `A022286(n)-A139581(n)` -/
def P11874816792746333221.Spec : Prop :=
  ∀ n, P11874816792746333221.a n = A263231 n

end A263231

/-! ## A263231.P18046015713761012639

`A153785(n)-A008594(n)`
-/

namespace A263231.P18046015713761012639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n - A008594 n

end

end A263231.P18046015713761012639

namespace A263231

/-- `A153785(n)-A008594(n)` -/
def P18046015713761012639.Spec : Prop :=
  ∀ n, P18046015713761012639.a n = A263231 n

end A263231

/-! ## A263231.P2380138761337860895

`A022289(n)-A140689(n)`
-/

namespace A263231.P2380138761337860895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n - A140689 n

end

end A263231.P2380138761337860895

namespace A263231

/-- `A022289(n)-A140689(n)` -/
def P2380138761337860895.Spec : Prop :=
  ∀ n, P2380138761337860895.a n = A263231 n

end A263231

/-! ## A263231.P9842890166773114439

`A153783(n)-A028569(n)`
-/

namespace A263231.P9842890166773114439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n - A028569 n

end

end A263231.P9842890166773114439

namespace A263231

/-- `A153783(n)-A028569(n)` -/
def P9842890166773114439.Spec : Prop :=
  ∀ n, P9842890166773114439.a n = A263231 n

end A263231

/-! ## A263231.P11612791156482561419

`A161935(n)-A056121(n)`
-/

namespace A263231.P11612791156482561419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n - A056121 n

end

end A263231.P11612791156482561419

namespace A263231

/-- `A161935(n)-A056121(n)` -/
def P11612791156482561419.Spec : Prop :=
  ∀ n, P11612791156482561419.a n = A263231 n

end A263231

/-! ## A263231.P14287714774851245438

`A098230(n)-A153808(n)`
-/

namespace A263231.P14287714774851245438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098230 n - A153808 n

end

end A263231.P14287714774851245438

namespace A263231

/-- `A098230(n)-A153808(n)` -/
def P14287714774851245438.Spec : Prop :=
  ∀ n, P14287714774851245438.a n = A263231 n

end A263231

/-! ## A263231.P13323287641307585346

`A255186(n)-A008590(n)`
-/

namespace A263231.P13323287641307585346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n - A008590 n

end

end A263231.P13323287641307585346

namespace A263231

/-- `A255186(n)-A008590(n)` -/
def P13323287641307585346.Spec : Prop :=
  ∀ n, P13323287641307585346.a n = A263231 n

end A263231

/-! ## A263231.P4992046423808961408

`A255187(n)-A028563(n)`
-/

namespace A263231.P4992046423808961408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n - A028563 n

end

end A263231.P4992046423808961408

namespace A263231

/-- `A255187(n)-A028563(n)` -/
def P4992046423808961408.Spec : Prop :=
  ∀ n, P4992046423808961408.a n = A263231 n

end A263231

/-! ## A263231.P12892190361288536133

`A152996(n)-A132760(n)`
-/

namespace A263231.P12892190361288536133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 n - A132760 n

end

end A263231.P12892190361288536133

namespace A263231

/-- `A152996(n)-A132760(n)` -/
def P12892190361288536133.Spec : Prop :=
  ∀ n, P12892190361288536133.a n = A263231 n

end A263231

/-! ## A263231.P6572939982772639585

`A152760(n)-A140675(n)`
-/

namespace A263231.P6572939982772639585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n - A140675 n

end

end A263231.P6572939982772639585

namespace A263231

/-- `A152760(n)-A140675(n)` -/
def P6572939982772639585.Spec : Prop :=
  ∀ n, P6572939982772639585.a n = A263231 n

end A263231

/-!
# A263232: Triangle read by rows: T(n,k) is the number of partitions of n having exactly k parts equal to 3 (n >= 0, 0 <= k <= floor(n/3)).

The programs for A263232, there is no canonical definition to state claims against.
-/

/-! ## A263232.P151239070725291457

`A027337(A025638(n+1))+A000007(A003113(n))`
-/

namespace A263232.P151239070725291457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A025638 (n + 1)).toNat + A000007 (A003113 n).toNat

end

end A263232.P151239070725291457

/-! ## A263232.P15462127955887003960

`A027337(A025638(n+1))%A005901(A268581(n))`
-/

namespace A263232.P15462127955887003960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027337 (A025638 (n + 1)).toNat) (A005901 (A268581 n).toNat)

end

end A263232.P15462127955887003960

/-! ## A263232.P15230808827948062314

`A027337(A025638(n+1))*A057427(A003113(n)+1)`
-/

namespace A263232.P15230808827948062314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A025638 (n + 1)).toNat * A057427 (A003113 n + 1).toNat

end

end A263232.P15230808827948062314

/-! ## A263232.P10789913245486911600

`A027337(A025638(n+1))*A324828(A124588(3*n+4))`
-/

namespace A263232.P10789913245486911600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A025638 (n + 1)).toNat * A324828 (A124588 (3 * n + 4)).toNat

end

end A263232.P10789913245486911600

/-! ## A263232.P11516604829437842579

`A007318(C(n, 64))*A027337(A025638(n+1))`
-/

namespace A263232.P11516604829437842579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A027337 (A025638 (n + 1)).toNat

end

end A263232.P11516604829437842579

/-! ## A263232.P387366104475927455

`A027337(A025638(n+1))+A000038(A003586(n+1))`
-/

namespace A263232.P387366104475927455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A025638 (n + 1)).toNat + A000038 (A003586 (n + 1)).toNat

end

end A263232.P387366104475927455

/-! ## A263232.P7154170585050865271

`A027337(A025638(n+1))+A010051(A349168(n+1))`
-/

namespace A263232.P7154170585050865271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A025638 (n + 1)).toNat + A010051 (A349168 (n + 1)).toNat

end

end A263232.P7154170585050865271

/-! ## A263232.P665194593176328206

`A010051(A028871(n+1))*A027337(A025638(n+1))`
-/

namespace A263232.P665194593176328206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028871 (n + 1)).toNat * A027337 (A025638 (n + 1)).toNat

end

end A263232.P665194593176328206

/-! ## A263232.P8299799806061787989

`A027337(A212157(n+1)²*A025638(n+1))`
-/

namespace A263232.P8299799806061787989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A212157 (n + 1) ^ 2 * A025638 (n + 1)).toNat

end

end A263232.P8299799806061787989

/-! ## A263232.P1181094837626446683

`A027337(A025638(n+1)/A212157(n+1)²)`
-/

namespace A263232.P1181094837626446683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (SequenceMachineLib.roundAway ((A025638 (n + 1) : ℚ) / (A212157 (n + 1) ^ 2 : ℚ))).toNat

end

end A263232.P1181094837626446683

/-!
# A263233: Triangle read by rows: T(n,k) is the number of partitions of n having k perfect square parts (0<=k<=n).

The programs for A263233, there is no canonical definition to state claims against.
-/

/-! ## A263233.P719134920104593594

`gcd(A090786(A336163(n+2)), A180424(n+2))`
-/

namespace A263233.P719134920104593594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090786 (A336163 (n + 2)).toNat) (A180424 (n + 2))

end

end A263233.P719134920104593594

/-! ## A263233.P6231908534797150591

`A008611(A025581(n)%p?[A034851(n)])`
-/

namespace A263233.P6231908534797150591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A025581 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A263233.P6231908534797150591

/-! ## A263233.P3355803248585297792

`A118458(A048993(n+2)*A226444(n))`
-/

namespace A263233.P3355803248585297792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A048993 (n + 2) * A226444 n).toNat

end

end A263233.P3355803248585297792

/-! ## A263233.P9695796031635562028

`A055090(A198261(n))`
-/

namespace A263233.P9695796031635562028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A198261 n).toNat

end

end A263233.P9695796031635562028

/-! ## A263233.P9393808959557377696

`A332761(A239101(n))`
-/

namespace A263233.P9393808959557377696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (A239101 n).toNat

end

end A263233.P9393808959557377696

/-!
# A263234: Triangle read by rows: T(n,k) is the number of partitions of n having k triangular number parts (0<=k<=n).

The programs for A263234, there is no canonical definition to state claims against.
-/

/-! ## A263234.P5910868280443895323

`A264394(lcm(n, A291149(n)))`
-/

namespace A263234.P5910868280443895323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 (Int.lcm (n : ℤ) (A291149 n))

end

end A263234.P5910868280443895323

/-! ## A263234.P6489592882184680282

`A264394(n)-A144193(A236939(n))`
-/

namespace A263234.P6489592882184680282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 n - A144193 (A236939 (n + 10)).toNat

end

end A263234.P6489592882184680282

/-! ## A263234.P14183804424356367907

`and(A117707(A187913(n)), A264394(n))`
-/

namespace A263234.P14183804424356367907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117707 (A187913 n).toNat) (A264394 n)

end

end A263234.P14183804424356367907

/-! ## A263234.P9115850236690280021

`A264394(n)-A288707(A188947(n+1))`
-/

namespace A263234.P9115850236690280021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 n - A288707 (A188947 (n + 1)).toNat

end

end A263234.P9115850236690280021

/-! ## A263234.P5913086296854236668

`A264394(n*A321903(A178688(n+1)))`
-/

namespace A263234.P5913086296854236668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 ((n : ℤ) * A321903 (A178688 (n + 1)).toNat).toNat

end

end A263234.P5913086296854236668

/-!
# A263235: Number of triangular number parts in all partitions of n.

The programs for A263235, there is no canonical definition to state claims against.
-/

/-! ## A263235.P9482363336546004642

`A002024(A163129(n))-A028310(n)`
-/

namespace A263235.P9482363336546004642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A163129 n).toNat - A028310 n

end

end A263235.P9482363336546004642

/-! ## A263235.P1256727007567728368

`A002024(A163129(n))-A065033(2*n)`
-/

namespace A263235.P1256727007567728368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A163129 n).toNat - A065033 (2 * n)

end

end A263235.P1256727007567728368

/-! ## A263235.P4140897617475070418

`A002024(A163129(n))-A123108(2*n)`
-/

namespace A263235.P4140897617475070418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A163129 n).toNat - A123108 (2 * n)

end

end A263235.P4140897617475070418

/-! ## A263235.P13354580501924505015

`A303664(n)+A286349(A331884(n))`
-/

namespace A263235.P13354580501924505015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303664 n + A286349 (A331884 n).toNat

end

end A263235.P13354580501924505015

/-! ## A263235.P2748752441502753601

`A118759(A100847(n)-A000009(n))`
-/

namespace A263235.P2748752441502753601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A100847 n - A000009 n).toNat

end

end A263235.P2748752441502753601

/-!
# A263236: Number of (n+3)X(1+3) 0..1 arrays with each row and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263236, there is no canonical definition to state claims against.
-/

/-! ## A263236.P15777579305973326542

`A263238(∑[n]+1)`
-/

namespace A263236.P15777579305973326542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263238 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263236.P15777579305973326542

/-! ## A263236.P6363945171334002049

`A263238(A000124(n))+A025469(n)`
-/

namespace A263236.P6363945171334002049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263238 (A000124 n).toNat + A025469 n

end

end A263236.P6363945171334002049

/-! ## A263236.P15096841729403075882

`lcm(A097807(n), A263238(A000124(n)))`
-/

namespace A263236.P15096841729403075882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A263238 (A000124 n).toNat)

end

end A263236.P15096841729403075882

/-! ## A263236.P14196844340714253186

`A263238(A000124(n))+A035322(n+1)`
-/

namespace A263236.P14196844340714253186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263238 (A000124 n).toNat + A035322 (n + 1)

end

end A263236.P14196844340714253186

/-! ## A263236.P15508556122968296406

`A263238(A000124(n))+A008683(xor(2, 12*n)+2)`
-/

namespace A263236.P15508556122968296406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263238 (A000124 n).toNat + A008683 (Nat.xor 2 (12 * n) + 2)

end

end A263236.P15508556122968296406

/-!
# A263237: Number of (n+3)X(2+3) 0..1 arrays with each row and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263237, there is no canonical definition to state claims against.
-/

/-! ## A263237.P10153562539944879542

`A263238(∑[n+1]+2)`
-/

namespace A263237.P10153562539944879542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263238 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263237.P10153562539944879542

/-! ## A263237.P14760339561933599625

`record[gcd(A263238(n+3), A263288(n+1))]`
-/

namespace A263237.P14760339561933599625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263238 (n + 3)) (A263288 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263237.P14760339561933599625

/-! ## A263237.P7263445147110801864

`record[A263238(A117142(n+2))]`
-/

namespace A263237.P7263445147110801864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263238 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263237.P7263445147110801864

/-!
# A263239: Euler pseudoprimes to base 9: composite integers such that abs(9^((n - 1)/2)) == 1 mod n.

The programs for A263239, there is no canonical definition to state claims against.
-/

/-! ## A263239.P18436189501834411898

`A020138(A007705(3*n+4)+ceil((n+1)/(3-ϕ)+n))`
-/

namespace A263239.P18436189501834411898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (A007705 (3 * n + 4) + ⌈(n + 1 : ℝ) / (3 - Real.goldenRatio) + (n : ℝ)⌉).toNat

end

end A263239.P18436189501834411898

/-!
# A263241: Lesser of emirp pairs that are merely reversals of their end digits.

The programs for A263241, there is no canonical definition to state claims against.
-/

/-! ## A263241.P13922551341733366286

`∩[A109308(n+1), A263240(n+1)]`
-/

namespace A263241.P13922551341733366286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263241.P13922551341733366286

/-! ## A263241.P461842974593394596

`∩[A141263(n+1), A263240(n+1)]`
-/

namespace A263241.P461842974593394596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263241.P461842974593394596

/-! ## A263241.P2421982558582300979

`∩[A166681(n+1), A263240(n+1)]`
-/

namespace A263241.P2421982558582300979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263241.P2421982558582300979

/-!
# A263242: Larger of emirp pairs that are merely reversals of their end digits.

The programs for A263242, there is no canonical definition to state claims against.
-/

/-! ## A263242.P8015096914429272981

`∩[A072543(n+1), A263240(n+1)]`
-/

namespace A263242.P8015096914429272981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263242.P8015096914429272981

/-! ## A263242.P10678783849120687348

`∩[A099180(n+1), A263240(n+1)]`
-/

namespace A263242.P10678783849120687348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263242.P10678783849120687348

/-! ## A263242.P7369910852453940526

`∩[A109309(n+1), A263240(n+1)]`
-/

namespace A263242.P7369910852453940526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263242.P7369910852453940526

/-! ## A263242.P945146496473011466

`∩[A157158(n+1), A263240(n+1)]`
-/

namespace A263242.P945146496473011466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263242.P945146496473011466

/-! ## A263242.P16243764624341351193

`∩[A263240(n+1), A387938(n+1)]`
-/

namespace A263242.P16243764624341351193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263242.P16243764624341351193

/-!
# A263243: Triangle read by rows giving successive states of cellular automaton generated by "Rule 155" initiated with a single ON (black) cell.

The programs for A263243, the canonical program `A263243.P14781637449265801547` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263243 has offset 0).

The definition of A263243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263243.P14781637449265801547

`A267520(n*and(1, ∑[n]))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A263243

/-- `A267520(n*and(1, ∑[n]))` -/
def P14781637449265801547.Spec : Prop :=
  ∀ n, P14781637449265801547.a n = A263243 n

theorem P14781637449265801547.correct : P14781637449265801547.Spec := by
  intro n
  simp only [A263243]

end A263243

/-! ## A263243.P12083962221575292667

`A267533(C((n+1)/4^val(n+1, 4), n))`
-/

namespace A263243.P12083962221575292667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat n)

end

end A263243.P12083962221575292667

namespace A263243

/-- `A267533(C((n+1)/4^val(n+1, 4), n))` -/
def P12083962221575292667.Spec : Prop :=
  ∀ n, P12083962221575292667.a n = A263243 n

end A263243

/-! ## A263243.P3254872236928257422

`A267520(A140201(n))`
-/

namespace A263243.P3254872236928257422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (A140201 n).toNat

end

end A263243.P3254872236928257422

namespace A263243

/-- `A267520(A140201(n))` -/
def P3254872236928257422.Spec : Prop :=
  ∀ n, P3254872236928257422.a n = A263243 n

end A263243

/-! ## A263243.P1471090030105220742

`A267520(A078112(n+1))`
-/

namespace A263243.P1471090030105220742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (A078112 (n + 1)).toNat

end

end A263243.P1471090030105220742

namespace A263243

/-- `A267520(A078112(n+1))` -/
def P1471090030105220742.Spec : Prop :=
  ∀ n, P1471090030105220742.a n = A263243 n

end A263243

/-! ## A263243.P10162330390317719365

`A267778(A020703(n+1)-1)`
-/

namespace A263243.P10162330390317719365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267778 (A020703 (n + 1) - 1).toNat

end

end A263243.P10162330390317719365

namespace A263243

/-- `A267778(A020703(n+1)-1)` -/
def P10162330390317719365.Spec : Prop :=
  ∀ n, P10162330390317719365.a n = A263243 n

end A263243

/-! ## A263243.P17773584726693308623

`A267520(n*A011264(n+1)%2)`
-/

namespace A263243.P17773584726693308623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 ((n : ℤ) * Int.tmod (A011264 (n + 1)) 2).toNat

end

end A263243.P17773584726693308623

namespace A263243

/-- `A267520(n*A011264(n+1)%2)` -/
def P17773584726693308623.Spec : Prop :=
  ∀ n, P17773584726693308623.a n = A263243 n

end A263243

/-! ## A263243.P17456775670542608197

`A267533(or(n+1, A101276(a(n-1))))` with `a(0)=1`
-/

namespace A263243.P17456775670542608197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267533 (Int.lor (n + 1 : ℤ) (A101276 (a (n - 1)).toNat)).toNat

end

end A263243.P17456775670542608197

namespace A263243

/-- `A267533(or(n+1, A101276(a(n-1))))` -/
def P17456775670542608197.Spec : Prop :=
  ∀ n, P17456775670542608197.a n = A263243 n

end A263243

/-! ## A263243.P253588437132783332

`A265186(A098180(n+1)-A265186(n+1))`
-/

namespace A263243.P253588437132783332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (A098180 (n + 1) - A265186 (n + 1)).toNat

end

end A263243.P253588437132783332

namespace A263243

/-- `A265186(A098180(n+1)-A265186(n+1))` -/
def P253588437132783332.Spec : Prop :=
  ∀ n, P253588437132783332.a n = A263243 n

end A263243

/-! ## A263243.P16449417074874545968

`A267533(A190621(n+1))`
-/

namespace A263243.P16449417074874545968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (A190621 (n + 1)).toNat

end

end A263243.P16449417074874545968

namespace A263243

/-- `A267533(A190621(n+1))` -/
def P16449417074874545968.Spec : Prop :=
  ∀ n, P16449417074874545968.a n = A263243 n

end A263243

/-! ## A263243.P6323132879942957471

`A267778(A020703(n+2))`
-/

namespace A263243.P6323132879942957471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267778 (A020703 (n + 2)).toNat

end

end A263243.P6323132879942957471

namespace A263243

/-- `A267778(A020703(n+2))` -/
def P6323132879942957471.Spec : Prop :=
  ∀ n, P6323132879942957471.a n = A263243 n

end A263243

/-! ## A263243.P12791691834949564099

`A267533(or(n+1, A267533(n+2)))`
-/

namespace A263243.P12791691834949564099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (Int.lor (n + 1 : ℤ) (A267533 (n + 2))).toNat

end

end A263243.P12791691834949564099

namespace A263243

/-- `A267533(or(n+1, A267533(n+2)))` -/
def P12791691834949564099.Spec : Prop :=
  ∀ n, P12791691834949564099.a n = A263243 n

end A263243

/-!
# A263244: Binary representation of the n-th iteration of the "Rule 155" elementary cellular automaton starting with a single ON (black) cell.

The programs for A263244, there is no canonical definition to state claims against.
-/

/-! ## A263244.P9528817784636884273

`A007088(A263245(n))`
-/

namespace A263244.P9528817784636884273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A263245 n).toNat

end

end A263244.P9528817784636884273

/-! ## A263244.P9890479129148631420

`A007088(A000302(n)+A000225(3*n)%A002001(n))`
-/

namespace A263244.P9890479129148631420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000302 n + Int.tmod (A000225 (3 * n)) (A002001 n)).toNat

end

end A263244.P9890479129148631420

/-! ## A263244.P6347252479119992129

`A305989(A267780(n))`
-/

namespace A263244.P6347252479119992129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A267780 n).toNat

end

end A263244.P6347252479119992129

/-!
# A263245: Decimal representation of the n-th iteration of the "Rule 155" elementary cellular automaton starting with a single ON (black) cell.

The programs for A263245, the canonical program `A263245.P13413944403111408290` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263245 has offset 0).

The definition of A263245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263245.P13413944403111408290

`a(n-1)+16*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=95`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263245

/-- `a(n-1)+16*a(n-2)-16*a(n-3)` -/
def P13413944403111408290.Spec : Prop :=
  ∀ n, P13413944403111408290.a n = A263245 n

theorem P13413944403111408290.correct : P13413944403111408290.Spec := by
  intro n
  simp only [A263245]

end A263245

/-! ## A263245.P5276036321743362978

`A052539(n)-A122958(A053438(n))`
-/

namespace A263245.P5276036321743362978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - A122958 (A053438 n).toNat

end

end A263245.P5276036321743362978

namespace A263245

/-- `A052539(n)-A122958(A053438(n))` -/
def P5276036321743362978.Spec : Prop :=
  ∀ n, P5276036321743362978.a n = A263245 n

end A263245

/-! ## A263245.P12549255210067973502

`A131577(A053438(n))+A000225(2*n)`
-/

namespace A263245.P12549255210067973502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A053438 n).toNat + A000225 (2 * n)

end

end A263245.P12549255210067973502

namespace A263245

/-- `A131577(A053438(n))+A000225(2*n)` -/
def P12549255210067973502.Spec : Prop :=
  ∀ n, P12549255210067973502.a n = A263245 n

end A263245

/-! ## A263245.P14976302348060101500

`A166444(A014601(n))+A086341(A130824(n))`
-/

namespace A263245.P14976302348060101500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A014601 n).toNat + A086341 (A130824 n).toNat

end

end A263245.P14976302348060101500

namespace A263245

/-- `A166444(A014601(n))+A086341(A130824(n))` -/
def P14976302348060101500.Spec : Prop :=
  ∀ n, P14976302348060101500.a n = A263245 n

end A263245

/-! ## A263245.P10942002301688133802

`A000302(n)+A000225(3*n)%A002001(n)`
-/

namespace A263245.P10942002301688133802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + Int.tmod (A000225 (3 * n)) (A002001 n)

end

end A263245.P10942002301688133802

namespace A263245

/-- `A000302(n)+A000225(3*n)%A002001(n)` -/
def P10942002301688133802.Spec : Prop :=
  ∀ n, P10942002301688133802.a n = A263245 n

end A263245

/-! ## A263245.P9955062071340703966

`and(A083329(2*n), A267604(A061721(2*(n+1))))`
-/

namespace A263245.P9955062071340703966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 (2 * n)) (A267604 (A061721 (2 * (n + 1))).toNat)

end

end A263245.P9955062071340703966

namespace A263245

/-- `and(A083329(2*n), A267604(A061721(2*(n+1))))` -/
def P9955062071340703966.Spec : Prop :=
  ∀ n, P9955062071340703966.a n = A263245 n

end A263245

/-! ## A263245.P12227239574858114287

`A099627(A004275(∑[A014601(n)]))`
-/

namespace A263245.P12227239574858114287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A263245.P12227239574858114287

namespace A263245

/-- `A099627(A004275(∑[A014601(n)]))` -/
def P12227239574858114287.Spec : Prop :=
  ∀ n, P12227239574858114287.a n = A263245 n

end A263245

/-!
# A263246: Expansion of e.g.f.: sin(r*x) / sqrt(1 + cos(r*x)^2) where r = sqrt(2), odd powers only.

The programs for A263246, there is no canonical definition to state claims against.
-/

/-! ## A263246.P4468709090975409201

`-A101922(n+1)`
-/

namespace A263246.P4468709090975409201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A101922 (n + 1)

end

end A263246.P4468709090975409201

/-! ## A263246.P8883889540680101350

`A000007(n+1)-A101922(n+1)`
-/

namespace A263246.P8883889540680101350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A101922 (n + 1)

end

end A263246.P8883889540680101350

/-! ## A263246.P12709793929355879829

`A003982(A066801(n))-A101922(n+1)`
-/

namespace A263246.P12709793929355879829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A066801 n).toNat - A101922 (n + 1)

end

end A263246.P12709793929355879829

/-! ## A263246.P9026514596799497036

`A008683(A065091(n+1))*A101922(n+1)`
-/

namespace A263246.P9026514596799497036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat * A101922 (n + 1)

end

end A263246.P9026514596799497036

/-! ## A263246.P2069562675055904477

`A003982(A003982(n)+n)-A101922(n+1)`
-/

namespace A263246.P2069562675055904477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A003982 n + (n : ℤ)).toNat - A101922 (n + 1)

end

end A263246.P2069562675055904477

/-!
# A263248: E.g.f.: r / sqrt(1 + cos(r*x)^2) where r = sqrt(2), even powers only.

The programs for A263248, there is no canonical definition to state claims against.
-/

/-! ## A263248.P12713053667278042487

`A165747(A014336(n)²)`
-/

namespace A263248.P12713053667278042487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (A014336 n ^ 2).toNat

end

end A263248.P12713053667278042487

/-!
# A263250: Even bisection of A263087; number of solutions to x - d(x) = 4(n^2), where d(x) is the number of divisors of x (A000005).

The programs for A263250, there is no canonical definition to state claims against.
-/

/-! ## A263250.P5533088936891063281

`A263087(2*n)`
-/

namespace A263250.P5533088936891063281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (2 * n)

end

end A263250.P5533088936891063281

/-! ## A263250.P10094123906196555698

`A263087(n+n)%12`
-/

namespace A263250.P10094123906196555698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263087 (n + n)) 12

end

end A263250.P10094123906196555698

/-! ## A263250.P14204378178963076621

`dr(A263087(A008585(n)-n))`
-/

namespace A263250.P14204378178963076621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A263087 (A008585 n - (n : ℤ)).toNat)

end

end A263250.P14204378178963076621

/-! ## A263250.P2987745852345957919

`A263087(n+n)+A060990(A045765(n+1))`
-/

namespace A263250.P2987745852345957919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (n + n) + A060990 (A045765 (n + 1)).toNat

end

end A263250.P2987745852345957919

/-! ## A263250.P13592210936916473529

`A263087(n+n)^A133707(A133707(n+1))`
-/

namespace A263250.P13592210936916473529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263087 (n + n) : ℚ) ^ (A133707 (A133707 (n + 1)).toNat : ℤ)

end

end A263250.P13592210936916473529

/-! ## A263250.P3508633257825045745

`A263087(n+n)+A262697(A259934(n))`
-/

namespace A263250.P3508633257825045745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (n + n) + A262697 (A259934 n).toNat

end

end A263250.P3508633257825045745

/-! ## A263250.P12508865388918841740

`A060990((2*n)²)`
-/

namespace A263250.P12508865388918841740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 ((2 * n) ^ 2)

end

end A263250.P12508865388918841740

/-! ## A263250.P7424263994806148944

`A262697(A259934(n+1))+A060990(A000290(2*n))`
-/

namespace A263250.P7424263994806148944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (A259934 (n + 1)).toNat + A060990 (A000290 (2 * n)).toNat

end

end A263250.P7424263994806148944

/-! ## A263250.P14951053542143600692

`A060990(A000290(2*n))+A060990(A045765(n+2))`
-/

namespace A263250.P14951053542143600692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 (2 * n)).toNat + A060990 (A045765 (n + 2)).toNat

end

end A263250.P14951053542143600692

/-! ## A263250.P9636656726086585869

`A060990(A000290(2*n))-A262697(A259934(2*n))`
-/

namespace A263250.P9636656726086585869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 (2 * n)).toNat - A262697 (A259934 (2 * n)).toNat

end

end A263250.P9636656726086585869

/-!
# A263251: Odd bisection of A263087; number of solutions to x - d(x) = (2n+1)^2, where d(x) is the number of divisors of x (A000005).

The programs for A263251, there is no canonical definition to state claims against.
-/

/-! ## A263251.P7046669899166817380

`A263087(2*n+1)`
-/

namespace A263251.P7046669899166817380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (2 * n + 1)

end

end A263251.P7046669899166817380

/-! ## A263251.P16806761002057022698

`A263087(Δ[n²])%8`
-/

namespace A263251.P16806761002057022698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 8

end

end A263251.P16806761002057022698

/-! ## A263251.P13992080779976436364

`xor(1, xor(1, A263087(n+1+n)))`
-/

namespace A263251.P13992080779976436364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A263087 (n + 1 + n)))

end

end A263251.P13992080779976436364

/-! ## A263251.P9749570323111355601

`A263087(n+1+n)/A057979(A016825(n))`
-/

namespace A263251.P9749570323111355601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263087 (n + 1 + n) : ℚ) / (A057979 (A016825 n).toNat : ℚ)

end

end A263251.P9749570323111355601

/-! ## A263251.P9009772796856180342

`A263087(n+1+n)/A117494(A175448(n+1))`
-/

namespace A263251.P9009772796856180342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263087 (n + 1 + n) : ℚ) / (A117494 (A175448 (n + 1)).toNat : ℚ)

end

end A263251.P9009772796856180342

/-! ## A263251.P750396103792050198

`A060990(Δ[n²]²)`
-/

namespace A263251.P750396103792050198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A263251.P750396103792050198

/-! ## A263251.P10409885998792666392

`dr(A060990((2*n+1)²))`
-/

namespace A263251.P10409885998792666392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060990 ((2 * n + 1) ^ 2))

end

end A263251.P10409885998792666392

/-! ## A263251.P619226298605265368

`A262697(A259934(n+1))+A060990(A000290(2*n+1))`
-/

namespace A263251.P619226298605265368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (A259934 (n + 1)).toNat + A060990 (A000290 (2 * n + 1)).toNat

end

end A263251.P619226298605265368

/-! ## A263251.P12658246051020430507

`A060990(A000290(2*n+1))+A060990(A045765(n+2))`
-/

namespace A263251.P12658246051020430507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 (2 * n + 1)).toNat + A060990 (A045765 (n + 2)).toNat

end

end A263251.P12658246051020430507

/-!
# A263252: Partial sums of A263250.

The programs for A263252, there is no canonical definition to state claims against.
-/

/-! ## A263252.P4693887149306882744

`A263250(n)+a(n-1)` with `a(0)=2`
-/

namespace A263252.P4693887149306882744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A263250 n + a (n - 1)

end

end A263252.P4693887149306882744

/-! ## A263252.P16609743400463510879

`∑[A263250(n)]`
-/

namespace A263252.P16609743400463510879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P16609743400463510879

/-! ## A263252.P13302936088822272325

`∑[A263087(2*n)]`
-/

namespace A263252.P13302936088822272325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P13302936088822272325

/-! ## A263252.P5919523770395741925

`∑[A263087(n+n)/gcd(n, n+1)]`
-/

namespace A263252.P5919523770395741925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263087 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P5919523770395741925

/-! ## A263252.P10205585166508451951

`∑[dr(A263087(A005843(n)))]`
-/

namespace A263252.P10205585166508451951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A263087 (A005843 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P10205585166508451951

/-! ## A263252.P15483040972934646592

`∑[A263087(n+n)+A005843(n)%2]`
-/

namespace A263252.P15483040972934646592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (n + n) + Int.tmod (A005843 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P15483040972934646592

/-! ## A263252.P635669002760205258

`∑[A060990((2*n)²)]`
-/

namespace A263252.P635669002760205258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P635669002760205258

/-! ## A263252.P8005765400428575668

`∑[dr(A060990(A000290(2*n)))]`
-/

namespace A263252.P8005765400428575668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060990 (A000290 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P8005765400428575668

/-! ## A263252.P11185449951067143262

`∑[A060990(A000290(2*n))]%A001248(n+1)`
-/

namespace A263252.P11185449951067143262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001248 (n + 1))

end

end A263252.P11185449951067143262

/-! ## A263252.P5377400833050419302

`∑[A060990(A000290(2*n))+A008683(4*(n+1))]`
-/

namespace A263252.P5377400833050419302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 (2 * n)).toNat + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263252.P5377400833050419302

/-!
# A263253: Partial sums of A263251.

The programs for A263253, there is no canonical definition to state claims against.
-/

/-! ## A263253.P10061606369510836703

`A263251(n)+a(n-1)` with `a(0)=2`
-/

namespace A263253.P10061606369510836703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A263251 n + a (n - 1)

end

end A263253.P10061606369510836703

/-! ## A263253.P6633643200985972781

`∑[A263251(n)]`
-/

namespace A263253.P6633643200985972781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263253.P6633643200985972781

/-! ## A263253.P12697839701881532648

`∑[A263087(Δ[n²])]`
-/

namespace A263253.P12697839701881532648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263253.P12697839701881532648

/-! ## A263253.P13161860897956567880

`∑[dr(A263087(2*n+1))]`
-/

namespace A263253.P13161860897956567880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A263087 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263253.P13161860897956567880

/-! ## A263253.P13574226743814307194

`A110654(∑[2*A263087(2*n+1)])`
-/

namespace A263253.P13574226743814307194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263087 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263253.P13574226743814307194

/-! ## A263253.P13225726535177613565

`A005843(∑[A263087(2*n+1)])/2`
-/

namespace A263253.P13225726535177613565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A263253.P13225726535177613565

/-! ## A263253.P3363175331945123225

`∑[A263087(2*n+1)]*A033999(2*n)`
-/

namespace A263253.P3363175331945123225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (2 * n)

end

end A263253.P3363175331945123225

/-! ## A263253.P5002356970056213834

`∑[A060990((2*n+1)²)]`
-/

namespace A263253.P5002356970056213834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263253.P5002356970056213834

/-!
# A263254: If A262693(n) = 1, then a(n) = 0, otherwise a(n) = 1 + a(A049820(n)).

The programs for A263254, there is no canonical definition to state claims against.
-/

/-! ## A263254.P7859932734975186384

`A263275(n)-1`
-/

namespace A263254.P7859932734975186384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n - 1

end

end A263254.P7859932734975186384

/-! ## A263254.P4727166257113169947

`A155043(n)-A262904(n)`
-/

namespace A263254.P4727166257113169947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n - A262904 n

end

end A263254.P4727166257113169947

/-! ## A263254.P1831569201582977231

`A046666(2*A263275(n))/2`
-/

namespace A263254.P1831569201582977231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (2 * A263275 n).toNat : ℚ) / 2

end

end A263254.P1831569201582977231

/-! ## A263254.P4555749496905909449

`A155043(n)+A262906(n)-n`
-/

namespace A263254.P4555749496905909449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n + (A262906 n - (n : ℤ))

end

end A263254.P4555749496905909449

/-! ## A263254.P13377470376510609140

`A155043(n)-A155043(A262679(n))`
-/

namespace A263254.P13377470376510609140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n - A155043 (A262679 n).toNat

end

end A263254.P13377470376510609140

/-! ## A263254.P5257375121887445949

`A155043(n)-(A155043(A261089(n))-A262906(n))`
-/

namespace A263254.P5257375121887445949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n - (A155043 (A261089 n).toNat - A262906 n)

end

end A263254.P5257375121887445949

/-! ## A263254.P991297996451738342

`A155043(n)-(A155043(A259934(n))-A262906(n))`
-/

namespace A263254.P991297996451738342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n - (A155043 (A259934 n).toNat - A262906 n)

end

end A263254.P991297996451738342

/-! ## A263254.P10239535127701712287

`A025581(2*A263275(n)²)`
-/

namespace A263254.P10239535127701712287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A263275 n ^ 2).toNat

end

end A263254.P10239535127701712287

/-! ## A263254.P10448544872334684967

`A025581(2*A263275(n)*A263275(n))`
-/

namespace A263254.P10448544872334684967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A263275 n * A263275 n).toNat

end

end A263254.P10448544872334684967

/-! ## A263254.P13857309786064782980

`A070198(n)%A263275(n)`
-/

namespace A263254.P13857309786064782980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A263275 n)

end

end A263254.P13857309786064782980

/-! ## A263254.P1120075483257357663

`A079782(n+1)%A263275(n)`
-/

namespace A263254.P1120075483257357663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A263275 n)

end

end A263254.P1120075483257357663

/-! ## A263254.P8972115723435001737

`A083685(n+1)%A263275(n)`
-/

namespace A263254.P8972115723435001737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A263275 n)

end

end A263254.P8972115723435001737

/-! ## A263254.P11899112843485752298

`A121934(n+1)%A263275(n)`
-/

namespace A263254.P11899112843485752298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A263275 n)

end

end A263254.P11899112843485752298

/-! ## A263254.P6591598033417812986

`A030494(n+1)%A263275(n)`
-/

namespace A263254.P6591598033417812986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A263275 n)

end

end A263254.P6591598033417812986

/-! ## A263254.P6122052635372697637

`A072828(n+1)%A263275(n)`
-/

namespace A263254.P6122052635372697637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A263275 n)

end

end A263254.P6122052635372697637

/-!
# A263255: Square array A(r,c), where each row r lists all numbers that are r edges distant from the infinite trunk (A259934) of the tree defined by edge-relation A049820(child) = parent.

The programs for A263255, there is no canonical definition to state claims against.
-/

/-! ## A263255.P11635796672780279309

`A263256(A061579(n))`
-/

namespace A263255.P11635796672780279309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 (A061579 n).toNat

end

end A263255.P11635796672780279309

/-! ## A263255.P8254494755577737159

`A263256(A093995(n+1)-(n+1))`
-/

namespace A263255.P8254494755577737159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A263255.P8254494755577737159

/-! ## A263255.P2462866433490945688

`A263256(A265129(n+1)-(n+2))`
-/

namespace A263255.P2462866433490945688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 (A265129 (n + 1) - (n + 2 : ℤ)).toNat

end

end A263255.P2462866433490945688

/-! ## A263255.P1468901668766176711

`A263256(∑[2*n]%A014132(n+1))`
-/

namespace A263255.P1468901668766176711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014132 (n + 1))).toNat

end

end A263255.P1468901668766176711

/-! ## A263255.P5906639557148995201

`A263256(A025581(n)+n-A002262(n))`
-/

namespace A263255.P5906639557148995201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A263255.P5906639557148995201

/-! ## A263255.P12808597512927836629

`A263256(n-(A002262(n)-A025581(n)))`
-/

namespace A263255.P12808597512927836629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A263255.P12808597512927836629

/-!
# A263256: Transpose of array A263255.

The programs for A263256, there is no canonical definition to state claims against.
-/

/-! ## A263256.P17025833624430204194

`A263255(∑[2*n]%comp[∑[n]])`
-/

namespace A263256.P17025833624430204194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A263256.P17025833624430204194

/-! ## A263256.P14231500938578579401

`A263255(∑[char[∑[n]]]²-n-1)`
-/

namespace A263256.P14231500938578579401
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A263256.P14231500938578579401

/-! ## A263256.P15430727374441067617

`A263255(A061579(n))%A055235(n)`
-/

namespace A263256.P15430727374441067617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263255 (A061579 n).toNat) (A055235 n)

end

end A263256.P15430727374441067617

/-! ## A263256.P10932872692454238710

`A263255(A061579(n))+A000007(3*(n+1))`
-/

namespace A263256.P10932872692454238710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (A061579 n).toNat + A000007 (3 * (n + 1))

end

end A263256.P10932872692454238710

/-! ## A263256.P7534793627749372134

`A263255(A061579(n))+A007949(3*n+5)`
-/

namespace A263256.P7534793627749372134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (A061579 n).toNat + A007949 (3 * n + 5)

end

end A263256.P7534793627749372134

/-!
# A263257: a(n) = least number with distance n to the infinite trunk (A259934) of the tree defined by edge-relation A049820(child) = parent.

The programs for A263257, there is no canonical definition to state claims against.
-/

/-! ## A263257.P13016052840792428348

`eq[1, A263274(n)]`
-/

namespace A263257.P13016052840792428348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263257.P13016052840792428348

/-! ## A263257.P12997172834115485915

`record[n/A263255(A263274(n)+1)]`
-/

namespace A263257.P12997172834115485915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A263255 (A263274 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P12997172834115485915

/-! ## A263257.P1214163865604979588

`record[n/A010011(A263274(n)-1)]`
-/

namespace A263257.P1214163865604979588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A010011 (A263274 n - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P1214163865604979588

/-! ## A263257.P13031564948214514241

`record[A061395(n+1)/A263274(A061395(n+1))²]`
-/

namespace A263257.P13031564948214514241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (n + 1) : ℚ) / (A263274 (A061395 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P13031564948214514241

/-! ## A263257.P13671396357070825395

`record[A072000(n+1)/A263274(A072000(n+1))²]`
-/

namespace A263257.P13671396357070825395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072000 (n + 1) : ℚ) / (A263274 (A072000 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P13671396357070825395

/-! ## A263257.P17215566691734357610

`record[n/A003959(A263274(n)²)]`
-/

namespace A263257.P17215566691734357610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A003959 (A263274 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P17215566691734357610

/-! ## A263257.P2472111348071369690

`record[n/A101296(A263274(n)²)]`
-/

namespace A263257.P2472111348071369690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A101296 (A263274 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P2472111348071369690

/-! ## A263257.P10037949752108107677

`A263255(∑[n]+n)`
-/

namespace A263257.P10037949752108107677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A263257.P10037949752108107677

/-! ## A263257.P1929830823137890348

`record[A262693(A263255(n+1))*A263255(n)]`
-/

namespace A263257.P1929830823137890348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A263255 (n + 1)).toNat * A263255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263257.P1929830823137890348

/-! ## A263257.P17394106039792238541

`A263256(∑[n])`
-/

namespace A263257.P17394106039792238541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263256 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263257.P17394106039792238541

/-!
# A263258: a(n) = A049820(A263257(n)).

The programs for A263258, there is no canonical definition to state claims against.
-/

/-! ## A263258.P5666710247986451256

`A049820(A263257(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263258.P5666710247986451256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A263257 (n + 1)).toNat

end

end A263258.P5666710247986451256

/-! ## A263258.P12792798907540297052

`A049820(eq[1, A263274(n+1)]+1)`
-/

namespace A263258.P12792798907540297052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A263258.P12792798907540297052

/-! ## A263258.P7390493721171681502

`A049820(record[and(n+1, A263274(n+1)-2)])`
-/

namespace A263258.P7390493721171681502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A263274 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263258.P7390493721171681502

/-! ## A263258.P5695615244770041897

`record[A049820(n+1)/A006218(A263274(n+1))]`
-/

namespace A263258.P5695615244770041897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049820 (n + 1) : ℚ) / (A006218 (A263274 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263258.P5695615244770041897

/-! ## A263258.P7718087130747188334

`A049820(A263255(∑[n+2]))`
-/

namespace A263258.P7718087130747188334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A263255 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A263258.P7718087130747188334

/-! ## A263258.P463026872403918880

`A049820(A263256(∑[n+1]))`
-/

namespace A263258.P463026872403918880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A263256 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A263258.P463026872403918880

/-!
# A263259: a(n) = number of integers k <= n for which A155043(k) = A155043(n).

The programs for A263259, there is no canonical definition to state claims against.
-/

/-! ## A263259.P4555256298772193740

`A069288(A255047(n)+21)`
-/

namespace A263259.P4555256298772193740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A255047 n + 21).toNat

end

end A263259.P4555256298772193740

/-! ## A263259.P5921263327219337913

`A001222((A000129(n+1)+1)/A323172(n+2))`
-/

namespace A263259.P5921263327219337913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000129 (n + 1) + 1 : ℚ) / (A323172 (n + 2) : ℚ))).toNat

end

end A263259.P5921263327219337913

/-! ## A263259.P7912855959176143316

`gcd(A164326(n+1)%A123998(n+1), A051275(n))`
-/

namespace A263259.P7912855959176143316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A164326 (n + 1)) (A123998 (n + 1))) (A051275 n)

end

end A263259.P7912855959176143316

/-! ## A263259.P7020586166255182301

`A329313(char[C(n, 2)+n²]+∑[n])`
-/

namespace A263259.P7020586166255182301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A263259.P7020586166255182301

/-! ## A263259.P16350628599636950697

`A194449(A344385(n+2))`
-/

namespace A263259.P16350628599636950697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194449 (A344385 (n + 2)).toNat

end

end A263259.P16350628599636950697

/-!
# A263260: a(n) = number of nonnegative integers k for which A155043(k) <= n; partial sums of A262507.

The programs for A263260, there is no canonical definition to state claims against.
-/

/-! ## A263260.P971941483102932057

`A262507(n)+a(n-1)` with `a(0)=1`
-/

namespace A263260.P971941483102932057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262507 n + a (n - 1)

end

end A263260.P971941483102932057

/-! ## A263260.P12638698037684661446

`∑[A262507(n)]`
-/

namespace A263260.P12638698037684661446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263260.P12638698037684661446

/-! ## A263260.P3388729410301280129

`A263266(A261089(n+1))`
-/

namespace A263260.P3388729410301280129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (A261089 (n + 1)).toNat

end

end A263260.P3388729410301280129

/-! ## A263260.P10992134230677800676

`A263266(A262503(n))+1`
-/

namespace A263260.P10992134230677800676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (A262503 n).toNat + 1

end

end A263260.P10992134230677800676

/-! ## A263260.P12576211354833548701

`∑[A263280(n)+A263279(n)]`
-/

namespace A263260.P12576211354833548701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263280 n + A263279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263260.P12576211354833548701

/-! ## A263260.P10070746166926131515

`-∑[-Δ[A263266(A261089(n))]]`
-/

namespace A263260.P10070746166926131515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (A261089 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263260.P10070746166926131515

/-! ## A263260.P12672687438096533496

`record[A263266(n+1)/A263259(n+1)]`
-/

namespace A263260.P12672687438096533496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263266 (n + 1) : ℚ) / (A263259 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263260.P12672687438096533496

/-! ## A263260.P4255738774701300058

`record[(n+1)*(A263270(n+1)-A263270(n))]`
-/

namespace A263260.P4255738774701300058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A263270 (n + 1) - A263270 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263260.P4255738774701300058

/-! ## A263260.P2906160658342648892

`∑[A263259(A262503(n))]`
-/

namespace A263260.P2906160658342648892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263260.P2906160658342648892

/-! ## A263260.P11234577223496380473

`eq[2, A263259(A263265(n+1))]`
-/

namespace A263260.P11234577223496380473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A263265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263260.P11234577223496380473

/-! ## A263260.P1861391995118552255

`eq[2, A263259(A263265(n))]-1`
-/

namespace A263260.P1861391995118552255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A263265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A263260.P1861391995118552255

/-! ## A263260.P1234082656344066662

`∑[A263259(A262506(n)+A259934(n))]`
-/

namespace A263260.P1234082656344066662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262506 n + A259934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263260.P1234082656344066662

/-! ## A263260.P10606401833866778544

`A263268(A263269(n))+1`
-/

namespace A263260.P10606401833866778544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 (A263269 n).toNat + 1

end

end A263260.P10606401833866778544

/-! ## A263260.P7786935160964719604

`A263268(A264988(n))+A262507(n)`
-/

namespace A263260.P7786935160964719604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 (A264988 n).toNat + A262507 n

end

end A263260.P7786935160964719604

/-! ## A263260.P11952691736289427238

`A263268(A264988(n+1))`
-/

namespace A263260.P11952691736289427238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 (A264988 (n + 1)).toNat

end

end A263260.P11952691736289427238

/-!
# A263261: Row 1 of A263255.

The programs for A263261, there is no canonical definition to state claims against.
-/

/-! ## A263261.P12142350050208435348

`eq[1, A155043(n)+A262906(n)-n]`
-/

namespace A263261.P12142350050208435348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n + (A262906 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263261.P12142350050208435348

/-! ## A263261.P9638644138702068848

`eq[A155043(A262679(n))+1, A155043(n)]`
-/

namespace A263261.P9638644138702068848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A262679 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263261.P9638644138702068848

/-! ## A263261.P940221832592853706

`eq[A262904(n)+1, A155043(n)]`
-/

namespace A263261.P940221832592853706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263261.P940221832592853706

/-! ## A263261.P8902867104888189318

`eq[1, A263254(n)]`
-/

namespace A263261.P8902867104888189318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263261.P8902867104888189318

/-! ## A263261.P1890647291504417406

`eq[2, A263275(n)]`
-/

namespace A263261.P1890647291504417406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263261.P1890647291504417406

/-! ## A263261.P15338218268999534666

`record[(n+1)/(A259934(A263254(n+1))-1)]`
-/

namespace A263261.P15338218268999534666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A259934 (A263254 (n + 1)).toNat - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263261.P15338218268999534666

/-! ## A263261.P13803042786467886530

`eq[A155043(n), A263274(A262679(n))]`
-/

namespace A263261.P13803042786467886530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (A262679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263261.P13803042786467886530

/-! ## A263261.P3732003205269680265

`lt[A263254(n), A263254(A263275(n)+1)]`
-/

namespace A263261.P3732003205269680265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 (A263275 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263261.P3732003205269680265

/-! ## A263261.P5487977057078136698

`lt[A263275(n), A263275(A263275(n)+1)]`
-/

namespace A263261.P5487977057078136698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 (A263275 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263261.P5487977057078136698

/-! ## A263261.P6125307401420240822

`lt[A263254(n), A263254(A263254(n)+2)]`
-/

namespace A263261.P6125307401420240822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 (A263254 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263261.P6125307401420240822

/-! ## A263261.P764347908421676522

`lt[A263254(n), A263254(2*A263275(n))]`
-/

namespace A263261.P764347908421676522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 (2 * A263275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263261.P764347908421676522

/-! ## A263261.P1384614981214029364

`lt[A263275(n), A263275(2*A263275(n))]`
-/

namespace A263261.P1384614981214029364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 (2 * A263275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263261.P1384614981214029364

/-! ## A263261.P14710471586574184815

`A263255(∑[n+1]+1)`
-/

namespace A263261.P14710471586574184815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263261.P14710471586574184815

/-! ## A263261.P5567443736983515075

`A263255(A134869(n+1))-A000007(n)`
-/

namespace A263261.P5567443736983515075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (A134869 (n + 1)).toNat - A000007 n

end

end A263261.P5567443736983515075

/-!
# A263262: Row 2 of A263255.

The programs for A263262, there is no canonical definition to state claims against.
-/

/-! ## A263262.P14942128966833125866

`eq[A155043(A262679(n))+2, A155043(n)]`
-/

namespace A263262.P14942128966833125866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A262679 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263262.P14942128966833125866

/-! ## A263262.P1625321871552822154

`eq[1, A262904(A155043(n)+A262906(n)-n)]`
-/

namespace A263262.P1625321871552822154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 (A155043 n + (A262906 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263262.P1625321871552822154

/-! ## A263262.P5133103055184150995

`eq[3, A261089(A155043(n)+A262906(n)-n)]`
-/

namespace A263262.P5133103055184150995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 (A155043 n + (A262906 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263262.P5133103055184150995

/-! ## A263262.P13941865839374167101

`eq[3, A261103(A155043(n)+A262906(n)-n)]`
-/

namespace A263262.P13941865839374167101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261103 (A155043 n + (A262906 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263262.P13941865839374167101

/-! ## A263262.P15144889271557739715

`eq[A262904(n)+2, A155043(n)]`
-/

namespace A263262.P15144889271557739715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263262.P15144889271557739715

/-! ## A263262.P2007186682851389430

`eq[1, A262904(A155043(n)-A262904(n))]`
-/

namespace A263262.P2007186682851389430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 (A155043 n - A262904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263262.P2007186682851389430

/-! ## A263262.P8236436436006149437

`eq[2, A263254(n)]`
-/

namespace A263262.P8236436436006149437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263262.P8236436436006149437

/-! ## A263262.P7683756707816600222

`eq[3, A263275(n)]`
-/

namespace A263262.P7683756707816600222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263262.P7683756707816600222

/-! ## A263262.P3047774890221945363

`A263255(∑[n+2]+3)`
-/

namespace A263262.P3047774890221945363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263262.P3047774890221945363

/-! ## A263262.P5348476134406700947

`or(char[2], A263255(A133263(n+2)))`
-/

namespace A263262.P5348476134406700947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263255 (A133263 (n + 2)).toNat)

end

end A263262.P5348476134406700947

/-! ## A263262.P12602083148135936416

`A263255(A133263(n+2))%A000041(2*n+5)`
-/

namespace A263262.P12602083148135936416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263255 (A133263 (n + 2)).toNat) (A000041 (2 * n + 5))

end

end A263262.P12602083148135936416

/-! ## A263262.P17234966763414970879

`∏{e}[A000040(n+1), A263255(A167614(n+1)-#)]`
-/

namespace A263262.P17234966763414970879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A263255 (A167614 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ)).toNat

end

end A263262.P17234966763414970879

/-!
# A263263: Row 3 of A263255.

The programs for A263263, there is no canonical definition to state claims against.
-/

/-! ## A263263.P15753399898528670251

`eq[3, A155043(n)+A262906(n)-n]`
-/

namespace A263263.P15753399898528670251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n + (A262906 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263263.P15753399898528670251

/-! ## A263263.P15750385273484500055

`eq[3, A263254(n)]`
-/

namespace A263263.P15750385273484500055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263263.P15750385273484500055

/-! ## A263263.P8666541430265048052

`eq[4, A263275(n)]`
-/

namespace A263263.P8666541430265048052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263263.P8666541430265048052

/-! ## A263263.P15561841013328861914

`lt[A263275(n), A263279(A263254(n))]`
-/

namespace A263263.P15561841013328861914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263279 (A263254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263263.P15561841013328861914

/-! ## A263263.P15511222713336360601

`eq[A263274(A262679(n))+2, A155043(n)]`
-/

namespace A263263.P15511222713336360601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (A262679 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263263.P15511222713336360601

/-! ## A263263.P12157551125432731794

`lt[A263275(n), A263279(A263275(n)-1)]`
-/

namespace A263263.P12157551125432731794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263279 (A263275 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263263.P12157551125432731794

/-! ## A263263.P4915534563447036861

`A263255(∑[n+3]+6)`
-/

namespace A263263.P4915534563447036861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263263.P4915534563447036861

/-! ## A263263.P17488315246905409977

`or(char[2], A263255(A167614(n+2)))`
-/

namespace A263263.P17488315246905409977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263255 (A167614 (n + 2)).toNat)

end

end A263263.P17488315246905409977

/-! ## A263263.P15850262886349002433

`A263255(A167614(n+2))%A000217(n+6)`
-/

namespace A263263.P15850262886349002433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263255 (A167614 (n + 2)).toNat) (A000217 (n + 6))

end

end A263263.P15850262886349002433

/-! ## A263263.P13875928526975622935

`A007318(C(2, n))*A263255(A167614(n+2))`
-/

namespace A263263.P13875928526975622935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263255 (A167614 (n + 2)).toNat

end

end A263263.P13875928526975622935

/-! ## A263263.P15958633303752187906

`A000035(2*n+1)*A263255(A167614(n+2))`
-/

namespace A263263.P15958633303752187906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A263255 (A167614 (n + 2)).toNat

end

end A263263.P15958633303752187906

/-! ## A263263.P9549333530480644946

`A263255(A167614(n+2))+A008683(4*(n+1))`
-/

namespace A263263.P9549333530480644946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (A167614 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A263263.P9549333530480644946

/-! ## A263263.P9378814326321438837

`A000108(gcd(n, n+1))*A263255(A167614(n+2))`
-/

namespace A263263.P9378814326321438837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A263255 (A167614 (n + 2)).toNat

end

end A263263.P9378814326321438837

/-!
# A263264: Row 4 of A263255.

The programs for A263264, there is no canonical definition to state claims against.
-/

/-! ## A263264.P16941922687540089353

`eq[4, A263254(n)]`
-/

namespace A263264.P16941922687540089353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263264.P16941922687540089353

/-! ## A263264.P15746313329026056178

`eq[5, A263275(n)]`
-/

namespace A263264.P15746313329026056178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263264.P15746313329026056178

/-! ## A263264.P14199875549296842589

`A263255(∑[n+4]+10)`
-/

namespace A263264.P14199875549296842589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A263264.P14199875549296842589

/-! ## A263264.P16321923767590128517

`or(char[1], A263255(A000096(n+3)+5))`
-/

namespace A263264.P16321923767590128517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263255 (A000096 (n + 3) + 5).toNat)

end

end A263264.P16321923767590128517

/-! ## A263264.P4663832163584570411

`A263255(A000096(n+3)+5)%A190048(n)`
-/

namespace A263264.P4663832163584570411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263255 (A000096 (n + 3) + 5).toNat) (A190048 n)

end

end A263264.P4663832163584570411

/-! ## A263264.P14836448316893522139

`A007318(C(2, n))*A263255(A000096(n+3)+5)`
-/

namespace A263264.P14836448316893522139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263255 (A000096 (n + 3) + 5).toNat

end

end A263264.P14836448316893522139

/-! ## A263264.P7365076121567480908

`A007318(abs((-1)^n))*A263255(A000096(n+3)+5)`
-/

namespace A263264.P7365076121567480908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |(-1) ^ n|.toNat * A263255 (A000096 (n + 3) + 5).toNat

end

end A263264.P7365076121567480908

/-! ## A263264.P3827925058440814692

`A000045(gcd(n+1, 2*n))*A263255(A000096(n+3)+5)`
-/

namespace A263264.P3827925058440814692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd (n + 1) (2 * n)) * A263255 (A000096 (n + 3) + 5).toNat

end

end A263264.P3827925058440814692

/-! ## A263264.P13326768613005473263

`A001221(A031388(n+1))*A263255(A000096(n+3)+5)`
-/

namespace A263264.P13326768613005473263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A031388 (n + 1)).toNat * A263255 (A000096 (n + 3) + 5).toNat

end

end A263264.P13326768613005473263

/-! ## A263264.P9166163146539502590

`A001221(A140513(n))*A263255(A000096(n+3)+5)`
-/

namespace A263264.P9166163146539502590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140513 n).toNat * A263255 (A000096 (n + 3) + 5).toNat

end

end A263264.P9166163146539502590

/-! ## A263264.P16443982467791714128

`A001221(A090988(n+1))*A263255(A000096(n+3)+5)`
-/

namespace A263264.P16443982467791714128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A090988 (n + 1)).toNat * A263255 (A000096 (n + 3) + 5).toNat

end

end A263264.P16443982467791714128

/-!
# A263265: Irregular triangle T(n,k), n >= 0, k = 1 .. A262507(n), read by rows, where each row n lists in ascending order all integers x for which A155043(x) = n.

The programs for A263265, there is no canonical definition to state claims against.
-/

/-! ## A263265.P9968460655087822252

`A263267(A123068(n+1)%A095330(n+2))`
-/

namespace A263265.P9968460655087822252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (Int.tmod (A123068 (n + 1)) (A095330 (n + 2))).toNat

end

end A263265.P9968460655087822252

/-! ## A263265.P3830019952371229753

`A263267(A123068(n+1))%A263240(2*(n+1))`
-/

namespace A263265.P3830019952371229753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263267 (A123068 (n + 1)).toNat) (A263240 (2 * (n + 1)))

end

end A263265.P3830019952371229753

/-!
# A263266: Inverse permutation to A263265: a(0) = 0; for n >= 1, a(n) = A263259(n) + A263260(A155043(n)-1) - 1.

The programs for A263266, there is no canonical definition to state claims against.
-/

/-! ## A263266.P9382059214361236930

`A263268(n)-A185284(A000700(n))`
-/

namespace A263266.P9382059214361236930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 n - A185284 (A000700 n).toNat

end

end A263266.P9382059214361236930

/-! ## A263266.P16495652810322720653

`A263268(n)-A185238(A110855(n))`
-/

namespace A263266.P16495652810322720653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 n - A185238 (A110855 n).toNat

end

end A263266.P16495652810322720653

/-! ## A263266.P9699729008983216547

`A263268(n)%A120693(n+1)`
-/

namespace A263266.P9699729008983216547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263268 n) (A120693 (n + 1))

end

end A263266.P9699729008983216547

/-! ## A263266.P3264068440078521383

`A263268(n)+A000007(A227954(n))`
-/

namespace A263266.P3264068440078521383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 n + A000007 (A227954 n).toNat

end

end A263266.P3264068440078521383

/-! ## A263266.P4003702068401902233

`A263268(n)+A000007(A277198(n))`
-/

namespace A263266.P4003702068401902233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 n + A000007 (A277198 n).toNat

end

end A263266.P4003702068401902233

/-!
# A263267: Breadth-first traversal of the tree defined by the edge-relation A049820(child) = parent.

The programs for A263267, there is no canonical definition to state claims against.
-/

/-! ## A263267.P1608141769985023333

`A263265(A123068(n+1)%A095330(n+2))`
-/

namespace A263267.P1608141769985023333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (Int.tmod (A123068 (n + 1)) (A095330 (n + 2))).toNat

end

end A263267.P1608141769985023333

/-! ## A263267.P12918481283757822100

`A263265(A123068(n+1))%A263240(2*(n+1))`
-/

namespace A263267.P12918481283757822100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263265 (A123068 (n + 1)).toNat) (A263240 (2 * (n + 1)))

end

end A263267.P12918481283757822100

/-! ## A263267.P8123299813772451664

`A263265(n)%A080313(n)`
-/

namespace A263267.P8123299813772451664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263265 n) (A080313 n)

end

end A263267.P8123299813772451664

/-! ## A263267.P17078172125055327486

`and(A086839(n+1), A263265(n))`
-/

namespace A263267.P17078172125055327486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086839 (n + 1)) (A263265 n)

end

end A263267.P17078172125055327486

/-! ## A263267.P3180404802649169055

`A263265(n)^A117816((n+1)/∏{p}[n+1, #])`
-/

namespace A263267.P3180404802649169055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263265 n : ℚ) ^ (A117816 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A263267.P3180404802649169055

/-!
# A263268: Inverse permutation to A263267.

The programs for A263268, there is no canonical definition to state claims against.
-/

/-! ## A263268.P2439541886904206134

`A263266(n)+A185284(A000700(n))`
-/

namespace A263268.P2439541886904206134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 n + A185284 (A000700 n).toNat

end

end A263268.P2439541886904206134

/-! ## A263268.P3199719595117343737

`A263266(n)+A185238(A110855(n))`
-/

namespace A263268.P3199719595117343737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 n + A185238 (A110855 n).toNat

end

end A263268.P3199719595117343737

/-!
# A263269: The right edge of irregular table A263267.

The programs for A263269, there is no canonical definition to state claims against.
-/

/-! ## A263269.P8998248560099680644

`A263267(A263260(n)-1)`
-/

namespace A263269.P8998248560099680644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A263260 n - 1).toNat

end

end A263269.P8998248560099680644

/-! ## A263269.P1334664012291375609

`A263267(∑[A262507(n)]-1)`
-/

namespace A263269.P1334664012291375609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A263269.P1334664012291375609

/-! ## A263269.P11671779602774355968

`A263267(A263266(A262503(n)))`
-/

namespace A263269.P11671779602774355968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A263266 (A262503 n).toNat).toNat

end

end A263269.P11671779602774355968

/-! ## A263269.P8004291298149533899

`A263267(∑[A262507(n)%A263260(n)])`
-/

namespace A263269.P8004291298149533899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262507 n) (A263260 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263269.P8004291298149533899

/-! ## A263269.P3229469757374844830

`A263267(record[A263266(n+1)-A263259(n+1)])`
-/

namespace A263269.P3229469757374844830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (n + 1) - A263259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263269.P3229469757374844830

/-!
# A263270: Each n occurs A262507(n) times.

The programs for A263270, there is no canonical definition to state claims against.
-/

/-! ## A263270.P7761231967598234542

`A155043(A263265(n))`
-/

namespace A263270.P7761231967598234542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A263265 n).toNat

end

end A263270.P7761231967598234542

/-! ## A263270.P5181464368466261373

`∑[char[A263260(n)]]`
-/

namespace A263270.P5181464368466261373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263260 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263270.P5181464368466261373

/-! ## A263270.P965352571141794278

`∑[char[∑[A262507(n)]]]`
-/

namespace A263270.P965352571141794278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263270.P965352571141794278

/-! ## A263270.P8322099096191118587

`A155043(A263267(n))`
-/

namespace A263270.P8322099096191118587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A263267 n).toNat

end

end A263270.P8322099096191118587

/-! ## A263270.P8702766644054878172

`∑[char[A263266(A261089(n+1))]]`
-/

namespace A263270.P8702766644054878172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (A261089 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263270.P8702766644054878172

/-! ## A263270.P7618221778302321061

`∑[char[A263266(A261089(n))]]-1`
-/

namespace A263270.P7618221778302321061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (A261089 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A263270.P7618221778302321061

/-!
# A263272: Self-inverse permutation of nonnegative integers: a(n) = A263273(2*n) / 2.

The programs for A263272, there is no canonical definition to state claims against.
-/

/-! ## A263272.P7758834998952461095

`A264984(n)/2`
-/

namespace A263272.P7758834998952461095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264984 n : ℚ) / 2

end

end A263272.P7758834998952461095

/-! ## A263272.P6568410253349879097

`A263273(2*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263272.P6568410253349879097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (2 * n) : ℚ) / 2

end

end A263272.P6568410253349879097

/-! ## A263272.P9198905770400998526

`A264976(A264974(n))`
-/

namespace A263272.P9198905770400998526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (A264974 n).toNat

end

end A263272.P9198905770400998526

/-! ## A263272.P15722158196752566423

`A264974(A264975(n))`
-/

namespace A263272.P15722158196752566423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264975 n).toNat

end

end A263272.P15722158196752566423

/-! ## A263272.P5595611750540098953

`A266641(A057889(n))`
-/

namespace A263272.P5595611750540098953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A057889 n).toNat

end

end A263272.P5595611750540098953

/-! ## A263272.P17044912534499531062

`A057889(A266642(n))`
-/

namespace A263272.P17044912534499531062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266642 n).toNat

end

end A263272.P17044912534499531062

/-! ## A263272.P6274148900777706016

`A246200(A264968(n))`
-/

namespace A263272.P6274148900777706016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264968 n).toNat

end

end A263272.P6274148900777706016

/-! ## A263272.P18209920641400860409

`A265355(A264985(n))`
-/

namespace A263272.P18209920641400860409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264985 n).toNat

end

end A263272.P18209920641400860409

/-! ## A263272.P16879817749269052584

`A264985(A265356(n))`
-/

namespace A263272.P16879817749269052584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265356 n).toNat

end

end A263272.P16879817749269052584

/-! ## A263272.P1437920185414900330

`A265355((A264983(n)-1)/2)`
-/

namespace A263272.P1437920185414900330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A263272.P1437920185414900330

/-! ## A263272.P6645680077485300993

`A246200(A266644(2*n)/2)`
-/

namespace A263272.P6645680077485300993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (SequenceMachineLib.roundAway ((A266644 (2 * n) : ℚ) / 2)).toNat

end

end A263272.P6645680077485300993

/-! ## A263272.P15331585761499836282

`A265344(A264978(n))`
-/

namespace A263272.P15331585761499836282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A264978 n).toNat

end

end A263272.P15331585761499836282

/-! ## A263272.P8719266112211756801

`A266641(A265369(A264966(n)))`
-/

namespace A263272.P8719266112211756801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A265369 (A264966 n).toNat).toNat

end

end A263272.P8719266112211756801

/-! ## A263272.P14045575410175412640

`A265351(A263273(n))`
-/

namespace A263272.P14045575410175412640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A263273 n).toNat

end

end A263272.P14045575410175412640

/-! ## A263272.P7613539780735154872

`A265904(A265351(n))`
-/

namespace A263272.P7613539780735154872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265904 (A265351 n).toNat

end

end A263272.P7613539780735154872

/-! ## A263272.P9739401663564289946

`A265351(A264985(A265353(n)))`
-/

namespace A263272.P9739401663564289946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264985 (A265353 n).toNat).toNat

end

end A263272.P9739401663564289946

/-! ## A263272.P1706921179793838745

`A264967(A246200(n))`
-/

namespace A263272.P1706921179793838745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264967 (A246200 n).toNat

end

end A263272.P1706921179793838745

/-! ## A263272.P2060977220003020942

`A266643(A246200(2*n))/2`
-/

namespace A263272.P2060977220003020942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266643 (A246200 (2 * n)).toNat : ℚ) / 2

end

end A263272.P2060977220003020942

/-! ## A263272.P11043199539017138843

`A057889(A264966(2*n)/2)`
-/

namespace A263272.P11043199539017138843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A264966 (2 * n) : ℚ) / 2)).toNat

end

end A263272.P11043199539017138843

/-! ## A263272.P12454745683868801379

`A265344(A264974(2*n)/2)`
-/

namespace A263272.P12454745683868801379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (SequenceMachineLib.roundAway ((A264974 (2 * n) : ℚ) / 2)).toNat

end

end A263272.P12454745683868801379

/-!
# A263273: Bijective base-3 reverse: a(0) = 0; for n >= 1, a(n) = A030102(A038502(n)) * A038500(n).

The programs for A263273, there is no canonical definition to state claims against.
-/

/-! ## A263273.P15553492868473871636

`A266643(A246200(n))`
-/

namespace A263273.P15553492868473871636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 n).toNat

end

end A263273.P15553492868473871636

/-! ## A263273.P7498049998386279824

`A030102(n)*A038500(A028310(n))`
-/

namespace A263273.P7498049998386279824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n * A038500 (A028310 n).toNat

end

end A263273.P7498049998386279824

/-! ## A263273.P17620123423608199781

`A265352(A263272(n))`
-/

namespace A263273.P17620123423608199781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A263272 n).toNat

end

end A263273.P17620123423608199781

/-! ## A263273.P13369152513732156988

`A265352(A264984(n)/2)`
-/

namespace A263273.P13369152513732156988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A263273.P13369152513732156988

/-! ## A263273.P11718999255043863356

`A265354(A264985(n))`
-/

namespace A263273.P11718999255043863356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A264985 n).toNat

end

end A263273.P11718999255043863356

/-! ## A263273.P9949674570497671049

`A265354(A264996(n+1)-1)`
-/

namespace A263273.P9949674570497671049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A264996 (n + 1) - 1).toNat

end

end A263273.P9949674570497671049

/-! ## A263273.P6255612149108601685

`A265354((A264983(n)-1)/2)`
-/

namespace A263273.P6255612149108601685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A263273.P6255612149108601685

/-! ## A263273.P3018453999018878608

`A264965(A057889(n))`
-/

namespace A263273.P3018453999018878608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A057889 n).toNat

end

end A263273.P3018453999018878608

/-! ## A263273.P12194084707006559090

`A264965(A263272(A266641(n)))`
-/

namespace A263273.P12194084707006559090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A263272 (A266641 n).toNat).toNat

end

end A263273.P12194084707006559090

/-! ## A263273.P10218959011624537305

`A265366(A264978(n))`
-/

namespace A263273.P10218959011624537305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265366 (A264978 n).toNat

end

end A263273.P10218959011624537305

/-! ## A263273.P1006117746612593292

`A057889(A264966(n))`
-/

namespace A263273.P1006117746612593292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264966 n).toNat

end

end A263273.P1006117746612593292

/-! ## A263273.P12818922387251781407

`A264985(A265353(n))`
-/

namespace A263273.P12818922387251781407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265353 n).toNat

end

end A263273.P12818922387251781407

/-! ## A263273.P1334090375533063620

`A264985((A265341(n)-1)/2)`
-/

namespace A263273.P1334090375533063620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (SequenceMachineLib.roundAway ((A265341 n - 1 : ℚ) / 2)).toNat

end

end A263273.P1334090375533063620

/-! ## A263273.P6821846714988014893

`A246200(A266644(n))`
-/

namespace A263273.P6821846714988014893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266644 n).toNat

end

end A263273.P6821846714988014893

/-! ## A263273.P17602400164020110249

`A263272(A265351(n))`
-/

namespace A263273.P17602400164020110249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265351 n).toNat

end

end A263273.P17602400164020110249

/-! ## A263273.P10448075976075945017

`A263272(A265342(n)/2)`
-/

namespace A263273.P10448075976075945017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A265342 n : ℚ) / 2)).toNat

end

end A263273.P10448075976075945017

/-! ## A263273.P7055868276353208172

`A264978(A265365(n))`
-/

namespace A263273.P7055868276353208172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265365 n).toNat

end

end A263273.P7055868276353208172

/-! ## A263273.P7725384603656030089

`A030102(n)*A038500(A004277(n))`
-/

namespace A263273.P7725384603656030089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n * A038500 (A004277 n).toNat

end

end A263273.P7725384603656030089

/-! ## A263273.P10184002389907058462

`A265366(A264974(2*n)/2)`
-/

namespace A263273.P10184002389907058462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265366 (SequenceMachineLib.roundAway ((A264974 (2 * n) : ℚ) / 2)).toNat

end

end A263273.P10184002389907058462

/-! ## A263273.P13672173566519154067

`A265364(A264974(n))`
-/

namespace A263273.P13672173566519154067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (A264974 n).toNat

end

end A263273.P13672173566519154067

/-!
# A263274: One-based column index to array A263255.

The programs for A263274, there is no canonical definition to state claims against.
-/

/-! ## A263274.P16646522656157824326

`A124768(∑[A318191(n)²!])`
-/

namespace A263274.P16646522656157824326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A318191 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263274.P16646522656157824326

/-! ## A263274.P10708657899421176250

`A275806(A131270(n+1)+2^n)`
-/

namespace A263274.P10708657899421176250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A131270 (n + 1) + (2 ^ n : ℤ)).toNat

end

end A263274.P10708657899421176250

/-! ## A263274.P7970301952661211291

`gcd(A000005(A233777(n)), A053407(n))`
-/

namespace A263274.P7970301952661211291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A233777 n).toNat) (A053407 n)

end

end A263274.P7970301952661211291

/-! ## A263274.P10911924811619532307

`A124768(∑[A116891(A073492(n+1))])`
-/

namespace A263274.P10911924811619532307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (A073492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263274.P10911924811619532307

/-! ## A263274.P5830449453045921895

`A029244(n)+A001221(A004273(A063886(n)))`
-/

namespace A263274.P5830449453045921895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n + A001221 (A004273 (A063886 n).toNat).toNat

end

end A263274.P5830449453045921895

/-!
# A263275: One-based row-index to array A263255.

The programs for A263275, there is no canonical definition to state claims against.
-/

/-! ## A263275.P16049923840664936568

`1+A263254(n)`
-/

namespace A263275.P16049923840664936568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A263254 n

end

end A263275.P16049923840664936568

/-! ## A263275.P16316267340376801312

`A008619(2*A263254(n))`
-/

namespace A263275.P16316267340376801312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A263254 n).toNat

end

end A263275.P16316267340376801312

/-! ## A263275.P2380270747025756996

`A027656(2*A263254(n))`
-/

namespace A263275.P2380270747025756996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A263254 n).toNat

end

end A263275.P2380270747025756996

/-! ## A263275.P18181088085471547630

`A028242(2*A263254(n))`
-/

namespace A263275.P18181088085471547630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A263254 n).toNat

end

end A263275.P18181088085471547630

/-! ## A263275.P252978878024820787

`A242112(2*A263254(n))`
-/

namespace A263275.P252978878024820787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (2 * A263254 n).toNat

end

end A263275.P252978878024820787

/-! ## A263275.P12066096080253644059

`A008611(3*A263254(n))`
-/

namespace A263275.P12066096080253644059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A263254 n).toNat

end

end A263275.P12066096080253644059

/-! ## A263275.P15430158533761015424

`A155043(n)+1-A262904(n)`
-/

namespace A263275.P15430158533761015424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n + (1 - A262904 n)

end

end A263275.P15430158533761015424

/-! ## A263275.P16385086679120495706

`A155043(n)+1-A155043(A262679(n))`
-/

namespace A263275.P16385086679120495706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n + (1 - A155043 (A262679 n).toNat)

end

end A263275.P16385086679120495706

/-! ## A263275.P15186736771074894828

`2-(A262693(A259934(n))-A263254(n))`
-/

namespace A263275.P15186736771074894828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A262693 (A259934 n).toNat - A263254 n)

end

end A263275.P15186736771074894828

/-! ## A263275.P9492812664974092045

`2-(A097325(A017377(n))-A263254(n))`
-/

namespace A263275.P9492812664974092045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A097325 (A017377 n).toNat - A263254 n)

end

end A263275.P9492812664974092045

/-!
# A263276: Positions of squares in A259934.

The programs for A263276, there is no canonical definition to state claims against.
-/

/-! ## A263276.P10759328873524729939

`A263277(n)+a(n-1)` with `a(0)=0`
-/

namespace A263276.P10759328873524729939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A263277 n + a (n - 1)

end

end A263276.P10759328873524729939

/-! ## A263276.P11153389142297163350

`∑[∑{e}[A000079(n), A263277(#)]]`
-/

namespace A263276.P11153389142297163350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A263277 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263276.P11153389142297163350

/-! ## A263276.P3690807740856661175

`∑[A263277(n+1)]-A263277(n+1)`
-/

namespace A263276.P3690807740856661175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A263277 (n + 1)

end

end A263276.P3690807740856661175

/-! ## A263276.P12245439259555932926

`A261088(A262515(n))`
-/

namespace A263276.P12245439259555932926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261088 (A262515 n).toNat

end

end A263276.P12245439259555932926

/-! ## A263276.P1723369484664553693

`A261088(sqrt(A262514(n)))`
-/

namespace A263276.P1723369484664553693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261088 (SequenceMachineLib.roundAway (Real.sqrt (A262514 n : ℝ))).toNat

end

end A263276.P1723369484664553693

/-!
# A263277: First differences of A263276; length of n-th run of terms of same parity in A259934.

The programs for A263277, there is no canonical definition to state claims against.
-/

/-! ## A263277.P16960789840229653343

`A263276(n+1)-A263276(n)`
-/

namespace A263277.P16960789840229653343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 (n + 1) - A263276 n

end

end A263277.P16960789840229653343

/-! ## A263277.P17470586856208885515

`Δ[A263276(n)]`
-/

namespace A263277.P17470586856208885515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263277.P17470586856208885515

/-! ## A263277.P18038852388448892557

`record[A263276(A263259(n))]-A263276(n)`
-/

namespace A263277.P18038852388448892557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 (A263259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A263276 n

end

end A263277.P18038852388448892557

/-! ## A263277.P14946507504175195966

`record[A263276(A263274(n))]-A263276(n)`
-/

namespace A263277.P14946507504175195966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 (A263274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A263276 n

end

end A263277.P14946507504175195966

/-! ## A263277.P6180380707640141917

`record[A263276(A263275(n))]-A263276(n)`
-/

namespace A263277.P6180380707640141917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 (A263275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A263276 n

end

end A263277.P6180380707640141917

/-!
# A263278: a(n) = length of n-th run of even terms in A259934.

The programs for A263278, there is no canonical definition to state claims against.
-/

/-! ## A263278.P16021417618043274722

`A263277(2*n+1)`
-/

namespace A263278.P16021417618043274722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263277 (2 * n + 1)

end

end A263278.P16021417618043274722

/-! ## A263278.P8300090221110879377

`record[Δ[A263276(n)]]`
-/

namespace A263278.P8300090221110879377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263278.P8300090221110879377

/-! ## A263278.P8075058956015289404

`record[A263277(n+1)]`
-/

namespace A263278.P8075058956015289404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263278.P8075058956015289404

/-! ## A263278.P704053294157690044

`record[A263276(n+1)-A263276(n)]`
-/

namespace A263278.P704053294157690044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263276 (n + 1) - A263276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263278.P704053294157690044

/-!
# A263279: a(n) = A263259(A259934(n)); one-based position of A259934(n) at row n of table A263265.

The programs for A263279, there is no canonical definition to state claims against.
-/

/-! ## A263279.P10318389004400556724

`A263259(A259934(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263279.P10318389004400556724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A259934 n).toNat

end

end A263279.P10318389004400556724

/-! ## A263279.P16484728020575418249

`A262507(n)-A263280(n)`
-/

namespace A263279.P16484728020575418249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n - A263280 n

end

end A263279.P16484728020575418249

/-! ## A263279.P10430547216116100097

`A263259(record[A262679(n)])`
-/

namespace A263279.P10430547216116100097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263279.P10430547216116100097

/-! ## A263279.P16543378500116108732

`A263259(A261103(n)+A261089(n))`
-/

namespace A263279.P16543378500116108732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A261103 n + A261089 n).toNat

end

end A263279.P16543378500116108732

/-! ## A263279.P7298646888455628249

`A263259(A262503(n)-A262506(n))`
-/

namespace A263279.P7298646888455628249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262503 n - A262506 n).toNat

end

end A263279.P7298646888455628249

/-! ## A263279.P18259444101621178981

`A263259(A262505(n)+A261089(n)-A262506(n))`
-/

namespace A263279.P18259444101621178981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262505 n + A261089 n - A262506 n).toNat

end

end A263279.P18259444101621178981

/-! ## A263279.P1377906948685023802

`A263259(A262503(n))-A263280(n)`
-/

namespace A263279.P1377906948685023802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262503 n).toNat - A263280 n

end

end A263279.P1377906948685023802

/-! ## A263279.P5894362823415310803

`A263259(A262505(n)+A261089(n))-A263280(n)`
-/

namespace A263279.P5894362823415310803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262505 n + A261089 n).toNat - A263280 n

end

end A263279.P5894362823415310803

/-! ## A263279.P8825869523949948363

`A263259(lt[A263254(n), 1])`
-/

namespace A263279.P8825869523949948363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A263279.P8825869523949948363

/-! ## A263279.P6773506992480929493

`A263259(lt[A263275(n), 2])`
-/

namespace A263279.P6773506992480929493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263275 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A263279.P6773506992480929493

/-! ## A263279.P8027868015824322174

`A263259(A263255(∑[n]))`
-/

namespace A263279.P8027868015824322174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A263255 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A263279.P8027868015824322174

/-!
# A263280: a(n) = A262507(n) - A263279(n); number of integers k > A259934(n) for which A155043(k) = n = A155043(A259934(n)).

The programs for A263280, there is no canonical definition to state claims against.
-/

/-! ## A263280.P5515264804007282373

`A262507(n)-A263279(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263280.P5515264804007282373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n - A263279 n

end

end A263280.P5515264804007282373

/-! ## A263280.P12293010710670466624

`A262507(n)-A263259(A259934(n))`
-/

namespace A263280.P12293010710670466624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n - A263259 (A259934 n).toNat

end

end A263280.P12293010710670466624

/-! ## A263280.P12191926684708924018

`A262507(n)-A263259(record[A262679(n)])`
-/

namespace A263280.P12191926684708924018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n - A263259 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263280.P12191926684708924018

/-! ## A263280.P16250614216711895679

`A263259(A262503(n))-A263279(n)`
-/

namespace A263280.P16250614216711895679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262503 n).toNat - A263279 n

end

end A263280.P16250614216711895679

/-! ## A263280.P9908561714088345143

`A263259(A262503(n))-A263259(A259934(n))`
-/

namespace A263280.P9908561714088345143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262503 n).toNat - A263259 (A259934 n).toNat

end

end A263280.P9908561714088345143

/-!
# A263281: Fixed points of permutations A263265 and A263266.

The programs for A263281, there is no canonical definition to state claims against.
-/

/-! ## A263281.P3206514277399564480

`eq[n, A263265(n)]`
-/

namespace A263281.P3206514277399564480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263281.P3206514277399564480

/-! ## A263281.P11269218672983263494

`eq[n, A263266(n)]`
-/

namespace A263281.P11269218672983263494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263281.P11269218672983263494

/-! ## A263281.P12468808892270506725

`lt[A263265(n)%A028310(n), 1]`
-/

namespace A263281.P12468808892270506725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263265 n) (A028310 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263281.P12468808892270506725

/-! ## A263281.P17951362572217000286

`lt[lcm(2*n, A263265(n)), A238748(n+1)]`
-/

namespace A263281.P17951362572217000286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (A263265 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263281.P17951362572217000286

/-!
# A263282: Numbers n such that 6n is in A002822 but n is not.

The programs for A263282, there is no canonical definition to state claims against.
-/

/-! ## A263282.P3066270947787713962

`A008615(∩[A002822(n+1), A054775(n+1)])`
-/

namespace A263282.P3066270947787713962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263282.P3066270947787713962

/-! ## A263282.P1356317653075027406

`A008615(∩[A054775(n+1), A153196(n+1)+1])`
-/

namespace A263282.P1356317653075027406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263282.P1356317653075027406

/-! ## A263282.P4577451580489433175

`A008615(∩[6*A067611(n+1), A002822(n+1)])`
-/

namespace A263282.P4577451580489433175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A067611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263282.P4577451580489433175

/-!
# A263284: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs on n vertices with domination number k.

The programs for A263284, there is no canonical definition to state claims against.
-/

/-! ## A263284.P6542805661992366863

`A332404(n+1)%A117785(n+1)`
-/

namespace A263284.P6542805661992366863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332404 (n + 1)) (A117785 (n + 1))

end

end A263284.P6542805661992366863

/-! ## A263284.P16869051463980202002

`A332404(n+1)^A304042(3*n+1)!`
-/

namespace A263284.P16869051463980202002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332404 (n + 1) ^ Nat.factorial (A304042 (3 * n + 1)).toNat

end

end A263284.P16869051463980202002

/-! ## A263284.P18135203546342250941

`A332404(n+1)+A000007(A005252(n))`
-/

namespace A263284.P18135203546342250941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332404 (n + 1) + A000007 (A005252 n).toNat

end

end A263284.P18135203546342250941

/-! ## A263284.P8156806660106838171

`A118759(A332404(n+1))`
-/

namespace A263284.P8156806660106838171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A332404 (n + 1)).toNat

end

end A263284.P8156806660106838171

/-! ## A263284.P17782955655592315689

`A332404(A242415(n+1))`
-/

namespace A263284.P17782955655592315689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332404 (A242415 (n + 1)).toNat

end

end A263284.P17782955655592315689

/-!
# A263285: Number of (n+3)X(2+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263285, there is no canonical definition to state claims against.
-/

/-! ## A263285.P18340306195353631245

`A263288(∑[n+2])`
-/

namespace A263285.P18340306195353631245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263285.P18340306195353631245

/-! ## A263285.P15049006880035614358

`record[A263288(A117142(n+2))]`
-/

namespace A263285.P15049006880035614358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263285.P15049006880035614358

/-!
# A263286: Number of (n+3)X(3+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263286, there is no canonical definition to state claims against.
-/

/-! ## A263286.P3975387021050316756

`A263288(∑[n+3]+1)`
-/

namespace A263286.P3975387021050316756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263286.P3975387021050316756

/-! ## A263286.P4572282053035916385

`lcm(2, A263288(A034856(n+2)))`
-/

namespace A263286.P4572282053035916385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263288 (A034856 (n + 2)).toNat)

end

end A263286.P4572282053035916385

/-! ## A263286.P4130831743107822909

`A263288(A034856(n+2))+A070138(n+1)`
-/

namespace A263286.P4130831743107822909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A034856 (n + 2)).toNat + A070138 (n + 1)

end

end A263286.P4130831743107822909

/-!
# A263287: Number of (n+3)X(4+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263287, there is no canonical definition to state claims against.
-/

/-! ## A263287.P6840922071885629345

`A263288(A141214(n+1))`
-/

namespace A263287.P6840922071885629345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A141214 (n + 1)).toNat

end

end A263287.P6840922071885629345

/-! ## A263287.P7054911730690653759

`A263288(A027379(n+2))`
-/

namespace A263287.P7054911730690653759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A027379 (n + 2)).toNat

end

end A263287.P7054911730690653759

/-!
# A263288: T(n,k)=Number of (n+3)X(k+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263288, there is no canonical definition to state claims against.
-/

/-! ## A263288.P8947425483760801417

`A070138(A001250(n+4))*A127105(n+5)`
-/

namespace A263288.P8947425483760801417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (A001250 (n + 4)).toNat * A127105 (n + 5)

end

end A263288.P8947425483760801417

/-!
# A263289: Number of (1+3)X(n+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263289, there is no canonical definition to state claims against.
-/

/-! ## A263289.P673538970819840446

`A263288(∑[n]+1)`
-/

namespace A263289.P673538970819840446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263289.P673538970819840446

/-! ## A263289.P14762025025807477719

`lcm(2, A263288(A000124(n)))`
-/

namespace A263289.P14762025025807477719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263288 (A000124 n).toNat)

end

end A263289.P14762025025807477719

/-! ## A263289.P2667215305797794263

`record[A263288(∑[A057979(n)])]`
-/

namespace A263289.P2667215305797794263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263289.P2667215305797794263

/-! ## A263289.P16968837388677344596

`record[A263288(A134519(n+1))]`
-/

namespace A263289.P16968837388677344596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263289.P16968837388677344596

/-!
# A263290: Number of (2+3)X(n+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263290, there is no canonical definition to state claims against.
-/

/-! ## A263290.P14479231553674839398

`A263288(∑[n+1]+2)`
-/

namespace A263290.P14479231553674839398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263290.P14479231553674839398

/-! ## A263290.P16041827534194010683

`record[A263288(A133263(n))-char[1]]`
-/

namespace A263290.P16041827534194010683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A133263 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263290.P16041827534194010683

/-! ## A263290.P15018197316104325730

`record[A263288(n+1)/A177767(n)]`
-/

namespace A263290.P15018197316104325730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263288 (n + 1) : ℚ) / (A177767 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263290.P15018197316104325730

/-! ## A263290.P5527583580787976043

`A008406(n+1)*A263288(A133263(n+1))`
-/

namespace A263290.P5527583580787976043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (n + 1) * A263288 (A133263 (n + 1)).toNat

end

end A263290.P5527583580787976043

/-! ## A263290.P17951648524265560774

`A263288(A133263(n+1))+A010894(n+3)`
-/

namespace A263290.P17951648524265560774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A133263 (n + 1)).toNat + A010894 (n + 3 + 21)

end

end A263290.P17951648524265560774

/-!
# A263291: Number of (3+3)X(n+3) 0..1 arrays with each row divisible by 11 and column not divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A263291, there is no canonical definition to state claims against.
-/

/-! ## A263291.P2858949847551470288

`A263288(∑[n+2]+4)`
-/

namespace A263291.P2858949847551470288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263291.P2858949847551470288

/-! ## A263291.P15698838925961005633

`lcm(2, A263288(A167614(n+1)))`
-/

namespace A263291.P15698838925961005633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263288 (A167614 (n + 1)).toNat)

end

end A263291.P15698838925961005633

/-! ## A263291.P11902658301408211864

`A263288(A167614(n+1))+A053392(n)`
-/

namespace A263291.P11902658301408211864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263288 (A167614 (n + 1)).toNat + A053392 n

end

end A263291.P11902658301408211864

/-!
# A263292: Number of distinct values of |product(A) - product(B)| where A and B are a partition of {1,2,...,n}.

The programs for A263292, there is no canonical definition to state claims against.
-/

/-! ## A263292.P17012525590833443287

`ceil(A060957(n)/2)`
-/

namespace A263292.P17012525590833443287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060957 n : ℚ) / 2⌉

end

end A263292.P17012525590833443287

/-! ## A263292.P5634612252635668735

`A060957(round(acot(n)+n))/2`
-/

namespace A263292.P5634612252635668735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060957 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 2

end

end A263292.P5634612252635668735

/-! ## A263292.P16735457629627691834

`A060957(n)/A130130(n)!`
-/

namespace A263292.P16735457629627691834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060957 n : ℚ) / (Nat.factorial (A130130 n).toNat : ℚ)

end

end A263292.P16735457629627691834

/-! ## A263292.P2834968202772624675

`round(A060957(n)/A141310(2*n+1))`
-/

namespace A263292.P2834968202772624675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060957 n : ℚ) / (A141310 (2 * n + 1) : ℚ))

end

end A263292.P2834968202772624675

/-!
# A263293: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs with n vertices and maximum vertex degree k, (0 <= k < n).

The programs for A263293, there is no canonical definition to state claims against.
-/

/-! ## A263293.P3558114343923956830

`A294217(A038722(n+1))`
-/

namespace A263293.P3558114343923956830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A038722 (n + 1)).toNat

end

end A263293.P3558114343923956830

/-! ## A263293.P9755630869569864237

`A294217(A061579(n)+1)`
-/

namespace A263293.P9755630869569864237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A061579 n + 1).toNat

end

end A263293.P9755630869569864237

/-! ## A263293.P11436260818996092582

`A294217(A114327(n)+1+n)`
-/

namespace A263293.P11436260818996092582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A114327 n + 1 + (n : ℤ)).toNat

end

end A263293.P11436260818996092582

/-! ## A263293.P14096326389877770938

`A294217(A093995(n+1)-n)`
-/

namespace A263293.P14096326389877770938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A263293.P14096326389877770938

/-! ## A263293.P7700230465613480151

`A294217(A002024(n+1)²-n)`
-/

namespace A263293.P7700230465613480151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A263293.P7700230465613480151

/-! ## A263293.P11063124550852211828

`A294217(A025581(n)+A057944(n)+1)`
-/

namespace A263293.P11063124550852211828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A025581 n + (A057944 n + 1)).toNat

end

end A263293.P11063124550852211828

/-!
# A263294: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs with n vertices and treewidth k.

The programs for A263294, there is no canonical definition to state claims against.
-/

/-! ## A263294.P18292872345315648151

`A347707(A202181(n+1))`
-/

namespace A263294.P18292872345315648151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (A202181 (n + 1)).toNat

end

end A263294.P18292872345315648151

/-! ## A263294.P11280365835777924795

`A284949(n+1)+A067898(A067903(n+1))`
-/

namespace A263294.P11280365835777924795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284949 (n + 1) + A067898 (A067903 (n + 1)).toNat

end

end A263294.P11280365835777924795

/-! ## A263294.P5883565327085820574

`A345101(A284949(n+1))%A364463(2*(n+1))`
-/

namespace A263294.P5883565327085820574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345101 (A284949 (n + 1)).toNat) (A364463 (2 * (n + 1)))

end

end A263294.P5883565327085820574

/-! ## A263294.P5598653321415319962

`A382430(A238802(n))+A361745(n)`
-/

namespace A263294.P5598653321415319962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382430 (A238802 n).toNat + A361745 n

end

end A263294.P5598653321415319962

/-! ## A263294.P1436948648538892570

`A284949(n+1)+A284258(A184694(n+1))`
-/

namespace A263294.P1436948648538892570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284949 (n + 1) + A284258 (A184694 (n + 1)).toNat

end

end A263294.P1436948648538892570

/-!
# A263296: Triangle read by rows: T(n,k) is the number of graphs with n vertices with edge connectivity k.

The programs for A263296, there is no canonical definition to state claims against.
-/

/-! ## A263296.P14503693825618020904

`A332502(A342753(n+1)+A092582(n+1))`
-/

namespace A263296.P14503693825618020904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (A342753 (n + 1) + A092582 (n + 1)).toNat

end

end A263296.P14503693825618020904

/-! ## A263296.P8703364366861343828

`A146775(n+1)%A000040(A105306(n+1))`
-/

namespace A263296.P8703364366861343828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146775 (n + 1)) (A000040 (A105306 (n + 1)).toNat)

end

end A263296.P8703364366861343828

/-! ## A263296.P4321190952103224591

`xor(A032741(A324095(n+1)), A259862(n+1))`
-/

namespace A263296.P4321190952103224591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032741 (A324095 (n + 1)).toNat) (A259862 (n + 1))

end

end A263296.P4321190952103224591

/-!
# A263297: The greater of bigomega(n) and maximal prime index in the prime factorization of n.

The programs for A263297, the canonical program `A263297.P13367388864379357855` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263297 has offset 1).

The definition of A263297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6074 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263297.P8379474612760603380

`A056239(n+1)-A325223(n+1)`
-/

namespace A263297.P8379474612760603380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A325223 (n + 1)

end

end A263297.P8379474612760603380

namespace A263297

/-- `A056239(n+1)-A325223(n+1)` -/
def P8379474612760603380.Spec : Prop :=
  ∀ n, P8379474612760603380.a n = A263297 (n + 1)

theorem P8379474612760603380.correct : P8379474612760603380.Spec := by
  intro n
  simp only [A263297, Nat.add_sub_cancel, A263297.P8379474612760603380.a, A263297.P13367388864379357855.a, A000265, A000265.P16482698636471710744.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A325223, A325223.P14926081058052058470.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A263297

/-! ## A263297.P12070635949358953050

`A001222(n+1)+A061395(n+1)-A325225(n+1)`
-/

namespace A263297.P12070635949358953050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A061395 (n + 1) - A325225 (n + 1))

end

end A263297.P12070635949358953050

namespace A263297

/-- `A001222(n+1)+A061395(n+1)-A325225(n+1)` -/
def P12070635949358953050.Spec : Prop :=
  ∀ n, P12070635949358953050.a n = A263297 (n + 1)

theorem P12070635949358953050.correct : P12070635949358953050.Spec := by
  intro n
  simp only [A263297, Nat.add_sub_cancel, A263297.P12070635949358953050.a, A263297.P13367388864379357855.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A325225, A325225.P14443977259877716091.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A263297

/-! ## A263297.P13367388864379357855

`A061395(A000265(n+1)*A105560(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A263297

/-- `A061395(A000265(n+1)*A105560(n+1))` -/
def P13367388864379357855.Spec : Prop :=
  ∀ n, P13367388864379357855.a n = A263297 (n + 1)

theorem P13367388864379357855.correct : P13367388864379357855.Spec := by
  intro n
  simp only [A263297, Nat.add_sub_cancel]

end A263297

/-! ## A263297.P2578862775409078487

`A252464(A265283(2*n))-A325225(n+1)`
-/

namespace A263297.P2578862775409078487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A265283 (2 * n)).toNat - A325225 (n + 1)

end

end A263297.P2578862775409078487

namespace A263297

/-- `A252464(A265283(2*n))-A325225(n+1)` -/
def P2578862775409078487.Spec : Prop :=
  ∀ n, P2578862775409078487.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P14035571764766738440

`A061395((n+1)*A105560(n+1))`
-/

namespace A263297.P14035571764766738440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A105560 (n + 1)).toNat

end

end A263297.P14035571764766738440

namespace A263297

/-- `A061395((n+1)*A105560(n+1))` -/
def P14035571764766738440.Spec : Prop :=
  ∀ n, P14035571764766738440.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P4972690464744827317

`A252735(A105560(2*(n+1))*A117366(n+1))`
-/

namespace A263297.P4972690464744827317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A105560 (2 * (n + 1)) * A117366 (n + 1)).toNat

end

end A263297.P4972690464744827317

namespace A263297

/-- `A252735(A105560(2*(n+1))*A117366(n+1))` -/
def P4972690464744827317.Spec : Prop :=
  ∀ n, P4972690464744827317.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P8561385964484964679

`A061395((A061395(n+1)+1)*A331170(n+1))`
-/

namespace A263297.P8561385964484964679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((A061395 (n + 1) + 1) * A331170 (n + 1)).toNat

end

end A263297.P8561385964484964679

namespace A263297

/-- `A061395((A061395(n+1)+1)*A331170(n+1))` -/
def P8561385964484964679.Spec : Prop :=
  ∀ n, P8561385964484964679.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P5718138314551731795

`A061395((n+1)*A329607(n+1))`
-/

namespace A263297.P5718138314551731795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A329607 (n + 1)).toNat

end

end A263297.P5718138314551731795

namespace A263297

/-- `A061395((n+1)*A329607(n+1))` -/
def P5718138314551731795.Spec : Prop :=
  ∀ n, P5718138314551731795.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P8615032108235175518

`A061395((n+1)*A122111(A046523(n+1)))`
-/

namespace A263297.P8615032108235175518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A122111 (A046523 (n + 1)).toNat).toNat

end

end A263297.P8615032108235175518

namespace A263297

/-- `A061395((n+1)*A122111(A046523(n+1)))` -/
def P8615032108235175518.Spec : Prop :=
  ∀ n, P8615032108235175518.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P14250382938740479417

`A061395((n+1)/(1/A105560(n+1))²)`
-/

namespace A263297.P14250382938740479417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 / (A105560 (n + 1) : ℚ)) ^ 2)).toNat

end

end A263297.P14250382938740479417

namespace A263297

/-- `A061395((n+1)/(1/A105560(n+1))²)` -/
def P14250382938740479417.Spec : Prop :=
  ∀ n, P14250382938740479417.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P9732778658355649123

`A061395(A331170(n+1)²)`
-/

namespace A263297.P9732778658355649123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A331170 (n + 1) ^ 2).toNat

end

end A263297.P9732778658355649123

namespace A263297

/-- `A061395(A331170(n+1)²)` -/
def P9732778658355649123.Spec : Prop :=
  ∀ n, P9732778658355649123.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P12880503908597266987

`A061395((n+1)*A331170(n+1))`
-/

namespace A263297.P12880503908597266987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A331170 (n + 1)).toNat

end

end A263297.P12880503908597266987

namespace A263297

/-- `A061395((n+1)*A331170(n+1))` -/
def P12880503908597266987.Spec : Prop :=
  ∀ n, P12880503908597266987.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P9197104693506086654

`A061395((n+1)*A322865(n+1))`
-/

namespace A263297.P9197104693506086654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A322865 (n + 1)).toNat

end

end A263297.P9197104693506086654

namespace A263297

/-- `A061395((n+1)*A322865(n+1))` -/
def P9197104693506086654.Spec : Prop :=
  ∀ n, P9197104693506086654.a n = A263297 (n + 1)

end A263297

/-! ## A263297.P17998292593479739194

`A061395((n+1)*A241909(A046523(n+1)))`
-/

namespace A263297.P17998292593479739194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A241909 (A046523 (n + 1)).toNat).toNat

end

end A263297.P17998292593479739194

namespace A263297

/-- `A061395((n+1)*A241909(A046523(n+1)))` -/
def P17998292593479739194.Spec : Prop :=
  ∀ n, P17998292593479739194.a n = A263297 (n + 1)

end A263297


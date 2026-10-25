import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
# A262000: a(n) = n^2*(7*n - 5)/2.

The programs for A262000, the canonical program `A262000.P9398281205895535941` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262000 has offset 0).

The definition of A262000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(7*n-5)/2` (program `A262000.P10759444155611924088`, by `A262000.P10759444155611924088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262000.P10759444155611924088

`n²*(7*n-5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262000.P10759444155611924088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 2

end

end A262000.P10759444155611924088

namespace A262000

/-- `n²*(7*n-5)/2` -/
def P10759444155611924088.Spec : Prop :=
  ∀ n, P10759444155611924088.a n = (A262000 n : ℚ)

theorem P10759444155611924088.correct : P10759444155611924088.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A262000, Nat.add_sub_cancel, A262000.P10759444155611924088.a, A262000.P9398281205895535941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A262000, Nat.add_sub_cancel, A262000.P10759444155611924088.a, A262000.P9398281205895535941.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A262000

/-! ## A262000.P9398281205895535941

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=72`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262000

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9398281205895535941.Spec : Prop :=
  ∀ n, P9398281205895535941.a n = A262000 n

theorem P9398281205895535941.correct : P9398281205895535941.Spec := by
  intro n
  simp only [A262000]

end A262000

/-! ## A262000.P8106757246336808395

`n*∑[a(n-1)+7]` with `a(0)=0, a(1)=1`
-/

namespace A262000.P8106757246336808395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262000.P8106757246336808395

namespace A262000

/-- `n*∑[a(n-1)+7]` -/
def P8106757246336808395.Spec : Prop :=
  ∀ n, (P8106757246336808395.a n : ℤ) = A262000 n

end A262000

/-! ## A262000.P5196027754677857494

`n*(6-∑[a(n-1)-7])` with `a(0)=6`
-/

namespace A262000.P5196027754677857494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (6 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262000.P5196027754677857494

namespace A262000

/-- `n*(6-∑[a(n-1)-7])` -/
def P5196027754677857494.Spec : Prop :=
  ∀ n, P5196027754677857494.a n = A262000 n

end A262000

/-! ## A262000.P5765550328705231238

`n*A001106(n)`
-/

namespace A262000.P5765550328705231238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001106 n

end

end A262000.P5765550328705231238

namespace A262000

/-- `n*A001106(n)` -/
def P5765550328705231238.Spec : Prop :=
  ∀ n, P5765550328705231238.a n = A262000 n

end A262000

/-! ## A262000.P1350578526819696292

`n*(A389608(n)-1)`
-/

namespace A262000.P1350578526819696292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A389608 n - 1)

end

end A262000.P1350578526819696292

namespace A262000

/-- `n*(A389608(n)-1)` -/
def P1350578526819696292.Spec : Prop :=
  ∀ n, P1350578526819696292.a n = A262000 n

end A262000

/-! ## A262000.P2438978293319310478

`n/2*A139268(n)`
-/

namespace A262000.P2438978293319310478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A139268 n : ℚ)

end

end A262000.P2438978293319310478

namespace A262000

/-- `n/2*A139268(n)` -/
def P2438978293319310478.Spec : Prop :=
  ∀ n, P2438978293319310478.a n = (A262000 n : ℚ)

theorem P2438978293319310478.correct : P2438978293319310478.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A262000, Nat.add_sub_cancel, A262000.P2438978293319310478.a, A262000.P9398281205895535941.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A262000, Nat.add_sub_cancel, A262000.P2438978293319310478.a, A262000.P9398281205895535941.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A262000

/-! ## A262000.P4785015913815993586

`n/3*A152759(n)`
-/

namespace A262000.P4785015913815993586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A152759 n : ℚ)

end

end A262000.P4785015913815993586

namespace A262000

/-- `n/3*A152759(n)` -/
def P4785015913815993586.Spec : Prop :=
  ∀ n, P4785015913815993586.a n = (A262000 n : ℚ)

end A262000

/-! ## A262000.P4742958844076606965

`n/4*A152760(n)`
-/

namespace A262000.P4742958844076606965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A152760 n : ℚ)

end

end A262000.P4742958844076606965

namespace A262000

/-- `n/4*A152760(n)` -/
def P4742958844076606965.Spec : Prop :=
  ∀ n, P4742958844076606965.a n = (A262000 n : ℚ)

theorem P4742958844076606965.correct : P4742958844076606965.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A262000, Nat.add_sub_cancel, A262000.P4742958844076606965.a, A262000.P9398281205895535941.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A262000, Nat.add_sub_cancel, A262000.P4742958844076606965.a, A262000.P9398281205895535941.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A262000

/-! ## A262000.P4299205330790414990

`n*(A218471(n)-n)`
-/

namespace A262000.P4299205330790414990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A218471 n - (n : ℤ))

end

end A262000.P4299205330790414990

namespace A262000

/-- `n*(A218471(n)-n)` -/
def P4299205330790414990.Spec : Prop :=
  ∀ n, P4299205330790414990.a n = A262000 n

end A262000

/-! ## A262000.P7396499832925333394

`n²+A329530(n)-n`
-/

namespace A262000.P7396499832925333394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A329530 n - (n : ℤ))

end

end A262000.P7396499832925333394

namespace A262000

/-- `n²+A329530(n)-n` -/
def P7396499832925333394.Spec : Prop :=
  ∀ n, P7396499832925333394.a n = A262000 n

end A262000

/-! ## A262000.P3936854515689172764

`floor(n*(A239449(n)-1)/2)`
-/

namespace A262000.P3936854515689172764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((A239449 n - 1 : ℚ) / 2)⌋

end

end A262000.P3936854515689172764

namespace A262000

/-- `floor(n*(A239449(n)-1)/2)` -/
def P3936854515689172764.Spec : Prop :=
  ∀ n, P3936854515689172764.a n = A262000 n

end A262000

/-! ## A262000.P13867523072705389385

`n*(A140065(n+1)-(n+1))`
-/

namespace A262000.P13867523072705389385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A140065 (n + 1) - (n + 1 : ℤ))

end

end A262000.P13867523072705389385

namespace A262000

/-- `n*(A140065(n+1)-(n+1))` -/
def P13867523072705389385.Spec : Prop :=
  ∀ n, P13867523072705389385.a n = A262000 n

end A262000

/-! ## A262000.P16363928770286063598

`(7*n+2)*(A000217(n)-n)+n`
-/

namespace A262000.P16363928770286063598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 2 : ℤ) * (A000217 n - (n : ℤ)) + (n : ℤ)

end

end A262000.P16363928770286063598

namespace A262000

/-- `(7*n+2)*(A000217(n)-n)+n` -/
def P16363928770286063598.Spec : Prop :=
  ∀ n, P16363928770286063598.a n = A262000 n

end A262000

/-! ## A262000.P16699929320833471867

`(A016945(n)+n-1)*(∑[n]-n)+n`
-/

namespace A262000.P16699929320833471867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n + ((n : ℤ) - 1)) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) + (n : ℤ)

end

end A262000.P16699929320833471867

namespace A262000

/-- `(A016945(n)+n-1)*(∑[n]-n)+n` -/
def P16699929320833471867.Spec : Prop :=
  ∀ n, P16699929320833471867.a n = A262000 n

end A262000

/-! ## A262000.P13273734969464019288

`A045991(n)+A006597(n)`
-/

namespace A262000.P13273734969464019288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + A006597 n

end

end A262000.P13273734969464019288

namespace A262000

/-- `A045991(n)+A006597(n)` -/
def P13273734969464019288.Spec : Prop :=
  ∀ n, P13273734969464019288.a n = A262000 n

end A262000

/-! ## A262000.P8379063715227019458

`A135503(n)+A005945(n)`
-/

namespace A262000.P8379063715227019458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A005945 n

end

end A262000.P8379063715227019458

namespace A262000

/-- `A135503(n)+A005945(n)` -/
def P8379063715227019458.Spec : Prop :=
  ∀ n, P8379063715227019458.a n = A262000 n

end A262000

/-! ## A262000.P12720333110732855869

`A237616(n)+A007531(n)`
-/

namespace A262000.P12720333110732855869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n + A007531 n

end

end A262000.P12720333110732855869

namespace A262000

/-- `A237616(n)+A007531(n)` -/
def P12720333110732855869.Spec : Prop :=
  ∀ n, P12720333110732855869.a n = A262000 n

end A262000

/-! ## A262000.P9688367712223527465

`A212343(n+2)+A071230(n)`
-/

namespace A262000.P9688367712223527465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212343 (n + 2) + A071230 n

end

end A262000.P9688367712223527465

namespace A262000

/-- `A212343(n+2)+A071230(n)` -/
def P9688367712223527465.Spec : Prop :=
  ∀ n, P9688367712223527465.a n = A262000 n

end A262000

/-! ## A262000.P9581628928000114032

`2*A015237(n)-A002411(n)`
-/

namespace A262000.P9581628928000114032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015237 n - A002411 n

end

end A262000.P9581628928000114032

namespace A262000

/-- `2*A015237(n)-A002411(n)` -/
def P9581628928000114032.Spec : Prop :=
  ∀ n, P9581628928000114032.a n = A262000 n

end A262000

/-!
# A262001: G.f.: 1/(1 - x*F'(x)/F(x)) where F(x) = Sum_{n>=0} x^n/n!*Product_{k=1..n} (k^2 + 1).

The programs for A262001, there is no canonical definition to state claims against.
-/

/-! ## A262001.P12710548757026057171

`and(A098616(n), A262942(A098616(n)))`
-/

namespace A262001.P12710548757026057171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098616 n) (A262942 (A098616 n).toNat)

end

end A262001.P12710548757026057171

/-!
# A262002: L.g.f.: log( Sum_{n>=0} x^n/n! * Product_{k=1..n} (k^2 + 1) ).

The programs for A262002, there is no canonical definition to state claims against.
-/

/-! ## A262002.P11135140181838883343

`2*A263270(A152275(n+1))`
-/

namespace A262002.P11135140181838883343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263270 (A152275 (n + 1)).toNat

end

end A262002.P11135140181838883343

/-!
# A262006: G.f. satisfies: A(x) = 1+x + x*Sum_{n=-oo..+oo} x^n*A(x)^n * (A(x)^n - x^n)^n.

The programs for A262006, there is no canonical definition to state claims against.
-/

/-! ## A262006.P5860166619585065024

`A344619(A249402(n))+A186028(n)`
-/

namespace A262006.P5860166619585065024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (A249402 n).toNat + A186028 n

end

end A262006.P5860166619585065024

/-! ## A262006.P1795202550317360889

`A110277(A032158(n))-A370316(A028310(n))`
-/

namespace A262006.P1795202550317360889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110277 (A032158 n).toNat - A370316 (A028310 n).toNat

end

end A262006.P1795202550317360889

/-! ## A262006.P10880845992044801607

`A046155(A232974(n))-A098391(A008277(3*n+1))`
-/

namespace A262006.P10880845992044801607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A232974 n).toNat - A098391 (A008277 (3 * n + 1)).toNat

end

end A262006.P10880845992044801607

/-!
# A262007: G.f.: Sum_{n=-oo..+oo} x^n * (1 - x^n)^n / (1 - x)^n.

The programs for A262007, there is no canonical definition to state claims against.
-/

/-! ## A262007.P17091622169076619465

`A193592(A327779(n+4)+A001700(n))`
-/

namespace A262007.P17091622169076619465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A327779 (n + 4) + A001700 n).toNat

end

end A262007.P17091622169076619465

/-!
# A262009: Sum_{d|n} 2^(d^2) * n^2/d^2.

The programs for A262009, the canonical program `A262009.P5003196392149849826` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262009 has offset 1).

The definition of A262009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262009.P5003196392149849826

`∑{d}[n+1, 2^#²*((n+1)/#)²]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262009

/-- `∑{d}[n+1, 2^#²*((n+1)/#)²]` -/
def P5003196392149849826.Spec : Prop :=
  ∀ n, P5003196392149849826.a n = (A262009 (n + 1) : ℚ)

end A262009

/-!
# A262011: a(n) = (1/n!) * Product_{k=1..n} (k^3 + 1).

The programs for A262011, there is no canonical definition to state claims against.
-/

/-! ## A262011.P6183923624742077562

`(n+1)*A130032(n)`
-/

namespace A262011.P6183923624742077562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130032 n

end

end A262011.P6183923624742077562

/-! ## A262011.P14775959076599499872

`(n+1)*∏[(1-n)²+n]`
-/

namespace A262011.P14775959076599499872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A262011.P14775959076599499872

/-! ## A262011.P16754367782143690930

`floor((n²+1/n)*a(n-1))` with `a(0)=1`
-/

namespace A262011.P16754367782143690930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n ^ 2 : ℚ) + 1 / (n : ℚ)) * (a (n - 1) : ℚ)⌋

end

end A262011.P16754367782143690930

/-! ## A262011.P18231443452596421782

`a(n-1)/n+n²*a(n-1)` with `a(0)=1`
-/

namespace A262011.P18231443452596421782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) + (n ^ 2 : ℚ) * a (n - 1)

end

end A262011.P18231443452596421782

/-! ## A262011.P13244907173294874804

`a(n-1)/n+n*n*a(n-1)` with `a(0)=1`
-/

namespace A262011.P13244907173294874804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) + (n : ℚ) * ((n : ℚ) * a (n - 1))

end

end A262011.P13244907173294874804

/-!
# A262015: a(n) = [x^n] (1-x)^(4*n+1) * Sum_{k>=0} binomial(n+k-1,k)^4 * x^k.

The programs for A262015, there is no canonical definition to state claims against.
-/

/-! ## A262015.P15349213318786496541

`A262014(∑[3*n])`
-/

namespace A262015.P15349213318786496541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262015.P15349213318786496541

/-! ## A262015.P15251168648851707738

`lcm((-1)^n, A262014(∑[n]+n²))`
-/

namespace A262015.P15251168648851707738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A262014 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2))

end

end A262015.P15251168648851707738

/-! ## A262015.P12023527494438954501

`record[A262014(A002264(∑[n]))]`
-/

namespace A262015.P12023527494438954501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262014 (A002264 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262015.P12023527494438954501

/-! ## A262015.P9955452065888097354

`record[A262014(∑[A008611(n)])]`
-/

namespace A262015.P9955452065888097354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262014 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262015.P9955452065888097354

/-! ## A262015.P13146042567302794792

`record[A262014(n*A008611(2*n))]`
-/

namespace A262015.P13146042567302794792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262014 ((n : ℤ) * A008611 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262015.P13146042567302794792

/-!
# A262017: The first of five consecutive positive integers the sum of the squares of which is equal to the sum of the squares of six consecutive positive integers.

The programs for A262017, there is no canonical definition to state claims against.
-/

/-! ## A262017.P3840297635454995957

`A133275(n+2)-2`
-/

namespace A262017.P3840297635454995957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133275 (n + 2) - 2

end

end A262017.P3840297635454995957

/-! ## A262017.P11065874755588943196

`A157097(n+1)-4`
-/

namespace A262017.P11065874755588943196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157097 (n + 1) - 4

end

end A262017.P11065874755588943196

/-! ## A262017.P8722465910995606335

`60*A212336(n)+1`
-/

namespace A262017.P8722465910995606335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A212336 n + 1

end

end A262017.P8722465910995606335

/-! ## A262017.P13942606872664766471

`3*A157014(n+2)-2`
-/

namespace A262017.P13942606872664766471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157014 (n + 2) - 2

end

end A262017.P13942606872664766471

/-! ## A262017.P17646985395626601713

`xor(60*A212336(n), A001511(A053742(n)))`
-/

namespace A262017.P17646985395626601713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (60 * A212336 n) (A001511 (A053742 n).toNat)

end

end A262017.P17646985395626601713

/-!
# A262018: The first of five consecutive positive integers the sum of the squares of which is equal to the sum of the squares of eleven consecutive positive integers.

The programs for A262018, there is no canonical definition to state claims against.
-/

/-! ## A262018.P16397104275105722002

`A042700(A016813(n))-2`
-/

namespace A262018.P16397104275105722002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042700 (A016813 n).toNat - 2

end

end A262018.P16397104275105722002

/-!
# A262020: Inverse binomial transform of double factorial n!! = A006882(n).

The programs for A262020, the canonical program `A262020.P10000602490922286299` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262020 has offset 0).

The definition of A262020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262020.P10000602490922286299

`(n-2)*a(n-3)+(n-1)*a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262020

/-- `(n-2)*a(n-3)+(n-1)*a(n-2)-2*a(n-1)` -/
def P10000602490922286299.Spec : Prop :=
  ∀ n, P10000602490922286299.a n = A262020 n

theorem P10000602490922286299.correct : P10000602490922286299.Spec := by
  intro n
  simp only [A262020]

end A262020

/-!
# A262021: a(n) = prime(prime(n)) - n.

The programs for A262021, the canonical program `A262021.P16382475691803801981` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262021 has offset 1).

The definition of A262021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262021.P16382475691803801981

`A006450(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262021

/-- `A006450(n+1)-(n+1)` -/
def P16382475691803801981.Spec : Prop :=
  ∀ n, P16382475691803801981.a n = A262021 (n + 1)

theorem P16382475691803801981.correct : P16382475691803801981.Spec := by
  intro n
  simp only [A262021, Nat.add_sub_cancel]

end A262021

/-! ## A262021.P2791507616453164877

`A141138(n+1)-n`
-/

namespace A262021.P2791507616453164877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) - (n : ℤ)

end

end A262021.P2791507616453164877

namespace A262021

/-- `A141138(n+1)-n` -/
def P2791507616453164877.Spec : Prop :=
  ∀ n, P2791507616453164877.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P10052091488114273056

`sqrt(A092769(n+1))-(n+1)`
-/

namespace A262021.P10052091488114273056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A262021.P10052091488114273056

namespace A262021

/-- `sqrt(A092769(n+1))-(n+1)` -/
def P10052091488114273056.Spec : Prop :=
  ∀ n, P10052091488114273056.a n = (A262021 (n + 1) : ℝ)

end A262021

/-! ## A262021.P10707401361601575473

`A073131(n)+a(n-1)-1` with `a(0)=2`
-/

namespace A262021.P10707401361601575473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073131 n + a (n - 1) - 1

end

end A262021.P10707401361601575473

namespace A262021

/-- `A073131(n)+a(n-1)-1` -/
def P10707401361601575473.Spec : Prop :=
  ∀ n, P10707401361601575473.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P9798077692786211232

`A080697(n+1)/(n+1)-(n+1)`
-/

namespace A262021.P9798077692786211232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080697 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A262021.P9798077692786211232

namespace A262021

/-- `A080697(n+1)/(n+1)-(n+1)` -/
def P9798077692786211232.Spec : Prop :=
  ∀ n, P9798077692786211232.a n = (A262021 (n + 1) : ℚ)

end A262021

/-! ## A262021.P17458072580458490556

`A168152(n+1)+A014689(n+1)`
-/

namespace A262021.P17458072580458490556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + A014689 (n + 1)

end

end A262021.P17458072580458490556

namespace A262021

/-- `A168152(n+1)+A014689(n+1)` -/
def P17458072580458490556.Spec : Prop :=
  ∀ n, P17458072580458490556.a n = A262021 (n + 1)

theorem P17458072580458490556.correct : P17458072580458490556.Spec := by
  intro n
  simp only [A262021, Nat.add_sub_cancel, A262021.P17458072580458490556.a, A262021.P16382475691803801981.a, A006450, A006450.P16445646407241112379.a, A014689, A014689.P3456970834266250440.a, A168152, A168152.P14558718132513138966.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262021

/-! ## A262021.P12684565284087446843

`A073136(n+1)-A014688(n+1)`
-/

namespace A262021.P12684565284087446843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073136 (n + 1) - A014688 (n + 1)

end

end A262021.P12684565284087446843

namespace A262021

/-- `A073136(n+1)-A014688(n+1)` -/
def P12684565284087446843.Spec : Prop :=
  ∀ n, P12684565284087446843.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P16278119035244476527

`A175247(n+2)-(n+1)`
-/

namespace A262021.P16278119035244476527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) - (n + 1 : ℤ)

end

end A262021.P16278119035244476527

namespace A262021

/-- `A175247(n+2)-(n+1)` -/
def P16278119035244476527.Spec : Prop :=
  ∀ n, P16278119035244476527.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P14515275081560867541

`A302493(A024620(n+1))-(n+1)`
-/

namespace A262021.P14515275081560867541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302493 (A024620 (n + 1)).toNat - (n + 1 : ℤ)

end

end A262021.P14515275081560867541

namespace A262021

/-- `A302493(A024620(n+1))-(n+1)` -/
def P14515275081560867541.Spec : Prop :=
  ∀ n, P14515275081560867541.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P12571046329532785008

`p?[A076610(n+1)]-(n+1)`
-/

namespace A262021.P12571046329532785008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 : ℤ)

end

end A262021.P12571046329532785008

namespace A262021

/-- `p?[A076610(n+1)]-(n+1)` -/
def P12571046329532785008.Spec : Prop :=
  ∀ n, P12571046329532785008.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P16301966918547531779

`A120426(A000040(n+1))-(n+1)`
-/

namespace A262021.P16301966918547531779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A000040 (n + 1)).toNat - (n + 1 : ℤ)

end

end A262021.P16301966918547531779

namespace A262021

/-- `A120426(A000040(n+1))-(n+1)` -/
def P16301966918547531779.Spec : Prop :=
  ∀ n, P16301966918547531779.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P16969268150554309390

`A120426(A008578(n+2))-(n+1)`
-/

namespace A262021.P16969268150554309390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A008578 (n + 2)).toNat - (n + 1 : ℤ)

end

end A262021.P16969268150554309390

namespace A262021

/-- `A120426(A008578(n+2))-(n+1)` -/
def P16969268150554309390.Spec : Prop :=
  ∀ n, P16969268150554309390.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P15169718917199881361

`p?[A141436(n+1)]-(n+1)`
-/

namespace A262021.P15169718917199881361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 : ℤ)

end

end A262021.P15169718917199881361

namespace A262021

/-- `p?[A141436(n+1)]-(n+1)` -/
def P15169718917199881361.Spec : Prop :=
  ∀ n, P15169718917199881361.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P1090875522827459997

`A111181(A000040(n+1))`
-/

namespace A262021.P1090875522827459997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A000040 (n + 1)).toNat

end

end A262021.P1090875522827459997

namespace A262021

/-- `A111181(A000040(n+1))` -/
def P1090875522827459997.Spec : Prop :=
  ∀ n, P1090875522827459997.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P11984970913783876573

`A111181(A006005(n+1))`
-/

namespace A262021.P11984970913783876573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A006005 (n + 1)).toNat

end

end A262021.P11984970913783876573

namespace A262021

/-- `A111181(A006005(n+1))` -/
def P11984970913783876573.Spec : Prop :=
  ∀ n, P11984970913783876573.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P14135496233796370037

`A111181(A008578(n+2))`
-/

namespace A262021.P14135496233796370037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A008578 (n + 2)).toNat

end

end A262021.P14135496233796370037

namespace A262021

/-- `A111181(A008578(n+2))` -/
def P14135496233796370037.Spec : Prop :=
  ∀ n, P14135496233796370037.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P325877092166091021

`A111181(A075643(n+2))`
-/

namespace A262021.P325877092166091021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A075643 (n + 2)).toNat

end

end A262021.P325877092166091021

namespace A262021

/-- `A111181(A075643(n+2))` -/
def P325877092166091021.Spec : Prop :=
  ∀ n, P325877092166091021.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P5511699825995451410

`A111181(A182986(n+2))`
-/

namespace A262021.P5511699825995451410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A182986 (n + 2)).toNat

end

end A262021.P5511699825995451410

namespace A262021

/-- `A111181(A182986(n+2))` -/
def P5511699825995451410.Spec : Prop :=
  ∀ n, P5511699825995451410.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P6206470629136145438

`record[A111181(A006530(n+1))]`
-/

namespace A262021.P6206470629136145438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262021.P6206470629136145438

namespace A262021

/-- `record[A111181(A006530(n+1))]` -/
def P6206470629136145438.Spec : Prop :=
  ∀ n, P6206470629136145438.a n = A262021 (n + 1)

end A262021

/-! ## A262021.P10261422756042189651

`record[A111181(A014963(n+1))]`
-/

namespace A262021.P10261422756042189651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262021.P10261422756042189651

namespace A262021

/-- `record[A111181(A014963(n+1))]` -/
def P10261422756042189651.Spec : Prop :=
  ∀ n, P10261422756042189651.a n = A262021 (n + 1)

end A262021

/-!
# A262022: Denominator of partial sums of a reordered alternating harmonic series.

The programs for A262022, there is no canonical definition to state claims against.
-/

/-! ## A262022.P13293197943895567727

`∏[A014963(record[A199474(2*n+1)])]`
-/

namespace A262022.P13293197943895567727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262022.P13293197943895567727

/-! ## A262022.P6337108802212614987

`A139552(A285847(2*(n+1)))/2`
-/

namespace A262022.P6337108802212614987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139552 (A285847 (2 * (n + 1))).toNat : ℚ) / 2

end

end A262022.P6337108802212614987

/-! ## A262022.P762189409611152028

`A139552(A186145(3*n+4))/2`
-/

namespace A262022.P762189409611152028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139552 (A186145 (3 * n + 4)).toNat : ℚ) / 2

end

end A262022.P762189409611152028

/-! ## A262022.P15921273598264783246

`∏[A014963(A001222(2^(ceil(4*n/3)+1)))]`
-/

namespace A262022.P15921273598264783246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈4 * ((n : ℚ) / 3)⌉ + 1 : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262022.P15921273598264783246

/-! ## A262022.P10270568078818746913

`A025555(lt[A300891(n+1), A221315(3*n+2)])`
-/

namespace A262022.P10270568078818746913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221315 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262022.P10270568078818746913

/-!
# A262024: Positive fundamental solution x0 corresponding to the even y0 = 2*A261250 of the Pell equation x^2 - D y^2 = +1.

The programs for A262024, there is no canonical definition to state claims against.
-/

/-! ## A262024.P11015428468890137158

`2*A262025(n+1)+1`
-/

namespace A262024.P11015428468890137158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262025 (n + 1) + 1

end

end A262024.P11015428468890137158

/-! ## A262024.P14694416722822733207

`A002350(A007969(n+1))`
-/

namespace A262024.P14694416722822733207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A007969 (n + 1)).toNat

end

end A262024.P14694416722822733207

/-! ## A262024.P6788304515388074527

`A002350(eq[1, A007968(n)])`
-/

namespace A262024.P6788304515388074527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262024.P6788304515388074527

/-! ## A262024.P8568295866319427737

`A006702(4*A007969(n+1))`
-/

namespace A262024.P8568295866319427737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (4 * A007969 (n + 1)).toNat

end

end A262024.P8568295866319427737

/-! ## A262024.P14391008746962550245

`A002350(comp[∪[A007970(n+1), n²]])`
-/

namespace A262024.P14391008746962550245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A262024.P14391008746962550245

/-! ## A262024.P6196668536998476708

`A002350(record[2-A007968(n+1)²+n])`
-/

namespace A262024.P6196668536998476708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007968 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262024.P6196668536998476708

/-! ## A262024.P4711222626694632528

`A262025(n+1)+A262025(n+1)+A133707(n+1)`
-/

namespace A262024.P4711222626694632528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262025 (n + 1) + (A262025 (n + 1) + A133707 (n + 1))

end

end A262024.P4711222626694632528

/-! ## A262024.P5963830101611430832

`A262025(n+1)+A262025(n+1)+A007318(C(2, n))`
-/

namespace A262024.P5963830101611430832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262025 (n + 1) + (A262025 (n + 1) + A007318 (Nat.choose 2 n))

end

end A262024.P5963830101611430832

/-!
# A262025: a(n) = (A262024(n)-1)/2: a(n)*(a(n) + 1) = d(n)*Y(n)^2 with d(n) = A007969 and Y(n) = A261250(n).

The programs for A262025, there is no canonical definition to state claims against.
-/

/-! ## A262025.P2477127348568598978

`(A262024(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262025.P2477127348568598978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262024 (n + 1) - 1 : ℚ) / 2

end

end A262025.P2477127348568598978

/-! ## A262025.P11882823657035465892

`floor(A262024(n+1)/2)`
-/

namespace A262025.P11882823657035465892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262024 (n + 1) : ℚ) / 2⌋

end

end A262025.P11882823657035465892

/-! ## A262025.P14801151035684755267

`floor(A002350(A007969(n+1))/2)`
-/

namespace A262025.P14801151035684755267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002350 (A007969 (n + 1)).toNat : ℚ) / 2⌋

end

end A262025.P14801151035684755267

/-! ## A262025.P2263248343831208216

`floor(A002350(eq[1, A007968(n)])/2)`
-/

namespace A262025.P2263248343831208216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌋

end

end A262025.P2263248343831208216

/-! ## A262025.P2071492072696728173

`A191854(n+1)*A263006(n+1)²`
-/

namespace A262025.P2071492072696728173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191854 (n + 1) * A263006 (n + 1) ^ 2

end

end A262025.P2071492072696728173

/-! ## A262025.P6194314192165707396

`floor(sqrt(A007969(n+1))*A261250(n+1))`
-/

namespace A262025.P6194314192165707396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A007969 (n + 1) : ℝ) * (A261250 (n + 1) : ℝ)⌋

end

end A262025.P6194314192165707396

/-! ## A262025.P6364847922385832530

`A263006(n+1)²*A007966(A007969(n+1))`
-/

namespace A262025.P6364847922385832530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263006 (n + 1) ^ 2 * A007966 (A007969 (n + 1)).toNat

end

end A262025.P6364847922385832530

/-!
# A262026: The positive odd fundamental solutions y = y0(n) for the Pell equation x^2 - d*y^2 = +1. It turns out that d = d(n) coincides with A007970(n).

The programs for A262026, there is no canonical definition to state claims against.
-/

/-! ## A262026.P167534569993430031

`A002349(A007970(n+1))`
-/

namespace A262026.P167534569993430031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A007970 (n + 1)).toNat

end

end A262026.P167534569993430031

/-! ## A262026.P13969896364329541414

`A002349(eq[2, A007968(n)])`
-/

namespace A262026.P13969896364329541414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262026.P13969896364329541414

/-! ## A262026.P6737200981732290744

`A006703(lt[1, A007968(n)])`
-/

namespace A262026.P6737200981732290744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A262026.P6737200981732290744

/-! ## A262026.P195959306687349562

`A006703(eq[2, A007968(n)])`
-/

namespace A262026.P195959306687349562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262026.P195959306687349562

/-! ## A262026.P12354222568060938490

`A006703(or(char[1], A007970(n+1)))`
-/

namespace A262026.P12354222568060938490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007970 (n + 1))).toNat

end

end A262026.P12354222568060938490

/-! ## A262026.P1617251962849651794

`A006703(A007970(2*(n+1)-(n+1)))`
-/

namespace A262026.P1617251962849651794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A007970 (2 * (n + 1) - (n + 1))).toNat

end

end A262026.P1617251962849651794

/-! ## A262026.P13092254900143819922

`A006703(A007970(n+1)-A000007(n))`
-/

namespace A262026.P13092254900143819922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A007970 (n + 1) - A000007 n).toNat

end

end A262026.P13092254900143819922

/-! ## A262026.P2397476507314211026

`A006703(A007970(n+1)*A262681(n))`
-/

namespace A262026.P2397476507314211026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A007970 (n + 1) * A262681 n).toNat

end

end A262026.P2397476507314211026

/-! ## A262026.P2723287906034282142

`or(A000035(n), A006703(A007970(n+1)))`
-/

namespace A262026.P2723287906034282142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A006703 (A007970 (n + 1)).toNat)

end

end A262026.P2723287906034282142

/-! ## A262026.P6456849971930427721

`A007318(C(2, n))*A006703(A007970(n+1))`
-/

namespace A262026.P6456849971930427721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A006703 (A007970 (n + 1)).toNat

end

end A262026.P6456849971930427721

/-!
# A262027: The positive fundamental solutions x = x0(n) for the Pell equation x^2 - d*y^2 = +1 with odd y = y0(n). Then d coincides with d(n) = A007970(n).

The programs for A262027, there is no canonical definition to state claims against.
-/

/-! ## A262027.P6236711003419119213

`A002350(A007970(n+1))`
-/

namespace A262027.P6236711003419119213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A007970 (n + 1)).toNat

end

end A262027.P6236711003419119213

/-! ## A262027.P13407039474261128002

`A002350(lt[1, A007968(n)])`
-/

namespace A262027.P13407039474261128002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A262027.P13407039474261128002

/-! ## A262027.P3782058340725347986

`A002350(eq[2, A007968(n)])`
-/

namespace A262027.P3782058340725347986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262027.P3782058340725347986

/-! ## A262027.P14587404851254446219

`A006702(lt[1, A007968(n)])`
-/

namespace A262027.P14587404851254446219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A262027.P14587404851254446219

/-! ## A262027.P9592734252621285857

`A006702(eq[2, A007968(n)])`
-/

namespace A262027.P9592734252621285857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262027.P9592734252621285857

/-! ## A262027.P955424463205296536

`A006702(or(char[1], A007970(n+1)))`
-/

namespace A262027.P955424463205296536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007970 (n + 1))).toNat

end

end A262027.P955424463205296536

/-! ## A262027.P14331598973255670131

`A002350(eq[1, gcd(2, A010340(n+2))]+2)`
-/

namespace A262027.P14331598973255670131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A010340 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A262027.P14331598973255670131

/-! ## A262027.P1690451730418625334

`round(sqrt(A007970(n+1))*A262026(n+1))`
-/

namespace A262027.P1690451730418625334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A007970 (n + 1) : ℝ) * (A262026 (n + 1) : ℝ))

end

end A262027.P1690451730418625334

/-! ## A262027.P10259766178647673294

`A263009(n+1)²*A191857(n+1)-1`
-/

namespace A262027.P10259766178647673294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263009 (n + 1) ^ 2 * A191857 (n + 1) - 1

end

end A262027.P10259766178647673294

/-! ## A262027.P4143935053068425279

`A006702(A007970(n+1)%(∑[n+3]+1))`
-/

namespace A262027.P4143935053068425279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (Int.tmod (A007970 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A262027.P4143935053068425279

/-!
# A262028: a(n) = (A262026(n) - 1)/2.

The programs for A262028, there is no canonical definition to state claims against.
-/

/-! ## A262028.P14059045102948048331

`(A262026(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262028.P14059045102948048331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262026 (n + 1) - 1 : ℚ) / 2

end

end A262028.P14059045102948048331

/-! ## A262028.P16862740185072056905

`floor(A262026(n+1)/2)`
-/

namespace A262028.P16862740185072056905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262026 (n + 1) : ℚ) / 2⌋

end

end A262028.P16862740185072056905

/-! ## A262028.P11320542437856559051

`floor(A002349(A007970(n+1))/2)`
-/

namespace A262028.P11320542437856559051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002349 (A007970 (n + 1)).toNat : ℚ) / 2⌋

end

end A262028.P11320542437856559051

/-! ## A262028.P10983216896503010345

`floor(A002349(eq[2, A007968(n)])/2)`
-/

namespace A262028.P10983216896503010345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌋

end

end A262028.P10983216896503010345

/-! ## A262028.P13712699711234797721

`floor(A006703(eq[2, A007968(n)])/2)`
-/

namespace A262028.P13712699711234797721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌋

end

end A262028.P13712699711234797721

/-! ## A262028.P4275209718466806712

`and(-2, A262026(n+1))/2%A017137(n)`
-/

namespace A262028.P4275209718466806712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A262026 (n + 1)) : ℚ) / (Int.tmod 2 (A017137 n) : ℚ)

end

end A262028.P4275209718466806712

/-! ## A262028.P3426782233234020892

`(A263008(n+1)*A263009(n+1)-1)/2`
-/

namespace A262028.P3426782233234020892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263008 (n + 1) * A263009 (n + 1) - 1 : ℚ) / 2

end

end A262028.P3426782233234020892

/-! ## A262028.P6353915398636435935

`and(-2, A262026(n+1))/A000005(A104936(n+1))`
-/

namespace A262028.P6353915398636435935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A262026 (n + 1)) : ℚ) / (A000005 (A104936 (n + 1)).toNat : ℚ)

end

end A262028.P6353915398636435935

/-!
# A262031: Numerator of partial sums of a reordered alternating harmonic series.

The programs for A262031, there is no canonical definition to state claims against.
-/

/-! ## A262031.P17998508017218887349

`A037917(2*a(n-1)-a(n-2))+1` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A262031.P17998508017218887349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  A037917 (2 * a (n - 1) - a (n - 2)).toNat + 1

end

end A262031.P17998508017218887349

/-!
# A262032: a(n) = (2^n)! / n!.

The programs for A262032, the canonical program `A262032.P7660676065993726266` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262032 has offset 0).

The definition of A262032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262032.P7660676065993726266

`(2^n)!/n!`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262032

/-- `(2^n)!/n!` -/
def P7660676065993726266.Spec : Prop :=
  ∀ n, P7660676065993726266.a n = (A262032 n : ℚ)

end A262032

/-! ## A262032.P13462914191735359316

`ceil(A000079(n)!/n!)`
-/

namespace A262032.P13462914191735359316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (A000079 n).toNat : ℚ) / (Nat.factorial n : ℚ)⌉

end

end A262032.P13462914191735359316

namespace A262032

/-- `ceil(A000079(n)!/n!)` -/
def P13462914191735359316.Spec : Prop :=
  ∀ n, P13462914191735359316.a n = A262032 n

end A262032

/-! ## A262032.P1259899398257201944

`A000722(n)/A000142(n)`
-/

namespace A262032.P1259899398257201944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000722 n : ℚ) / (A000142 n : ℚ)

end

end A262032.P1259899398257201944

namespace A262032

/-- `A000722(n)/A000142(n)` -/
def P1259899398257201944.Spec : Prop :=
  ∀ n, P1259899398257201944.a n = (A262032 n : ℚ)

end A262032

/-!
# A262033: Number of permutations of [n] beginning with at least floor(n/2) ascents.

The programs for A262033, the canonical program `A262033.P14030227610456495058` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262033 has offset 0).

The definition of A262033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262033.P14030227610456495058

`2*n*(n*(n-1)*a(n-2)-a(n-1))/((n+2)*(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262033

/-- `2*n*(n*(n-1)*a(n-2)-a(n-1))/((n+2)*(n-1))` -/
def P14030227610456495058.Spec : Prop :=
  ∀ n, P14030227610456495058.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P8972695471666000666

`n!/ceil((n+1)/2)!`
-/

namespace A262033.P8972695471666000666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial ⌈(n + 1 : ℚ) / 2⌉.toNat : ℚ)

end

end A262033.P8972695471666000666

namespace A262033

/-- `n!/ceil((n+1)/2)!` -/
def P8972695471666000666.Spec : Prop :=
  ∀ n, P8972695471666000666.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P6673234163262517373

`floor(n/2)!*A057977(n)`
-/

namespace A262033.P6673234163262517373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A057977 n

end

end A262033.P6673234163262517373

namespace A262033

/-- `floor(n/2)!*A057977(n)` -/
def P6673234163262517373.Spec : Prop :=
  ∀ n, P6673234163262517373.a n = A262033 n

end A262033

/-! ## A262033.P10497561468060067892

`n/A158416(n)*a(n-1)` with `a(0)=1`
-/

namespace A262033.P10497561468060067892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A158416 n : ℚ) * a (n - 1)

end

end A262033.P10497561468060067892

namespace A262033

/-- `n/A158416(n)*a(n-1)` -/
def P10497561468060067892.Spec : Prop :=
  ∀ n, P10497561468060067892.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P15645469655476153103

`n/A152271(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A262033.P15645469655476153103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A152271 (n + 1) : ℚ) * a (n - 1)

end

end A262033.P15645469655476153103

namespace A262033

/-- `n/A152271(n+1)*a(n-1)` -/
def P15645469655476153103.Spec : Prop :=
  ∀ n, P15645469655476153103.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P2259305664605352619

`A057977(n)*A081123(n)`
-/

namespace A262033.P2259305664605352619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A081123 n

end

end A262033.P2259305664605352619

namespace A262033

/-- `A057977(n)*A081123(n)` -/
def P2259305664605352619.Spec : Prop :=
  ∀ n, P2259305664605352619.a n = A262033 n

end A262033

/-! ## A262033.P1173417000011708331

`∏[A028310(n)/A158416(n)]`
-/

namespace A262033.P1173417000011708331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A158416 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262033.P1173417000011708331

namespace A262033

/-- `∏[A028310(n)/A158416(n)]` -/
def P1173417000011708331.Spec : Prop :=
  ∀ n, P1173417000011708331.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P1245375362855862128

`∏[A028310(n)/(A142150(n)+1)]`
-/

namespace A262033.P1245375362855862128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A142150 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262033.P1245375362855862128

namespace A262033

/-- `∏[A028310(n)/(A142150(n)+1)]` -/
def P1245375362855862128.Spec : Prop :=
  ∀ n, P1245375362855862128.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P17684955357692988831

`∏[A028310(n)/A152271(n+1)]`
-/

namespace A262033.P17684955357692988831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A152271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262033.P17684955357692988831

namespace A262033

/-- `∏[A028310(n)/A152271(n+1)]` -/
def P17684955357692988831.Spec : Prop :=
  ∀ n, P17684955357692988831.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P6291744412386922330

`∏[A065033(2*n)/A152271(n+1)]`
-/

namespace A262033.P6291744412386922330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n) : ℚ) / (A152271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262033.P6291744412386922330

namespace A262033

/-- `∏[A065033(2*n)/A152271(n+1)]` -/
def P6291744412386922330.Spec : Prop :=
  ∀ n, P6291744412386922330.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P16612305089580920752

`n*a(n-1)/Δ[A117142(n+1)]` with `a(0)=1`
-/

namespace A262033.P16612305089580920752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (f1 (n + 1) - f1 n : ℚ)

end

end A262033.P16612305089580920752

namespace A262033

/-- `n*a(n-1)/Δ[A117142(n+1)]` -/
def P16612305089580920752.Spec : Prop :=
  ∀ n, P16612305089580920752.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P18321995239467187555

`n*a(n-1)/gcd(n+2, A110654(n+1))` with `a(0)=1`
-/

namespace A262033.P18321995239467187555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (Int.gcd (n + 2 : ℤ) (A110654 (n + 1)) : ℚ)

end

end A262033.P18321995239467187555

namespace A262033

/-- `n*a(n-1)/gcd(n+2, A110654(n+1))` -/
def P18321995239467187555.Spec : Prop :=
  ∀ n, P18321995239467187555.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P15239230795015615853

`A205825(n)/A158416(n)`
-/

namespace A262033.P15239230795015615853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205825 n : ℚ) / (A158416 n : ℚ)

end

end A262033.P15239230795015615853

namespace A262033

/-- `A205825(n)/A158416(n)` -/
def P15239230795015615853.Spec : Prop :=
  ∀ n, P15239230795015615853.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P2774469087094869020

`A205825(n)/A152271(n+1)`
-/

namespace A262033.P2774469087094869020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205825 n : ℚ) / (A152271 (n + 1) : ℚ)

end

end A262033.P2774469087094869020

namespace A262033

/-- `A205825(n)/A152271(n+1)` -/
def P2774469087094869020.Spec : Prop :=
  ∀ n, P2774469087094869020.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P10600539426397376225

`n*a(n-1)/A003602(A141310(n))` with `a(0)=1`
-/

namespace A262033.P10600539426397376225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (A003602 (A141310 n).toNat : ℚ)

end

end A262033.P10600539426397376225

namespace A262033

/-- `n*a(n-1)/A003602(A141310(n))` -/
def P10600539426397376225.Spec : Prop :=
  ∀ n, P10600539426397376225.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P17695883970727161589

`A205825(n+1)/(n+1)`
-/

namespace A262033.P17695883970727161589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205825 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A262033.P17695883970727161589

namespace A262033

/-- `A205825(n+1)/(n+1)` -/
def P17695883970727161589.Spec : Prop :=
  ∀ n, P17695883970727161589.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P5655917526471802790

`A081125(n)/A008619(n)`
-/

namespace A262033.P5655917526471802790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A008619 n : ℚ)

end

end A262033.P5655917526471802790

namespace A262033

/-- `A081125(n)/A008619(n)` -/
def P5655917526471802790.Spec : Prop :=
  ∀ n, P5655917526471802790.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P14707712866824513051

`A081125(n)/(A004526(n)+1)`
-/

namespace A262033.P14707712866824513051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A004526 n + 1 : ℚ)

end

end A262033.P14707712866824513051

namespace A262033

/-- `A081125(n)/(A004526(n)+1)` -/
def P14707712866824513051.Spec : Prop :=
  ∀ n, P14707712866824513051.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P12948593857884022207

`A081125(n)/A065033(n+1)`
-/

namespace A262033.P12948593857884022207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A065033 (n + 1) : ℚ)

end

end A262033.P12948593857884022207

namespace A262033

/-- `A081125(n)/A065033(n+1)` -/
def P12948593857884022207.Spec : Prop :=
  ∀ n, P12948593857884022207.a n = (A262033 n : ℚ)

end A262033

/-! ## A262033.P9767605284296902819

`gcd(A205825(n+1), A205825(n))`
-/

namespace A262033.P9767605284296902819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205825 (n + 1)) (A205825 n)

end

end A262033.P9767605284296902819

namespace A262033

/-- `gcd(A205825(n+1), A205825(n))` -/
def P9767605284296902819.Spec : Prop :=
  ∀ n, (P9767605284296902819.a n : ℤ) = A262033 n

end A262033

/-!
# A262034: Number of permutations of [n] beginning with at least ceiling(n/2) ascents.

The programs for A262034, the canonical program `A262034.P10730697069961294553` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262034 has offset 0).

The definition of A262034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262034.P10730697069961294553

`2*((n²-1)*a(n-2)-a(n-1))/(n+3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262034

/-- `2*((n²-1)*a(n-2)-a(n-1))/(n+3)` -/
def P10730697069961294553.Spec : Prop :=
  ∀ n, P10730697069961294553.a n = (A262034 n : ℚ)

end A262034

/-! ## A262034.P10726853523940410904

`floor(A262033(n+1)/(n+1))`
-/

namespace A262034.P10726853523940410904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262033 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A262034.P10726853523940410904

namespace A262034

/-- `floor(A262033(n+1)/(n+1))` -/
def P10726853523940410904.Spec : Prop :=
  ∀ n, P10726853523940410904.a n = A262034 n

end A262034

/-! ## A262034.P11011600780057225226

`floor(∏[(n+1)/A158416(n+1)]/(n+1))`
-/

namespace A262034.P11011600780057225226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A158416 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℚ)⌋

end

end A262034.P11011600780057225226

namespace A262034

/-- `floor(∏[(n+1)/A158416(n+1)]/(n+1))` -/
def P11011600780057225226.Spec : Prop :=
  ∀ n, P11011600780057225226.a n = A262034 n

end A262034

/-! ## A262034.P8003249994902016147

`A265609(A183575(n+1))`
-/

namespace A262034.P8003249994902016147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A183575 (n + 1)).toNat

end

end A262034.P8003249994902016147

namespace A262034

/-- `A265609(A183575(n+1))` -/
def P8003249994902016147.Spec : Prop :=
  ∀ n, P8003249994902016147.a n = A262034 n

end A262034

/-! ## A262034.P3359677532855211711

`A265609(A080476(n+2)-2)`
-/

namespace A262034.P3359677532855211711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A080476 (n + 2) - 2).toNat

end

end A262034.P3359677532855211711

namespace A262034

/-- `A265609(A080476(n+2)-2)` -/
def P3359677532855211711.Spec : Prop :=
  ∀ n, P3359677532855211711.a n = A262034 n

end A262034

/-! ## A262034.P16908346061820670766

`lcm(A008624(n), A173333(A061925(n)))`
-/

namespace A262034.P16908346061820670766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008624 n) (A173333 (A061925 n).toNat)

end

end A262034.P16908346061820670766

namespace A262034

/-- `lcm(A008624(n), A173333(A061925(n)))` -/
def P16908346061820670766.Spec : Prop :=
  ∀ n, (P16908346061820670766.a n : ℤ) = A262034 n

end A262034

/-! ## A262034.P6281872452776844120

`floor(A000142(n)/A000142(A080513(n)))`
-/

namespace A262034.P6281872452776844120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A000142 (A080513 n).toNat : ℚ)⌋

end

end A262034.P6281872452776844120

namespace A262034

/-- `floor(A000142(n)/A000142(A080513(n)))` -/
def P6281872452776844120.Spec : Prop :=
  ∀ n, P6281872452776844120.a n = A262034 n

end A262034

/-! ## A262034.P14930300194366614608

`floor(A000142(n)/A000142(A008619(n+1)))`
-/

namespace A262034.P14930300194366614608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A000142 (A008619 (n + 1)).toNat : ℚ)⌋

end

end A262034.P14930300194366614608

namespace A262034

/-- `floor(A000142(n)/A000142(A008619(n+1)))` -/
def P14930300194366614608.Spec : Prop :=
  ∀ n, P14930300194366614608.a n = A262034 n

end A262034

/-! ## A262034.P12344199894679174311

`floor(A000142(n)/A000142(A008612(3*(n+1))))`
-/

namespace A262034.P12344199894679174311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A000142 (A008612 (3 * (n + 1))).toNat : ℚ)⌋

end

end A262034.P12344199894679174311

namespace A262034

/-- `floor(A000142(n)/A000142(A008612(3*(n+1))))` -/
def P12344199894679174311.Spec : Prop :=
  ∀ n, P12344199894679174311.a n = A262034 n

end A262034

/-!
# A262035: Number of permutations of [2n+1] beginning with exactly n ascents.

The programs for A262035, the canonical program `A262035.P4175627166341111014` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262035 has offset 0).

The definition of A262035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262035.P4175627166341111014

`A262033(2*n+1)-A262034(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262035

/-- `A262033(2*n+1)-A262034(2*n+1)` -/
def P4175627166341111014.Spec : Prop :=
  ∀ n, P4175627166341111014.a n = A262035 n

theorem P4175627166341111014.correct : P4175627166341111014.Spec := by
  intro n
  simp only [A262035]

end A262035

/-! ## A262035.P10711218772711393042

`2*(n+1)*(2*n+1)*a(n-1)/(n+2)` with `a(0)=1, a(1)=2`
-/

namespace A262035.P10711218772711393042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * (n + 1) * (2 * n + 1) : ℚ) * a (n - 1) / (n + 2 : ℚ)

end

end A262035.P10711218772711393042

namespace A262035

/-- `2*(n+1)*(2*n+1)*a(n-1)/(n+2)` -/
def P10711218772711393042.Spec : Prop :=
  ∀ n, P10711218772711393042.a n = (A262035 n : ℚ)

end A262035

/-! ## A262035.P8018634878977401143

`record[n*(4-6/(n+1))*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A262035.P8018634878977401143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  (n : ℚ) * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262035.P8018634878977401143

namespace A262035

/-- `record[n*(4-6/(n+1))*a(n-1)]` -/
def P8018634878977401143.Spec : Prop :=
  ∀ n, P8018634878977401143.a n = (A262035 n : ℚ)

end A262035

/-! ## A262035.P10662158536375065956

`ceil(A001761(n+1)/2)`
-/

namespace A262035.P10662158536375065956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001761 (n + 1) : ℚ) / 2⌉

end

end A262035.P10662158536375065956

namespace A262035

/-- `ceil(A001761(n+1)/2)` -/
def P10662158536375065956.Spec : Prop :=
  ∀ n, P10662158536375065956.a n = A262035 n

end A262035

/-! ## A262035.P15620316919507185607

`A172089((n+2)*2*n)`
-/

namespace A262035.P15620316919507185607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 ((n + 2) * (2 * n))

end

end A262035.P15620316919507185607

namespace A262035

/-- `A172089((n+2)*2*n)` -/
def P15620316919507185607.Spec : Prop :=
  ∀ n, P15620316919507185607.a n = A262035 n

end A262035

/-! ## A262035.P12365607357586240131

`ceil((n+1)!/2*A000108(n+1))`
-/

namespace A262035.P12365607357586240131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / 2 * (A000108 (n + 1) : ℚ)⌉

end

end A262035.P12365607357586240131

namespace A262035

/-- `ceil((n+1)!/2*A000108(n+1))` -/
def P12365607357586240131.Spec : Prop :=
  ∀ n, P12365607357586240131.a n = A262035 n

end A262035

/-! ## A262035.P6294379341021236189

`(n+1)*ratio[A000108(n)]*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A262035.P6294379341021236189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A262035.P6294379341021236189

namespace A262035

/-- `(n+1)*ratio[A000108(n)]*a(n-1)` -/
def P6294379341021236189.Spec : Prop :=
  ∀ n, P6294379341021236189.a n = (A262035 n : ℚ)

end A262035

/-! ## A262035.P13297525784462108419

`record[A001761(n)/A036453(n+1)]`
-/

namespace A262035.P13297525784462108419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001761 n : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262035.P13297525784462108419

namespace A262035

/-- `record[A001761(n)/A036453(n+1)]` -/
def P13297525784462108419.Spec : Prop :=
  ∀ n, P13297525784462108419.a n = (A262035 n : ℚ)

end A262035

/-!
# A262037: Replace the second half of digits of n with the first half in reverse order.

The programs for A262037, there is no canonical definition to state claims against.
-/

/-! ## A262037.P5725581086224179713

`n-(A010879(n)-A000030(A051022(n)))`
-/

namespace A262037.P5725581086224179713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A010879 n - A000030 (A051022 n).toNat)

end

end A262037.P5725581086224179713

/-! ## A262037.P6611589369840120789

`A118759(A138953(n)+n-2*A217657(n))`
-/

namespace A262037.P6611589369840120789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A138953 n + ((n : ℤ) - 2 * A217657 n)).toNat

end

end A262037.P6611589369840120789

/-! ## A262037.P800313023878913421

`A118759(A138953(n)+A225693(n)+A066568(n))`
-/

namespace A262037.P800313023878913421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A138953 n + (A225693 n + A066568 n)).toNat

end

end A262037.P800313023878913421

/-! ## A262037.P10603546445559027724

`A118759(n-2*A217657(n)+n-A329623(n)%A184823(n+1))`
-/

namespace A262037.P10603546445559027724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((n : ℤ) - 2 * A217657 n + ((n : ℤ) - Int.tmod (A329623 n) (A184823 (n + 1)))).toNat

end

end A262037.P10603546445559027724

/-! ## A262037.P15729052539153585596

`A334387(n)+A053392(n)`
-/

namespace A262037.P15729052539153585596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n + A053392 n

end

end A262037.P15729052539153585596

/-! ## A262037.P3729232130346722372

`A334387(n)+A093882(n)`
-/

namespace A262037.P3729232130346722372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n + A093882 n

end

end A262037.P3729232130346722372

/-! ## A262037.P7124734910772254096

`A334387(n)+A138953(n)`
-/

namespace A262037.P7124734910772254096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n + A138953 n

end

end A262037.P7124734910772254096

/-! ## A262037.P65314554303737092

`A334387(n)+A307629(n)`
-/

namespace A262037.P65314554303737092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n + A307629 n

end

end A262037.P65314554303737092

/-!
# A262038: Least palindrome >= n.

The programs for A262038, there is no canonical definition to state claims against.
-/

/-! ## A262038.P4674864810390647949

`A052036(n)+n`
-/

namespace A262038.P4674864810390647949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 n + (n : ℤ)

end

end A262038.P4674864810390647949

/-! ## A262038.P9975459930924377141

`comp[A261423(n)+n+1]-n`
-/

namespace A262038.P9975459930924377141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A262038.P9975459930924377141

/-! ## A262038.P15751704117744404081

`abs(A001489(n)-A052036(n))`
-/

namespace A262038.P15751704117744404081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A052036 n|

end

end A262038.P15751704117744404081

/-! ## A262038.P13986430554039793956

`A002113(∑[char[A002113(n+1)+1]]+1)`
-/

namespace A262038.P13986430554039793956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262038.P13986430554039793956

/-! ## A262038.P14338360009800742881

`A002113(comp[A002113(n+1)+n+1]-n+1)`
-/

namespace A262038.P14338360009800742881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A262038.P14338360009800742881

/-! ## A262038.P17620259070140616347

`abs(A001057(2*n)-A052036(n))`
-/

namespace A262038.P17620259070140616347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (2 * n) - A052036 n|

end

end A262038.P17620259070140616347

/-! ## A262038.P387640485643651582

`A002113(A377191(n)+A136687(n))`
-/

namespace A262038.P387640485643651582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A377191 n + A136687 n).toNat

end

end A262038.P387640485643651582

/-!
# A262039: Nearest palindrome to n; in case of a tie choose the larger palindrome.

The programs for A262039, there is no canonical definition to state claims against.
-/

/-! ## A262039.P7993948567653544442

`A261423(A100771(n)+n)`
-/

namespace A262039.P7993948567653544442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A100771 n + (n : ℤ)).toNat

end

end A262039.P7993948567653544442

/-! ## A262039.P10494460876775862719

`A261423(A261424(n)+n)`
-/

namespace A262039.P10494460876775862719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A261424 n + (n : ℤ)).toNat

end

end A262039.P10494460876775862719

/-! ## A262039.P5550240259210630862

`A261423(A329267(n)+n)`
-/

namespace A262039.P5550240259210630862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A329267 n + (n : ℤ)).toNat

end

end A262039.P5550240259210630862

/-! ## A262039.P8499023601174086822

`A261914(A261424(n)+1+n)`
-/

namespace A262039.P8499023601174086822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A261424 n + 1 + (n : ℤ)).toNat

end

end A262039.P8499023601174086822

/-! ## A262039.P6094451534421737336

`A261423(2*n-A261423(n))`
-/

namespace A262039.P6094451534421737336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 ((2 * n : ℤ) - A261423 n).toNat

end

end A262039.P6094451534421737336

/-! ## A262039.P15654460600629555809

`A261423(n-A261423(n)+n)`
-/

namespace A262039.P15654460600629555809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 ((n : ℤ) - A261423 n + (n : ℤ)).toNat

end

end A262039.P15654460600629555809

/-! ## A262039.P6090001716163059951

`A261914(2*n+1-A261914(n+1))`
-/

namespace A262039.P6090001716163059951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 ((2 * n + 1 : ℤ) - A261914 (n + 1)).toNat

end

end A262039.P6090001716163059951

/-! ## A262039.P10261794627856103086

`A261423(A262257(n)+A262040(n))`
-/

namespace A262039.P10261794627856103086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A262257 n + A262040 n).toNat

end

end A262039.P10261794627856103086

/-! ## A262039.P3188662874277950312

`A262037(A262257(n)+A262040(n))`
-/

namespace A262039.P3188662874277950312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 (A262257 n + A262040 n).toNat

end

end A262039.P3188662874277950312

/-! ## A262039.P12328772834986805214

`A262040(A262257(n)+A262040(n))`
-/

namespace A262039.P12328772834986805214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262040 (A262257 n + A262040 n).toNat

end

end A262039.P12328772834986805214

/-!
# A262040: Nearest palindrome to n; in case of a tie choose the smaller palindrome.

The programs for A262040, there is no canonical definition to state claims against.
-/

/-! ## A262040.P1051962984231445972

`A262038(n-A329267(n))`
-/

namespace A262040.P1051962984231445972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 ((n : ℤ) - A329267 n).toNat

end

end A262040.P1051962984231445972

/-! ## A262040.P11998066934485753865

`A261914(2*n-A261914(n))`
-/

namespace A262040.P11998066934485753865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 ((2 * n : ℤ) - A261914 n).toNat

end

end A262040.P11998066934485753865

/-! ## A262040.P12093216479966323358

`A262037(A262039(n)-A262257(n))`
-/

namespace A262040.P12093216479966323358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 (A262039 n - A262257 n).toNat

end

end A262040.P12093216479966323358

/-! ## A262040.P8930786220513318471

`A262038(A262039(n)-A262257(n))`
-/

namespace A262040.P8930786220513318471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A262039 n - A262257 n).toNat

end

end A262040.P8930786220513318471

/-! ## A262040.P4899577942909756585

`A261423(lt[A005187(n), A109732(2*(n+2))])`
-/

namespace A262040.P4899577942909756585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109732 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262040.P4899577942909756585

/-! ## A262040.P7176853618536362911

`A261423(lt[A261423(2*n), A109732(2*(n+1))])`
-/

namespace A262040.P7176853618536362911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109732 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262040.P7176853618536362911

/-! ## A262040.P1960330079522999993

`A262039(A262039(n)-A262257(n))`
-/

namespace A262040.P1960330079522999993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262039 (A262039 n - A262257 n).toNat

end

end A262040.P1960330079522999993

/-!
# A262042: First column of A261987.

The programs for A262042, there is no canonical definition to state claims against.
-/

/-! ## A262042.P2474369589915290011

`A261987(∑[n]+1)`
-/

namespace A262042.P2474369589915290011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262042.P2474369589915290011

/-! ## A262042.P16191066576945911169

`A261987(A000124(n))+char[21]`
-/

namespace A262042.P16191066576945911169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261987 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262042.P16191066576945911169

/-! ## A262042.P15002086051367558696

`A007318(∑[n])*A261987(A000124(n))`
-/

namespace A262042.P15002086051367558696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A261987 (A000124 n).toNat

end

end A262042.P15002086051367558696

/-! ## A262042.P4428891695730083306

`A261987(A000124(n))%A104850(n+1)`
-/

namespace A262042.P4428891695730083306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261987 (A000124 n).toNat) (A104850 (n + 1))

end

end A262042.P4428891695730083306

/-! ## A262042.P10402987060364336161

`or(A186717(n+5), A261987(A000124(n)))`
-/

namespace A262042.P10402987060364336161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186717 (n + 5)) (A261987 (A000124 n).toNat)

end

end A262042.P10402987060364336161

/-!
# A262043: Carmichael numbers (A002997) that are not absolute Euler pseudoprimes (A033181).

The programs for A262043, there is no canonical definition to state claims against.
-/

/-! ## A262043.P1974243844909186562

`record[A174590(n+1)%2*A002997(n+1)]`
-/

namespace A262043.P1974243844909186562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174590 (n + 1)) 2 * A002997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262043.P1974243844909186562

/-! ## A262043.P14510412420285708325

`A007947(∪[A185321(n+1), A264012(n+1)])`
-/

namespace A262043.P14510412420285708325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A262043.P14510412420285708325

/-! ## A262043.P8325921090097730334

`record[A002997(n+1)-A126120(A174590(n+1))]`
-/

namespace A262043.P8325921090097730334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1) - A126120 (A174590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262043.P8325921090097730334

/-! ## A262043.P13599948459235727352

`A309235(eq[A095691(n+5), A181715(3*n+4)])`
-/

namespace A262043.P13599948459235727352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309235 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262043.P13599948459235727352

/-!
# A262044: Partial sum of the first n odd composite numbers.

The programs for A262044, the canonical program `A262044.P8753774164014263887` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262044 has offset 1).

The definition of A262044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262044.P8753774164014263887

`∑[A071904(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262044

/-- `∑[A071904(n+1)]` -/
def P8753774164014263887.Spec : Prop :=
  ∀ n, P8753774164014263887.a n = A262044 (n + 1)

theorem P8753774164014263887.correct : P8753774164014263887.Spec := by
  intro n
  simp only [A262044, Nat.add_sub_cancel]

end A262044

/-! ## A262044.P15323316800067545094

`∑[eq[1, A107393(n)]]`
-/

namespace A262044.P15323316800067545094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P15323316800067545094

namespace A262044

/-- `∑[eq[1, A107393(n)]]` -/
def P15323316800067545094.Spec : Prop :=
  ∀ n, (P15323316800067545094.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P13045528526401454022

`∑[A309355(n+1)+1]`
-/

namespace A262044.P13045528526401454022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P13045528526401454022

namespace A262044

/-- `∑[A309355(n+1)+1]` -/
def P13045528526401454022.Spec : Prop :=
  ∀ n, P13045528526401454022.a n = A262044 (n + 1)

theorem P13045528526401454022.correct : P13045528526401454022.Spec := by
  intro n
  simp only [A262044, Nat.add_sub_cancel, A262044.P13045528526401454022.f1, A262044.P13045528526401454022.a, A262044.P8753774164014263887.f1, A262044.P8753774164014263887.a, A071904, A071904.P6554188440157640390.a, A309355, A309355.P9345418795961828822.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262044

/-! ## A262044.P512625920071517181

`∑[A007921(n+1)+2]`
-/

namespace A262044.P512625920071517181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P512625920071517181

namespace A262044

/-- `∑[A007921(n+1)+2]` -/
def P512625920071517181.Spec : Prop :=
  ∀ n, P512625920071517181.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P1328393842058217676

`∑[A146538(n+1)+3]`
-/

namespace A262044.P1328393842058217676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P1328393842058217676

namespace A262044

/-- `∑[A146538(n+1)+3]` -/
def P1328393842058217676.Spec : Prop :=
  ∀ n, P1328393842058217676.a n = A262044 (n + 1)

theorem P1328393842058217676.correct : P1328393842058217676.Spec := by
  intro n
  simp only [A262044, Nat.add_sub_cancel, A262044.P1328393842058217676.f1, A262044.P1328393842058217676.a, A262044.P8753774164014263887.f1, A262044.P8753774164014263887.a, A071904, A071904.P6554188440157640390.a, A146538, A146538.P8666981964067901687.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262044

/-! ## A262044.P13857763902002353389

`∑[∑[A067970(n+1)]+1]`
-/

namespace A262044.P13857763902002353389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P13857763902002353389

namespace A262044

/-- `∑[∑[A067970(n+1)]+1]` -/
def P13857763902002353389.Spec : Prop :=
  ∀ n, P13857763902002353389.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P9492959060660705269

`∑[2*A053726(n+1)-1]`
-/

namespace A262044.P9492959060660705269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053726 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P9492959060660705269

namespace A262044

/-- `∑[2*A053726(n+1)-1]` -/
def P9492959060660705269.Spec : Prop :=
  ∀ n, P9492959060660705269.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P5788871504169114388

`∑[lt[1, A325937(n+1)]+1]`
-/

namespace A262044.P5788871504169114388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P5788871504169114388

namespace A262044

/-- `∑[lt[1, A325937(n+1)]+1]` -/
def P5788871504169114388.Spec : Prop :=
  ∀ n, (P5788871504169114388.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P9266941980210858835

`∑[2*lt[2, A000005(2*n+1)]+1]`
-/

namespace A262044.P9266941980210858835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P9266941980210858835

namespace A262044

/-- `∑[2*lt[2, A000005(2*n+1)]+1]` -/
def P9266941980210858835.Spec : Prop :=
  ∀ n, (P9266941980210858835.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P12890240457592764048

`∑[2*lt[A020639(2*n+1), n]+1]`
-/

namespace A262044.P12890240457592764048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P12890240457592764048

namespace A262044

/-- `∑[2*lt[A020639(2*n+1), n]+1]` -/
def P12890240457592764048.Spec : Prop :=
  ∀ n, (P12890240457592764048.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P14158426627593385380

`A309355(n+1)+A163631(n+1)`
-/

namespace A262044.P14158426627593385380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) + A163631 (n + 1)

end

end A262044.P14158426627593385380

namespace A262044

/-- `A309355(n+1)+A163631(n+1)` -/
def P14158426627593385380.Spec : Prop :=
  ∀ n, P14158426627593385380.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P12307336008775664082

`∑[A014076(n+2)]`
-/

namespace A262044.P12307336008775664082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P12307336008775664082

namespace A262044

/-- `∑[A014076(n+2)]` -/
def P12307336008775664082.Spec : Prop :=
  ∀ n, P12307336008775664082.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P8759231609602553281

`A163631(n+2)-1`
-/

namespace A262044.P8759231609602553281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 2) - 1

end

end A262044.P8759231609602553281

namespace A262044

/-- `A163631(n+2)-1` -/
def P8759231609602553281.Spec : Prop :=
  ∀ n, P8759231609602553281.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P14271943336974346940

`∑[sqrt(A062532(n+2))]`
-/

namespace A262044.P14271943336974346940
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P14271943336974346940

namespace A262044

/-- `∑[sqrt(A062532(n+2))]` -/
def P14271943336974346940.Spec : Prop :=
  ∀ n, P14271943336974346940.a n = (A262044 (n + 1) : ℝ)

end A262044

/-! ## A262044.P5734295982966192144

`∑[2*lt[A060684(n+1), n+1]+3]`
-/

namespace A262044.P5734295982966192144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P5734295982966192144

namespace A262044

/-- `∑[2*lt[A060684(n+1), n+1]+3]` -/
def P5734295982966192144.Spec : Prop :=
  ∀ n, (P5734295982966192144.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P15898813406907469146

`∑[lt[2, A107286(n)]]`
-/

namespace A262044.P15898813406907469146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P15898813406907469146

namespace A262044

/-- `∑[lt[2, A107286(n)]]` -/
def P15898813406907469146.Spec : Prop :=
  ∀ n, (P15898813406907469146.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P15156739080038334385

`∑[∩[2*n+1, A018252(n+2)]]`
-/

namespace A262044.P15156739080038334385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P15156739080038334385

namespace A262044

/-- `∑[∩[2*n+1, A018252(n+2)]]` -/
def P15156739080038334385.Spec : Prop :=
  ∀ n, (P15156739080038334385.a n : ℤ) = A262044 (n + 1)

end A262044

/-! ## A262044.P1239339426196635445

`∑[A002808(A073432(n+2))]`
-/

namespace A262044.P1239339426196635445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A073432 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P1239339426196635445

namespace A262044

/-- `∑[A002808(A073432(n+2))]` -/
def P1239339426196635445.Spec : Prop :=
  ∀ n, P1239339426196635445.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P17425758923901231196

`∑[record[A075066(n+1)]]`
-/

namespace A262044.P17425758923901231196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P17425758923901231196

namespace A262044

/-- `∑[record[A075066(n+1)]]` -/
def P17425758923901231196.Spec : Prop :=
  ∀ n, P17425758923901231196.a n = A262044 (n + 1)

end A262044

/-! ## A262044.P6803011795110270203

`∑[A005381(2*n+1)]`
-/

namespace A262044.P6803011795110270203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P6803011795110270203

namespace A262044

/-- `∑[A005381(2*n+1)]` -/
def P6803011795110270203.Spec : Prop :=
  ∀ n, P6803011795110270203.a n = A262044 (n + 1)

end A262044

/-!
# A262045: Irregular triangle read by rows in which row n lists the elements of row n of A249223 and then the elements of the same row in reverse order.

The programs for A262045, there is no canonical definition to state claims against.
-/

/-! ## A262045.P15945592790747756990

`A262048(n+1)/A237593(n+1)`
-/

namespace A262045.P15945592790747756990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262048 (n + 1) : ℚ) / (A237593 (n + 1) : ℚ)

end

end A262045.P15945592790747756990

/-!
# A262046: Number of ordered partitions of [n] such that at least two adjacent parts have the same size.

The programs for A262046, there is no canonical definition to state claims against.
-/

/-! ## A262046.P16737396599390101818

`A000670(n)-A114902(n)`
-/

namespace A262046.P16737396599390101818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A114902 n

end

end A262046.P16737396599390101818

/-! ## A262046.P17360547964525652933

`A122101(∑[n])-A114902(n)`
-/

namespace A262046.P17360547964525652933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A114902 n

end

end A262046.P17360547964525652933

/-! ## A262046.P4874591155538957496

`A154921(∑[n])-A114902(n)`
-/

namespace A262046.P4874591155538957496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A114902 n

end

end A262046.P4874591155538957496

/-! ## A262046.P7728262938952010085

`A052875(n)+1-A114902(n)`
-/

namespace A262046.P7728262938952010085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (1 - A114902 n)

end

end A262046.P7728262938952010085

/-! ## A262046.P13956844995923983156

`ceil(A007047(n)/4)-A114902(n)`
-/

namespace A262046.P13956844995923983156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 4⌉ - A114902 n

end

end A262046.P13956844995923983156

/-! ## A262046.P1801839101410451343

`A226513(∑[n]+n)-A114902(n)`
-/

namespace A262046.P1801839101410451343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A114902 n

end

end A262046.P1801839101410451343

/-! ## A262046.P4159634510551497291

`2*A032109(n)-1-A114902(n)`
-/

namespace A262046.P4159634510551497291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032109 n - 1 - A114902 n

end

end A262046.P4159634510551497291

/-! ## A262046.P9335730661438629450

`or(1, A052856(n)-1)-A114902(n)`
-/

namespace A262046.P9335730661438629450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052856 n - 1) - A114902 n

end

end A262046.P9335730661438629450

/-! ## A262046.P1081170616827766835

`A327868(A004273(n))-A114902(n)`
-/

namespace A262046.P1081170616827766835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (A004273 n).toNat - A114902 n

end

end A262046.P1081170616827766835

/-! ## A262046.P5840359054927037184

`A000670(n)-A261959(∑[n+2]-1)`
-/

namespace A262046.P5840359054927037184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A261959 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A262046.P5840359054927037184

/-!
# A262047: Number of ordered partitions of [n] such that at least two parts have the same size.

The programs for A262047, there is no canonical definition to state claims against.
-/

/-! ## A262047.P4390450844276315531

`A000670(n)-A032011(n)`
-/

namespace A262047.P4390450844276315531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A032011 n

end

end A262047.P4390450844276315531

/-! ## A262047.P11294093924197501985

`A122101(∑[n])-A032011(n)`
-/

namespace A262047.P11294093924197501985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A032011 n

end

end A262047.P11294093924197501985

/-! ## A262047.P4067956902436957985

`A154921(∑[n])-A032011(n)`
-/

namespace A262047.P4067956902436957985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A032011 n

end

end A262047.P4067956902436957985

/-! ## A262047.P2749352149496430129

`A052875(n)+1-A032011(n)`
-/

namespace A262047.P2749352149496430129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (1 - A032011 n)

end

end A262047.P2749352149496430129

/-! ## A262047.P5196356882348707309

`A076726(n)/2-A032011(n)`
-/

namespace A262047.P5196356882348707309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 - (A032011 n : ℚ)

end

end A262047.P5196356882348707309

/-! ## A262047.P1448310538828174593

`ceil(A000629(n)/2-A032011(n))`
-/

namespace A262047.P1448310538828174593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2 - (A032011 n : ℚ)⌉

end

end A262047.P1448310538828174593

/-! ## A262047.P7520897576376480258

`A226513(∑[n]+n)-A032011(n)`
-/

namespace A262047.P7520897576376480258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A032011 n

end

end A262047.P7520897576376480258

/-! ## A262047.P6512257375510636568

`ceil(∑[A162509(n)/2])-A032011(n)`
-/

namespace A262047.P6512257375510636568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - A032011 n

end

end A262047.P6512257375510636568

/-! ## A262047.P17079034454478466288

`A000670(n)-A261836(A000096(n))`
-/

namespace A262047.P17079034454478466288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A261836 (A000096 n).toNat

end

end A262047.P17079034454478466288

/-! ## A262047.P2679256104484992972

`A327868(A004273(n))-A032011(n)`
-/

namespace A262047.P2679256104484992972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (A004273 n).toNat - A032011 n

end

end A262047.P2679256104484992972

/-!
# A262048: Irregular triangle read by rows: T(n, k) = A262045(n, k) * A237593(n, k), n >= 1, 1 <= k <= 2 * A003056(n).

The programs for A262048, there is no canonical definition to state claims against.
-/

/-! ## A262048.P10303532170718287885

`A237593(n+1)*A262045(n+1)`
-/

namespace A262048.P10303532170718287885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (n + 1) * A262045 (n + 1)

end

end A262048.P10303532170718287885

/-! ## A262048.P17554791010233977809

`lcm(A237593(n+1), A262045(n+1))%A352061(n+1)`
-/

namespace A262048.P17554791010233977809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A237593 (n + 1)) (A262045 (n + 1)) : ℤ) (A352061 (n + 1))

end

end A262048.P17554791010233977809

/-! ## A262048.P9789322031610069135

`A257994(6^lcm(A237593(n+1), A262045(n+1)))`
-/

namespace A262048.P9789322031610069135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (6 ^ Int.lcm (A237593 (n + 1)) (A262045 (n + 1)))

end

end A262048.P9789322031610069135

/-! ## A262048.P12147980117461969243

`A051731(A167227(2*n+5))*A237593(n+1)`
-/

namespace A262048.P12147980117461969243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A167227 (2 * n + 5)).toNat * A237593 (n + 1)

end

end A262048.P12147980117461969243

/-!
# A262049: Sum of the palindromic primes dividing n (with repetition).

The programs for A262049, there is no canonical definition to state claims against.
-/

/-! ## A262049.P4793156391143645253

`∑{p}[n+1, #*val(n+1, A072774(#))]`
-/

namespace A262049.P4793156391143645253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) (A072774 p).toNat

end

end A262049.P4793156391143645253

/-! ## A262049.P7333898167704781487

`A001414(A392598(n+1))`
-/

namespace A262049.P7333898167704781487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A392598 (n + 1)).toNat

end

end A262049.P7333898167704781487

/-! ## A262049.P13279720655209347093

`∑{d}[n+1, A074196(A014963(#))]`
-/

namespace A262049.P13279720655209347093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074196 (A014963 d).toNat

end

end A262049.P13279720655209347093

/-! ## A262049.P1779365593001678700

`A001414(gcd(n+1, A003964(n+1)))`
-/

namespace A262049.P1779365593001678700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.gcd (n + 1 : ℤ) (A003964 (n + 1)))

end

end A262049.P1779365593001678700

/-! ## A262049.P9073939814979525677

`A001414(gcd(A000027(n+1), A071786(n+1)))`
-/

namespace A262049.P9073939814979525677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.gcd (A000027 (n + 1)) (A071786 (n + 1)))

end

end A262049.P9073939814979525677

/-! ## A262049.P11812559001007127247

`A056239(gcd(A064988(n+1), A319985(n+1)))`
-/

namespace A262049.P11812559001007127247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.gcd (A064988 (n + 1)) (A319985 (n + 1)))

end

end A262049.P11812559001007127247

/-!
# A262050: Expansion of f(-x)^2 * f(-x^10) / phi(-x)^3 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A262050, there is no canonical definition to state claims against.
-/

/-! ## A262050.P7171955583094534290

`A138526(Δ[n²])/2`
-/

namespace A262050.P7171955583094534290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A262050.P7171955583094534290

/-! ## A262050.P7092406280214276138

`abs(A261968(2*n+1)/2)`
-/

namespace A262050.P7092406280214276138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A261968 (2 * n + 1) : ℚ) / 2|

end

end A262050.P7092406280214276138

/-! ## A262050.P9898272238745689998

`gcd(A261968(2*n+1)/2, A000038(n))`
-/

namespace A262050.P9898272238745689998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A261968 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A262050.P9898272238745689998

/-! ## A262050.P721044890094056667

`A261968(2*n+1)/(A000038(n+1)-2)`
-/

namespace A262050.P721044890094056667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261968 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A262050.P721044890094056667

/-! ## A262050.P3122985376169173523

`lcm(A000034(n+1), A261968(2*n+1))/2`
-/

namespace A262050.P3122985376169173523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A261968 (2 * n + 1)) : ℚ) / 2

end

end A262050.P3122985376169173523

/-! ## A262050.P11755659086578988268

`A261968(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A262050.P11755659086578988268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261968 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A262050.P11755659086578988268

/-! ## A262050.P2892022303416432468

`A261968(2*n+1)/A000034(2*n+1)-A261968(2*n+1)`
-/

namespace A262050.P2892022303416432468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261968 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A261968 (2 * n + 1) : ℚ)

end

end A262050.P2892022303416432468

/-! ## A262050.P4767821338481377813

`A146162(8*n+4)/2`
-/

namespace A262050.P4767821338481377813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146162 (8 * n + 4) : ℚ) / 2

end

end A262050.P4767821338481377813

/-! ## A262050.P10098182945974009201

`A138527(10*n+5)/2`
-/

namespace A262050.P10098182945974009201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138527 (10 * n + 5) : ℚ) / 2

end

end A262050.P10098182945974009201

/-!
# A262051: Euler pseudoprimes to base 3: composite integers such that abs(3^((n - 1)/2)) == 1 mod n.

The programs for A262051, there is no canonical definition to state claims against.
-/

/-! ## A262051.P231245183597363092

`∪[A048950(n+1), A375490(n+1)]`
-/

namespace A262051.P231245183597363092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262051.P231245183597363092

/-!
# A262052: Euler pseudoprimes to base 5: composite integers such that abs(5^((n - 1)/2)) == 1 mod n.

The programs for A262052, there is no canonical definition to state claims against.
-/

/-! ## A262052.P3176682834423664973

`∪[A375816(n+1), A375914(n+1)]`
-/

namespace A262052.P3176682834423664973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262052.P3176682834423664973

/-!
# A262053: Euler pseudoprimes to base 6: composite integers such that abs(6^((n - 1)/2)) == 1 mod n.

The programs for A262053, there is no canonical definition to state claims against.
-/

/-! ## A262053.P1559862162135515954

`A005937(A326180(2*n+3)*A359908(n+1))`
-/

namespace A262053.P1559862162135515954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (A326180 (2 * n + 3) * A359908 (n + 1)).toNat

end

end A262053.P1559862162135515954

/-! ## A262053.P17236613830518385834

`A005937(A326836(n+1)%A179109(n+1))`
-/

namespace A262053.P17236613830518385834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (Int.tmod (A326836 (n + 1)) (A179109 (n + 1))).toNat

end

end A262053.P17236613830518385834

/-!
# A262054: Euler pseudoprimes to base 7: composite integers such that abs(7^((n - 1)/2)) == 1 mod n.

The programs for A262054, there is no canonical definition to state claims against.
-/

/-! ## A262054.P6983764758664345275

`A005938(lt[A241341(n), A218601(2*n)])`
-/

namespace A262054.P6983764758664345275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218601 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262054.P6983764758664345275

/-! ## A262054.P11344454676901362624

`A005938(lt[A233327(n+2), A200923(2*(n+2))])`
-/

namespace A262054.P11344454676901362624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233327 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200923 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262054.P11344454676901362624

/-!
# A262055: Euler pseudoprimes to base 8: composite integers such that abs(8^((n - 1)/2)) == 1 mod n.

The programs for A262055, there is no canonical definition to state claims against.
-/

/-! ## A262055.P11494752255755400797

`A231570(lt[1, A334709(6*(n+2))])`
-/

namespace A262055.P11494752255755400797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334709 (6 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A262055.P11494752255755400797

/-! ## A262055.P10593086594854806519

`A231570(eq[A133034(n), A251765(n)])`
-/

namespace A262055.P10593086594854806519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262055.P10593086594854806519

/-!
# A262056: Expansion of phi(q^2) / phi(-q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A262056, there is no canonical definition to state claims against.
-/

/-! ## A262056.P11385157195016282500

`A143068(2*n)`
-/

namespace A262056.P11385157195016282500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143068 (2 * n)

end

end A262056.P11385157195016282500

/-! ## A262056.P7367366035550831229

`A262938(2*n)`
-/

namespace A262056.P7367366035550831229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262938 (2 * n)

end

end A262056.P7367366035550831229

/-! ## A262056.P11847855021756818985

`2-4/2+A262938(n+n)`
-/

namespace A262056.P11847855021756818985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A262938 (n + n) : ℚ)

end

end A262056.P11847855021756818985

/-! ## A262056.P3223377519356275709

`A131713(n+2)*A307757(2*n)`
-/

namespace A262056.P3223377519356275709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) * A307757 (2 * n)

end

end A262056.P3223377519356275709

/-! ## A262056.P1668929550538775755

`A057079(2*n)*A307757(2*n)`
-/

namespace A262056.P1668929550538775755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A307757 (2 * n)

end

end A262056.P1668929550538775755

/-! ## A262056.P3853949850117144337

`A132954(2*n)*A307757(2*n)`
-/

namespace A262056.P3853949850117144337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (2 * n) * A307757 (2 * n)

end

end A262056.P3853949850117144337

/-! ## A262056.P17190987667754162773

`A262938(n+n)/A131576(A006093(n+2)+1)`
-/

namespace A262056.P17190987667754162773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 (n + n) : ℚ) / (A131576 (A006093 (n + 2) + 1).toNat : ℚ)

end

end A262056.P17190987667754162773

/-!
# A262057: Array based on the Stanley sequence S(0), A005836, by antidiagonals.

The programs for A262057, there is no canonical definition to state claims against.
-/

/-! ## A262057.P7323987832292352798

`A293030((∑[char[∑[n+1]]]+1)²-n)-1`
-/

namespace A262057.P7323987832292352798
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293030 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 - n) - 1

end

end A262057.P7323987832292352798

/-! ## A262057.P5228374097421206934

`abs(1-A293030(A038722(n+1)))`
-/

namespace A262057.P5228374097421206934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A293030 (A038722 (n + 1)).toNat|

end

end A262057.P5228374097421206934

/-! ## A262057.P16350844046965785605

`A329484(A328579(n))+A293030(A038722(n+1))+1`
-/

namespace A262057.P16350844046965785605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A328579 n).toNat + (A293030 (A038722 (n + 1)).toNat + 1)

end

end A262057.P16350844046965785605

/-! ## A262057.P16786714761138981779

`A329484(A239585(n+1))+A293030(A038722(n+1))+1`
-/

namespace A262057.P16786714761138981779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A239585 (n + 1)).toNat + (A293030 (A038722 (n + 1)).toNat + 1)

end

end A262057.P16786714761138981779

/-! ## A262057.P17797966928347791751

`A329484(A239586(n+1))+A293030(A038722(n+1))+1`
-/

namespace A262057.P17797966928347791751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A239586 (n + 1)).toNat + (A293030 (A038722 (n + 1)).toNat + 1)

end

end A262057.P17797966928347791751

/-!
# A262058: Least integer k>1 such that sqrt(k)/log(k) exceeds n.

The programs for A262058, there is no canonical definition to state claims against.
-/

/-! ## A262058.P7912054255564692479

`ceil((2*log(A262060(n+1)))²)`
-/

namespace A262058.P7912054255564692479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Real.log (A262060 (n + 1) : ℝ)) ^ 2⌉

end

end A262058.P7912054255564692479

/-! ## A262058.P7338166890162477527

`ceil(log(A262060(n+1)²)²)`
-/

namespace A262058.P7338166890162477527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A262060 (n + 1) ^ 2 : ℝ) ^ 2⌉

end

end A262058.P7338166890162477527

/-!
# A262061: Least prime(i) such that prime(i)^(1+1/i) - prime(i) > n.

The programs for A262061, there is no canonical definition to state claims against.
-/

/-! ## A262061.P3585663921154671186

`A151800(lt[A086764(3*n+4), A155474(n+1)])`
-/

namespace A262061.P3585663921154671186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262061.P3585663921154671186

/-! ## A262061.P10920562998389545392

`A151800(∑[∑[A051390(n+2)]])`
-/

namespace A262061.P10920562998389545392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051390 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262061.P10920562998389545392

/-! ## A262061.P2631527597991991028

`A151800(lt[A264617(n+1), A321106(n)])`
-/

namespace A262061.P2631527597991991028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262061.P2631527597991991028

/-! ## A262061.P11335414882276293631

`A151800(lt[A264617(n+1), A376948(n)])`
-/

namespace A262061.P11335414882276293631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262061.P11335414882276293631

/-! ## A262061.P2267356431127518330

`A008836(A284119(n+1))+A006093(n+1)`
-/

namespace A262061.P2267356431127518330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A284119 (n + 1)).toNat + A006093 (n + 1)

end

end A262061.P2267356431127518330

/-!
# A262063: The first of seven consecutive positive integers the sum of the squares of which is equal to the sum of the squares of six consecutive positive integers.

The programs for A262063, there is no canonical definition to state claims against.
-/

/-! ## A262063.P16327778872217993742

`∑[3*A090247(n+1)]`
-/

namespace A262063.P16327778872217993742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262063.P16327778872217993742

/-! ## A262063.P4070464121762304192

`∑[6*A097308(n+1)]`
-/

namespace A262063.P4070464121762304192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A097308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262063.P4070464121762304192

/-! ## A262063.P4813914625089914198

`∑[3*Δ[A157461(n+1)]]`
-/

namespace A262063.P4813914625089914198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157461 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262063.P4813914625089914198

/-! ## A262063.P6126441220158805560

`∑[6*Δ[A253457(n+1)]]`
-/

namespace A262063.P6126441220158805560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262063.P6126441220158805560

/-! ## A262063.P6462492785411482061

`∑[6*A041070(2*n+1)]`
-/

namespace A262063.P6462492785411482061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A041070 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262063.P6462492785411482061

/-! ## A262063.P13142946684539349881

`∑[6*A041310(2*n+1)]`
-/

namespace A262063.P13142946684539349881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A041310 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262063.P13142946684539349881

/-!
# A262064: Expansion of f(x^9, x^15) / f(-x^2, -x^4) in powers of x where f(, ) is the Ramanujan general theta function.

The programs for A262064, there is no canonical definition to state claims against.
-/

/-! ## A262064.P11397365879021505903

`A143067(2*n)`
-/

namespace A262064.P11397365879021505903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143067 (2 * n)

end

end A262064.P11397365879021505903

/-! ## A262064.P6751906659361909527

`abs(A143067(record[A038608(n)]))`
-/

namespace A262064.P6751906659361909527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143067 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A262064.P6751906659361909527

/-! ## A262064.P14338892321813248353

`abs(A143067(A005408(n)-1))`
-/

namespace A262064.P14338892321813248353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143067 (A005408 n - 1).toNat|

end

end A262064.P14338892321813248353

/-! ## A262064.P15416331573018699906

`abs(A143067(abs(A038608(n))+n))`
-/

namespace A262064.P15416331573018699906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A143067 (|A038608 n| + (n : ℤ)).toNat)|

end

end A262064.P15416331573018699906

/-! ## A262064.P12906982899101579183

`A143067(n+n)/A094603(A023694(n+1))`
-/

namespace A262064.P12906982899101579183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143067 (n + n) : ℚ) / (A094603 (A023694 (n + 1)).toNat : ℚ)

end

end A262064.P12906982899101579183

/-! ## A262064.P533179773163494073

`A143067(Δ[A165900(n)])%A000051(n)`
-/

namespace A262064.P533179773163494073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143067 (f1 (n + 1) - f1 n).toNat) (A000051 n)

end

end A262064.P533179773163494073

/-! ## A262064.P10944401068684922325

`A288108(∑[n+1])+A143067(n+n)`
-/

namespace A262064.P10944401068684922325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (∑ j ∈ Finset.range (n + 1), f1 j) + A143067 (n + n)

end

end A262064.P10944401068684922325

/-! ## A262064.P13785170055129587943

`A143067(n+n)%A143067(A325990(n+1))`
-/

namespace A262064.P13785170055129587943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143067 (n + n)) (A143067 (A325990 (n + 1)).toNat)

end

end A262064.P13785170055129587943

/-!
# A262065: Numbers that are palindromes in base-60 representation.

The programs for A262065, there is no canonical definition to state claims against.
-/

/-! ## A262065.P13391563032347892622

`A296765(n+1)-A262079(A239086(n+1))`
-/

namespace A262065.P13391563032347892622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296765 (n + 1) - A262079 (A239086 (n + 1)).toNat

end

end A262065.P13391563032347892622

/-! ## A262065.P5287119891614672309

`A291592(C(n, 59)+1)+n`
-/

namespace A262065.P5287119891614672309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291592 (Nat.choose n 59 + 1) + (n : ℤ)

end

end A262065.P5287119891614672309

/-! ## A262065.P7492148687711791698

`char[A038014(2*n+3)]+n`
-/

namespace A262065.P7492148687711791698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038014 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A262065.P7492148687711791698

/-! ## A262065.P14064683623759836624

`val(2*n+1, A327102(n+1))+n`
-/

namespace A262065.P14064683623759836624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) (A327102 (n + 1)).toNat + n

end

end A262065.P14064683623759836624

/-! ## A262065.P15552747727620207334

`C(A356606(2*n+1), (n+2)²)+n`
-/

namespace A262065.P15552747727620207334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356606 (2 * n + 1)).toNat ((n + 2) ^ 2) + n

end

end A262065.P15552747727620207334

/-! ## A262065.P13868394788700687817

`A085982(A106585(n))+n`
-/

namespace A262065.P13868394788700687817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A106585 n).toNat + (n : ℤ)

end

end A262065.P13868394788700687817

/-! ## A262065.P9915247126620938795

`A025469(A325404(n))+n`
-/

namespace A262065.P9915247126620938795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A325404 n).toNat + (n : ℤ)

end

end A262065.P9915247126620938795

/-! ## A262065.P16810892956716940181

`A185284(A242618(n))+n`
-/

namespace A262065.P16810892956716940181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A242618 n).toNat + (n : ℤ)

end

end A262065.P16810892956716940181

/-! ## A262065.P7593064541381770754

`A186741(A272016(n))+n`
-/

namespace A262065.P7593064541381770754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186741 (A272016 n).toNat + (n : ℤ)

end

end A262065.P7593064541381770754

/-! ## A262065.P13379834318409869308

`n-A010815(A119875(n))`
-/

namespace A262065.P13379834318409869308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010815 (A119875 n).toNat

end

end A262065.P13379834318409869308

/-!
# A262066: a(n) = A017666(A243512(n)).

The programs for A262066, there is no canonical definition to state claims against.
-/

/-! ## A262066.P8287800918445606994

`A017666(A243512(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262066.P8287800918445606994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A243512 n).toNat

end

end A262066.P8287800918445606994

/-! ## A262066.P12469471393253035087

`A017665(A243512(char[1]+n))-n`
-/

namespace A262066.P12469471393253035087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A243512 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat - (n : ℤ)

end

end A262066.P12469471393253035087

/-! ## A262066.P3640510545789249958

`abs(A017665(A243512(floor((4*n+3)/4)))-n)`
-/

namespace A262066.P3640510545789249958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017665 (A243512 ⌊(4 * n + 3 : ℚ) / 4⌋.toNat).toNat - (n : ℤ)|

end

end A262066.P3640510545789249958

/-! ## A262066.P13058825110801232016

`A000027(A017665(A243512(n))-n)`
-/

namespace A262066.P13058825110801232016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017665 (A243512 n).toNat - (n : ℤ)).toNat

end

end A262066.P13058825110801232016

/-! ## A262066.P91290326241982454

`or(A017665(A243512(n))-n, A000007(n))`
-/

namespace A262066.P91290326241982454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017665 (A243512 n).toNat - (n : ℤ)) (A000007 n)

end

end A262066.P91290326241982454

/-! ## A262066.P14571172622850520766

`∑{d}[A017665(A243512(n))-n, A000010(#)]`
-/

namespace A262066.P14571172622850520766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A243512 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A262066.P14571172622850520766

/-! ## A262066.P15622058026765006744

`(A017665(A243512(n))-n)%∑[A000032(n)]`
-/

namespace A262066.P15622058026765006744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017665 (A243512 n).toNat - (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262066.P15622058026765006744

/-! ## A262066.P14776048897415655612

`(A017665(A243512(n))-n)*A007318(C(2, n))`
-/

namespace A262066.P14776048897415655612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017665 (A243512 n).toNat - (n : ℤ)) * A007318 (Nat.choose 2 n)

end

end A262066.P14776048897415655612

/-! ## A262066.P12824828189786526650

`A017665(A243512(n))^(A000040(n+1)%2)-n`
-/

namespace A262066.P12824828189786526650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (A243512 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ) - (n : ℚ)

end

end A262066.P12824828189786526650

/-! ## A262066.P12472084318945535216

`A000010(gcd(n, n+1))*A017665(A243512(n))-n`
-/

namespace A262066.P12472084318945535216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A017665 (A243512 n).toNat - (n : ℤ)

end

end A262066.P12472084318945535216

/-!
# A262067: a(n) = n^n - (n-2)^n.

The programs for A262067, the canonical program `A262067.P5725728904958348484` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262067 has offset 1).

The definition of A262067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-(n-1)^(n+1)` (program `A262067.P5725728904958348484`, by `A262067.P5725728904958348484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262067.P5725728904958348484

`(n+1)^(n+1)-(n-1)^(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262067

/-- `(n+1)^(n+1)-(n-1)^(n+1)` -/
def P5725728904958348484.Spec : Prop :=
  ∀ n, P5725728904958348484.a n = A262067 (n + 1)

theorem P5725728904958348484.correct : P5725728904958348484.Spec := by
  intro n
  simp only [A262067, Nat.add_sub_cancel]

end A262067

/-! ## A262067.P6456085231377288287

`lcm(2, A085283(n)+A045531(n+1))`
-/

namespace A262067.P6456085231377288287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A085283 n + A045531 (n + 1))

end

end A262067.P6456085231377288287

namespace A262067

/-- `lcm(2, A085283(n)+A045531(n+1))` -/
def P6456085231377288287.Spec : Prop :=
  ∀ n, (P6456085231377288287.a n : ℤ) = A262067 (n + 1)

end A262067

/-! ## A262067.P1708534460318612473

`(A085283(n)+A045531(n+1))*A007318(∑[n])`
-/

namespace A262067.P1708534460318612473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085283 n + A045531 (n + 1)) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262067.P1708534460318612473

namespace A262067

/-- `(A085283(n)+A045531(n+1))*A007318(∑[n])` -/
def P1708534460318612473.Spec : Prop :=
  ∀ n, P1708534460318612473.a n = A262067 (n + 1)

end A262067

/-! ## A262067.P15591186439677238071

`(A085283(n)+A045531(n+1))/A007318(C(n, 2))`
-/

namespace A262067.P15591186439677238071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085283 n + A045531 (n + 1) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A262067.P15591186439677238071

namespace A262067

/-- `(A085283(n)+A045531(n+1))/A007318(C(n, 2))` -/
def P15591186439677238071.Spec : Prop :=
  ∀ n, P15591186439677238071.a n = (A262067 (n + 1) : ℚ)

end A262067

/-! ## A262067.P8369686576865741143

`(A085283(n)+A045531(n+1))/A007318(∑[n+2])`
-/

namespace A262067.P8369686576865741143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085283 n + A045531 (n + 1) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A262067.P8369686576865741143

namespace A262067

/-- `(A085283(n)+A045531(n+1))/A007318(∑[n+2])` -/
def P8369686576865741143.Spec : Prop :=
  ∀ n, P8369686576865741143.a n = (A262067 (n + 1) : ℚ)

end A262067

/-!
# A262068: Number of binary strings of length 2n that can be written as the concatenation of one or more squares.

The programs for A262068, there is no canonical definition to state claims against.
-/

/-! ## A262068.P390966166252191444

`A109497(2*A000079(n)²)-A006093(n+1)`
-/

namespace A262068.P390966166252191444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (2 * A000079 n ^ 2).toNat - A006093 (n + 1)

end

end A262068.P390966166252191444

/-! ## A262068.P12329680531517761128

`A109497(A000079(2*n+1))-A006093(n+1)`
-/

namespace A262068.P12329680531517761128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A000079 (2 * n + 1)).toNat - A006093 (n + 1)

end

end A262068.P12329680531517761128

/-! ## A262068.P16498732713442025262

`A103221(A384109(n+3)-A237270(3*(n+1)))`
-/

namespace A262068.P16498732713442025262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A384109 (n + 3) - A237270 (3 * (n + 1))).toNat

end

end A262068.P16498732713442025262

/-!
# A262070: a(n) = ceiling( log_3( binomial(n,2) ) ).

The programs for A262070, the canonical program `A262070.P15637485480460739290` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262070 has offset 2).

The definition of A262070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262070.P15637485480460739290

`ceil(log(∑[n+1])/log(3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262070

/-- `ceil(log(∑[n+1])/log(3))` -/
def P15637485480460739290.Spec : Prop :=
  ∀ n, P15637485480460739290.a n = A262070 (n + 2)

theorem P15637485480460739290.correct : P15637485480460739290.Spec := by
  intro n
  simp only [A262070, Nat.add_sub_cancel]

end A262070

/-! ## A262070.P16964141733745504118

`∑[char[A266498(n)-1]]`
-/

namespace A262070.P16964141733745504118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266498 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262070.P16964141733745504118

namespace A262070

/-- `∑[char[A266498(n)-1]]` -/
def P16964141733745504118.Spec : Prop :=
  ∀ n, (P16964141733745504118.a n : ℤ) = A262070 (n + 2)

end A262070

/-! ## A262070.P5529971762635903215

`A080342(A374707(n))`
-/

namespace A262070.P5529971762635903215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A374707 n).toNat

end

end A262070.P5529971762635903215

namespace A262070

/-- `A080342(A374707(n))` -/
def P5529971762635903215.Spec : Prop :=
  ∀ n, P5529971762635903215.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P5995436032197292278

`A080342(A061791(n+1))`
-/

namespace A262070.P5995436032197292278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A061791 (n + 1)).toNat

end

end A262070.P5995436032197292278

namespace A262070

/-- `A080342(A061791(n+1))` -/
def P5995436032197292278.Spec : Prop :=
  ∀ n, P5995436032197292278.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P1093355864413605774

`A080342(∑[n+1])`
-/

namespace A262070.P1093355864413605774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262070.P1093355864413605774

namespace A262070

/-- `A080342(∑[n+1])` -/
def P1093355864413605774.Spec : Prop :=
  ∀ n, P1093355864413605774.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P7339990440281459471

`∑{e}[A064235(∑[n+1]), #]`
-/

namespace A262070.P7339990440281459471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A262070.P7339990440281459471

namespace A262070

/-- `∑{e}[A064235(∑[n+1]), #]` -/
def P7339990440281459471.Spec : Prop :=
  ∀ n, (P7339990440281459471.a n : ℤ) = A262070 (n + 2)

end A262070

/-! ## A262070.P4184577583058336571

`val(A064235(C(n+2, 2)), 3)`
-/

namespace A262070.P4184577583058336571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064235 (Nat.choose (n + 2) 2)).toNat 3

end

end A262070.P4184577583058336571

namespace A262070

/-- `val(A064235(C(n+2, 2)), 3)` -/
def P4184577583058336571.Spec : Prop :=
  ∀ n, (P4184577583058336571.a n : ℤ) = A262070 (n + 2)

end A262070

/-! ## A262070.P15147886985189808296

`A001222(A064235(∑[n+1]))`
-/

namespace A262070.P15147886985189808296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064235 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A262070.P15147886985189808296

namespace A262070

/-- `A001222(A064235(∑[n+1]))` -/
def P15147886985189808296.Spec : Prop :=
  ∀ n, P15147886985189808296.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P11466214232143158689

`A080342(A000217(n+1))%45`
-/

namespace A262070.P11466214232143158689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080342 (A000217 (n + 1)).toNat) 45

end

end A262070.P11466214232143158689

namespace A262070

/-- `A080342(A000217(n+1))%45` -/
def P11466214232143158689.Spec : Prop :=
  ∀ n, P11466214232143158689.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P8934631510066283175

`A019428(2*n)*A080342(A000217(n+1))`
-/

namespace A262070.P8934631510066283175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) * A080342 (A000217 (n + 1)).toNat

end

end A262070.P8934631510066283175

namespace A262070

/-- `A019428(2*n)*A080342(A000217(n+1))` -/
def P8934631510066283175.Spec : Prop :=
  ∀ n, P8934631510066283175.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P12331692645907456462

`A329199(A193053(n))`
-/

namespace A262070.P12331692645907456462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A193053 n).toNat

end

end A262070.P12331692645907456462

namespace A262070

/-- `A329199(A193053(n))` -/
def P12331692645907456462.Spec : Prop :=
  ∀ n, P12331692645907456462.a n = A262070 (n + 2)

end A262070

/-! ## A262070.P1468490090526197927

`A000523(∑[A167970(n+2)]+n)`
-/

namespace A262070.P1468490090526197927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A262070.P1468490090526197927

namespace A262070

/-- `A000523(∑[A167970(n+2)]+n)` -/
def P1468490090526197927.Spec : Prop :=
  ∀ n, P1468490090526197927.a n = A262070 (n + 2)

end A262070

/-!
# A262071: Number T(n,k) of ordered partitions of an n-set with nondecreasing block sizes and maximal block size equal to k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A262071, there is no canonical definition to state claims against.
-/

/-! ## A262071.P14578544772627703541

`A271703(n)/A348041(A228899(n))`
-/

namespace A262071.P14578544772627703541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A348041 (A228899 n).toNat : ℚ)

end

end A262071.P14578544772627703541

/-! ## A262071.P3973635137284300406

`abs(A111596(n)/A348041(A228899(n)))`
-/

namespace A262071.P3973635137284300406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A111596 n : ℚ) / (A348041 (A228899 n).toNat : ℚ)|

end

end A262071.P3973635137284300406

/-! ## A262071.P8323440946583262807

`A097449(A052250(n+1)*A106234(n+1))`
-/

namespace A262071.P8323440946583262807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A052250 (n + 1) * A106234 (n + 1)).toNat

end

end A262071.P8323440946583262807

/-! ## A262071.P12236968402918232762

`A097449(A106234(n+1)*A202191(n+1))`
-/

namespace A262071.P12236968402918232762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A106234 (n + 1) * A202191 (n + 1)).toNat

end

end A262071.P12236968402918232762

/-! ## A262071.P7838635996789041333

`A131182(lt[A008615(n+13), A254883(2*n+11)])`
-/

namespace A262071.P7838635996789041333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254883 (2 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262071.P7838635996789041333

/-!
# A262073: Number of partitions of k-sets with distinct block sizes and maximal block size equal to n (n <= k <= n*(n+1)/2).

The programs for A262073, there is no canonical definition to state claims against.
-/

/-! ## A262073.P6764342881023414123

`A379295(A134964(n)²)`
-/

namespace A262073.P6764342881023414123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379295 (A134964 n ^ 2).toNat

end

end A262073.P6764342881023414123

/-!
# A262074: The first of seven consecutive positive integers the sum of the squares of which is equal to the sum of the squares of eight consecutive positive integers.

The programs for A262074, there is no canonical definition to state claims against.
-/

/-! ## A262074.P9001695150116700204

`Δ[A068204(n+2)]-3`
-/

namespace A262074.P9001695150116700204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A262074.P9001695150116700204

/-! ## A262074.P5499418018652557388

`xor(5, Δ[A068204(A030147(n+1)+2)])`
-/

namespace A262074.P5499418018652557388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068204 (A030147 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (f1 (n + 1) - f1 n)

end

end A262074.P5499418018652557388

/-!
# A262075: The first of eight consecutive positive integers the sum of the squares of which is equal to the sum of the squares of seven consecutive positive integers.

The programs for A262075, there is no canonical definition to state claims against.
-/

/-! ## A262075.P5632717111463319418

`∑[7*A068203(n+1)]`
-/

namespace A262075.P5632717111463319418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A068203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262075.P5632717111463319418

/-! ## A262075.P387698829233132518

`∑[7*Δ[A253446(n+1)]]`
-/

namespace A262075.P387698829233132518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253446 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262075.P387698829233132518

/-! ## A262075.P18074544244848295364

`7*floor(A157878(n+2)/2)`
-/

namespace A262075.P18074544244848295364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(A157878 (n + 2) : ℚ) / 2⌋

end

end A262075.P18074544244848295364

/-! ## A262075.P9513982195154480385

`∑[7*A041096(2*n+1)]`
-/

namespace A262075.P9513982195154480385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A041096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262075.P9513982195154480385

/-! ## A262075.P2038248954712805086

`∑[7*A041418(2*n+1)]`
-/

namespace A262075.P2038248954712805086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A041418 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262075.P2038248954712805086

/-!
# A262079: Differences between successive numbers that can be written as palindromes in base 60, cf. A262065.

The programs for A262079, there is no canonical definition to state claims against.
-/

/-! ## A262079.P17920136080767604316

`A134332(C(n, 59)+1)`
-/

namespace A262079.P17920136080767604316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (Nat.choose n 59 + 1)

end

end A262079.P17920136080767604316

/-! ## A262079.P16864707208174523495

`A239086(C(n, 59)+1)`
-/

namespace A262079.P16864707208174523495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (Nat.choose n 59 + 1)

end

end A262079.P16864707208174523495

/-! ## A262079.P1429790825872373550

`A327389(C(n, 59)+1)`
-/

namespace A262079.P1429790825872373550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (Nat.choose n 59 + 1)

end

end A262079.P1429790825872373550

/-! ## A262079.P9878531295552457137

`A006530((C(n, 59)+1)²)`
-/

namespace A262079.P9878531295552457137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Nat.choose n 59 + 1) ^ 2)

end

end A262079.P9878531295552457137

/-! ## A262079.P6722055648496502726

`A007947((C(n, 59)+1)²)`
-/

namespace A262079.P6722055648496502726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((Nat.choose n 59 + 1) ^ 2)

end

end A262079.P6722055648496502726

/-! ## A262079.P13464520543050068773

`A015052((C(n, 59)+1)²)`
-/

namespace A262079.P13464520543050068773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((Nat.choose n 59 + 1) ^ 2)

end

end A262079.P13464520543050068773

/-! ## A262079.P14974861189524024829

`A328855(C(n, 59)+1)+C(n, 59)`
-/

namespace A262079.P14974861189524024829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (Nat.choose n 59 + 1) + (Nat.choose n 59 : ℤ)

end

end A262079.P14974861189524024829

/-! ## A262079.P17101629026197130830

`C(lcm(n, A167816(a(n-1))), 59)+1` with `a(0)=1`
-/

namespace A262079.P17101629026197130830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Int.lcm (n : ℤ) (A167816 (a (n - 1)))) 59 + 1

end

end A262079.P17101629026197130830

/-!
# A262081: a(1) = 6; for n > 1, a(n) = the least squarefree composite number whose sum of prime factors is prime and whose greatest prime factor is the sum of prime factors of a(n-1).

The programs for A262081, there is no canonical definition to state claims against.
-/

/-! ## A262081.P11314706818342636569

`A335306(eq[A000700(n), A027414(3*n+2)])`
-/

namespace A262081.P11314706818342636569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335306 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262081.P11314706818342636569

/-!
# A262082: Array of coefficients A(n,k) of the formal power series P(n,x) read by upwards antidiagonals, where P(n,x) = Sum_{k>=0} A(n,k)*x^k = 1 + x*P(n,x)^(1*n) + x^2*P(n,x)^(2*n) + x^3*P(n,x)^(3*n) for n >= 0.

The programs for A262082, there is no canonical definition to state claims against.
-/

/-! ## A262082.P15183899464838889846

`A070914(n)-A122841(A101268(n))`
-/

namespace A262082.P15183899464838889846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 n - A122841 (A101268 n).toNat

end

end A262082.P15183899464838889846

/-!
# A262083: Smallest possible prime factor of 10^k+n for any k.

The programs for A262083, there is no canonical definition to state claims against.
-/

/-! ## A262083.P14072134445867449086

`A326810(A000040(n+1)*A045944(n))`
-/

namespace A262083.P14072134445867449086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326810 (A000040 (n + 1) * A045944 n).toNat

end

end A262083.P14072134445867449086

/-! ## A262083.P16680636434070899482

`A020639((n+10)²*A151785(n+9))`
-/

namespace A262083.P16680636434070899482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((n + 10) ^ 2 : ℤ) * A151785 (n + 9)).toNat

end

end A262083.P16680636434070899482

/-! ## A262083.P12298762480013484552

`A020639(lcm((n+10)², A151785(n+9)))`
-/

namespace A262083.P12298762480013484552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm ((n + 10) ^ 2 : ℤ) (A151785 (n + 9)))

end

end A262083.P12298762480013484552

/-! ## A262083.P8439828743256202195

`A006530(A308480(n+4))%24`
-/

namespace A262083.P8439828743256202195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A308480 (n + 4)).toNat) 24

end

end A262083.P8439828743256202195

/-! ## A262083.P5537653148932549432

`A020639(A013635(n+3)*A014551(n))`
-/

namespace A262083.P5537653148932549432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013635 (n + 3) * A014551 n).toNat

end

end A262083.P5537653148932549432

/-!
# A262084: Numbers m that satisfy the equation phi(m + 6) = phi(m) + 6 where phi(m) = A000010(m) is Euler's totient function.

The programs for A262084, the canonical program `A262084.P5243540133609715139` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262084 has offset 1).

The definition of A262084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262084.P13799097258333966678

`eq[A051953(n+1), A051953(n+7)]+1`
-/

namespace A262084.P13799097258333966678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262084.P13799097258333966678

namespace A262084

/-- `eq[A051953(n+1), A051953(n+7)]+1` -/
def P13799097258333966678.Spec : Prop :=
  ∀ n, (P13799097258333966678.a n : ℤ) = A262084 (n + 1)

end A262084

/-! ## A262084.P7257586108354864348

`eq[A062830(n+1), A062830(n+7)]+1`
-/

namespace A262084.P7257586108354864348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262084.P7257586108354864348

namespace A262084

/-- `eq[A062830(n+1), A062830(n+7)]+1` -/
def P7257586108354864348.Spec : Prop :=
  ∀ n, (P7257586108354864348.a n : ℤ) = A262084 (n + 1)

end A262084

/-! ## A262084.P12165577608078494577

`eq[A219428(n+1), A219428(n+7)]+1`
-/

namespace A262084.P12165577608078494577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262084.P12165577608078494577

namespace A262084

/-- `eq[A219428(n+1), A219428(n+7)]+1` -/
def P12165577608078494577.Spec : Prop :=
  ∀ n, (P12165577608078494577.a n : ℤ) = A262084 (n + 1)

end A262084

/-! ## A262084.P5243540133609715139

`eq[A016035(n+2), A016035(n+8)]+2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262084

/-- `eq[A016035(n+2), A016035(n+8)]+2` -/
def P5243540133609715139.Spec : Prop :=
  ∀ n, (P5243540133609715139.a n : ℤ) = A262084 (n + 1)

theorem P5243540133609715139.correct : P5243540133609715139.Spec := by
  intro n
  simp only [A262084, Nat.add_sub_cancel]

end A262084

/-! ## A262084.P1830356657557883481

`A153152(eq[A051953(n+1), A051953(n+7)])`
-/

namespace A262084.P1830356657557883481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262084.P1830356657557883481

namespace A262084

/-- `A153152(eq[A051953(n+1), A051953(n+7)])` -/
def P1830356657557883481.Spec : Prop :=
  ∀ n, P1830356657557883481.a n = A262084 (n + 1)

end A262084

/-!
# A262085: Numbers n such that phi(n + 8) = phi(n) + 8 where phi(n) = A000010(n) is Euler's totient function.

The programs for A262085, the canonical program `A262085.P10166447916415025632` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262085 has offset 1).

The definition of A262085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262085.P10166447916415025632

`eq[A082023(n+8), A082023(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262085

/-- `eq[A082023(n+8), A082023(n)]` -/
def P10166447916415025632.Spec : Prop :=
  ∀ n, (P10166447916415025632.a n : ℤ) = A262085 (n + 1)

theorem P10166447916415025632.correct : P10166447916415025632.Spec := by
  intro n
  simp only [A262085, Nat.add_sub_cancel]

end A262085

/-! ## A262085.P4482258788081598774

`eq[A016035(n+1), A016035(n+9)]+1`
-/

namespace A262085.P4482258788081598774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262085.P4482258788081598774

namespace A262085

/-- `eq[A016035(n+1), A016035(n+9)]+1` -/
def P4482258788081598774.Spec : Prop :=
  ∀ n, (P4482258788081598774.a n : ℤ) = A262085 (n + 1)

end A262085

/-! ## A262085.P6508258742699195074

`eq[A051953(n+1), A051953(n+9)]+1`
-/

namespace A262085.P6508258742699195074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262085.P6508258742699195074

namespace A262085

/-- `eq[A051953(n+1), A051953(n+9)]+1` -/
def P6508258742699195074.Spec : Prop :=
  ∀ n, (P6508258742699195074.a n : ℤ) = A262085 (n + 1)

end A262085

/-! ## A262085.P3694781978839459225

`eq[A219428(n+1), A219428(n+9)]+1`
-/

namespace A262085.P3694781978839459225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A262085.P3694781978839459225

namespace A262085

/-- `eq[A219428(n+1), A219428(n+9)]+1` -/
def P3694781978839459225.Spec : Prop :=
  ∀ n, (P3694781978839459225.a n : ℤ) = A262085 (n + 1)

end A262085

/-! ## A262085.P13413161108661438754

`A153152(eq[A051953(n+1), A051953(n+9)])`
-/

namespace A262085.P13413161108661438754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262085.P13413161108661438754

namespace A262085

/-- `A153152(eq[A051953(n+1), A051953(n+9)])` -/
def P13413161108661438754.Spec : Prop :=
  ∀ n, P13413161108661438754.a n = A262085 (n + 1)

end A262085

/-! ## A262085.P8567449464416630608

`eq[A062830(A233583(n+1)), A062830(n+8)]`
-/

namespace A262085.P8567449464416630608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262085.P8567449464416630608

namespace A262085

/-- `eq[A062830(A233583(n+1)), A062830(n+8)]` -/
def P8567449464416630608.Spec : Prop :=
  ∀ n, (P8567449464416630608.a n : ℤ) = A262085 (n + 1)

end A262085

/-!
# A262086: Numbers k such that phi(k + 10) = phi(k) + 10, where phi(k) = A000010(k) is Euler's totient function.

The programs for A262086, there is no canonical definition to state claims against.
-/

/-! ## A262086.P1531180614852821872

`eq[A051953(n+3), A051953(n+13)]+3`
-/

namespace A262086.P1531180614852821872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A262086.P1531180614852821872

/-! ## A262086.P15757071373555146188

`eq[A062830(n+3), A062830(n+13)]+3`
-/

namespace A262086.P15757071373555146188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A262086.P15757071373555146188

/-! ## A262086.P14964271048277246364

`eq[A219428(n+3), A219428(n+13)]+3`
-/

namespace A262086.P14964271048277246364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A262086.P14964271048277246364

/-!
# A262087: Largest palindrome p such that n-p is again a palindrome, or 0 if no such p exists.

The programs for A262087, there is no canonical definition to state claims against.
-/

/-! ## A262087.P9773967154915216800

`n-A319387(n)`
-/

namespace A262087.P9773967154915216800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A319387 n

end

end A262087.P9773967154915216800

/-! ## A262087.P15809640765135610595

`A025581(A319387(n)+A000217(n))`
-/

namespace A262087.P15809640765135610595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A319387 n + A000217 n).toNat

end

end A262087.P15809640765135610595

/-! ## A262087.P13762482732968061472

`A261423(n)%A128683(A007947(3*n+1))`
-/

namespace A262087.P13762482732968061472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261423 n) (A128683 (A007947 (3 * n + 1)).toNat)

end

end A262087.P13762482732968061472

/-! ## A262087.P8640927745711995637

`A002113(A137180(n)+1)*A178226(A002623(3*n+2))`
-/

namespace A262087.P8640927745711995637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A137180 n + 1).toNat * A178226 (A002623 (3 * n + 2)).toNat

end

end A262087.P8640927745711995637

/-!
# A262088: a(0)=0, a(1)=1, a(n) = -a(n-2)^2 - a(n-1)^3.

The programs for A262088, the canonical program `A262088.P2403355399967009507` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262088 has offset 0).

The definition of A262088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-2)²-a(n-1)^3` (program `A262088.P2403355399967009507`, by `A262088.P2403355399967009507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262088.P2403355399967009507

`-a(n-2)²-a(n-1)^3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262088

/-- `-a(n-2)²-a(n-1)^3` -/
def P2403355399967009507.Spec : Prop :=
  ∀ n, P2403355399967009507.a n = A262088 n

theorem P2403355399967009507.correct : P2403355399967009507.Spec := by
  intro n
  simp only [A262088]

end A262088

/-! ## A262088.P6960737200272259672

`-(a(n-2)²+a(n-1)²*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A262088.P6960737200272259672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -(a (n - 2) ^ 2 + a (n - 1) ^ 2 * a (n - 1))

end

end A262088.P6960737200272259672

namespace A262088

/-- `-(a(n-2)²+a(n-1)²*a(n-1))` -/
def P6960737200272259672.Spec : Prop :=
  ∀ n, P6960737200272259672.a n = A262088 n

theorem P6960737200272259672.correct : P6960737200272259672.Spec := by
  intro n
  simp only [A262088, Nat.add_sub_cancel, A262088.P6960737200272259672.a, A262088.P2403355399967009507.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A262088

/-!
# A262089: a(0) = 0, a(1) = 1, a(n) = a(n-2)^2 + a(n-1)^3.

The programs for A262089, the canonical program `A262089.P4754127851470089691` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262089 has offset 0).

The definition of A262089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)²+a(n-1)^3` (program `A262089.P4754127851470089691`, by `A262089.P4754127851470089691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262089.P12958241181956618434

`a(n-1)^3+a(n-2)²` with `a(0)=0, a(1)=1`
-/

namespace A262089.P12958241181956618434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) ^ 3 + a (n - 2) ^ 2

end

end A262089.P12958241181956618434

namespace A262089

/-- `a(n-1)^3+a(n-2)²` -/
def P12958241181956618434.Spec : Prop :=
  ∀ n, (P12958241181956618434.a n : ℤ) = A262089 n

end A262089

/-! ## A262089.P4754127851470089691

`a(n-2)²+a(n-1)^3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262089

/-- `a(n-2)²+a(n-1)^3` -/
def P4754127851470089691.Spec : Prop :=
  ∀ n, (P4754127851470089691.a n : ℤ) = A262089 n

theorem P4754127851470089691.correct : P4754127851470089691.Spec := by
  intro n
  simp only [A262089]

end A262089

/-! ## A262089.P12143587586278806605

`a(n-1)^3+a(n-2)^2` with `a(0)=0, a(1)=1`
-/

namespace A262089.P12143587586278806605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) ^ 3 + a (n - 2) ^ 2

end

end A262089.P12143587586278806605

namespace A262089

/-- `a(n-1)^3+a(n-2)^2` -/
def P12143587586278806605.Spec : Prop :=
  ∀ n, (P12143587586278806605.a n : ℤ) = A262089 n

end A262089

/-! ## A262089.P4049550780465975985

`a(n-2)²+a(n-1)²*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A262089.P4049550780465975985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) ^ 2 + a (n - 1) ^ 2 * a (n - 1)

end

end A262089.P4049550780465975985

namespace A262089

/-- `a(n-2)²+a(n-1)²*a(n-1)` -/
def P4049550780465975985.Spec : Prop :=
  ∀ n, (P4049550780465975985.a n : ℤ) = A262089 n

theorem P4049550780465975985.correct : P4049550780465975985.Spec := by
  intro n
  simp only [A262089, Nat.add_sub_cancel, A262089.P4049550780465975985.a, A262089.P4754127851470089691.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A262089

/-! ## A262089.P14261423331087680688

`a(n-1)*a(n-1)*a(n-1)+a(n-2)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A262089.P14261423331087680688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * a (n - 1) * a (n - 1) + a (n - 2) * a (n - 2)

end

end A262089.P14261423331087680688

namespace A262089

/-- `a(n-1)*a(n-1)*a(n-1)+a(n-2)*a(n-2)` -/
def P14261423331087680688.Spec : Prop :=
  ∀ n, (P14261423331087680688.a n : ℤ) = A262089 n

end A262089

/-!
# A262090: Expansion of f(x^3, x^21) / f(-x^2, -x^4) where f(, ) is the Ramanujan general theta function.

The programs for A262090, there is no canonical definition to state claims against.
-/

/-! ## A262090.P17334055014888778309

`-A143067(2*n+3)`
-/

namespace A262090.P17334055014888778309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143067 (2 * n + 3)

end

end A262090.P17334055014888778309

/-! ## A262090.P4395356089246941477

`abs(A143067(A005408(n+1)))`
-/

namespace A262090.P4395356089246941477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143067 (A005408 (n + 1)).toNat|

end

end A262090.P4395356089246941477

/-! ## A262090.P202012754207507904

`abs(A143067(2-A038608(2*n+1)))`
-/

namespace A262090.P202012754207507904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143067 (2 - A038608 (2 * n + 1)).toNat|

end

end A262090.P202012754207507904

/-! ## A262090.P11440084996303304376

`char[A101036(n+1)]-A143067(2*n+3)`
-/

namespace A262090.P11440084996303304376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A143067 (2 * n + 3)

end

end A262090.P11440084996303304376

/-! ## A262090.P17586677749332945933

`abs(A143067(2*n+1)+Δ[A143067(2*n+1)])`
-/

namespace A262090.P17586677749332945933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143067 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143067 (2 * n + 1) + (f1 (n + 1) - f1 n)|

end

end A262090.P17586677749332945933

/-! ## A262090.P7803560149899307397

`A072839(3*n+1)-A143067(2*n+3)`
-/

namespace A262090.P7803560149899307397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (3 * n + 1) - A143067 (2 * n + 3)

end

end A262090.P7803560149899307397

/-!
# A262091: Amicable digital pairs: The smaller number of a pair (x,y) with x <> y such that, in decimal notation and with an appropriate number of leading zeros prepended, x=(x_m...x_1x_0)_{10}, y=(y_m...y_1y_0)_{10}, x = y_m^m + ... + y_1^m + y_0^m, and y = x_m^m + ... + x_1^m + x_0^m.

The programs for A262091, there is no canonical definition to state claims against.
-/

/-! ## A262091.P11289291108549490333

`A262615(Δ[n²])`
-/

namespace A262091.P11289291108549490333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262091.P11289291108549490333

/-! ## A262091.P6410863187305967316

`A262615(A005408(n))+A185255(n)`
-/

namespace A262091.P6410863187305967316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (A005408 n).toNat + A185255 n

end

end A262091.P6410863187305967316

/-! ## A262091.P13302043442033948853

`∑[A015161(n)]*A262615(A005408(n))`
-/

namespace A262091.P13302043442033948853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A262615 (A005408 n).toNat

end

end A262091.P13302043442033948853

/-! ## A262091.P11118044639191789090

`A262615(A005408(n))+A015161(n+1)`
-/

namespace A262091.P11118044639191789090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (A005408 n).toNat + A015161 (n + 1)

end

end A262091.P11118044639191789090

/-! ## A262091.P8232528997328060127

`A262615(A005408(n))%A030631(n+1)`
-/

namespace A262091.P8232528997328060127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262615 (A005408 n).toNat) (A030631 (n + 1))

end

end A262091.P8232528997328060127

/-!
# A262092: Amicable digital pairs: The larger number of a pair (x,y) with x <> y such that, in decimal notation and with an appropriate number of leading zeros prepended, x=(x_m...x_1x_0)_{10}, y=(y_m...y_1y_0)_{10}, x = y_m^m + ... + y_1^m + y_0^m, and y = x_m^m + ... + x_1^m + x_0^m.

The programs for A262092, there is no canonical definition to state claims against.
-/

/-! ## A262092.P2323010023039806372

`A262615(2*(n+1))`
-/

namespace A262092.P2323010023039806372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (2 * (n + 1))

end

end A262092.P2323010023039806372

/-! ## A262092.P14826837512842458017

`A262615(A005408(n)+1)+A185255(n)`
-/

namespace A262092.P14826837512842458017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (A005408 n + 1).toNat + A185255 n

end

end A262092.P14826837512842458017

/-!
# A262094: Orders m for which the only perfect digital invariants of order m are 0 and 1.

The programs for A262094, there is no canonical definition to state claims against.
-/

/-! ## A262094.P4866441205130660404

`record[(n+1)^(3-A255668(n+1))]`
-/

namespace A262094.P4866441205130660404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - A255668 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262094.P4866441205130660404

/-! ## A262094.P13218342885221800700

`eq[2, A255668(A254667(n))]`
-/

namespace A262094.P13218342885221800700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255668 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262094.P13218342885221800700

/-! ## A262094.P16472243157901512902

`A028310(lt[A255668(n), 3])`
-/

namespace A262094.P16472243157901512902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255668 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A262094.P16472243157901512902

/-! ## A262094.P14703636275907897209

`record[(n+1)^(2/A255668(n+1))^A255668(n)]`
-/

namespace A262094.P14703636275907897209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 / (A255668 (n + 1) : ℚ)) ^ (A255668 n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262094.P14703636275907897209

/-!
# A262095: Number of non-semiprime divisors of n.

The programs for A262095, the canonical program `A262095.P10827467733905052003` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262095 has offset 1).

The definition of A262095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262095.P10827467733905052003

`A000005(n+1)-A086971(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A262095

/-- `A000005(n+1)-A086971(n+1)` -/
def P10827467733905052003.Spec : Prop :=
  ∀ n, P10827467733905052003.a n = A262095 (n + 1)

theorem P10827467733905052003.correct : P10827467733905052003.Spec := by
  intro n
  simp only [A262095, Nat.add_sub_cancel]

end A262095

/-! ## A262095.P4169660969850666785

`A385076(n+1)%A071262(n)`
-/

namespace A262095.P4169660969850666785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385076 (n + 1)) (A071262 n)

end

end A262095.P4169660969850666785

namespace A262095

/-- `A385076(n+1)%A071262(n)` -/
def P4169660969850666785.Spec : Prop :=
  ∀ n, P4169660969850666785.a n = A262095 (n + 1)

end A262095

/-! ## A262095.P16775579912470351417

`Δ[A006218(n)]-A086971(n+1)`
-/

namespace A262095.P16775579912470351417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086971 (n + 1)

end

end A262095.P16775579912470351417

namespace A262095

/-- `Δ[A006218(n)]-A086971(n+1)` -/
def P16775579912470351417.Spec : Prop :=
  ∀ n, P16775579912470351417.a n = A262095 (n + 1)

end A262095

/-! ## A262095.P14512233780579095421

`A345315(n+1)-A076290(n+1)`
-/

namespace A262095.P14512233780579095421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345315 (n + 1) - A076290 (n + 1)

end

end A262095.P14512233780579095421

namespace A262095

/-- `A345315(n+1)-A076290(n+1)` -/
def P14512233780579095421.Spec : Prop :=
  ∀ n, P14512233780579095421.a n = A262095 (n + 1)

theorem P14512233780579095421.correct : P14512233780579095421.Spec := by
  intro n
  simp only [A262095, Nat.add_sub_cancel, A262095.P14512233780579095421.a, A262095.P10827467733905052003.a, A000005, A000005.P16091521709108585461.a, A076290, A076290.P10407532045046765191.f1, A076290.P10407532045046765191.a, A086971, A086971.P8267424955413097261.a, A345315, A345315.P17248214990085666330.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A056170, A056170.P910878729848546389.a, A079275, A079275.P14331674641797174913.f1, A079275.P14331674641797174913.a, A101605, A101605.P6889417430511911463.f1, A101605.P6889417430511911463.a, A001221, A001221.P10258181745752134128.a, A056169, A056169.P17430176249366647977.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A055231, A055231.P8962300905713718501.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262095

/-! ## A262095.P3000815826699363556

`A163523(n+1)-A350331(n+1)`
-/

namespace A262095.P3000815826699363556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A350331 (n + 1)

end

end A262095.P3000815826699363556

namespace A262095

/-- `A163523(n+1)-A350331(n+1)` -/
def P3000815826699363556.Spec : Prop :=
  ∀ n, P3000815826699363556.a n = A262095 (n + 1)

theorem P3000815826699363556.correct : P3000815826699363556.Spec := by
  intro n
  simp only [A262095, Nat.add_sub_cancel, A262095.P3000815826699363556.a, A262095.P10827467733905052003.a, A000005, A000005.P16091521709108585461.a, A086971, A086971.P8267424955413097261.a, A163523, A163523.P17500706477665394313.a, A350331, A350331.P13927814064560633855.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A056170, A056170.P910878729848546389.a, A079275, A079275.P14331674641797174913.f1, A079275.P14331674641797174913.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A056169, A056169.P17430176249366647977.a, A059841, A059841.P2666504972441551157.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262095

/-! ## A262095.P4741263314051139329

`A000005(n+1)-(A106405(n+1)+A106404(n+1))`
-/

namespace A262095.P4741263314051139329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A106405 (n + 1) + A106404 (n + 1))

end

end A262095.P4741263314051139329

namespace A262095

/-- `A000005(n+1)-(A106405(n+1)+A106404(n+1))` -/
def P4741263314051139329.Spec : Prop :=
  ∀ n, P4741263314051139329.a n = A262095 (n + 1)

theorem P4741263314051139329.correct : P4741263314051139329.Spec := by
  intro n
  simp only [A262095, Nat.add_sub_cancel, A262095.P4741263314051139329.a, A262095.P10827467733905052003.a, A000005, A000005.P16091521709108585461.a, A086971, A086971.P8267424955413097261.a, A106404, A106404.P11986901570279237370.f1, A106404.P11986901570279237370.a, A106405, A106405.P14402904271098237239.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A056170, A056170.P910878729848546389.a, A079275, A079275.P14331674641797174913.f1, A079275.P14331674641797174913.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A056169, A056169.P17430176249366647977.a, A059841, A059841.P2666504972441551157.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262095

/-! ## A262095.P5404479436959792988

`A000005(n+1)+A001221(n+1)-A350331(n+1)`
-/

namespace A262095.P5404479436959792988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001221 (n + 1) - A350331 (n + 1))

end

end A262095.P5404479436959792988

namespace A262095

/-- `A000005(n+1)+A001221(n+1)-A350331(n+1)` -/
def P5404479436959792988.Spec : Prop :=
  ∀ n, P5404479436959792988.a n = A262095 (n + 1)

theorem P5404479436959792988.correct : P5404479436959792988.Spec := by
  intro n
  simp only [A262095, Nat.add_sub_cancel, A262095.P5404479436959792988.a, A262095.P10827467733905052003.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A086971, A086971.P8267424955413097261.a, A350331, A350331.P13927814064560633855.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A056170, A056170.P910878729848546389.a, A059841, A059841.P2666504972441551157.a, A079275, A079275.P14331674641797174913.f1, A079275.P14331674641797174913.a, A056169, A056169.P17430176249366647977.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262095

/-! ## A262095.P17250427487279268008

`∑{d}[n+1, A010051(A064911(#)+A000040(#))]`
-/

namespace A262095.P17250427487279268008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A064911 d + A000040 d).toNat

end

end A262095.P17250427487279268008

namespace A262095

/-- `∑{d}[n+1, A010051(A064911(#)+A000040(#))]` -/
def P17250427487279268008.Spec : Prop :=
  ∀ n, P17250427487279268008.a n = A262095 (n + 1)

end A262095

/-! ## A262095.P10625129270759201442

`A001222(∏{d}[n+1, A000700(A001222(#))+1])`
-/

namespace A262095.P10625129270759201442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n), (A000700 (A001222 d).toNat + 1)).toNat

end

end A262095.P10625129270759201442

namespace A262095

/-- `A001222(∏{d}[n+1, A000700(A001222(#))+1])` -/
def P10625129270759201442.Spec : Prop :=
  ∀ n, P10625129270759201442.a n = A262095 (n + 1)

end A262095

/-! ## A262095.P6748682148899676203

`∑{d}[A046523(n+1), A106470(A001222(#²))²]`
-/

namespace A262095.P6748682148899676203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A106470 (A001222 (d ^ 2)).toNat ^ 2

end

end A262095.P6748682148899676203

namespace A262095

/-- `∑{d}[A046523(n+1), A106470(A001222(#²))²]` -/
def P6748682148899676203.Spec : Prop :=
  ∀ n, P6748682148899676203.a n = A262095 (n + 1)

end A262095

/-!
# A262096: Triangle read by rows: numbers c from the set of arithmetic triples a < b < c (three numbers in arithmetic progression) where a and b are terms of A005836.

The programs for A262096, there is no canonical definition to state claims against.
-/

/-! ## A262096.P17771680457206821562

`A262256(3*(n+1))`
-/

namespace A262096.P17771680457206821562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262256 (3 * (n + 1))

end

end A262096.P17771680457206821562

/-! ## A262096.P3121157848644824409

`A262256(A008486(n+1))%A007522(n+1)`
-/

namespace A262096.P3121157848644824409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262256 (A008486 (n + 1)).toNat) (A007522 (n + 1))

end

end A262096.P3121157848644824409

/-! ## A262096.P3261769245725272871

`A262256(A008486(n+1))-A000027(n+1)+n+1`
-/

namespace A262096.P3261769245725272871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262256 (A008486 (n + 1)).toNat - A000027 (n + 1) + (n + 1 : ℤ)

end

end A262096.P3261769245725272871

/-! ## A262096.P6793299081493676175

`A262256(A008486(n+1))/A069289(A333537(n+1))`
-/

namespace A262096.P6793299081493676175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262256 (A008486 (n + 1)).toNat : ℚ) / (A069289 (A333537 (n + 1)).toNat : ℚ)

end

end A262096.P6793299081493676175

/-! ## A262096.P5727591223470413559

`A262256(A008486(n+1))/A069289(A060265(n+2))`
-/

namespace A262096.P5727591223470413559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262256 (A008486 (n + 1)).toNat : ℚ) / (A069289 (A060265 (n + 2)).toNat : ℚ)

end

end A262096.P5727591223470413559

/-!
# A262097: a(n) is the number of arithmetic triples k

The programs for A262097, there is no canonical definition to state claims against.
-/

/-! ## A262097.P17571349903200789253

`A273513(A157671(n+1)-A005408(n))`
-/

namespace A262097.P17571349903200789253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A157671 (n + 1) - A005408 n).toNat

end

end A262097.P17571349903200789253

/-! ## A262097.P16449395496666066961

`A273515(n)-(A273514(n)+A273513(n))`
-/

namespace A262097.P16449395496666066961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n - (A273514 n + A273513 n)

end

end A262097.P16449395496666066961

/-! ## A262097.P9796466263991061215

`A273513(A117967(n)+A004488(n))`
-/

namespace A262097.P9796466263991061215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A117967 n + A004488 n).toNat

end

end A262097.P9796466263991061215

/-! ## A262097.P5810776984792376241

`A273513(A338242(n))`
-/

namespace A262097.P5810776984792376241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A338242 n).toNat

end

end A262097.P5810776984792376241

/-! ## A262097.P16903015320254624692

`A273513(A338243(n+1))`
-/

namespace A262097.P16903015320254624692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A338243 (n + 1)).toNat

end

end A262097.P16903015320254624692

/-!
# A262098: Primes p such that 2^p + 9 is also prime.

The programs for A262098, there is no canonical definition to state claims against.
-/

/-! ## A262098.P13879116373623310440

`p?[A057196(n+1)]`
-/

namespace A262098.P13879116373623310440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262098.P13879116373623310440

/-! ## A262098.P10438305818132493746

`p?[record[A057196(A012257(n))]]`
-/

namespace A262098.P10438305818132493746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057196 (A012257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262098.P10438305818132493746

/-! ## A262098.P10513409354127386669

`p?[record[A057196(A022446(n))]]`
-/

namespace A262098.P10513409354127386669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057196 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262098.P10513409354127386669

/-! ## A262098.P3213078722373482258

`p?[record[A057196(A028920(n))]]`
-/

namespace A262098.P3213078722373482258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057196 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262098.P3213078722373482258

/-! ## A262098.P6668957469968772265

`record[A020639(A057196(n+2))]`
-/

namespace A262098.P6668957469968772265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057196 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262098.P6668957469968772265


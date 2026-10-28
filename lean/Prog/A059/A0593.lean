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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A059300: Triangle of idempotent numbers binomial(n,k)*k^(n-k), version 4.

The programs for A059300, the canonical program `A059300.P15497865655254778409` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059300 has offset 0).

The definition of A059300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059300.P15497865655254778409

`C(row(n)+1, row(n)-col(n)+1)*(row(n)-col(n)+1)^col(n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059300

/-- `C(row(n)+1, row(n)-col(n)+1)*(row(n)-col(n)+1)^col(n)` -/
def P15497865655254778409.Spec : Prop :=
  ∀ n, P15497865655254778409.a n = A059300 n

theorem P15497865655254778409.correct : P15497865655254778409.Spec := by
  intro n
  simp only [A059300]

end A059300

/-! ## A059300.P3310520826837477957

`C(row(n)+1, col(n))*(row(n)+1-col(n))^col(n)`
-/

namespace A059300.P3310520826837477957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ SequenceMachineLib.triCol n

end

end A059300.P3310520826837477957

namespace A059300

/-- `C(row(n)+1, col(n))*(row(n)+1-col(n))^col(n)` -/
def P3310520826837477957.Spec : Prop :=
  ∀ n, P3310520826837477957.a n = A059300 n

end A059300

/-! ## A059300.P18303379961186898204

`A059299(comp[∑[n-1]])`
-/

namespace A059300.P18303379961186898204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A059300.P18303379961186898204

namespace A059300

/-- `A059299(comp[∑[n-1]])` -/
def P18303379961186898204.Spec : Prop :=
  ∀ n, P18303379961186898204.a n = A059300 n

end A059300

/-! ## A059300.P11191080546036925354

`A009999(n)*A074909(n)`
-/

namespace A059300.P11191080546036925354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n * A074909 n

end

end A059300.P11191080546036925354

namespace A059300

/-- `A009999(n)*A074909(n)` -/
def P11191080546036925354.Spec : Prop :=
  ∀ n, P11191080546036925354.a n = A059300 n

end A059300

/-! ## A059300.P1889959060325056669

`A059298(A061579(n))`
-/

namespace A059300.P1889959060325056669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059298 (A061579 n).toNat

end

end A059300.P1889959060325056669

namespace A059300

/-- `A059298(A061579(n))` -/
def P1889959060325056669.Spec : Prop :=
  ∀ n, P1889959060325056669.a n = A059300 n

end A059300

/-! ## A059300.P5073881083469410296

`A059297(n+2+2*A025581(n))`
-/

namespace A059300.P5073881083469410296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 ((n + 2 : ℤ) + 2 * A025581 n).toNat

end

end A059300.P5073881083469410296

namespace A059300

/-- `A059297(n+2+2*A025581(n))` -/
def P5073881083469410296.Spec : Prop :=
  ∀ n, P5073881083469410296.a n = A059300 n

end A059300

/-! ## A059300.P8104288957877149995

`A059297(n+2+A025581(n)+A025581(n))`
-/

namespace A059300.P8104288957877149995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 ((n + 2 : ℤ) + (A025581 n + A025581 n)).toNat

end

end A059300.P8104288957877149995

namespace A059300

/-- `A059297(n+2+A025581(n)+A025581(n))` -/
def P8104288957877149995.Spec : Prop :=
  ∀ n, P8104288957877149995.a n = A059300 n

end A059300

/-!
# A059301: Number of filter bases of an n-set.

The programs for A059301, the canonical program `A059301.P13642198361611130658` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059301 has offset 1).

The definition of A059301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059301.P13642198361611130658

`∑{#}[n, C(n+1, #)*2^(2^#-1)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059301

/-- `∑{#}[n, C(n+1, #)*2^(2^#-1)]` -/
def P13642198361611130658.Spec : Prop :=
  ∀ n, P13642198361611130658.a n = (A059301 (n + 1) : ℚ)

end A059301

/-!
# A059302: A diagonal of A008296.

The programs for A059302, the canonical program `A059302.P18409099700978401479` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059302 has offset 2).

The definition of A059302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059302.P11513339707484890429

`ogf((-1+4x)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A059302.P11513339707484890429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -5, 10, -10, 5, -1] n

end

end A059302.P11513339707484890429

namespace A059302

/-- `ogf((-1+4x)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11513339707484890429.Spec : Prop :=
  ∀ n, P11513339707484890429.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P5171262447164778326

`(n+1)*(n+2)*(n+3)*(3*(n+2)-10)/24`
-/

namespace A059302.P5171262447164778326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * ((3 * (n + 2) : ℤ) - 10) : ℚ) / 24

end

end A059302.P5171262447164778326

namespace A059302

/-- `(n+1)*(n+2)*(n+3)*(3*(n+2)-10)/24` -/
def P5171262447164778326.Spec : Prop :=
  ∀ n, P5171262447164778326.a n = (A059302 (n + 2) : ℚ)

theorem P5171262447164778326.correct : P5171262447164778326.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A059302, Nat.add_sub_cancel, A059302.P5171262447164778326.a, A059302.P18409099700978401479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A059302, Nat.add_sub_cancel, A059302.P5171262447164778326.a, A059302.P18409099700978401479.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059302

/-! ## A059302.P18409099700978401479

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=-1, a(1)=-1, a(2)=5, a(3)=25, a(4)=70`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059302

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18409099700978401479.Spec : Prop :=
  ∀ n, P18409099700978401479.a n = A059302 (n + 2)

theorem P18409099700978401479.correct : P18409099700978401479.Spec := by
  intro n
  simp only [A059302, Nat.add_sub_cancel]

end A059302

/-! ## A059302.P17130365264491409756

`∑[n²-1]+C(∑[n], 2)`
-/

namespace A059302.P17130365264491409756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A059302.P17130365264491409756

namespace A059302

/-- `∑[n²-1]+C(∑[n], 2)` -/
def P17130365264491409756.Spec : Prop :=
  ∀ n, P17130365264491409756.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P5965436778452172483

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=-1`
-/

namespace A059302.P5965436778452172483
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059302.P5965436778452172483

namespace A059302

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P5965436778452172483.Spec : Prop :=
  ∀ n, P5965436778452172483.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P2903190068176647953

`∑[∑[∑[ogf((-1+4x)/(1-2x+x^2))]]]`
-/

namespace A059302.P2903190068176647953
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059302.P2903190068176647953

namespace A059302

/-- `∑[∑[∑[ogf((-1+4x)/(1-2x+x^2))]]]` -/
def P2903190068176647953.Spec : Prop :=
  ∀ n, P2903190068176647953.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P6219749851044321098

`-∑[∑[∑[a(n-1)-3]]]` with `a(0)=1`
-/

namespace A059302.P6219749851044321098
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059302.P6219749851044321098

namespace A059302

/-- `-∑[∑[∑[a(n-1)-3]]]` -/
def P6219749851044321098.Spec : Prop :=
  ∀ n, P6219749851044321098.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P5057630032632120040

`∑[A006002(n)-(n+1)]`
-/

namespace A059302.P5057630032632120040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059302.P5057630032632120040

namespace A059302

/-- `∑[A006002(n)-(n+1)]` -/
def P5057630032632120040.Spec : Prop :=
  ∀ n, P5057630032632120040.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P3130046409361603017

`A215862(n)-∑[(n+1)²]`
-/

namespace A059302.P3130046409361603017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059302.P3130046409361603017

namespace A059302

/-- `A215862(n)-∑[(n+1)²]` -/
def P3130046409361603017.Spec : Prop :=
  ∀ n, P3130046409361603017.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P61604525407402742

`A133252(n)-(n+1)*(n+2)`
-/

namespace A059302.P61604525407402742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133252 n - ((n + 1) * (n + 2) : ℤ)

end

end A059302.P61604525407402742

namespace A059302

/-- `A133252(n)-(n+1)*(n+2)` -/
def P61604525407402742.Spec : Prop :=
  ∀ n, P61604525407402742.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P5357122353676502177

`∑[A077414(n+1)-(n+1)²]`
-/

namespace A059302.P5357122353676502177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059302.P5357122353676502177

namespace A059302

/-- `∑[A077414(n+1)-(n+1)²]` -/
def P5357122353676502177.Spec : Prop :=
  ∀ n, P5357122353676502177.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P2701249822840160957

`C(∑[n+1], 2)-A000292(n+1)`
-/

namespace A059302.P2701249822840160957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - A000292 (n + 1)

end

end A059302.P2701249822840160957

namespace A059302

/-- `C(∑[n+1], 2)-A000292(n+1)` -/
def P2701249822840160957.Spec : Prop :=
  ∀ n, P2701249822840160957.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P14694594215069379420

`A033486(n)-A051798(n)`
-/

namespace A059302.P14694594215069379420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n - A051798 n

end

end A059302.P14694594215069379420

namespace A059302

/-- `A033486(n)-A051798(n)` -/
def P14694594215069379420.Spec : Prop :=
  ∀ n, P14694594215069379420.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P17545467920354353871

`A163943(n)-A047732(n)`
-/

namespace A059302.P17545467920354353871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 n - A047732 n

end

end A059302.P17545467920354353871

namespace A059302

/-- `A163943(n)-A047732(n)` -/
def P17545467920354353871.Spec : Prop :=
  ∀ n, P17545467920354353871.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P8000655346967126920

`A052149(n+1)-A133252(n)`
-/

namespace A059302.P8000655346967126920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) - A133252 n

end

end A059302.P8000655346967126920

namespace A059302

/-- `A052149(n+1)-A133252(n)` -/
def P8000655346967126920.Spec : Prop :=
  ∀ n, P8000655346967126920.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P1267959731275400592

`A001296(n)-A254749(n+1)`
-/

namespace A059302.P1267959731275400592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - A254749 (n + 1)

end

end A059302.P1267959731275400592

namespace A059302

/-- `A001296(n)-A254749(n+1)` -/
def P1267959731275400592.Spec : Prop :=
  ∀ n, P1267959731275400592.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P6395692747019147612

`A211958(n+1)-A188554(n)`
-/

namespace A059302.P6395692747019147612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) - A188554 n

end

end A059302.P6395692747019147612

namespace A059302

/-- `A211958(n+1)-A188554(n)` -/
def P6395692747019147612.Spec : Prop :=
  ∀ n, P6395692747019147612.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P17441342081694593090

`A174002(n)-A256859(n+1)`
-/

namespace A059302.P17441342081694593090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n - A256859 (n + 1)

end

end A059302.P17441342081694593090

namespace A059302

/-- `A174002(n)-A256859(n+1)` -/
def P17441342081694593090.Spec : Prop :=
  ∀ n, P17441342081694593090.a n = A059302 (n + 2)

end A059302

/-! ## A059302.P18280352715101645879

`A000096(n)²-(A215862(n)+1)`
-/

namespace A059302.P18280352715101645879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n ^ 2 - (A215862 n + 1)

end

end A059302.P18280352715101645879

namespace A059302

/-- `A000096(n)²-(A215862(n)+1)` -/
def P18280352715101645879.Spec : Prop :=
  ∀ n, P18280352715101645879.a n = A059302 (n + 2)

end A059302

/-!
# A059303: Numbers k such that floor(e^k) + 1 is prime.

The programs for A059303, there is no canonical definition to state claims against.
-/

/-! ## A059303.P12714525644524495242

`record[gcd(35, n)*val(A136698(n), 2)]`
-/

namespace A059303.P12714525644524495242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 35 n * SequenceMachineLib.valuation (A136698 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059303.P12714525644524495242

/-! ## A059303.P16803444452221273969

`A338101(A192624(n))+n`
-/

namespace A059303.P16803444452221273969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (A192624 n).toNat + (n : ℤ)

end

end A059303.P16803444452221273969

/-!
# A059304: a(n) = 2^n * (2*n)! / (n!)^2.

The programs for A059304, the canonical program `A059304.P7987591590417581669` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059304 has offset 0).

The definition of A059304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059304.P1094827566548036695

`C(2*n, n)*2^n`
-/

namespace A059304.P1094827566548036695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * 2 ^ n

end

end A059304.P1094827566548036695

namespace A059304

/-- `C(2*n, n)*2^n` -/
def P1094827566548036695.Spec : Prop :=
  ∀ n, (P1094827566548036695.a n : ℤ) = A059304 n

theorem P1094827566548036695.correct : P1094827566548036695.Spec := by
  intro n
  simp only [A059304, Nat.add_sub_cancel, A059304.P1094827566548036695.a, A059304.P7987591590417581669.a, A000079, A000079.P10855139691139572931.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059304

/-! ## A059304.P15982377095532221513

`4*(2-1/n)*a(n-1)` with `a(0)=1`
-/

namespace A059304.P15982377095532221513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 - 1 / (n : ℚ)) * a (n - 1)

end

end A059304.P15982377095532221513

namespace A059304

/-- `4*(2-1/n)*a(n-1)` -/
def P15982377095532221513.Spec : Prop :=
  ∀ n, P15982377095532221513.a n = (A059304 n : ℚ)

end A059304

/-! ## A059304.P14839228435724702363

`∑{#}[2*n-n, C(2*n, #+n)*C(#+n, n)]`
-/

namespace A059304.P14839228435724702363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * n) (k + n) * Nat.choose (k + n) n

end

end A059304.P14839228435724702363

namespace A059304

/-- `∑{#}[2*n-n, C(2*n, #+n)*C(#+n, n)]` -/
def P14839228435724702363.Spec : Prop :=
  ∀ n, (P14839228435724702363.a n : ℤ) = A059304 n

end A059304

/-! ## A059304.P7987591590417581669

`A000079(n)*A000984(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059304

/-- `A000079(n)*A000984(n)` -/
def P7987591590417581669.Spec : Prop :=
  ∀ n, P7987591590417581669.a n = A059304 n

theorem P7987591590417581669.correct : P7987591590417581669.Spec := by
  intro n
  simp only [A059304]

end A059304

/-! ## A059304.P10917311191373428068

`2^n*(2*n)!/n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059304.P10917311191373428068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A059304.P10917311191373428068

namespace A059304

/-- `2^n*(2*n)!/n!²` -/
def P10917311191373428068.Spec : Prop :=
  ∀ n, P10917311191373428068.a n = (A059304 n : ℚ)

end A059304

/-! ## A059304.P4579191355676741568

`2*2*(2-n^(-1))*a(n-1)` with `a(0)=1`
-/

namespace A059304.P4579191355676741568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1)))

end

end A059304.P4579191355676741568

namespace A059304

/-- `2*2*(2-n^(-1))*a(n-1)` -/
def P4579191355676741568.Spec : Prop :=
  ∀ n, P4579191355676741568.a n = (A059304 n : ℚ)

end A059304

/-! ## A059304.P17128669985445768275

`abs(A343842(n))`
-/

namespace A059304.P17128669985445768275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343842 n|

end

end A059304.P17128669985445768275

namespace A059304

/-- `abs(A343842(n))` -/
def P17128669985445768275.Spec : Prop :=
  ∀ n, P17128669985445768275.a n = A059304 n

end A059304

/-! ## A059304.P5611476041338937702

`A128417(∑[n])`
-/

namespace A059304.P5611476041338937702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059304.P5611476041338937702

namespace A059304

/-- `A128417(∑[n])` -/
def P5611476041338937702.Spec : Prop :=
  ∀ n, P5611476041338937702.a n = A059304 n

end A059304

/-! ## A059304.P3657613992583984085

`record[A128417(n)]`
-/

namespace A059304.P3657613992583984085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059304.P3657613992583984085

namespace A059304

/-- `record[A128417(n)]` -/
def P3657613992583984085.Spec : Prop :=
  ∀ n, P3657613992583984085.a n = A059304 n

end A059304

/-! ## A059304.P8579338248965154180

`A098660(2*n)`
-/

namespace A059304.P8579338248965154180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098660 (2 * n)

end

end A059304.P8579338248965154180

namespace A059304

/-- `A098660(2*n)` -/
def P8579338248965154180.Spec : Prop :=
  ∀ n, P8579338248965154180.a n = A059304 n

end A059304

/-! ## A059304.P3397680022052067351

`A103973(2*n)`
-/

namespace A059304.P3397680022052067351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103973 (2 * n)

end

end A059304.P3397680022052067351

namespace A059304

/-- `A103973(2*n)` -/
def P3397680022052067351.Spec : Prop :=
  ∀ n, P3397680022052067351.a n = A059304 n

end A059304

/-! ## A059304.P5908847550291703325

`(n+1)*A151374(n)`
-/

namespace A059304.P5908847550291703325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151374 n

end

end A059304.P5908847550291703325

namespace A059304

/-- `(n+1)*A151374(n)` -/
def P5908847550291703325.Spec : Prop :=
  ∀ n, P5908847550291703325.a n = A059304 n

end A059304

/-! ## A059304.P15188514950200500493

`2^n*A000984(n)`
-/

namespace A059304.P15188514950200500493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000984 n

end

end A059304.P15188514950200500493

namespace A059304

/-- `2^n*A000984(n)` -/
def P15188514950200500493.Spec : Prop :=
  ∀ n, P15188514950200500493.a n = A059304 n

theorem P15188514950200500493.correct : P15188514950200500493.Spec := by
  intro n
  simp only [A059304, Nat.add_sub_cancel, A059304.P15188514950200500493.a, A059304.P7987591590417581669.a, A000079, A000079.P10855139691139572931.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059304

/-! ## A059304.P4672165463467987277

`∑[abs(Δ[n*A052701(n)])]`
-/

namespace A059304.P4672165463467987277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059304.P4672165463467987277

namespace A059304

/-- `∑[abs(Δ[n*A052701(n)])]` -/
def P4672165463467987277.Spec : Prop :=
  ∀ n, P4672165463467987277.a n = A059304 n

end A059304

/-! ## A059304.P18203292528001477123

`(n+1)*A052701(n+1)`
-/

namespace A059304.P18203292528001477123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052701 (n + 1)

end

end A059304.P18203292528001477123

namespace A059304

/-- `(n+1)*A052701(n+1)` -/
def P18203292528001477123.Spec : Prop :=
  ∀ n, P18203292528001477123.a n = A059304 n

end A059304

/-! ## A059304.P18115467053613873916

`2^(n-1)*A028329(n)`
-/

namespace A059304.P18115467053613873916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A028329 n : ℚ)

end

end A059304.P18115467053613873916

namespace A059304

/-- `2^(n-1)*A028329(n)` -/
def P18115467053613873916.Spec : Prop :=
  ∀ n, P18115467053613873916.a n = (A059304 n : ℚ)

end A059304

/-! ## A059304.P15865190752607070164

`2^(n-2)*A240530(n)`
-/

namespace A059304.P15865190752607070164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A240530 n : ℚ)

end

end A059304.P15865190752607070164

namespace A059304

/-- `2^(n-2)*A240530(n)` -/
def P15865190752607070164.Spec : Prop :=
  ∀ n, P15865190752607070164.a n = (A059304 n : ℚ)

end A059304

/-! ## A059304.P16680937770947763066

`(n+1)/2*A025225(n+1)`
-/

namespace A059304.P16680937770947763066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A025225 (n + 1) : ℚ)

end

end A059304.P16680937770947763066

namespace A059304

/-- `(n+1)/2*A025225(n+1)` -/
def P16680937770947763066.Spec : Prop :=
  ∀ n, P16680937770947763066.a n = (A059304 n : ℚ)

end A059304

/-! ## A059304.P3225535432729408570

`A011782(n)*A100320(n)`
-/

namespace A059304.P3225535432729408570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A100320 n

end

end A059304.P3225535432729408570

namespace A059304

/-- `A011782(n)*A100320(n)` -/
def P3225535432729408570.Spec : Prop :=
  ∀ n, P3225535432729408570.a n = A059304 n

end A059304

/-! ## A059304.P12360600613386304115

`A001790(n)*A129195(n)`
-/

namespace A059304.P12360600613386304115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A129195 n

end

end A059304.P12360600613386304115

namespace A059304

/-- `A001790(n)*A129195(n)` -/
def P12360600613386304115.Spec : Prop :=
  ∀ n, P12360600613386304115.a n = A059304 n

end A059304

/-!
# A059305: a(n) = pi(Mersenne(n)): index of n-th Mersenne prime.

The programs for A059305, there is no canonical definition to state claims against.
-/

/-! ## A059305.P1116248449421883829

`A007053(A000043(n+1))`
-/

namespace A059305.P1116248449421883829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A000043 (n + 1)).toNat

end

end A059305.P1116248449421883829

/-! ## A059305.P4389160561878733863

`A007053(A366029(n+1))`
-/

namespace A059305.P4389160561878733863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A366029 (n + 1)).toNat

end

end A059305.P4389160561878733863

/-! ## A059305.P14636488374862075652

`A007053(A000040(A016027(n+1)))`
-/

namespace A059305.P14636488374862075652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A000040 (A016027 (n + 1)).toNat).toNat

end

end A059305.P14636488374862075652

/-! ## A059305.P18443120015714324830

`A060967(A061645(n+1))`
-/

namespace A059305.P18443120015714324830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A061645 (n + 1)).toNat

end

end A059305.P18443120015714324830

/-! ## A059305.P9849845901714263527

`A007053(A152961(n+1))`
-/

namespace A059305.P9849845901714263527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A152961 (n + 1)).toNat

end

end A059305.P9849845901714263527

/-!
# A059306: Number of 2 X 2 singular integer matrices with elements from {0,...,n}.

The programs for A059306, there is no canonical definition to state claims against.
-/

/-! ## A059306.P12845958050977417164

`A134506(n)+(2*n+1)²`
-/

namespace A059306.P12845958050977417164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n + ((2 * n + 1) ^ 2 : ℤ)

end

end A059306.P12845958050977417164

/-! ## A059306.P1414032441899058253

`A210371(n)-A210372(n)`
-/

namespace A059306.P1414032441899058253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 n - A210372 n

end

end A059306.P1414032441899058253

/-! ## A059306.P2877663419720140949

`2*A210371(n)-A210369(n)`
-/

namespace A059306.P2877663419720140949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210371 n - A210369 n

end

end A059306.P2877663419720140949

/-! ## A059306.P3863847970129402560

`A210369(n)-2*A210372(n)`
-/

namespace A059306.P3863847970129402560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n - 2 * A210372 n

end

end A059306.P3863847970129402560

/-! ## A059306.P2942247651899918095

`2*A210290(n)-(n+1)²²`
-/

namespace A059306.P2942247651899918095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210290 n - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A059306.P2942247651899918095

/-! ## A059306.P9543146505889682543

`A209993(n)-2*A171503(n)`
-/

namespace A059306.P9543146505889682543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - 2 * A171503 n

end

end A059306.P9543146505889682543

/-! ## A059306.P11511517002567613188

`∑[A016813(A209295(n))]`
-/

namespace A059306.P11511517002567613188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A209295 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059306.P11511517002567613188

/-! ## A059306.P7210677880078659251

`(n+1)²²-A062801(n)`
-/

namespace A059306.P7210677880078659251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A062801 n

end

end A059306.P7210677880078659251

/-! ## A059306.P16787763776132363924

`A005353(n+1)+A020478(n+1)-A062801(n)`
-/

namespace A059306.P16787763776132363924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005353 (n + 1) + (A020478 (n + 1) - A062801 n)

end

end A059306.P16787763776132363924

/-! ## A059306.P4740050029518902781

`A209991(n)-A171503(n)`
-/

namespace A059306.P4740050029518902781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209991 n - A171503 n

end

end A059306.P4740050029518902781

/-! ## A059306.P4832393507395221170

`2*A209991(n)-A209993(n)`
-/

namespace A059306.P4832393507395221170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209991 n - A209993 n

end

end A059306.P4832393507395221170

/-! ## A059306.P13440283998096980418

`A209991(n)-(A140466(n)+A057428(n))`
-/

namespace A059306.P13440283998096980418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209991 n - (A140466 n + A057428 n)

end

end A059306.P13440283998096980418

/-! ## A059306.P16485992558502754129

`A002246(n+1)+A209991(n)-A326354(n+1)`
-/

namespace A059306.P16485992558502754129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1) + (A209991 n - A326354 (n + 1))

end

end A059306.P16485992558502754129

/-! ## A059306.P4265093043295660671

`A209993(n)-A210000(n)`
-/

namespace A059306.P4265093043295660671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - A210000 n

end

end A059306.P4265093043295660671

/-! ## A059306.P9246253300790270376

`A209991(n)-A210000(n)/2`
-/

namespace A059306.P9246253300790270376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209991 n : ℚ) - (A210000 n : ℚ) / 2

end

end A059306.P9246253300790270376

/-! ## A059306.P11245758769016214525

`A209993(n)-2*A004274(A049691(n))`
-/

namespace A059306.P11245758769016214525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - 2 * A004274 (A049691 n).toNat

end

end A059306.P11245758769016214525

/-! ## A059306.P15060674122448391289

`A209993(n)-2*A004273(A049696(n))`
-/

namespace A059306.P15060674122448391289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - 2 * A004273 (A049696 n).toNat

end

end A059306.P15060674122448391289

/-!
# A059307: Numbers n such that base 10 representation of n does not contain a block of digits which is a square: blocks like 0, 1, 4, 9, 36, 121, ... are forbidden.

The programs for A059307, there is no canonical definition to state claims against.
-/

/-! ## A059307.P9934093699085815465

`eq[0, A035222(n)]`
-/

namespace A059307.P9934093699085815465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059307.P9934093699085815465

/-! ## A059307.P2850057648322641957

`lt[A035222(n), acot(A000009(n))]`
-/

namespace A059307.P2850057648322641957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000009 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P2850057648322641957

/-! ## A059307.P16473129509510658804

`lt[A035222(n), acot(A005378(n))]`
-/

namespace A059307.P16473129509510658804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A005378 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P16473129509510658804

/-! ## A059307.P16096829794338035503

`lt[A035222(n), acot(A007318(n))]`
-/

namespace A059307.P16096829794338035503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007318 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P16096829794338035503

/-! ## A059307.P9849442976180598925

`lt[A035222(n), acot(A000040(n+1))]`
-/

namespace A059307.P9849442976180598925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000040 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P9849442976180598925

/-! ## A059307.P10131986366424160447

`lt[A035222(n), acot(A000203(n+1))]`
-/

namespace A059307.P10131986366424160447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000203 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P10131986366424160447

/-! ## A059307.P13836739475494905758

`lt[ceil(A035222(n)/A000005(n+1)), 1]`
-/

namespace A059307.P13836739475494905758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035222 n : ℚ) / (A000005 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059307.P13836739475494905758

/-! ## A059307.P9473214479496466400

`lt[A035222(n), cos(A000010(2*n+1)/2)²]`
-/

namespace A059307.P9473214479496466400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((A000010 (2 * n + 1) : ℚ) / 2 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P9473214479496466400

/-! ## A059307.P14878082386612065143

`lt[A035222(n), cos(A018252(n+1)+n+1)²]`
-/

namespace A059307.P14878082386612065143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A018252 (n + 1) + (n + 1 : ℤ) : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A059307.P14878082386612065143

/-!
# A059308: Primes p such that x^15 = 2 has no solution mod p.

The programs for A059308, there is no canonical definition to state claims against.
-/

/-! ## A059308.P5140605382897151714

`∪[A040034(n+1), A040160(n+1)]`
-/

namespace A059308.P5140605382897151714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059308.P5140605382897151714

/-! ## A059308.P9670260912378478452

`A059637(A115063(n+1)%A059622(n+1))`
-/

namespace A059308.P9670260912378478452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059637 (Int.tmod (A115063 (n + 1)) (A059622 (n + 1))).toNat

end

end A059308.P9670260912378478452

/-! ## A059308.P14107508757027834918

`A059637(A209061(n+1)%A059622(n+1))`
-/

namespace A059308.P14107508757027834918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059637 (Int.tmod (A209061 (n + 1)) (A059622 (n + 1))).toNat

end

end A059308.P14107508757027834918

/-! ## A059308.P13438635527486449186

`A059637(A187829(n+1))`
-/

namespace A059308.P13438635527486449186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059637 (A187829 (n + 1)).toNat

end

end A059308.P13438635527486449186

/-!
# A059309: Primes p such that x^20 = 2 has no solution mod p.

The programs for A059309, there is no canonical definition to state claims against.
-/

/-! ## A059309.P11818682343405268084

`∪[A040100(n+1), A040160(n+1)]`
-/

namespace A059309.P11818682343405268084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059309.P11818682343405268084

/-! ## A059309.P3124219435644439880

`∪[A040100(n+1), A059263(n+1)]`
-/

namespace A059309.P3124219435644439880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059309.P3124219435644439880

/-! ## A059309.P5017174821263582428

`∪[A059263(n+1), A070179(n+1)]`
-/

namespace A059309.P5017174821263582428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059309.P5017174821263582428

/-! ## A059309.P11531212573742037220

`A216455(A059352(n+1))`
-/

namespace A059309.P11531212573742037220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A059352 (n + 1)).toNat

end

end A059309.P11531212573742037220

/-! ## A059309.P10172012367774703923

`eq[A193574(n+2), A298423(n)]`
-/

namespace A059309.P10172012367774703923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193574 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059309.P10172012367774703923

/-!
# A059310: Primes p such that x^21 = 2 has no solution mod p.

The programs for A059310, there is no canonical definition to state claims against.
-/

/-! ## A059310.P17326670130924657297

`∪[A040034(n+1), A042967(n+1)]`
-/

namespace A059310.P17326670130924657297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059310.P17326670130924657297

/-! ## A059310.P6625892297347435613

`p?[A082859(A102480(n))+A059647(n+1)]`
-/

namespace A059310.P6625892297347435613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A102480 n).toNat + A059647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059310.P6625892297347435613

/-! ## A059310.P678793716161558763

`∩[A277717(n+1), A324704(n+1)]`
-/

namespace A059310.P678793716161558763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059310.P678793716161558763

/-!
# A059311: Primes p such that x^22 = 2 has no solution mod p.

The programs for A059311, there is no canonical definition to state claims against.
-/

/-! ## A059311.P5456338494758022671

`∪[A003629(n+1), A059241(n+1)]`
-/

namespace A059311.P5456338494758022671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059311.P5456338494758022671

/-! ## A059311.P13545645681702903999

`p?[A098725(A000330(n))+2*n]`
-/

namespace A059311.P13545645681702903999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A000330 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059311.P13545645681702903999

/-! ## A059311.P5610127218319861927

`p?[A005408(n)*A098725(A000330(n))]`
-/

namespace A059311.P5610127218319861927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A098725 (A000330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059311.P5610127218319861927

/-! ## A059311.P17582449621352539308

`p?[lt[A033715(n), A159195(n)]-2]`
-/

namespace A059311.P17582449621352539308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059311.P17582449621352539308

/-! ## A059311.P13429279405176424381

`p?[lt[A033715(n+2), A159195(n+2)]]`
-/

namespace A059311.P13429279405176424381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159195 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059311.P13429279405176424381

/-!
# A059312: Primes p such that x^59 = 2 has no solution mod p.

The programs for A059312, there is no canonical definition to state claims against.
-/

/-! ## A059312.P16908308510609028088

`2*59*A216360(n+1)+1`
-/

namespace A059312.P16908308510609028088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (59 * A216360 (n + 1)) + 1

end

end A059312.P16908308510609028088

/-! ## A059312.P2717682995483979651

`A005408(59*A216360(n+1))`
-/

namespace A059312.P2717682995483979651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (59 * A216360 (n + 1)).toNat

end

end A059312.P2717682995483979651

/-! ## A059312.P4864702870374363536

`A005408(lcm(59, A216360(n+1)))`
-/

namespace A059312.P4864702870374363536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lcm 59 (A216360 (n + 1)))

end

end A059312.P4864702870374363536

/-! ## A059312.P1449474220060466356

`A004273(59*A216360(n+1)+1)`
-/

namespace A059312.P1449474220060466356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (59 * A216360 (n + 1) + 1).toNat

end

end A059312.P1449474220060466356

/-! ## A059312.P10366058804517758391

`A004277(59*A216360(n+1))+1`
-/

namespace A059312.P10366058804517758391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (59 * A216360 (n + 1)).toNat + 1

end

end A059312.P10366058804517758391

/-!
# A059313: Primes p such that x^25 = 2 has no solution mod p.

The programs for A059313, there is no canonical definition to state claims against.
-/

/-! ## A059313.P11009534604402627693

`∪[A040160(n+1), A070182(n+1)]`
-/

namespace A059313.P11009534604402627693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059313.P11009534604402627693

/-! ## A059313.P4844523360211999298

`p?[A132739(A273202(n+1))]`
-/

namespace A059313.P4844523360211999298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A273202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059313.P4844523360211999298

/-! ## A059313.P15564622243406008434

`A030430(A304678(n+1)%A328287(2*n+1))`
-/

namespace A059313.P15564622243406008434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (Int.tmod (A304678 (n + 1)) (A328287 (2 * n + 1))).toNat

end

end A059313.P15564622243406008434

/-! ## A059313.P14706911718547118919

`p?[A329314(2*(n+1))+10*n]`
-/

namespace A059313.P14706911718547118919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (2 * (n + 1)) + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059313.P14706911718547118919

/-! ## A059313.P2071154441541165987

`p?[A016861(n)*A327401(n+2)]`
-/

namespace A059313.P2071154441541165987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A327401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059313.P2071154441541165987

/-!
# A059314: Primes p such that x^26 = 2 has no solution mod p.

The programs for A059314, there is no canonical definition to state claims against.
-/

/-! ## A059314.P12753221833324112191

`∪[A003629(n+1), A059245(n+1)]`
-/

namespace A059314.P12753221833324112191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059314.P12753221833324112191

/-! ## A059314.P17599918709781052604

`record[p?[A049780(A049780(2*n))]]`
-/

namespace A059314.P17599918709781052604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (A049780 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059314.P17599918709781052604

/-! ## A059314.P3623520808351463388

`p?[A326291(n+1)+A047443(n+1)]`
-/

namespace A059314.P3623520808351463388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A047443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059314.P3623520808351463388

/-! ## A059314.P13717285168140095875

`∩[A059641(n+1), A165887(n+1)]`
-/

namespace A059314.P13717285168140095875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059314.P13717285168140095875

/-! ## A059314.P18161827318643164900

`p?[A073726(n+1)-44]`
-/

namespace A059314.P18161827318643164900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073726 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059314.P18161827318643164900

/-!
# A059315: Primes p such that x^28 = 2 has no solution mod p.

The programs for A059315, there is no canonical definition to state claims against.
-/

/-! ## A059315.P17856740778877696364

`∪[A040100(n+1), A042967(n+1)]`
-/

namespace A059315.P17856740778877696364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059315.P17856740778877696364

/-! ## A059315.P11325181057024712084

`∪[A040100(n+1), A059265(n+1)]`
-/

namespace A059315.P11325181057024712084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059315.P11325181057024712084

/-! ## A059315.P3326210658693157932

`∪[A059265(n+1), A070179(n+1)]`
-/

namespace A059315.P3326210658693157932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059315.P3326210658693157932

/-! ## A059315.P16282547469113179412

`A059634(A261960(∑[n])+n)`
-/

namespace A059315.P16282547469113179412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059634 (A261960 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A059315.P16282547469113179412

/-! ## A059315.P16424830789135361342

`A059634(n+1)%A101045(n+1)²`
-/

namespace A059315.P16424830789135361342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059634 (n + 1)) (A101045 (n + 1) ^ 2)

end

end A059315.P16424830789135361342

/-! ## A059315.P4959289171589204224

`A059634(n+1)%A001358(A055235(n))`
-/

namespace A059315.P4959289171589204224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059634 (n + 1)) (A001358 (A055235 n).toNat)

end

end A059315.P4959289171589204224

/-! ## A059315.P1578639692380622491

`or(A010054(A002939(n)), A059634(n+1))`
-/

namespace A059315.P1578639692380622491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A002939 n).toNat) (A059634 (n + 1))

end

end A059315.P1578639692380622491

/-! ## A059315.P6863773197596764758

`A059634(n+1)+A000122(A088909(n+1))`
-/

namespace A059315.P6863773197596764758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059634 (n + 1) + A000122 (A088909 (n + 1)).toNat

end

end A059315.P6863773197596764758

/-! ## A059315.P5178449638431930795

`A101638(A057602(n+1))+A059634(n+1)`
-/

namespace A059315.P5178449638431930795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A057602 (n + 1)).toNat + A059634 (n + 1)

end

end A059315.P5178449638431930795

/-! ## A059315.P13751458148311743313

`A059634(n+1)+A000007(A182365(n+1))`
-/

namespace A059315.P13751458148311743313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059634 (n + 1) + A000007 (A182365 (n + 1)).toNat

end

end A059315.P13751458148311743313

/-!
# A059316: Least integer m such that between m and 2m (including endpoints) there are exactly n primes.

The programs for A059316, there is no canonical definition to state claims against.
-/

/-! ## A059316.P4712242040639672925

`ceil(A080359(n+1)/2)`
-/

namespace A059316.P4712242040639672925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080359 (n + 1) : ℚ) / 2⌉

end

end A059316.P4712242040639672925

/-! ## A059316.P1796888892239545924

`(A080359(n+1)+A057427(n))/2`
-/

namespace A059316.P1796888892239545924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080359 (n + 1) + A057427 n : ℚ) / 2

end

end A059316.P1796888892239545924

/-! ## A059316.P9479433457818365986

`(A080359(n+1)+A010051(A006530(n+1)))/2`
-/

namespace A059316.P9479433457818365986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080359 (n + 1) + A010051 (A006530 (n + 1)).toNat : ℚ) / 2

end

end A059316.P9479433457818365986

/-! ## A059316.P7722725855998806830

`A302042(A080359(n+1)+1)`
-/

namespace A059316.P7722725855998806830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A080359 (n + 1) + 1).toNat

end

end A059316.P7722725855998806830

/-! ## A059316.P16669033454944584360

`A305438(A080359(n+1)+1)`
-/

namespace A059316.P16669033454944584360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305438 (A080359 (n + 1) + 1).toNat

end

end A059316.P16669033454944584360

/-! ## A059316.P12018117280483748178

`A000463(A080359(n+1))`
-/

namespace A059316.P12018117280483748178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A080359 (n + 1)).toNat

end

end A059316.P12018117280483748178

/-! ## A059316.P2821797783829746284

`A004525(A080359(n+1)+1)`
-/

namespace A059316.P2821797783829746284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A080359 (n + 1) + 1).toNat

end

end A059316.P2821797783829746284

/-! ## A059316.P9817841670681194217

`A004526(A080359(n+1)+1)`
-/

namespace A059316.P9817841670681194217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080359 (n + 1) + 1).toNat

end

end A059316.P9817841670681194217

/-! ## A059316.P223420103837306590

`A032742(A080359(n+1)+1)`
-/

namespace A059316.P223420103837306590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A080359 (n + 1) + 1).toNat

end

end A059316.P223420103837306590

/-! ## A059316.P16281167754664144176

`A052938(and(A080359(n+1)-1, A080359(n+1)))`
-/

namespace A059316.P16281167754664144176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (Int.land (A080359 (n + 1) - 1) (A080359 (n + 1))).toNat

end

end A059316.P16281167754664144176

/-!
# A059317: Pascal's "rhombus" (actually a triangle T(n,k), n >= 0, 0<=k<=2n) read by rows: each entry is sum of 3 terms above it in previous row and one term above it two rows back.

The programs for A059317, there is no canonical definition to state claims against.
-/

/-! ## A059317.P6420329112317045870

`A322046(n)-A003982(A001405(n))`
-/

namespace A059317.P6420329112317045870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322046 n - A003982 (A001405 n).toNat

end

end A059317.P6420329112317045870

/-! ## A059317.P10645950256604944580

`A341584(A256158(n))`
-/

namespace A059317.P10645950256604944580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341584 (A256158 n).toNat

end

end A059317.P10645950256604944580

/-! ## A059317.P1537657549054218749

`A225644(A161127(n+1))+char[6]`
-/

namespace A059317.P1537657549054218749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A161127 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A059317.P1537657549054218749

/-! ## A059317.P1727627462305326079

`A322046(n)%p?[A120126(n)]-char[12]`
-/

namespace A059317.P1727627462305326079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322046 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A059317.P1727627462305326079

/-! ## A059317.P14735357975761651736

`A065515(A256156(n)%A190881(n+1))`
-/

namespace A059317.P14735357975761651736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (Int.tmod (A256156 n) (A190881 (n + 1))).toNat

end

end A059317.P14735357975761651736

/-!
# A059318: Pascal's "rhombus" (actually a triangle) mod 2, read by rows: each entry is sum modulo 2 of 3 terms above it in previous row and one term above it two rows back.

The programs for A059318, there is no canonical definition to state claims against.
-/

/-! ## A059318.P5224368203807504

`A059317(n)%2`
-/

namespace A059318.P5224368203807504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059317 n) 2

end

end A059318.P5224368203807504

/-! ## A059318.P4253750712708324595

`A000007(val(A059317(n), 2))`
-/

namespace A059318.P4253750712708324595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A059317 n).toNat 2)

end

end A059318.P4253750712708324595

/-! ## A059318.P3598860103570468150

`and(A059317(n), A071038(n))`
-/

namespace A059318.P3598860103570468150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A071038 n)

end

end A059318.P3598860103570468150

/-! ## A059318.P14785553943016045420

`and(A059317(n), A158388(n))`
-/

namespace A059318.P14785553943016045420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A158388 n)

end

end A059318.P14785553943016045420

/-! ## A059318.P16020552791087767201

`A000035(and(or(1, n), A059317(n)))`
-/

namespace A059318.P16020552791087767201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.land (Nat.lor 1 n : ℤ) (A059317 n)).toNat

end

end A059318.P16020552791087767201

/-! ## A059318.P8681808267344032248

`and(A000041(a(n-1)), A059317(n))` with `a(0)=1`
-/

namespace A059318.P8681808267344032248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000041 (a (n - 1)).toNat) (A059317 n)

end

end A059318.P8681808267344032248

/-! ## A059318.P4458736082747238309

`and(A000108(a(n-1)), A059317(n))` with `a(0)=1`
-/

namespace A059318.P4458736082747238309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000108 (a (n - 1)).toNat) (A059317 n)

end

end A059318.P4458736082747238309

/-! ## A059318.P8461818996046100104

`and(A007318(a(n-1)), A059317(n))` with `a(0)=1`
-/

namespace A059318.P8461818996046100104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A007318 (a (n - 1)).toNat) (A059317 n)

end

end A059318.P8461818996046100104

/-! ## A059318.P9396591817266814774

`and(A000213(C(2, n+2)+2), A059317(n))`
-/

namespace A059318.P9396591817266814774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000213 (Nat.choose 2 (n + 2) + 2)) (A059317 n)

end

end A059318.P9396591817266814774

/-! ## A059318.P14156303245679936461

`and(A000288(C(2, n+2)+2), A059317(n))`
-/

namespace A059318.P14156303245679936461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000288 (Nat.choose 2 (n + 2) + 2)) (A059317 n)

end

end A059318.P14156303245679936461

/-! ## A059318.P1550369142820376548

`and(A000010(a(n-1)+1), A059317(n))` with `a(0)=1`
-/

namespace A059318.P1550369142820376548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000010 (a (n - 1) + 1).toNat) (A059317 n)

end

end A059318.P1550369142820376548

/-! ## A059318.P6139538792757395248

`and(A001221(a(n-1)+3), A059317(n))` with `a(0)=1`
-/

namespace A059318.P6139538792757395248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A001221 (a (n - 1) + 3).toNat) (A059317 n)

end

end A059318.P6139538792757395248

/-! ## A059318.P3429403471744275332

`and(A000034(2*n), A059317(n))`
-/

namespace A059318.P3429403471744275332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (2 * n)) (A059317 n)

end

end A059318.P3429403471744275332

/-! ## A059318.P2469090358144194626

`and(A014963(3*(n+1)), A059317(n))`
-/

namespace A059318.P2469090358144194626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (3 * (n + 1))) (A059317 n)

end

end A059318.P2469090358144194626

/-! ## A059318.P512961708124470238

`and(A059317(n), A176410(n))`
-/

namespace A059318.P512961708124470238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A176410 n)

end

end A059318.P512961708124470238

/-! ## A059318.P9462639840779773380

`and(A000188(A000040(n+1)), A059317(n))`
-/

namespace A059318.P9462639840779773380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000188 (A000040 (n + 1)).toNat) (A059317 n)

end

end A059318.P9462639840779773380

/-! ## A059318.P3591215203320005274

`and(A059317(n), A077860(n))`
-/

namespace A059318.P3591215203320005274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A077860 n)

end

end A059318.P3591215203320005274

/-! ## A059318.P12090954346104105239

`and(A059317(n), A078621(n+1))`
-/

namespace A059318.P12090954346104105239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A078621 (n + 1))

end

end A059318.P12090954346104105239

/-! ## A059318.P17904211405889003686

`and(A059317(n), A077924(n))`
-/

namespace A059318.P17904211405889003686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A077924 n)

end

end A059318.P17904211405889003686

/-! ## A059318.P4533132339144867907

`and(A059317(n), A077853(n))`
-/

namespace A059318.P4533132339144867907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059317 n) (A077853 n)

end

end A059318.P4533132339144867907

/-!
# A059319: Number of 1's in row n of Pascal's rhombus mod 2.

The programs for A059319, there is no canonical definition to state claims against.
-/

/-! ## A059319.P11413007577600819102

`Δ[n²]-A059320(n)`
-/

namespace A059319.P11413007577600819102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A059320 n

end

end A059319.P11413007577600819102

/-! ## A059319.P3889108202137357524

`abs(A005408(n)-A059320(n))`
-/

namespace A059319.P3889108202137357524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A059320 n|

end

end A059319.P3889108202137357524

/-! ## A059319.P5463620152305895184

`A000027(2*n+1-A059320(n))`
-/

namespace A059319.P5463620152305895184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n + 1 : ℤ) - A059320 n).toNat

end

end A059319.P5463620152305895184

/-! ## A059319.P7733484306933640529

`A000027(n+1)+n-A059320(n)`
-/

namespace A059319.P7733484306933640529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A059320 n)

end

end A059319.P7733484306933640529

/-! ## A059319.P6954131478321101046

`or(A005408(n)-A059320(n), A000007(n))`
-/

namespace A059319.P6954131478321101046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005408 n - A059320 n) (A000007 n)

end

end A059319.P6954131478321101046

/-! ## A059319.P16601144438867927853

`A005408(n)-A059320(n)-A000007(n+1)`
-/

namespace A059319.P16601144438867927853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A059320 n - A000007 (n + 1)

end

end A059319.P16601144438867927853

/-! ## A059319.P11666254754184991838

`and(A005408(n)-A059320(n), A163383(n+1))`
-/

namespace A059319.P11666254754184991838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 n - A059320 n) (A163383 (n + 1))

end

end A059319.P11666254754184991838

/-!
# A059320: Number of 0's in row n of Pascal's rhombus mod 2.

The programs for A059320, there is no canonical definition to state claims against.
-/

/-! ## A059320.P10637553084767399961

`Δ[n²]-A059319(n)`
-/

namespace A059320.P10637553084767399961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A059319 n

end

end A059320.P10637553084767399961

/-! ## A059320.P14316133209249593636

`abs(A005408(n)-A059319(n))`
-/

namespace A059320.P14316133209249593636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A059319 n|

end

end A059320.P14316133209249593636

/-! ## A059320.P8171584239624800317

`A005843(n)+1-A059319(n)`
-/

namespace A059320.P8171584239624800317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A059319 n)

end

end A059320.P8171584239624800317

/-! ## A059320.P1144965787710333066

`(A005408(n)-A059319(n))%A000124(n)`
-/

namespace A059320.P1144965787710333066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - A059319 n) (A000124 n)

end

end A059320.P1144965787710333066

/-! ## A059320.P16947767670335500172

`lcm(A005408(n)-A059319(n), A033999(n))`
-/

namespace A059320.P16947767670335500172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005408 n - A059319 n) (A033999 n)

end

end A059320.P16947767670335500172

/-! ## A059320.P8890702313491270904

`(A005408(n)-A059319(n))^A014963(∑[n+1])`
-/

namespace A059320.P8890702313491270904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - A059319 n : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A059320.P8890702313491270904

/-!
# A059321: Smallest number m such that m^2+1 is divisible by A002144(n)^2 (= squares of primes congruent to 1 mod 4).

The programs for A059321, there is no canonical definition to state claims against.
-/

/-! ## A059321.P5653429594616273196

`A070669(p?[comp[or(2, n)]]²)`
-/

namespace A059321.P5653429594616273196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A059321.P5653429594616273196

/-! ## A059321.P5416076026497620616

`A070669(p?[4*n+1]²)`
-/

namespace A059321.P5416076026497620616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A059321.P5416076026497620616

/-! ## A059321.P6182266805923732551

`A070669(p?[4*n+1]^2)`
-/

namespace A059321.P6182266805923732551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A059321.P6182266805923732551

/-! ## A059321.P10961557005853908327

`A070669(or(1, p?[4*n-7]-1)²)`
-/

namespace A059321.P10961557005853908327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 2).toNat

end

end A059321.P10961557005853908327

/-! ## A059321.P3511665780294977253

`A070669(xor(1, p?[4*n-7]-1)²)`
-/

namespace A059321.P3511665780294977253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 2).toNat

end

end A059321.P3511665780294977253

/-!
# A059322: First differences of sequence of consecutive safe primes.

The programs for A059322, the canonical program `A059322.P13542755186840824603` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059322 has offset 1).

The definition of A059322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059322.P13542755186840824603

`A005385(n+2)-A005385(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A059322

/-- `A005385(n+2)-A005385(n+1)` -/
def P13542755186840824603.Spec : Prop :=
  ∀ n, P13542755186840824603.a n = A059322 (n + 1)

theorem P13542755186840824603.correct : P13542755186840824603.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel]

end A059322

/-! ## A059322.P2885600181328440308

`2*A074259(n+1)`
-/

namespace A059322.P2885600181328440308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074259 (n + 1)

end

end A059322.P2885600181328440308

namespace A059322

/-- `2*A074259(n+1)` -/
def P2885600181328440308.Spec : Prop :=
  ∀ n, P2885600181328440308.a n = A059322 (n + 1)

theorem P2885600181328440308.correct : P2885600181328440308.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P2885600181328440308.a, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A074259, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P2965512342881925561

`Δ[2*A005384(n+1)]`
-/

namespace A059322.P2965512342881925561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P2965512342881925561

namespace A059322

/-- `Δ[2*A005384(n+1)]` -/
def P2965512342881925561.Spec : Prop :=
  ∀ n, P2965512342881925561.a n = A059322 (n + 1)

theorem P2965512342881925561.correct : P2965512342881925561.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P2965512342881925561.f1, A059322.P2965512342881925561.a, A059322.P13542755186840824603.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P6781977648861957392

`A004277(A074259(n+1))`
-/

namespace A059322.P6781977648861957392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A074259 (n + 1)).toNat

end

end A059322.P6781977648861957392

namespace A059322

/-- `A004277(A074259(n+1))` -/
def P6781977648861957392.Spec : Prop :=
  ∀ n, P6781977648861957392.a n = A059322 (n + 1)

end A059322

/-! ## A059322.P5707142636801232592

`A004277(Δ[A005384(n+1)])`
-/

namespace A059322.P5707142636801232592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A059322.P5707142636801232592

namespace A059322

/-- `A004277(Δ[A005384(n+1)])` -/
def P5707142636801232592.Spec : Prop :=
  ∀ n, P5707142636801232592.a n = A059322 (n + 1)

end A059322

/-! ## A059322.P12034926280573770862

`A005843(Δ[A005384(n+1)])`
-/

namespace A059322.P12034926280573770862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A059322.P12034926280573770862

namespace A059322

/-- `A005843(Δ[A005384(n+1)])` -/
def P12034926280573770862.Spec : Prop :=
  ∀ n, P12034926280573770862.a n = A059322 (n + 1)

end A059322

/-! ## A059322.P9816252923674421701

`A004275(A074259(n+1)+1)`
-/

namespace A059322.P9816252923674421701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A074259 (n + 1) + 1).toNat

end

end A059322.P9816252923674421701

namespace A059322

/-- `A004275(A074259(n+1)+1)` -/
def P9816252923674421701.Spec : Prop :=
  ∀ n, P9816252923674421701.a n = A059322 (n + 1)

end A059322

/-! ## A059322.P12300583771482955541

`Δ[∪[A101789(n+1), A269454(n+1)]]`
-/

namespace A059322.P12300583771482955541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269454 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059322.P12300583771482955541

namespace A059322

/-- `Δ[∪[A101789(n+1), A269454(n+1)]]` -/
def P12300583771482955541.Spec : Prop :=
  ∀ n, P12300583771482955541.a n = A059322 (n + 1)

end A059322

/-! ## A059322.P2969506251532035994

`A074259(n+1)+A005384(n+2)-A005384(n+1)`
-/

namespace A059322.P2969506251532035994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074259 (n + 1) + (A005384 (n + 2) - A005384 (n + 1))

end

end A059322.P2969506251532035994

namespace A059322

/-- `A074259(n+1)+A005384(n+2)-A005384(n+1)` -/
def P2969506251532035994.Spec : Prop :=
  ∀ n, P2969506251532035994.a n = A059322 (n + 1)

theorem P2969506251532035994.correct : P2969506251532035994.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P2969506251532035994.a, A059322.P13542755186840824603.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A074259, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P11530403182261606207

`Δ[A005385(n+1)]`
-/

namespace A059322.P11530403182261606207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P11530403182261606207

namespace A059322

/-- `Δ[A005385(n+1)]` -/
def P11530403182261606207.Spec : Prop :=
  ∀ n, P11530403182261606207.a n = A059322 (n + 1)

theorem P11530403182261606207.correct : P11530403182261606207.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P11530403182261606207.f1, A059322.P11530403182261606207.a, A059322.P13542755186840824603.a, SequenceMachineLib.memo_apply]

end A059322

/-! ## A059322.P5117160250326762958

`Δ[A077065(n+1)]`
-/

namespace A059322.P5117160250326762958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P5117160250326762958

namespace A059322

/-- `Δ[A077065(n+1)]` -/
def P5117160250326762958.Spec : Prop :=
  ∀ n, P5117160250326762958.a n = A059322 (n + 1)

theorem P5117160250326762958.correct : P5117160250326762958.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P5117160250326762958.f1, A059322.P5117160250326762958.a, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A077065, A077065.P3431251406781570749.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P10146312939972412642

`Δ[2*A176045(n+1)]`
-/

namespace A059322.P10146312939972412642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P10146312939972412642

namespace A059322

/-- `Δ[2*A176045(n+1)]` -/
def P10146312939972412642.Spec : Prop :=
  ∀ n, P10146312939972412642.a n = A059322 (n + 1)

theorem P10146312939972412642.correct : P10146312939972412642.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P10146312939972412642.f1, A059322.P10146312939972412642.a, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A176045, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P10839437184088427728

`A004396(Δ[A175666(n+1)])`
-/

namespace A059322.P10839437184088427728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat

end

end A059322.P10839437184088427728

namespace A059322

/-- `A004396(Δ[A175666(n+1)])` -/
def P10839437184088427728.Spec : Prop :=
  ∀ n, P10839437184088427728.a n = A059322 (n + 1)

end A059322

/-! ## A059322.P6143125794160773000

`A077065(n+2)-A077065(n+1)`
-/

namespace A059322.P6143125794160773000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 2) - A077065 (n + 1)

end

end A059322.P6143125794160773000

namespace A059322

/-- `A077065(n+2)-A077065(n+1)` -/
def P6143125794160773000.Spec : Prop :=
  ∀ n, P6143125794160773000.a n = A059322 (n + 1)

theorem P6143125794160773000.correct : P6143125794160773000.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P6143125794160773000.a, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A077065, A077065.P3431251406781570749.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P17638678690236428079

`Δ[A175666(n+1)-A005384(n+1)]`
-/

namespace A059322.P17638678690236428079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P17638678690236428079

namespace A059322

/-- `Δ[A175666(n+1)-A005384(n+1)]` -/
def P17638678690236428079.Spec : Prop :=
  ∀ n, P17638678690236428079.a n = A059322 (n + 1)

theorem P17638678690236428079.correct : P17638678690236428079.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P17638678690236428079.f1, A059322.P17638678690236428079.a, A059322.P13542755186840824603.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P16559485935781835775

`A175666(n+2)-(A175666(n+1)+A074259(n+1))`
-/

namespace A059322.P16559485935781835775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 2) - (A175666 (n + 1) + A074259 (n + 1))

end

end A059322.P16559485935781835775

namespace A059322

/-- `A175666(n+2)-(A175666(n+1)+A074259(n+1))` -/
def P16559485935781835775.Spec : Prop :=
  ∀ n, P16559485935781835775.a n = A059322 (n + 1)

theorem P16559485935781835775.correct : P16559485935781835775.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P16559485935781835775.a, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A074259, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A175666, A175666.P11802829545752177848.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P15634338413393850063

`A074259(n+1)+A176045(n+2)-A176045(n+1)`
-/

namespace A059322.P15634338413393850063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074259 (n + 1) + (A176045 (n + 2) - A176045 (n + 1))

end

end A059322.P15634338413393850063

namespace A059322

/-- `A074259(n+1)+A176045(n+2)-A176045(n+1)` -/
def P15634338413393850063.Spec : Prop :=
  ∀ n, P15634338413393850063.a n = A059322 (n + 1)

theorem P15634338413393850063.correct : P15634338413393850063.Spec := by
  intro n
  simp only [A059322, Nat.add_sub_cancel, A059322.P15634338413393850063.a, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A074259, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A176045, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059322

/-! ## A059322.P10610365677496023931

`Δ[A194593(n+2)/2]`
-/

namespace A059322.P10610365677496023931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194593 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P10610365677496023931

namespace A059322

/-- `Δ[A194593(n+2)/2]` -/
def P10610365677496023931.Spec : Prop :=
  ∀ n, P10610365677496023931.a n = (A059322 (n + 1) : ℚ)

end A059322

/-! ## A059322.P8750886623440626921

`Δ[A079148(n+3)]`
-/

namespace A059322.P8750886623440626921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059322.P8750886623440626921

namespace A059322

/-- `Δ[A079148(n+3)]` -/
def P8750886623440626921.Spec : Prop :=
  ∀ n, P8750886623440626921.a n = A059322 (n + 1)

end A059322

/-!
# A059323: Smaller term of closest safe prime pairs.

The programs for A059323, the canonical program `A059323.P8209141103736845805` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059323 has offset 1).

The definition of A059323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059323.P2380154771945318963

`∩[A005385(n+1), A077065(n+1)-11]`
-/

namespace A059323.P2380154771945318963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) - 11

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059323.P2380154771945318963

namespace A059323

/-- `∩[A005385(n+1), A077065(n+1)-11]` -/
def P2380154771945318963.Spec : Prop :=
  ∀ n, (P2380154771945318963.a n : ℤ) = A059323 (n + 1)

end A059323

/-! ## A059323.P8209141103736845805

`∩[A005385(n+1)-12, A005385(n+2)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A059323

/-- `∩[A005385(n+1)-12, A005385(n+2)]` -/
def P8209141103736845805.Spec : Prop :=
  ∀ n, (P8209141103736845805.a n : ℤ) = A059323 (n + 1)

theorem P8209141103736845805.correct : P8209141103736845805.Spec := by
  intro n
  simp only [A059323, Nat.add_sub_cancel]

end A059323

/-! ## A059323.P4467570820213448548

`∩[A065966(n+1), A077065(n+1)-11]`
-/

namespace A059323.P4467570820213448548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) - 11

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059323.P4467570820213448548

namespace A059323

/-- `∩[A065966(n+1), A077065(n+1)-11]` -/
def P4467570820213448548.Spec : Prop :=
  ∀ n, (P4467570820213448548.a n : ℤ) = A059323 (n + 1)

end A059323

/-! ## A059323.P11907699589541175166

`∩[A005385(n+1), A131098(A152843(n+2))]`
-/

namespace A059323.P11907699589541175166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A152843 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059323.P11907699589541175166

namespace A059323

/-- `∩[A005385(n+1), A131098(A152843(n+2))]` -/
def P11907699589541175166.Spec : Prop :=
  ∀ n, (P11907699589541175166.a n : ℤ) = A059323 (n + 1)

end A059323

/-! ## A059323.P17662104786947082984

`p?[Δ[A007997(A176045(n+1))]]`
-/

namespace A059323.P17662104786947082984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (A176045 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059323.P17662104786947082984

namespace A059323

/-- `p?[Δ[A007997(A176045(n+1))]]` -/
def P17662104786947082984.Spec : Prop :=
  ∀ n, P17662104786947082984.a n = A059323 (n + 1)

end A059323

/-!
# A059324: Numbers n such that 6n + 5 is composite.

The programs for A059324, the canonical program `A059324.P9355351555036225255` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059324 has offset 1).

The definition of A059324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059324.P3576511226304469802

`comp[A059325(n+1)]`
-/

namespace A059324.P3576511226304469802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059324.P3576511226304469802

namespace A059324

/-- `comp[A059325(n+1)]` -/
def P3576511226304469802.Spec : Prop :=
  ∀ n, (P3576511226304469802.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P9823894948791169682

`A046953(n+1)-1`
-/

namespace A059324.P9823894948791169682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - 1

end

end A059324.P9823894948791169682

namespace A059324

/-- `A046953(n+1)-1` -/
def P9823894948791169682.Spec : Prop :=
  ∀ n, P9823894948791169682.a n = A059324 (n + 1)

theorem P9823894948791169682.correct : P9823894948791169682.Spec := by
  intro n
  simp only [A059324, Nat.add_sub_cancel, A059324.P9823894948791169682.a, A059324.P9355351555036225255.f1, A059324.P9355351555036225255.f2, A059324.P9355351555036225255.a, A046953, A046953.P12772226548913626932.a, A075743, A075743.P8124416718606607743.a, A007310, A007310.P9946423629536973135.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059324

/-! ## A059324.P11846707169869034198

`A153245(n+1)-2`
-/

namespace A059324.P11846707169869034198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) - 2

end

end A059324.P11846707169869034198

namespace A059324

/-- `A153245(n+1)-2` -/
def P11846707169869034198.Spec : Prop :=
  ∀ n, P11846707169869034198.a n = A059324 (n + 1)

theorem P11846707169869034198.correct : P11846707169869034198.Spec := by
  intro n
  simp only [A059324, Nat.add_sub_cancel, A059324.P11846707169869034198.a, A059324.P9355351555036225255.f1, A059324.P9355351555036225255.f2, A059324.P9355351555036225255.a, A075743, A075743.P8124416718606607743.a, A153245, A153245.P2590353044541573662.a, A007310, A007310.P9946423629536973135.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059324

/-! ## A059324.P11385341401031992762

`ceil(A138685(n+1)/3)`
-/

namespace A059324.P11385341401031992762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138685 (n + 1) : ℚ) / 3⌉

end

end A059324.P11385341401031992762

namespace A059324

/-- `ceil(A138685(n+1)/3)` -/
def P11385341401031992762.Spec : Prop :=
  ∀ n, P11385341401031992762.a n = A059324 (n + 1)

end A059324

/-! ## A059324.P65430047851787642

`comp[A024898(n+1)-1]`
-/

namespace A059324.P65430047851787642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059324.P65430047851787642

namespace A059324

/-- `comp[A024898(n+1)-1]` -/
def P65430047851787642.Spec : Prop :=
  ∀ n, (P65430047851787642.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P15866687254874484272

`comp[A153134(n+1)-2]`
-/

namespace A059324.P15866687254874484272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059324.P15866687254874484272

namespace A059324

/-- `comp[A153134(n+1)-2]` -/
def P15866687254874484272.Spec : Prop :=
  ∀ n, (P15866687254874484272.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P9355351555036225255

`eq[0, A075743(2*n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059324

/-- `eq[0, A075743(2*n+1)]` -/
def P9355351555036225255.Spec : Prop :=
  ∀ n, (P9355351555036225255.a n : ℤ) = A059324 (n + 1)

theorem P9355351555036225255.correct : P9355351555036225255.Spec := by
  intro n
  simp only [A059324, Nat.add_sub_cancel]

end A059324

/-! ## A059324.P10999622428925835382

`eq[0, A156706(2*n+1)]`
-/

namespace A059324.P10999622428925835382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059324.P10999622428925835382

namespace A059324

/-- `eq[0, A156706(2*n+1)]` -/
def P10999622428925835382.Spec : Prop :=
  ∀ n, (P10999622428925835382.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P7893624471138300963

`lt[1, A001222(6*n+5)]`
-/

namespace A059324.P7893624471138300963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059324.P7893624471138300963

namespace A059324

/-- `lt[1, A001222(6*n+5)]` -/
def P7893624471138300963.Spec : Prop :=
  ∀ n, (P7893624471138300963.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P8762775428498073733

`lt[2, A000005(6*n+5)]`
-/

namespace A059324.P8762775428498073733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059324.P8762775428498073733

namespace A059324

/-- `lt[2, A000005(6*n+5)]` -/
def P8762775428498073733.Spec : Prop :=
  ∀ n, (P8762775428498073733.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P1668151541943772218

`lt[A020639(6*n+5), n+1]`
-/

namespace A059324.P1668151541943772218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059324.P1668151541943772218

namespace A059324

/-- `lt[A020639(6*n+5), n+1]` -/
def P1668151541943772218.Spec : Prop :=
  ∀ n, (P1668151541943772218.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P10913554598796569485

`lt[A006530(6*n+5), 2*n]`
-/

namespace A059324.P10913554598796569485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059324.P10913554598796569485

namespace A059324

/-- `lt[A006530(6*n+5), 2*n]` -/
def P10913554598796569485.Spec : Prop :=
  ∀ n, (P10913554598796569485.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P10413970438585343178

`A173229(n+1)+A153219(n+1)`
-/

namespace A059324.P10413970438585343178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173229 (n + 1) + A153219 (n + 1)

end

end A059324.P10413970438585343178

namespace A059324

/-- `A173229(n+1)+A153219(n+1)` -/
def P10413970438585343178.Spec : Prop :=
  ∀ n, P10413970438585343178.a n = A059324 (n + 1)

end A059324

/-! ## A059324.P13865021097827098076

`A092256(n+1)%A046953(n+1)`
-/

namespace A059324.P13865021097827098076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092256 (n + 1)) (A046953 (n + 1))

end

end A059324.P13865021097827098076

namespace A059324

/-- `A092256(n+1)%A046953(n+1)` -/
def P13865021097827098076.Spec : Prop :=
  ∀ n, P13865021097827098076.a n = A059324 (n + 1)

end A059324

/-! ## A059324.P15201563131213340679

`eq[1, A100637(2*n+1)/A100637(2*n)]`
-/

namespace A059324.P15201563131213340679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100637 (2 * n + 1) : ℚ) / (A100637 (2 * n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A059324.P15201563131213340679

namespace A059324

/-- `eq[1, A100637(2*n+1)/A100637(2*n)]` -/
def P15201563131213340679.Spec : Prop :=
  ∀ n, (P15201563131213340679.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P12204971352434914756

`lt[n+1, A098098(n)]`
-/

namespace A059324.P12204971352434914756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059324.P12204971352434914756

namespace A059324

/-- `lt[n+1, A098098(n)]` -/
def P12204971352434914756.Spec : Prop :=
  ∀ n, (P12204971352434914756.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P9175571279890360194

`eq[0, A167020(n+1)]`
-/

namespace A059324.P9175571279890360194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059324.P9175571279890360194

namespace A059324

/-- `eq[0, A167020(n+1)]` -/
def P9175571279890360194.Spec : Prop :=
  ∀ n, (P9175571279890360194.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P5571191592888659740

`lt[1, A359305(n+1)]`
-/

namespace A059324.P5571191592888659740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059324.P5571191592888659740

namespace A059324

/-- `lt[1, A359305(n+1)]` -/
def P5571191592888659740.Spec : Prop :=
  ∀ n, (P5571191592888659740.a n : ℤ) = A059324 (n + 1)

end A059324

/-! ## A059324.P6850118836259781988

`A023443(A046953(n+1))`
-/

namespace A059324.P6850118836259781988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A046953 (n + 1)).toNat

end

end A059324.P6850118836259781988

namespace A059324

/-- `A023443(A046953(n+1))` -/
def P6850118836259781988.Spec : Prop :=
  ∀ n, P6850118836259781988.a n = A059324 (n + 1)

end A059324

/-!
# A059325: Numbers n such that 6n + 5 is prime.

The programs for A059325, the canonical program `A059325.P16762475601172180159` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059325 has offset 1).

The definition of A059325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059325.P16762475601172180159

`A024898(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059325

/-- `A024898(n+1)-1` -/
def P16762475601172180159.Spec : Prop :=
  ∀ n, P16762475601172180159.a n = A059325 (n + 1)

theorem P16762475601172180159.correct : P16762475601172180159.Spec := by
  intro n
  simp only [A059325, Nat.add_sub_cancel]

end A059325

/-! ## A059325.P17964824553144891401

`A153134(n+1)-2`
-/

namespace A059325.P17964824553144891401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 2

end

end A059325.P17964824553144891401

namespace A059325

/-- `A153134(n+1)-2` -/
def P17964824553144891401.Spec : Prop :=
  ∀ n, P17964824553144891401.a n = A059325 (n + 1)

theorem P17964824553144891401.correct : P17964824553144891401.Spec := by
  intro n
  simp only [A059325, Nat.add_sub_cancel, A059325.P17964824553144891401.a, A059325.P16762475601172180159.a, A024898, A024898.P2838277204682131429.a, A153134, A153134.P3803390437604555717.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059325

/-! ## A059325.P9815360985558035422

`floor(A007528(n+1)/6)`
-/

namespace A059325.P9815360985558035422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007528 (n + 1) : ℚ) / 6⌋

end

end A059325.P9815360985558035422

namespace A059325

/-- `floor(A007528(n+1)/6)` -/
def P9815360985558035422.Spec : Prop :=
  ∀ n, P9815360985558035422.a n = A059325 (n + 1)

end A059325

/-! ## A059325.P8364403725883685874

`(A173178(n+1)-1)/3`
-/

namespace A059325.P8364403725883685874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173178 (n + 1) - 1 : ℚ) / 3

end

end A059325.P8364403725883685874

namespace A059325

/-- `(A173178(n+1)-1)/3` -/
def P8364403725883685874.Spec : Prop :=
  ∀ n, P8364403725883685874.a n = (A059325 (n + 1) : ℚ)

theorem P8364403725883685874.correct : P8364403725883685874.Spec := by
  intro n
  simp only [A059325, Nat.add_sub_cancel, A059325.P8364403725883685874.a, A059325.P16762475601172180159.a, A024898, A024898.P2838277204682131429.a, A173178, A173178.P13841244607503590073.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059325

/-! ## A059325.P1117732711790345330

`eq[1, A245839(2*n+1)]`
-/

namespace A059325.P1117732711790345330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059325.P1117732711790345330

namespace A059325

/-- `eq[1, A245839(2*n+1)]` -/
def P1117732711790345330.Spec : Prop :=
  ∀ n, (P1117732711790345330.a n : ℤ) = A059325 (n + 1)

end A059325

/-! ## A059325.P6815372252009947314

`A153218(n+1)-A139394(n+1)`
-/

namespace A059325.P6815372252009947314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) - A139394 (n + 1)

end

end A059325.P6815372252009947314

namespace A059325

/-- `A153218(n+1)-A139394(n+1)` -/
def P6815372252009947314.Spec : Prop :=
  ∀ n, P6815372252009947314.a n = A059325 (n + 1)

end A059325

/-! ## A059325.P5607181110534473595

`A007528(n+1)%A024898(n+1)`
-/

namespace A059325.P5607181110534473595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007528 (n + 1)) (A024898 (n + 1))

end

end A059325.P5607181110534473595

namespace A059325

/-- `A007528(n+1)%A024898(n+1)` -/
def P5607181110534473595.Spec : Prop :=
  ∀ n, P5607181110534473595.a n = A059325 (n + 1)

end A059325

/-! ## A059325.P14861410271246860117

`A024899(n+1)-(A139394(n+1)+1)`
-/

namespace A059325.P14861410271246860117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - (A139394 (n + 1) + 1)

end

end A059325.P14861410271246860117

namespace A059325

/-- `A024899(n+1)-(A139394(n+1)+1)` -/
def P14861410271246860117.Spec : Prop :=
  ∀ n, P14861410271246860117.a n = A059325 (n + 1)

theorem P14861410271246860117.correct : P14861410271246860117.Spec := by
  intro n
  simp only [A059325, Nat.add_sub_cancel, A059325.P14861410271246860117.a, A059325.P16762475601172180159.a, A024898, A024898.P2838277204682131429.a, A024899, A024899.P11184081980913290394.a, A139394, A139394.P5885882405696362686.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059325

/-! ## A059325.P336634269987987930

`A088879(n+2)/2`
-/

namespace A059325.P336634269987987930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088879 (n + 2) : ℚ) / 2

end

end A059325.P336634269987987930

namespace A059325

/-- `A088879(n+2)/2` -/
def P336634269987987930.Spec : Prop :=
  ∀ n, P336634269987987930.a n = (A059325 (n + 1) : ℚ)

end A059325

/-! ## A059325.P3990605313080917309

`(A024893(n+2)-1)/2`
-/

namespace A059325.P3990605313080917309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024893 (n + 2) - 1 : ℚ) / 2

end

end A059325.P3990605313080917309

namespace A059325

/-- `(A024893(n+2)-1)/2` -/
def P3990605313080917309.Spec : Prop :=
  ∀ n, P3990605313080917309.a n = (A059325 (n + 1) : ℚ)

end A059325

/-! ## A059325.P9591872130130006895

`A087370(n+2)/2-1`
-/

namespace A059325.P9591872130130006895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087370 (n + 2) : ℚ) / 2 - 1

end

end A059325.P9591872130130006895

namespace A059325

/-- `A087370(n+2)/2-1` -/
def P9591872130130006895.Spec : Prop :=
  ∀ n, P9591872130130006895.a n = (A059325 (n + 1) : ℚ)

end A059325

/-! ## A059325.P14209013114360902702

`(A228121(n+2)-3)/2`
-/

namespace A059325.P14209013114360902702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228121 (n + 2) - 3 : ℚ) / 2

end

end A059325.P14209013114360902702

namespace A059325

/-- `(A228121(n+2)-3)/2` -/
def P14209013114360902702.Spec : Prop :=
  ∀ n, P14209013114360902702.a n = (A059325 (n + 1) : ℚ)

end A059325

/-! ## A059325.P17181059192129564912

`A173178(n+1)-A024893(n+2)`
-/

namespace A059325.P17181059192129564912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173178 (n + 1) - A024893 (n + 2)

end

end A059325.P17181059192129564912

namespace A059325

/-- `A173178(n+1)-A024893(n+2)` -/
def P17181059192129564912.Spec : Prop :=
  ∀ n, P17181059192129564912.a n = A059325 (n + 1)

end A059325

/-! ## A059325.P3023548454489330130

`eq[1, A245839(n+1)]/2`
-/

namespace A059325.P3023548454489330130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A059325.P3023548454489330130

namespace A059325

/-- `eq[1, A245839(n+1)]/2` -/
def P3023548454489330130.Spec : Prop :=
  ∀ n, P3023548454489330130.a n = (A059325 (n + 1) : ℚ)

end A059325

/-! ## A059325.P13299199723984169561

`A116579(A091177(n+2))`
-/

namespace A059325.P13299199723984169561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A091177 (n + 2)).toNat

end

end A059325.P13299199723984169561

namespace A059325

/-- `A116579(A091177(n+2))` -/
def P13299199723984169561.Spec : Prop :=
  ∀ n, P13299199723984169561.a n = A059325 (n + 1)

end A059325

/-! ## A059325.P3944216400843341393

`eq[1, A075743(2*n+1)]`
-/

namespace A059325.P3944216400843341393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059325.P3944216400843341393

namespace A059325

/-- `eq[1, A075743(2*n+1)]` -/
def P3944216400843341393.Spec : Prop :=
  ∀ n, (P3944216400843341393.a n : ℤ) = A059325 (n + 1)

end A059325

/-! ## A059325.P16398118822667493607

`eq[1, A001222(6*n+5)]`
-/

namespace A059325.P16398118822667493607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059325.P16398118822667493607

namespace A059325

/-- `eq[1, A001222(6*n+5)]` -/
def P16398118822667493607.Spec : Prop :=
  ∀ n, (P16398118822667493607.a n : ℤ) = A059325 (n + 1)

end A059325

/-! ## A059325.P8171872983685490837

`eq[2, A000005(6*n+5)]`
-/

namespace A059325.P8171872983685490837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059325.P8171872983685490837

namespace A059325

/-- `eq[2, A000005(6*n+5)]` -/
def P8171872983685490837.Spec : Prop :=
  ∀ n, (P8171872983685490837.a n : ℤ) = A059325 (n + 1)

end A059325

/-! ## A059325.P9641768714648126557

`lt[n, A020639(6*n+5)]`
-/

namespace A059325.P9641768714648126557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059325.P9641768714648126557

namespace A059325

/-- `lt[n, A020639(6*n+5)]` -/
def P9641768714648126557.Spec : Prop :=
  ∀ n, (P9641768714648126557.a n : ℤ) = A059325 (n + 1)

end A059325

/-! ## A059325.P292009942618763264

`eq[1, A156706(2*n+1)²]`
-/

namespace A059325.P292009942618763264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059325.P292009942618763264

namespace A059325

/-- `eq[1, A156706(2*n+1)²]` -/
def P292009942618763264.Spec : Prop :=
  ∀ n, (P292009942618763264.a n : ℤ) = A059325 (n + 1)

end A059325

/-!
# A059328: Table T(n,k) = T(n - 1,k) + T(n,k - 1) + T(n - 1,k)*T(n,k - 1) starting with T(0,0)=1, read by antidiagonals.

The programs for A059328, the canonical program `A059328.P3569080088098505633` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059328 has offset 0).

The definition of A059328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k)+T(n-1,k-1)+T(n-1,k)*T(n-1,k-1)` (program `A059328.P3569080088098505633`, by `A059328.P3569080088098505633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059328.P3569080088098505633

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059328

/-- `T(n-1,k)+T(n-1,k-1)+T(n-1,k)*T(n-1,k-1)` -/
def P3569080088098505633.Spec : Prop :=
  ∀ n, (P3569080088098505633.a n : ℤ) = A059328 n

theorem P3569080088098505633.correct : P3569080088098505633.Spec := by
  intro n
  simp only [A059328]

end A059328

/-! ## A059328.P9284386918286372863

`T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)*T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059328.P9284386918286372863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triUp a n

end

end A059328.P9284386918286372863

namespace A059328

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)*T(n-1,k)` -/
def P9284386918286372863.Spec : Prop :=
  ∀ n, (P9284386918286372863.a n : ℤ) = A059328 n

end A059328

/-! ## A059328.P18325966381564040221

`2^A007318(n)-1`
-/

namespace A059328.P18325966381564040221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007318 n : ℤ) - 1

end

end A059328.P18325966381564040221

namespace A059328

/-- `2^A007318(n)-1` -/
def P18325966381564040221.Spec : Prop :=
  ∀ n, P18325966381564040221.a n = (A059328 n : ℚ)

end A059328

/-! ## A059328.P15636461062054702349

`T(n-1,k)+(T(n-1,k)+1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A059328.P15636461062054702349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n + 1) * SequenceMachineLib.triUpLeft a n

end

end A059328.P15636461062054702349

namespace A059328

/-- `T(n-1,k)+(T(n-1,k)+1)*T(n-1,k-1)` -/
def P15636461062054702349.Spec : Prop :=
  ∀ n, (P15636461062054702349.a n : ℤ) = A059328 n

theorem P15636461062054702349.correct : P15636461062054702349.Spec := by
  intro n
  simp only [A059328, Nat.add_sub_cancel, A059328.P15636461062054702349.a, A059328.P3569080088098505633.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A059328

/-! ## A059328.P3073613187550476656

`2^C(row(n), col(n))-1`
-/

namespace A059328.P3073613187550476656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - 1

end

end A059328.P3073613187550476656

namespace A059328

/-- `2^C(row(n), col(n))-1` -/
def P3073613187550476656.Spec : Prop :=
  ∀ n, P3073613187550476656.a n = A059328 n

end A059328

/-! ## A059328.P15270287718569771797

`2^abs(A108086(n))-1`
-/

namespace A059328.P15270287718569771797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|A108086 n| : ℤ) - 1

end

end A059328.P15270287718569771797

namespace A059328

/-- `2^abs(A108086(n))-1` -/
def P15270287718569771797.Spec : Prop :=
  ∀ n, P15270287718569771797.a n = (A059328 n : ℚ)

end A059328

/-! ## A059328.P14451185829716483733

`2^abs(A130595(n))-1`
-/

namespace A059328.P14451185829716483733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|A130595 n| : ℤ) - 1

end

end A059328.P14451185829716483733

namespace A059328

/-- `2^abs(A130595(n))-1` -/
def P14451185829716483733.Spec : Prop :=
  ∀ n, P14451185829716483733.a n = (A059328 n : ℚ)

end A059328

/-! ## A059328.P2432840514527211073

`2^sqrt(A008459(n))-1`
-/

namespace A059328.P2432840514527211073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A008459 n : ℝ)) - 1

end

end A059328.P2432840514527211073

namespace A059328

/-- `2^sqrt(A008459(n))-1` -/
def P2432840514527211073.Spec : Prop :=
  ∀ n, P2432840514527211073.a n = (A059328 n : ℝ)

end A059328

/-! ## A059328.P1041587444346960168

`2^Δ[A102363(n)]-1`
-/

namespace A059328.P1041587444346960168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - 1

end

end A059328.P1041587444346960168

namespace A059328

/-- `2^Δ[A102363(n)]-1` -/
def P1041587444346960168.Spec : Prop :=
  ∀ n, P1041587444346960168.a n = (A059328 n : ℚ)

end A059328

/-! ## A059328.P1270418961445420171

`2^((A131060(n)+2)/3)-1`
-/

namespace A059328.P1270418961445420171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A131060 n + 2 : ℚ) / 3 : ℝ) - 1

end

end A059328.P1270418961445420171

namespace A059328

/-- `2^((A131060(n)+2)/3)-1` -/
def P1270418961445420171.Spec : Prop :=
  ∀ n, P1270418961445420171.a n = (A059328 n : ℝ)

end A059328

/-!
# A059329: Number of 3 X 3 matrices, with elements from {0,...,n}, having the property that the middle element of each of the eight 3-element horizontal, vertical and diagonal lines equals the average of the two end elements.

The programs for A059329, the canonical program `A059329.P5644453320546967425` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059329 has offset 0).

The definition of A059329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059329.P16633327524186878287

`ogf((1+2x^2+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A059329.P16633327524186878287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 0, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A059329.P16633327524186878287

namespace A059329

/-- `ogf((1+2x^2+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P16633327524186878287.Spec : Prop :=
  ∀ n, P16633327524186878287.a n = A059329 n

end A059329

/-! ## A059329.P5644453320546967425

`(1+n)*(9+3*(-1)^n+4*n+2*n²)/12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059329

/-- `(1+n)*(9+3*(-1)^n+4*n+2*n²)/12` -/
def P5644453320546967425.Spec : Prop :=
  ∀ n, P5644453320546967425.a n = (A059329 n : ℚ)

end A059329

/-! ## A059329.P13304539165230763908

`∑{#}[n, A109613(#)*A109613(n-#)]`
-/

namespace A059329.P13304539165230763908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A109613 k * A109613 (n - k)

end

end A059329.P13304539165230763908

namespace A059329

/-- `∑{#}[n, A109613(#)*A109613(n-#)]` -/
def P13304539165230763908.Spec : Prop :=
  ∀ n, P13304539165230763908.a n = A059329 n

end A059329

/-! ## A059329.P3297407292904122404

`∑[ceil(or(1, n)²/2)]`
-/

namespace A059329.P3297407292904122404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059329.P3297407292904122404

namespace A059329

/-- `∑[ceil(or(1, n)²/2)]` -/
def P3297407292904122404.Spec : Prop :=
  ∀ n, P3297407292904122404.a n = A059329 n

end A059329

/-! ## A059329.P7676304515123776239

`∑[round(or(1, n)²/2)]`
-/

namespace A059329.P7676304515123776239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n ^ 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059329.P7676304515123776239

namespace A059329

/-- `∑[round(or(1, n)²/2)]` -/
def P7676304515123776239.Spec : Prop :=
  ∀ n, P7676304515123776239.a n = A059329 n

end A059329

/-! ## A059329.P7708384364674935345

`∑[∑[n]]+gcd(n+1, ∑[n])`
-/

namespace A059329.P7708384364674935345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A059329.P7708384364674935345

namespace A059329

/-- `∑[∑[n]]+gcd(n+1, ∑[n])` -/
def P7708384364674935345.Spec : Prop :=
  ∀ n, (P7708384364674935345.a n : ℤ) = A059329 n

end A059329

/-! ## A059329.P5842243163409850319

`∑[∑[n]]+lcm(2, n+1)/2`
-/

namespace A059329.P5842243163409850319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.lcm 2 (n + 1) : ℚ) / 2

end

end A059329.P5842243163409850319

namespace A059329

/-- `∑[∑[n]]+lcm(2, n+1)/2` -/
def P5842243163409850319.Spec : Prop :=
  ∀ n, P5842243163409850319.a n = (A059329 n : ℚ)

end A059329

/-! ## A059329.P12907652646605148078

`∑[∑[n]+1]-∑[n]%(n+1)`
-/

namespace A059329.P12907652646605148078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ)

end

end A059329.P12907652646605148078

namespace A059329

/-- `∑[∑[n]+1]-∑[n]%(n+1)` -/
def P12907652646605148078.Spec : Prop :=
  ∀ n, P12907652646605148078.a n = A059329 n

end A059329

/-! ## A059329.P9748423776029031968

`gcd(2, n)+a(n-2)+n²` with `a(0)=1, a(1)=2`
-/

namespace A059329.P9748423776029031968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 n + (a (n - 2) + n ^ 2)

end

end A059329.P9748423776029031968

namespace A059329

/-- `gcd(2, n)+a(n-2)+n²` -/
def P9748423776029031968.Spec : Prop :=
  ∀ n, (P9748423776029031968.a n : ℤ) = A059329 n

end A059329

/-! ## A059329.P304184123720031256

`∑[∑[2*n*and(1, n+1)]+1]`
-/

namespace A059329.P304184123720031256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059329.P304184123720031256

namespace A059329

/-- `∑[∑[2*n*and(1, n+1)]+1]` -/
def P304184123720031256.Spec : Prop :=
  ∀ n, (P304184123720031256.a n : ℤ) = A059329 n

end A059329

/-! ## A059329.P6942240204277756562

`∑[A213037(n+1)-n]`
-/

namespace A059329.P6942240204277756562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059329.P6942240204277756562

namespace A059329

/-- `∑[A213037(n+1)-n]` -/
def P6942240204277756562.Spec : Prop :=
  ∀ n, P6942240204277756562.a n = A059329 n

end A059329

/-! ## A059329.P17747000663343284005

`∑[∑[n]]+abs(A030640(n))`
-/

namespace A059329.P17747000663343284005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |A030640 n|

end

end A059329.P17747000663343284005

namespace A059329

/-- `∑[∑[n]]+abs(A030640(n))` -/
def P17747000663343284005.Spec : Prop :=
  ∀ n, P17747000663343284005.a n = A059329 n

end A059329

/-! ## A059329.P16334839288037114050

`A026741(n+1)+∑[∑[n]]`
-/

namespace A059329.P16334839288037114050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059329.P16334839288037114050

namespace A059329

/-- `A026741(n+1)+∑[∑[n]]` -/
def P16334839288037114050.Spec : Prop :=
  ∀ n, P16334839288037114050.a n = A059329 n

end A059329

/-! ## A059329.P808469235181350834

`A178946(n+1)-∑[∑[n]]`
-/

namespace A059329.P808469235181350834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178946 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059329.P808469235181350834

namespace A059329

/-- `A178946(n+1)-∑[∑[n]]` -/
def P808469235181350834.Spec : Prop :=
  ∀ n, P808469235181350834.a n = A059329 n

end A059329

/-! ## A059329.P8741317032713227052

`A142150(n)+A084570(n)`
-/

namespace A059329.P8741317032713227052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A084570 n

end

end A059329.P8741317032713227052

namespace A059329

/-- `A142150(n)+A084570(n)` -/
def P8741317032713227052.Spec : Prop :=
  ∀ n, P8741317032713227052.a n = A059329 n

end A059329

/-! ## A059329.P8668739278618460145

`A212968(n)-A212967(n)`
-/

namespace A059329.P8668739278618460145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - A212967 n

end

end A059329.P8668739278618460145

namespace A059329

/-- `A212968(n)-A212967(n)` -/
def P8668739278618460145.Spec : Prop :=
  ∀ n, P8668739278618460145.a n = A059329 n

end A059329

/-! ## A059329.P10898184122276404175

`A309805(n+1)+A212964(n)`
-/

namespace A059329.P10898184122276404175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) + A212964 n

end

end A059329.P10898184122276404175

namespace A059329

/-- `A309805(n+1)+A212964(n)` -/
def P10898184122276404175.Spec : Prop :=
  ∀ n, P10898184122276404175.a n = A059329 n

end A059329

/-! ## A059329.P4498554524191494312

`A005998(n+1)-A006584(n)`
-/

namespace A059329.P4498554524191494312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005998 (n + 1) - A006584 n

end

end A059329.P4498554524191494312

namespace A059329

/-- `A005998(n+1)-A006584(n)` -/
def P4498554524191494312.Spec : Prop :=
  ∀ n, P4498554524191494312.a n = A059329 n

end A059329

/-! ## A059329.P5053729545201652329

`A049778(n+1)-A001318(n)`
-/

namespace A059329.P5053729545201652329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) - A001318 n

end

end A059329.P5053729545201652329

namespace A059329

/-- `A049778(n+1)-A001318(n)` -/
def P5053729545201652329.Spec : Prop :=
  ∀ n, P5053729545201652329.a n = A059329 n

end A059329

/-! ## A059329.P608528395838758149

`A054974(n+2)+A034828(n)`
-/

namespace A059329.P608528395838758149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2) + A034828 n

end

end A059329.P608528395838758149

namespace A059329

/-- `A054974(n+2)+A034828(n)` -/
def P608528395838758149.Spec : Prop :=
  ∀ n, P608528395838758149.a n = A059329 n

end A059329

/-!
# A059330: Primes p such that x^67 = 2 has no solution mod p.

The programs for A059330, there is no canonical definition to state claims against.
-/

/-! ## A059330.P5448182548257338901

`p?[A265667(51*n)+1-n]`
-/

namespace A059330.P5448182548257338901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (51 * n) + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059330.P5448182548257338901

/-! ## A059330.P5460397094026880551

`p?[34*(n+1)*A020639(n+1)-n]`
-/

namespace A059330.P5460397094026880551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (34 * (n + 1) : ℤ) * A020639 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059330.P5460397094026880551

/-! ## A059330.P411176976719102346

`p?[A314352(A310392(3*(n+1)))-n]`
-/

namespace A059330.P411176976719102346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314352 (A310392 (3 * (n + 1))).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059330.P411176976719102346

/-! ## A059330.P16966167950746153358

`p?[A004442(67*n)]`
-/

namespace A059330.P16966167950746153358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (67 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059330.P16966167950746153358

/-! ## A059330.P4617541443162415762

`p?[A344797(a(n-1))]` with `a(0)=8`
-/

namespace A059330.P4617541443162415762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A344797 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059330.P4617541443162415762

/-!
# A059331: Primes p such that x^24 = 2 has no solution mod p, but x^12 = 2 has a solution mod p.

The programs for A059331, there is no canonical definition to state claims against.
-/

/-! ## A059331.P17340556236741242027

`∩[A045316(n+1), A049544(n+1)]`
-/

namespace A059331.P17340556236741242027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059331.P17340556236741242027

/-! ## A059331.P9271811752118871915

`∩[A049544(n+1), A059362(n+1)]`
-/

namespace A059331.P9271811752118871915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059331.P9271811752118871915

/-! ## A059331.P5714992773052360877

`∩[A045316(n+1), A070188(n+1)]`
-/

namespace A059331.P5714992773052360877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059331.P5714992773052360877

/-! ## A059331.P16650692260557055352

`∩[A059362(n+1), A070188(n+1)]`
-/

namespace A059331.P16650692260557055352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059331.P16650692260557055352

/-!
# A059332: Determinant of n X n matrix A defined by A[i,j] = (i+j-1)! for 1 <= i,j <= n.

The programs for A059332, the canonical program `A059332.P17863426834293999672` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059332 has offset 0).

The definition of A059332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059332.P15356442797227090854

`a(n-1)*n!²/n` with `a(0)=1, a(1)=1`
-/

namespace A059332.P15356442797227090854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (Nat.factorial n ^ 2 : ℚ) / (n : ℚ)

end

end A059332.P15356442797227090854

namespace A059332

/-- `a(n-1)*n!²/n` -/
def P15356442797227090854.Spec : Prop :=
  ∀ n, P15356442797227090854.a n = (A059332 n : ℚ)

end A059332

/-! ## A059332.P17863426834293999672

`a(n-1)*n!*(n-1)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059332

/-- `a(n-1)*n!*(n-1)!` -/
def P17863426834293999672.Spec : Prop :=
  ∀ n, (P17863426834293999672.a n : ℤ) = A059332 n

theorem P17863426834293999672.correct : P17863426834293999672.Spec := by
  intro n
  simp only [A059332]

end A059332

/-! ## A059332.P13593730777354716429

`∏[abs(1-n)!*n!]`
-/

namespace A059332.P13593730777354716429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059332.P13593730777354716429

namespace A059332

/-- `∏[abs(1-n)!*n!]` -/
def P13593730777354716429.Spec : Prop :=
  ∀ n, (P13593730777354716429.a n : ℤ) = A059332 n

end A059332

/-! ## A059332.P7371866043035942059

`∏[∏[round(1/acot(n²-n))]]`
-/

namespace A059332.P7371866043035942059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n ^ 2 : ℤ) - (n : ℤ) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059332.P7371866043035942059

namespace A059332

/-- `∏[∏[round(1/acot(n²-n))]]` -/
def P7371866043035942059.Spec : Prop :=
  ∀ n, P7371866043035942059.a n = A059332 n

end A059332

/-! ## A059332.P15214067545705997643

`a(n-1)/n*n!²` with `a(0)=1`
-/

namespace A059332.P15214067545705997643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * (Nat.factorial n ^ 2 : ℚ)

end

end A059332.P15214067545705997643

namespace A059332

/-- `a(n-1)/n*n!²` -/
def P15214067545705997643.Spec : Prop :=
  ∀ n, P15214067545705997643.a n = (A059332 n : ℚ)

end A059332

/-!
# A059334: Primes p such that x^30 = 2 has no solution mod p.

The programs for A059334, there is no canonical definition to state claims against.
-/

/-! ## A059334.P12436269192269307555

`∪[A003629(n+1), A059308(n+1)]`
-/

namespace A059334.P12436269192269307555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059334.P12436269192269307555

/-! ## A059334.P1786589082150851476

`∪[A040160(n+1), A040993(n+1)]`
-/

namespace A059334.P1786589082150851476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059334.P1786589082150851476

/-! ## A059334.P8763393336457307207

`∪[A040034(n+1), A059263(n+1)]`
-/

namespace A059334.P8763393336457307207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059334.P8763393336457307207

/-! ## A059334.P3547300520716865493

`∪[A040993(n+1), A059263(n+1)]`
-/

namespace A059334.P3547300520716865493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059334.P3547300520716865493

/-! ## A059334.P6373975932246657372

`∪[A040993(n+1), A059308(n+1)]`
-/

namespace A059334.P6373975932246657372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059334.P6373975932246657372

/-! ## A059334.P11555280918994581895

`∪[A059263(n+1), A059308(n+1)]`
-/

namespace A059334.P11555280918994581895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059334.P11555280918994581895

/-!
# A059335: Primes p such that x^33 = 2 has no solution mod p.

The programs for A059335, there is no canonical definition to state claims against.
-/

/-! ## A059335.P4660061513815572288

`∪[A040034(n+1), A059241(n+1)]`
-/

namespace A059335.P4660061513815572288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059335.P4660061513815572288

/-! ## A059335.P12077146930417910100

`∪[A106282(2*n+3), A040034(n+1)]%A107662(2*n+5)`
-/

namespace A059335.P12077146930417910100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106282 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A107662 (2 * n + 5))

end

end A059335.P12077146930417910100

/-! ## A059335.P11355777044608874296

`record[p?[A033676(A044268(n+1))]]`
-/

namespace A059335.P11355777044608874296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A044268 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059335.P11355777044608874296

/-!
# A059336: Primes p such that x^34 = 2 has no solution mod p.

The programs for A059336, there is no canonical definition to state claims against.
-/

/-! ## A059336.P13039730018801280766

`∪[A003629(n+1), A058999(n+1)]`
-/

namespace A059336.P13039730018801280766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059336.P13039730018801280766

/-! ## A059336.P11080502825686898366

`p?[or(A047443(n+1), A185245(n))]`
-/

namespace A059336.P11080502825686898366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047443 (n + 1)) (A185245 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059336.P11080502825686898366

/-! ## A059336.P14741292232490432661

`p?[A130696(2*n+1)+A004396(n)]`
-/

namespace A059336.P14741292232490432661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (2 * n + 1) + A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059336.P14741292232490432661

/-! ## A059336.P6193480071482312315

`p?[A008576(n)-A034469(n+1)]`
-/

namespace A059336.P6193480071482312315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - A034469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059336.P6193480071482312315

/-!
# A059337: Primes p such that x^35 = 2 has no solution mod p.

The programs for A059337, there is no canonical definition to state claims against.
-/

/-! ## A059337.P666001024048744188

`∪[A040160(n+1), A042967(n+1)]`
-/

namespace A059337.P666001024048744188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059337.P666001024048744188

/-! ## A059337.P10835491287441034504

`p?[A102442(n+1)*A115060(n+2)]`
-/

namespace A059337.P10835491287441034504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102442 (n + 1) * A115060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059337.P10835491287441034504

/-! ## A059337.P14666149208629992697

`p?[A307608(2*(n+12))+A307589(n+1)]`
-/

namespace A059337.P14666149208629992697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307608 (2 * (n + 12)) + A307589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059337.P14666149208629992697

/-! ## A059337.P12776917077250535144

`A005110(lt[A229598(n+2), A310228(n)])`
-/

namespace A059337.P12776917077250535144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229598 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005110 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059337.P12776917077250535144

/-!
# A059338: a(n) = Sum_{k=1..n} k^5 * binomial(n,k).

The programs for A059338, the canonical program `A059338.P11032010901277000507` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059338 has offset 1).

The definition of A059338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)^5*C(n+1, #+1)]` (program `A059338.P11032010901277000507`, by `A059338.P11032010901277000507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059338.P1035322844050626939

`2^(n-4)*(n+1)²*((n+1)^3+10*(n+1)²+15*(n+1)-10)`
-/

namespace A059338.P1035322844050626939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * ((n + 1) ^ 2 : ℚ) * (((n + 1) ^ 3 + 10 * (n + 1) ^ 2 + 15 * (n + 1) : ℤ) - 10 : ℚ)

end

end A059338.P1035322844050626939

namespace A059338

/-- `2^(n-4)*(n+1)²*((n+1)^3+10*(n+1)²+15*(n+1)-10)` -/
def P1035322844050626939.Spec : Prop :=
  ∀ n, P1035322844050626939.a n = (A059338 (n + 1) : ℚ)

end A059338

/-! ## A059338.P11032010901277000507

`∑{#}[n, (#+1)^5*C(n+1, #+1)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059338

/-- `∑{#}[n, (#+1)^5*C(n+1, #+1)]` -/
def P11032010901277000507.Spec : Prop :=
  ∀ n, (P11032010901277000507.a n : ℤ) = A059338 (n + 1)

theorem P11032010901277000507.correct : P11032010901277000507.Spec := by
  intro n
  simp only [A059338, Nat.add_sub_cancel]

end A059338

/-! ## A059338.P3818906239671672313

`∑[A056468(n+1)/(n+1)]`
-/

namespace A059338.P3818906239671672313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056468 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059338.P3818906239671672313

namespace A059338

/-- `∑[A056468(n+1)/(n+1)]` -/
def P3818906239671672313.Spec : Prop :=
  ∀ n, P3818906239671672313.a n = (A059338 (n + 1) : ℚ)

end A059338

/-! ## A059338.P13130886061442411789

`A349706(A000217(n+7)-6)`
-/

namespace A059338.P13130886061442411789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 (A000217 (n + 7) - 6).toNat

end

end A059338.P13130886061442411789

namespace A059338

/-- `A349706(A000217(n+7)-6)` -/
def P13130886061442411789.Spec : Prop :=
  ∀ n, P13130886061442411789.a n = A059338 (n + 1)

end A059338

/-!
# A059339: a(n) is the number of representations of n as a sum x+y, such that bigomega(n) = bigomega(x)+bigomega(y) and 1 <= x <= y < n.

The programs for A059339, there is no canonical definition to state claims against.
-/

/-! ## A059339.P11747141664671818788

`A374210(n+1)-A374210(A028310(n))`
-/

namespace A059339.P11747141664671818788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374210 (n + 1) - A374210 (A028310 n).toNat

end

end A059339.P11747141664671818788

/-! ## A059339.P10812807641601776112

`A297155(A169814(2*(n+1))+A000712(n+2))`
-/

namespace A059339.P10812807641601776112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A169814 (2 * (n + 1)) + A000712 (n + 2)).toNat

end

end A059339.P10812807641601776112

/-! ## A059339.P545137377292254788

`A064692(A151571(A008937(n))+A111573(n))`
-/

namespace A059339.P545137377292254788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A151571 (A008937 n).toNat + A111573 n).toNat

end

end A059339.P545137377292254788

/-! ## A059339.P2822425573321621547

`A353329(A290862(n)+A046523(n+1))`
-/

namespace A059339.P2822425573321621547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A290862 n + A046523 (n + 1)).toNat

end

end A059339.P2822425573321621547

/-! ## A059339.P6399895623917074353

`A001222(A286931(n+1))-A023532(n)`
-/

namespace A059339.P6399895623917074353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286931 (n + 1)).toNat - A023532 n

end

end A059339.P6399895623917074353

/-!
# A059340: Triangle T(n,k) of numbers with e.g.f. exp((exp((1+x)*y)-1)/(1+x)), k=0..n-1.

The programs for A059340, there is no canonical definition to state claims against.
-/

/-! ## A059340.P14700495288487497651

`A078129(A126216(n+1))`
-/

namespace A059340.P14700495288487497651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A126216 (n + 1)).toNat

end

end A059340.P14700495288487497651

/-! ## A059340.P10407740000179515085

`A137597(n+1)+A137581(A062399(n))`
-/

namespace A059340.P10407740000179515085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137597 (n + 1) + A137581 (A062399 n).toNat

end

end A059340.P10407740000179515085

/-! ## A059340.P502710054292247692

`A269242(A007579(n))+A124733(n+1)`
-/

namespace A059340.P502710054292247692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269242 (A007579 n).toNat + A124733 (n + 1)

end

end A059340.P502710054292247692

/-! ## A059340.P2567244006217309028

`A151795(A208355(n))+A137597(n+1)`
-/

namespace A059340.P2567244006217309028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A208355 n).toNat + A137597 (n + 1)

end

end A059340.P2567244006217309028

/-!
# A059341: Triangle giving numerators of coefficients of Euler polynomials, highest powers first.

The programs for A059341, there is no canonical definition to state claims against.
-/

/-! ## A059341.P6676867443383435332

`A060096(A061579(n))`
-/

namespace A059341.P6676867443383435332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (A061579 n).toNat

end

end A059341.P6676867443383435332

/-! ## A059341.P14582040509474960973

`A060096(A114327(n)+n)`
-/

namespace A059341.P14582040509474960973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (A114327 n + (n : ℤ)).toNat

end

end A059341.P14582040509474960973

/-! ## A059341.P1504296053098905934

`A060096(A038722(n+1)-1)`
-/

namespace A059341.P1504296053098905934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (A038722 (n + 1) - 1).toNat

end

end A059341.P1504296053098905934

/-! ## A059341.P14118999196618796247

`A060096(A093995(n+1)-(n+1))`
-/

namespace A059341.P14118999196618796247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A059341.P14118999196618796247

/-! ## A059341.P6102450095369532819

`A060096(A057944(n)+A025581(n))`
-/

namespace A059341.P6102450095369532819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (A057944 n + A025581 n).toNat

end

end A059341.P6102450095369532819

/-! ## A059341.P9282297951465058303

`A060096(A002378(n)%A080036(n))`
-/

namespace A059341.P9282297951465058303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A059341.P9282297951465058303

/-!
# A059342: Triangle giving denominators of coefficients of Euler polynomials, highest powers first.

The programs for A059342, the canonical program `A059342.P11166942202048713264` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059342 has offset 0).

The definition of A059342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059342.P14114490377816742861

`A060097(A061579(n))`
-/

namespace A059342.P14114490377816742861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (A061579 n).toNat

end

end A059342.P14114490377816742861

namespace A059342

/-- `A060097(A061579(n))` -/
def P14114490377816742861.Spec : Prop :=
  ∀ n, P14114490377816742861.a n = A059342 n

end A059342

/-! ## A059342.P14625052740424156602

`A060097(A114327(n)+n)`
-/

namespace A059342.P14625052740424156602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (A114327 n + (n : ℤ)).toNat

end

end A059342.P14625052740424156602

namespace A059342

/-- `A060097(A114327(n)+n)` -/
def P14625052740424156602.Spec : Prop :=
  ∀ n, P14625052740424156602.a n = A059342 n

end A059342

/-! ## A059342.P5860134922043819263

`A006519(A159335(comp[∑[n]]))`
-/

namespace A059342.P5860134922043819263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A159335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A059342.P5860134922043819263

namespace A059342

/-- `A006519(A159335(comp[∑[n]]))` -/
def P5860134922043819263.Spec : Prop :=
  ∀ n, P5860134922043819263.a n = A059342 n

end A059342

/-! ## A059342.P12168389859848381795

`A060097(A038722(n+1)-1)`
-/

namespace A059342.P12168389859848381795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (A038722 (n + 1) - 1).toNat

end

end A059342.P12168389859848381795

namespace A059342

/-- `A060097(A038722(n+1)-1)` -/
def P12168389859848381795.Spec : Prop :=
  ∀ n, P12168389859848381795.a n = A059342 n

end A059342

/-! ## A059342.P17986353845080929055

`A060097(1-A127648(n)+n)`
-/

namespace A059342.P17986353845080929055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (1 - A127648 n + (n : ℤ)).toNat

end

end A059342.P17986353845080929055

namespace A059342

/-- `A060097(1-A127648(n)+n)` -/
def P17986353845080929055.Spec : Prop :=
  ∀ n, P17986353845080929055.a n = A059342 n

end A059342

/-! ## A059342.P16588676950790342085

`A060097(1-(A127648(n)-n))`
-/

namespace A059342.P16588676950790342085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (1 - (A127648 n - (n : ℤ))).toNat

end

end A059342.P16588676950790342085

namespace A059342

/-- `A060097(1-(A127648(n)-n))` -/
def P16588676950790342085.Spec : Prop :=
  ∀ n, P16588676950790342085.a n = A059342 n

end A059342

/-! ## A059342.P18165065629324175111

`A060097(A093995(n+1)-(n+1))`
-/

namespace A059342.P18165065629324175111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A059342.P18165065629324175111

namespace A059342

/-- `A060097(A093995(n+1)-(n+1))` -/
def P18165065629324175111.Spec : Prop :=
  ∀ n, P18165065629324175111.a n = A059342 n

end A059342

/-! ## A059342.P3993289019559211714

`A060097((A007401(n+1)-n)²-(n+1))`
-/

namespace A059342.P3993289019559211714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 ((A007401 (n + 1) - (n : ℤ)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A059342.P3993289019559211714

namespace A059342

/-- `A060097((A007401(n+1)-n)²-(n+1))` -/
def P3993289019559211714.Spec : Prop :=
  ∀ n, P3993289019559211714.a n = A059342 n

end A059342

/-! ## A059342.P5465766040770759205

`A060097(A002378(n)%A080036(n))`
-/

namespace A059342.P5465766040770759205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A059342.P5465766040770759205

namespace A059342

/-- `A060097(A002378(n)%A080036(n))` -/
def P5465766040770759205.Spec : Prop :=
  ∀ n, P5465766040770759205.a n = A059342 n

end A059342

/-! ## A059342.P11166942202048713264

`gcd(A059268(n), A159335(A080036(n)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059342

/-- `gcd(A059268(n), A159335(A080036(n)))` -/
def P11166942202048713264.Spec : Prop :=
  ∀ n, (P11166942202048713264.a n : ℤ) = A059342 n

theorem P11166942202048713264.correct : P11166942202048713264.Spec := by
  intro n
  simp only [A059342]

end A059342

/-! ## A059342.P4093304614756444289

`gcd(A137688(n), A159335(A014132(n+1)))`
-/

namespace A059342.P4093304614756444289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137688 n) (A159335 (A014132 (n + 1)).toNat)

end

end A059342.P4093304614756444289

namespace A059342

/-- `gcd(A137688(n), A159335(A014132(n+1)))` -/
def P4093304614756444289.Spec : Prop :=
  ∀ n, (P4093304614756444289.a n : ℤ) = A059342 n

end A059342

/-! ## A059342.P3606389081143487394

`lcm(A002260(n+1), A059366(n))/A059366(n)`
-/

namespace A059342.P3606389081143487394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002260 (n + 1)) (A059366 n) : ℚ) / (A059366 n : ℚ)

end

end A059342.P3606389081143487394

namespace A059342

/-- `lcm(A002260(n+1), A059366(n))/A059366(n)` -/
def P3606389081143487394.Spec : Prop :=
  ∀ n, P3606389081143487394.a n = (A059342 n : ℚ)

end A059342

/-! ## A059342.P6113588610329854589

`A002260(n+1)/gcd(A002260(n+1), A186695(n+1))`
-/

namespace A059342.P6113588610329854589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A186695 (n + 1)) : ℚ)

end

end A059342.P6113588610329854589

namespace A059342

/-- `A002260(n+1)/gcd(A002260(n+1), A186695(n+1))` -/
def P6113588610329854589.Spec : Prop :=
  ∀ n, P6113588610329854589.a n = (A059342 n : ℚ)

end A059342

/-!
# A059343: Triangle of nonzero coefficients of Hermite polynomials H_n(x) in increasing powers of x.

The programs for A059343, the canonical program `A059343.P8688508278763230459` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059343 has offset 0).

The definition of A059343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059343.P8688508278763230459

`A060821(eq[A049310(n+1), A053117(n+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059343

/-- `A060821(eq[A049310(n+1), A053117(n+1)])` -/
def P8688508278763230459.Spec : Prop :=
  ∀ n, P8688508278763230459.a n = A059343 n

theorem P8688508278763230459.correct : P8688508278763230459.Spec := by
  intro n
  simp only [A059343]

end A059343

/-! ## A059343.P8817683361642070272

`A060821(eq[0, A049310(n+1)%A038207(n)])`
-/

namespace A059343.P8817683361642070272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049310 (n + 1)) (A038207 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059343.P8817683361642070272

namespace A059343

/-- `A060821(eq[0, A049310(n+1)%A038207(n)])` -/
def P8817683361642070272.Spec : Prop :=
  ∀ n, P8817683361642070272.a n = A059343 n

end A059343

/-! ## A059343.P2763225386793242719

`A060821(eq[0, A100258(n+1)%A038207(n)])`
-/

namespace A059343.P2763225386793242719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100258 (n + 1)) (A038207 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059343.P2763225386793242719

namespace A059343

/-- `A060821(eq[0, A100258(n+1)%A038207(n)])` -/
def P2763225386793242719.Spec : Prop :=
  ∀ n, P2763225386793242719.a n = A059343 n

end A059343

/-! ## A059343.P14459100657256670740

`A060821(lt[0, A060821(n)²])`
-/

namespace A059343.P14459100657256670740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059343.P14459100657256670740

namespace A059343

/-- `A060821(lt[0, A060821(n)²])` -/
def P14459100657256670740.Spec : Prop :=
  ∀ n, P14459100657256670740.a n = A059343 n

end A059343

/-! ## A059343.P17857194110911049075

`A060821(lt[n, A060821(n)^2])`
-/

namespace A059343.P17857194110911049075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059343.P17857194110911049075

namespace A059343

/-- `A060821(lt[n, A060821(n)^2])` -/
def P17857194110911049075.Spec : Prop :=
  ∀ n, P17857194110911049075.a n = A059343 n

end A059343

/-!
# A059344: Triangle read by rows: row n consists of the nonzero coefficients of the expansion of 2^n x^n in terms of Hermite polynomials with decreasing subscripts.

The programs for A059344, the canonical program `A059344.P14070619251469344958` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059344 has offset 0).

The definition of A059344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059344.P14070619251469344958

`A034868(n)*A344391(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059344

/-- `A034868(n)*A344391(n)` -/
def P14070619251469344958.Spec : Prop :=
  ∀ n, P14070619251469344958.a n = A059344 n

theorem P14070619251469344958.correct : P14070619251469344958.Spec := by
  intro n
  simp only [A059344]

end A059344

/-! ## A059344.P7500044035815423618

`lcm(A100861(n), A188440(n))`
-/

namespace A059344.P7500044035815423618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100861 n) (A188440 n)

end

end A059344.P7500044035815423618

namespace A059344

/-- `lcm(A100861(n), A188440(n))` -/
def P7500044035815423618.Spec : Prop :=
  ∀ n, (P7500044035815423618.a n : ℤ) = A059344 n

end A059344

/-! ## A059344.P9966899282195372948

`A122197(n+1)!*A055151(n)`
-/

namespace A059344.P9966899282195372948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A055151 n

end

end A059344.P9966899282195372948

namespace A059344

/-- `A122197(n+1)!*A055151(n)` -/
def P9966899282195372948.Spec : Prop :=
  ∀ n, P9966899282195372948.a n = A059344 n

end A059344

/-! ## A059344.P3504207310412522631

`A000079(A055087(n))*A100861(n)`
-/

namespace A059344.P3504207310412522631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A100861 n

end

end A059344.P3504207310412522631

namespace A059344

/-- `A000079(A055087(n))*A100861(n)` -/
def P3504207310412522631.Spec : Prop :=
  ∀ n, P3504207310412522631.a n = A059344 n

end A059344

/-! ## A059344.P3570207737110548177

`A059268(A091018(n))*A100861(n)`
-/

namespace A059344.P3570207737110548177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A100861 n

end

end A059344.P3570207737110548177

namespace A059344

/-- `A059268(A091018(n))*A100861(n)` -/
def P3570207737110548177.Spec : Prop :=
  ∀ n, P3570207737110548177.a n = A059344 n

end A059344

/-! ## A059344.P1399514132206004443

`A059268(record[A116942(n)])*A100861(n)`
-/

namespace A059344.P1399514132206004443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A100861 n

end

end A059344.P1399514132206004443

namespace A059344

/-- `A059268(record[A116942(n)])*A100861(n)` -/
def P1399514132206004443.Spec : Prop :=
  ∀ n, P1399514132206004443.a n = A059344 n

end A059344

/-! ## A059344.P14581497533721874779

`A011782(A122197(n+1))*A100861(n)`
-/

namespace A059344.P14581497533721874779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A122197 (n + 1)).toNat * A100861 n

end

end A059344.P14581497533721874779

namespace A059344

/-- `A011782(A122197(n+1))*A100861(n)` -/
def P14581497533721874779.Spec : Prop :=
  ∀ n, P14581497533721874779.a n = A059344 n

end A059344

/-! ## A059344.P9832245847528548855

`A008279(A091018(n))*A034868(n)`
-/

namespace A059344.P9832245847528548855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A091018 n).toNat * A034868 n

end

end A059344.P9832245847528548855

namespace A059344

/-- `A008279(A091018(n))*A034868(n)` -/
def P9832245847528548855.Spec : Prop :=
  ∀ n, P9832245847528548855.a n = A059344 n

end A059344

/-! ## A059344.P17653418544357521076

`A113025(A091018(n))`
-/

namespace A059344.P17653418544357521076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 (A091018 n).toNat

end

end A059344.P17653418544357521076

namespace A059344

/-- `A113025(A091018(n))` -/
def P17653418544357521076.Spec : Prop :=
  ∀ n, P17653418544357521076.a n = A059344 n

end A059344

/-! ## A059344.P7850013525957829999

`A113025(A056536(n+1)-1)`
-/

namespace A059344.P7850013525957829999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 (A056536 (n + 1) - 1).toNat

end

end A059344.P7850013525957829999

namespace A059344

/-- `A113025(A056536(n+1)-1)` -/
def P7850013525957829999.Spec : Prop :=
  ∀ n, P7850013525957829999.a n = A059344 n

end A059344

/-!
# A059345: Central column of Pascal's "rhombus" (actually a triangle) A059317.

The programs for A059345, there is no canonical definition to state claims against.
-/

/-! ## A059345.P3318147832519645708

`A128720(n)+A106050(n+1)`
-/

namespace A059345.P3318147832519645708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128720 n + A106050 (n + 1)

end

end A059345.P3318147832519645708

/-! ## A059345.P6583434745726980860

`A059398(n)-A106053(n+1)`
-/

namespace A059345.P6583434745726980860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059398 n - A106053 (n + 1)

end

end A059345.P6583434745726980860

/-! ## A059345.P11959568289085913196

`A132887(2*n+1)-A106053(n+1)`
-/

namespace A059345.P11959568289085913196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132887 (2 * n + 1) - A106053 (n + 1)

end

end A059345.P11959568289085913196

/-! ## A059345.P12050700103889637463

`A059317(∑[2*n])`
-/

namespace A059345.P12050700103889637463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059345.P12050700103889637463

/-! ## A059345.P13918576822813033301

`A059317(n²+n)*A059317(n²)`
-/

namespace A059345.P13918576822813033301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (n ^ 2 + n) * A059317 (n ^ 2)

end

end A059345.P13918576822813033301

/-! ## A059345.P8477000840214213232

`A059317(n²+n)/A033999(n)²`
-/

namespace A059345.P8477000840214213232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059317 (n ^ 2 + n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A059345.P8477000840214213232

/-! ## A059345.P11979117030932040299

`A059317(n²+n)/A130599(A124625(n))`
-/

namespace A059345.P11979117030932040299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059317 (n ^ 2 + n) : ℚ) / (A130599 (A124625 n).toNat : ℚ)

end

end A059345.P11979117030932040299

/-! ## A059345.P13523606916937420327

`A000164(A000164(n))*A059317(n*(n+1))`
-/

namespace A059345.P13523606916937420327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A059317 (n * (n + 1))

end

end A059345.P13523606916937420327

/-! ## A059345.P1484455046712422917

`A059317(n²+n)/A130599(A080400(n+1))`
-/

namespace A059345.P1484455046712422917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059317 (n ^ 2 + n) : ℚ) / (A130599 (A080400 (n + 1)).toNat : ℚ)

end

end A059345.P1484455046712422917

/-!
# A059346: Difference array of Catalan numbers A000108 read by antidiagonals.

The programs for A059346, there is no canonical definition to state claims against.
-/

/-! ## A059346.P15264602313594220325

`A397601(A061579(n))`
-/

namespace A059346.P15264602313594220325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397601 (A061579 n).toNat

end

end A059346.P15264602313594220325

/-! ## A059346.P17905015163658353967

`A008615(A094617(A043320(n+1)))`
-/

namespace A059346.P17905015163658353967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A094617 (A043320 (n + 1)).toNat).toNat

end

end A059346.P17905015163658353967

/-! ## A059346.P3033463318354854754

`A106436(n)-A054908(A123081(n))`
-/

namespace A059346.P3033463318354854754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n - A054908 (A123081 n).toNat

end

end A059346.P3033463318354854754

/-! ## A059346.P5051089494287868157

`A106436(n)-A185274(A168256(n))`
-/

namespace A059346.P5051089494287868157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n - A185274 (A168256 n).toNat

end

end A059346.P5051089494287868157

/-! ## A059346.P13990305127577325387

`A106436(n)-A066247(A322298(n))`
-/

namespace A059346.P13990305127577325387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n - A066247 (A322298 n).toNat

end

end A059346.P13990305127577325387

/-!
# A059347: Difference array of Motzkin numbers A001006 read by antidiagonals.

The programs for A059347, there is no canonical definition to state claims against.
-/

/-! ## A059347.P6238286056102624905

`A166692(n)+A083892(A011782(n))`
-/

namespace A059347.P6238286056102624905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n + A083892 (A011782 n).toNat

end

end A059347.P6238286056102624905

/-! ## A059347.P1601891882323611816

`A166692(n)-∑[A016389(A135899(n))]`
-/

namespace A059347.P1601891882323611816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A135899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059347.P1601891882323611816

/-! ## A059347.P3489456217158830570

`A166692(n)+A037819(A034896(A035042(n)))`
-/

namespace A059347.P3489456217158830570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n + A037819 (A034896 (A035042 n).toNat).toNat

end

end A059347.P3489456217158830570

/-! ## A059347.P12039604482899301756

`A166692(n)+A057427(A185254(n))`
-/

namespace A059347.P12039604482899301756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n + A057427 (A185254 n).toNat

end

end A059347.P12039604482899301756

/-! ## A059347.P2644731249273072291

`A166692(n)+A033665(A056484(n+1))`
-/

namespace A059347.P2644731249273072291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n + A033665 (A056484 (n + 1)).toNat

end

end A059347.P2644731249273072291

/-!
# A059348: Third diagonal of array in A059347.

The programs for A059348, the canonical program `A059348.P17500318434418441565` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059348 has offset 2).

The definition of A059348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059348.P2500224346772472616

`abs(Δ[Δ[A126120(n)]])`
-/

namespace A059348.P2500224346772472616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A059348.P2500224346772472616

namespace A059348

/-- `abs(Δ[Δ[A126120(n)]])` -/
def P2500224346772472616.Spec : Prop :=
  ∀ n, P2500224346772472616.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P15029077430135127230

`abs(Δ[Δ[A097331(n+1)]])`
-/

namespace A059348.P15029077430135127230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A059348.P15029077430135127230

namespace A059348

/-- `abs(Δ[Δ[A097331(n+1)]])` -/
def P15029077430135127230.Spec : Prop :=
  ∀ n, P15029077430135127230.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P381957646525374544

`abs(Δ[Δ[A210628(n+1)]])`
-/

namespace A059348.P381957646525374544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A059348.P381957646525374544

namespace A059348

/-- `abs(Δ[Δ[A210628(n+1)]])` -/
def P381957646525374544.Spec : Prop :=
  ∀ n, P381957646525374544.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P10456017564115593344

`A104722(A028310(n))`
-/

namespace A059348.P10456017564115593344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A028310 n).toNat

end

end A059348.P10456017564115593344

namespace A059348

/-- `A104722(A028310(n))` -/
def P10456017564115593344.Spec : Prop :=
  ∀ n, P10456017564115593344.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P9377653835208474602

`A104722(A000007(n)+n)`
-/

namespace A059348.P9377653835208474602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A000007 n + (n : ℤ)).toNat

end

end A059348.P9377653835208474602

namespace A059348

/-- `A104722(A000007(n)+n)` -/
def P9377653835208474602.Spec : Prop :=
  ∀ n, P9377653835208474602.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P18324980879092835880

`A104722(A004277(n)-n)`
-/

namespace A059348.P18324980879092835880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004277 n - (n : ℤ)).toNat

end

end A059348.P18324980879092835880

namespace A059348

/-- `A104722(A004277(n)-n)` -/
def P18324980879092835880.Spec : Prop :=
  ∀ n, P18324980879092835880.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P13431155638207668261

`A054977(n)*A104722(n)`
-/

namespace A059348.P13431155638207668261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A104722 n

end

end A059348.P13431155638207668261

namespace A059348

/-- `A054977(n)*A104722(n)` -/
def P13431155638207668261.Spec : Prop :=
  ∀ n, P13431155638207668261.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P16522470408244042082

`lcm(A104722(n), A195679(n))`
-/

namespace A059348.P16522470408244042082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104722 n) (A195679 n)

end

end A059348.P16522470408244042082

namespace A059348

/-- `lcm(A104722(n), A195679(n))` -/
def P16522470408244042082.Spec : Prop :=
  ∀ n, (P16522470408244042082.a n : ℤ) = A059348 (n + 2)

end A059348

/-! ## A059348.P10633905887154613660

`A104722(A254667(n+1)-1)`
-/

namespace A059348.P10633905887154613660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A254667 (n + 1) - 1).toNat

end

end A059348.P10633905887154613660

namespace A059348

/-- `A104722(A254667(n+1)-1)` -/
def P10633905887154613660.Spec : Prop :=
  ∀ n, P10633905887154613660.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P17500318434418441565

`A208355(n+1)+A208355(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059348

/-- `A208355(n+1)+A208355(n)` -/
def P17500318434418441565.Spec : Prop :=
  ∀ n, P17500318434418441565.a n = A059348 (n + 2)

theorem P17500318434418441565.correct : P17500318434418441565.Spec := by
  intro n
  simp only [A059348, Nat.add_sub_cancel]

end A059348

/-! ## A059348.P10425169744216944814

`A104722(A004273(n)+1-n)`
-/

namespace A059348.P10425169744216944814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004273 n + (1 - (n : ℤ))).toNat

end

end A059348.P10425169744216944814

namespace A059348

/-- `A104722(A004273(n)+1-n)` -/
def P10425169744216944814.Spec : Prop :=
  ∀ n, P10425169744216944814.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P17507411507666457930

`A104722(A004275(n+1)-n)`
-/

namespace A059348.P17507411507666457930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A059348.P17507411507666457930

namespace A059348

/-- `A104722(A004275(n+1)-n)` -/
def P17507411507666457930.Spec : Prop :=
  ∀ n, P17507411507666457930.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P3676647535733592502

`A104722(A054977(n)-1+n)`
-/

namespace A059348.P3676647535733592502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A054977 n - 1 + (n : ℤ)).toNat

end

end A059348.P3676647535733592502

namespace A059348

/-- `A104722(A054977(n)-1+n)` -/
def P3676647535733592502.Spec : Prop :=
  ∀ n, P3676647535733592502.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P8085217450272865416

`A104722(1-(n-A004273(n)))`
-/

namespace A059348.P8085217450272865416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A059348.P8085217450272865416

namespace A059348

/-- `A104722(1-(n-A004273(n)))` -/
def P8085217450272865416.Spec : Prop :=
  ∀ n, P8085217450272865416.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P5438615853446820340

`A104722(n-(1-A054977(n)))`
-/

namespace A059348.P5438615853446820340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 ((n : ℤ) - (1 - A054977 n)).toNat

end

end A059348.P5438615853446820340

namespace A059348

/-- `A104722(n-(1-A054977(n)))` -/
def P5438615853446820340.Spec : Prop :=
  ∀ n, P5438615853446820340.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P15067163276032195432

`A155051(n+2)-A155051(n)`
-/

namespace A059348.P15067163276032195432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (n + 2) - A155051 n

end

end A059348.P15067163276032195432

namespace A059348

/-- `A155051(n+2)-A155051(n)` -/
def P15067163276032195432.Spec : Prop :=
  ∀ n, P15067163276032195432.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P861658080963929525

`A104722(A036987(2*n)+n)`
-/

namespace A059348.P861658080963929525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A036987 (2 * n) + (n : ℤ)).toNat

end

end A059348.P861658080963929525

namespace A059348

/-- `A104722(A036987(2*n)+n)` -/
def P861658080963929525.Spec : Prop :=
  ∀ n, P861658080963929525.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P1862491378225484439

`A104722(A182492(2*n)+n)`
-/

namespace A059348.P1862491378225484439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A182492 (2 * n) + (n : ℤ)).toNat

end

end A059348.P1862491378225484439

namespace A059348

/-- `A104722(A182492(2*n)+n)` -/
def P1862491378225484439.Spec : Prop :=
  ∀ n, P1862491378225484439.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P7703191036002653470

`abs(A099363(n))+abs(A129996(n))`
-/

namespace A059348.P7703191036002653470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099363 n| + |A129996 n|

end

end A059348.P7703191036002653470

namespace A059348

/-- `abs(A099363(n))+abs(A129996(n))` -/
def P7703191036002653470.Spec : Prop :=
  ∀ n, P7703191036002653470.a n = A059348 (n + 2)

end A059348

/-! ## A059348.P1330978129882893943

`Δ[A155051(n+1)+A155051(n)]`
-/

namespace A059348.P1330978129882893943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (n + 1) + A155051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059348.P1330978129882893943

namespace A059348

/-- `Δ[A155051(n+1)+A155051(n)]` -/
def P1330978129882893943.Spec : Prop :=
  ∀ n, P1330978129882893943.a n = A059348 (n + 2)

end A059348

/-!
# A059350: Primes p such that x^38 = 2 has no solution mod p.

The programs for A059350, there is no canonical definition to state claims against.
-/

/-! ## A059350.P4947198526898989016

`∪[A003629(n+1), A059244(n+1)]`
-/

namespace A059350.P4947198526898989016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059350.P4947198526898989016

/-! ## A059350.P11651226654077467838

`p?[A000188(A294875(n+1))+A047443(n+1)-1]`
-/

namespace A059350.P11651226654077467838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A294875 (n + 1)).toNat + (A047443 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059350.P11651226654077467838

/-! ## A059350.P10328967029097856092

`p?[or(A008576(n), A285931(n+1))]`
-/

namespace A059350.P10328967029097856092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008576 n) (A285931 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059350.P10328967029097856092

/-! ## A059350.P15069693859726106622

`p?[or(A008576(n), A335453(n+1))]`
-/

namespace A059350.P15069693859726106622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008576 n) (A335453 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059350.P15069693859726106622

/-!
# A059351: Primes p such that x^39 = 2 has no solution mod p.

The programs for A059351, there is no canonical definition to state claims against.
-/

/-! ## A059351.P17600432880400391376

`∪[A040034(n+1), A059245(n+1)]`
-/

namespace A059351.P17600432880400391376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059351.P17600432880400391376

/-! ## A059351.P10524050073745852231

`A000040(∑[gcd(4, A157851(n))])`
-/

namespace A059351.P10524050073745852231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A157851 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059351.P10524050073745852231

/-!
# A059352: Primes p such that x^40 = 2 has no solution mod p.

The programs for A059352, there is no canonical definition to state claims against.
-/

/-! ## A059352.P11749635012982820034

`∪[A040160(n+1), A045316(n+1)]`
-/

namespace A059352.P11749635012982820034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059352.P11749635012982820034

/-! ## A059352.P5919092841812177023

`∪[A045316(n+1), A059263(n+1)]`
-/

namespace A059352.P5919092841812177023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059352.P5919092841812177023

/-! ## A059352.P1110144075078650067

`∪[A045316(n+1), A059309(n+1)]`
-/

namespace A059352.P1110144075078650067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059352.P1110144075078650067

/-!
# A059353: Primes p such that x^42 = 2 has no solution mod p.

The programs for A059353, there is no canonical definition to state claims against.
-/

/-! ## A059353.P639458987827521681

`∪[A003629(n+1), A059310(n+1)]`
-/

namespace A059353.P639458987827521681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059353.P639458987827521681

/-! ## A059353.P17992242824033419470

`∪[A040993(n+1), A042967(n+1)]`
-/

namespace A059353.P17992242824033419470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059353.P17992242824033419470

/-! ## A059353.P9748121223401866071

`∪[A040034(n+1), A059265(n+1)]`
-/

namespace A059353.P9748121223401866071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059353.P9748121223401866071

/-! ## A059353.P16091333250831427686

`∪[A040993(n+1), A059265(n+1)]`
-/

namespace A059353.P16091333250831427686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059353.P16091333250831427686

/-! ## A059353.P6324624411750943463

`∪[A040993(n+1), A059310(n+1)]`
-/

namespace A059353.P6324624411750943463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059353.P6324624411750943463

/-! ## A059353.P6807171378724841643

`∪[A059265(n+1), A059310(n+1)]`
-/

namespace A059353.P6807171378724841643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059353.P6807171378724841643

/-!
# A059354: Primes p such that x^27 = 2 has no solution mod p, but x^9 = 2 has a solution mod p.

The programs for A059354, there is no canonical definition to state claims against.
-/

/-! ## A059354.P1755727181399748703

`A070185(A328617(n+1)+A057427(n))`
-/

namespace A059354.P1755727181399748703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070185 (A328617 (n + 1) + A057427 n).toNat

end

end A059354.P1755727181399748703

/-! ## A059354.P4500515731118887492

`A070185(A328617(n+1)+A211666(n+1))`
-/

namespace A059354.P4500515731118887492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070185 (A328617 (n + 1) + A211666 (n + 1)).toNat

end

end A059354.P4500515731118887492

/-! ## A059354.P15780826414646025342

`A070185(A065475(n+1))%A070185(2*(n+2))`
-/

namespace A059354.P15780826414646025342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070185 (A065475 (n + 1)).toNat) (A070185 (2 * (n + 2)))

end

end A059354.P15780826414646025342

/-! ## A059354.P17019116207365476014

`A070185(A065475(n+1))*A167155(A130972(n+1))`
-/

namespace A059354.P17019116207365476014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070185 (A065475 (n + 1)).toNat * A167155 (A130972 (n + 1)).toNat

end

end A059354.P17019116207365476014

/-!
# A059355: Number of chains of n-3 partitions in the reduced partition lattice on n elements.

The programs for A059355, there is no canonical definition to state claims against.
-/

/-! ## A059355.P6717940365253868309

`A008826(C(n+3, 2))`
-/

namespace A059355.P6717940365253868309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008826 (Nat.choose (n + 3) 2)

end

end A059355.P6717940365253868309

/-! ## A059355.P6872535319925571230

`A008826(∑[n+2]+1)`
-/

namespace A059355.P6872535319925571230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008826 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059355.P6872535319925571230

/-! ## A059355.P11555352009811636474

`lcm(A008480(n+1), A008826(A179865(n+3)))`
-/

namespace A059355.P11555352009811636474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008480 (n + 1)) (A008826 (A179865 (n + 3)).toNat)

end

end A059355.P11555352009811636474

/-! ## A059355.P14081072759402495743

`record[A008826(A206924(2*n+3))]`
-/

namespace A059355.P14081072759402495743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008826 (A206924 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059355.P14081072759402495743

/-! ## A059355.P4132391417187191649

`record[gcd(A008826(n+2), A119458(n))]`
-/

namespace A059355.P4132391417187191649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008826 (n + 2)) (A119458 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059355.P4132391417187191649

/-!
# A059356: A diagonal of triangle in A008298.

The programs for A059356, there is no canonical definition to state claims against.
-/

/-! ## A059356.P12427872678708636321

`A008298(∑[n+1]+2)`
-/

namespace A059356.P12427872678708636321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A059356.P12427872678708636321

/-! ## A059356.P2358178822516360523

`A078521(A167614(n+1))`
-/

namespace A059356.P2358178822516360523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078521 (A167614 (n + 1)).toNat

end

end A059356.P2358178822516360523

/-! ## A059356.P17864033060652750587

`record[A008298(A133263(A142150(n)))]`
-/

namespace A059356.P17864033060652750587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (A133263 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059356.P17864033060652750587

/-! ## A059356.P6194178411835362331

`lcm(A007318(n), A008298(A133263(n+1)))`
-/

namespace A059356.P6194178411835362331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A008298 (A133263 (n + 1)).toNat)

end

end A059356.P6194178411835362331

/-! ## A059356.P9416286505984905724

`or(A000007(n), A008298(A133263(n+1)))`
-/

namespace A059356.P9416286505984905724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008298 (A133263 (n + 1)).toNat)

end

end A059356.P9416286505984905724

/-! ## A059356.P6916050985010947733

`A008298(A133263(n+1))+A008683(25*(n+1))`
-/

namespace A059356.P6916050985010947733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (A133263 (n + 1)).toNat + A008683 (25 * (n + 1))

end

end A059356.P6916050985010947733

/-! ## A059356.P7924011979612502881

`A007318(A000217(n+1))*A008298(A133263(n+1))`
-/

namespace A059356.P7924011979612502881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1)).toNat * A008298 (A133263 (n + 1)).toNat

end

end A059356.P7924011979612502881

/-!
# A059357: A diagonal of triangle in A008298.

The programs for A059357, there is no canonical definition to state claims against.
-/

/-! ## A059357.P10796285284941771189

`A008298(∑[n+2]+4)`
-/

namespace A059357.P10796285284941771189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A059357.P10796285284941771189

/-! ## A059357.P17092805134585578111

`xor(1, xor(1, A008298(A167614(n+1))))`
-/

namespace A059357.P17092805134585578111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008298 (A167614 (n + 1)).toNat))

end

end A059357.P17092805134585578111

/-! ## A059357.P18090389224192376091

`A008298(A167614(n+1))*A304042(n)`
-/

namespace A059357.P18090389224192376091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (A167614 (n + 1)).toNat * A304042 n

end

end A059357.P18090389224192376091

/-! ## A059357.P2507331989828423154

`lcm(A008298(A167614(n+1)), A033999(n))`
-/

namespace A059357.P2507331989828423154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008298 (A167614 (n + 1)).toNat) (A033999 n)

end

end A059357.P2507331989828423154

/-! ## A059357.P14957149935663097605

`abs(A008298(A167614(n+1))-A000038(n))`
-/

namespace A059357.P14957149935663097605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008298 (A167614 (n + 1)).toNat - A000038 n|

end

end A059357.P14957149935663097605

/-! ## A059357.P14083106562528379639

`A008298(A167614(n+1))*A033999(2*n)`
-/

namespace A059357.P14083106562528379639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (A167614 (n + 1)).toNat * A033999 (2 * n)

end

end A059357.P14083106562528379639

/-! ## A059357.P17609262184626691089

`A004070(C(2, n))*A008298(A167614(n+1))`
-/

namespace A059357.P17609262184626691089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (Nat.choose 2 n) * A008298 (A167614 (n + 1)).toNat

end

end A059357.P17609262184626691089

/-! ## A059357.P12653834051382497933

`A007318(C(2, n))*A008298(A167614(n+1))`
-/

namespace A059357.P12653834051382497933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A008298 (A167614 (n + 1)).toNat

end

end A059357.P12653834051382497933

/-! ## A059357.P12934631295378032660

`A007318(abs((-1)^n))*A008298(A167614(n+1))`
-/

namespace A059357.P12934631295378032660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |(-1) ^ n|.toNat * A008298 (A167614 (n + 1)).toNat

end

end A059357.P12934631295378032660

/-!
# A059358: Coefficients in expansion of Sum_{n >= 1} x^n/(1-x^n)^4.

The programs for A059358, the canonical program `A059358.P6618147864486262330` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059358 has offset 0).

The definition of A059358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059358.P6618147864486262330

`∑{d}[n, C(#+2, 3)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059358

/-- `∑{d}[n, C(#+2, 3)]` -/
def P6618147864486262330.Spec : Prop :=
  ∀ n, (P6618147864486262330.a n : ℤ) = A059358 n

theorem P6618147864486262330.correct : P6618147864486262330.Spec := by
  intro n
  simp only [A059358]

end A059358

/-! ## A059358.P6597734788717031292

`∑{d}[n, A000292(#)]`
-/

namespace A059358.P6597734788717031292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000292 d

end

end A059358.P6597734788717031292

namespace A059358

/-- `∑{d}[n, A000292(#)]` -/
def P6597734788717031292.Spec : Prop :=
  ∀ n, P6597734788717031292.a n = A059358 n

theorem P6597734788717031292.correct : P6597734788717031292.Spec := by
  intro n
  simp only [A059358, Nat.add_sub_cancel, A059358.P6597734788717031292.f1, A059358.P6597734788717031292.a, A059358.P6618147864486262330.f1, A059358.P6618147864486262330.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059358

/-! ## A059358.P4518450532331791801

`∑{d}[n, A005581(#)+#]`
-/

namespace A059358.P4518450532331791801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A005581 d + (d : ℤ))

end

end A059358.P4518450532331791801

namespace A059358

/-- `∑{d}[n, A005581(#)+#]` -/
def P4518450532331791801.Spec : Prop :=
  ∀ n, P4518450532331791801.a n = A059358 n

end A059358

/-! ## A059358.P9204381896035282381

`∑{d}[n, A003600(#)-#]`
-/

namespace A059358.P9204381896035282381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A003600 d - (d : ℤ))

end

end A059358.P9204381896035282381

namespace A059358

/-- `∑{d}[n, A003600(#)-#]` -/
def P9204381896035282381.Spec : Prop :=
  ∀ n, P9204381896035282381.a n = A059358 n

end A059358

/-! ## A059358.P2657556991818975007

`∑{d}[n, A002417(#)/#]`
-/

namespace A059358.P2657556991818975007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A002417 d : ℚ) / (d : ℚ)

end

end A059358.P2657556991818975007

namespace A059358

/-- `∑{d}[n, A002417(#)/#]` -/
def P2657556991818975007.Spec : Prop :=
  ∀ n, P2657556991818975007.a n = (A059358 n : ℚ)

end A059358

/-! ## A059358.P10051843192024275871

`∑{d}[n, A000914(#)-A001296(#)]`
-/

namespace A059358.P10051843192024275871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000914 d - A001296 d)

end

end A059358.P10051843192024275871

namespace A059358

/-- `∑{d}[n, A000914(#)-A001296(#)]` -/
def P10051843192024275871.Spec : Prop :=
  ∀ n, P10051843192024275871.a n = A059358 n

end A059358

/-!
# A059360: a(n) = A059333(2^n).

The programs for A059360, there is no canonical definition to state claims against.
-/

/-! ## A059360.P14837873019744080636

`A059333(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059360.P14837873019744080636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059333 (2 ^ n)

end

end A059360.P14837873019744080636

/-! ## A059360.P13399060434551654248

`and(-1, A059333(A000079(n)))`
-/

namespace A059360.P13399060434551654248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A059333 (A000079 n).toNat)

end

end A059360.P13399060434551654248

/-! ## A059360.P8536637163343814410

`A059333(A000079(n))+A025443(n)`
-/

namespace A059360.P8536637163343814410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059333 (A000079 n).toNat + A025443 n

end

end A059360.P8536637163343814410

/-! ## A059360.P1374448033279605140

`A185044(n)+A059333(A000079(n))`
-/

namespace A059360.P1374448033279605140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A059333 (A000079 n).toNat

end

end A059360.P1374448033279605140

/-! ## A059360.P8896487679799759906

`A185236(n)+A059333(A000079(n))`
-/

namespace A059360.P8896487679799759906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + A059333 (A000079 n).toNat

end

end A059360.P8896487679799759906

/-!
# A059361: a(1)=1; a(n) = A059333(a(n-1)) + a(n-1).

The programs for A059361, there is no canonical definition to state claims against.
-/

/-! ## A059361.P15397400322561643120

`A059333(a(n-1))+a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059361.P15397400322561643120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059333 (a (n - 1)).toNat + a (n - 1)

end

end A059361.P15397400322561643120

/-! ## A059361.P483054349965398586

`∑[A364139(n+1)]`
-/

namespace A059361.P483054349965398586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059361.P483054349965398586

/-! ## A059361.P14803125977113797732

`A247936(eq[A086256(n+1), A138036(n)])`
-/

namespace A059361.P14803125977113797732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A059361.P14803125977113797732

/-!
# A059362: Primes p such that x^24 = 2 has no solution mod p.

The programs for A059362, there is no canonical definition to state claims against.
-/

/-! ## A059362.P12983731431245115622

`∪[A040993(n+1), A045316(n+1)]`
-/

namespace A059362.P12983731431245115622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059362.P12983731431245115622

/-! ## A059362.P3118386666939538545

`∪[A045316(n+1), A059264(n+1)]`
-/

namespace A059362.P3118386666939538545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059362.P3118386666939538545

/-!
# A059364: Triangle T(n,k)=Sum_{i=0..n} |stirling1(n,n-i)|*binomial(i,k), k=0..n-1.

The programs for A059364, the canonical program `A059364.P8279991219923390268` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059364 has offset 1).

The definition of A059364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059364.P8279991219923390268

`row(n)*T(n-1,k-1)+(row(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059364

/-- `row(n)*T(n-1,k-1)+(row(n)+1)*T(n-1,k)` -/
def P8279991219923390268.Spec : Prop :=
  ∀ n, (P8279991219923390268.a n : ℤ) = A059364 (n + 1)

theorem P8279991219923390268.correct : P8279991219923390268.Spec := by
  intro n
  simp only [A059364, Nat.add_sub_cancel]

end A059364

/-! ## A059364.P14385739563824883132

`T(n-1,k)+(T(n-1,k-1)+T(n-1,k))*row(n)` with `a(0)=1`
-/

namespace A059364.P14385739563824883132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triRow n

end

end A059364.P14385739563824883132

namespace A059364

/-- `T(n-1,k)+(T(n-1,k-1)+T(n-1,k))*row(n)` -/
def P14385739563824883132.Spec : Prop :=
  ∀ n, (P14385739563824883132.a n : ℤ) = A059364 (n + 1)

end A059364

/-! ## A059364.P8189242863503168717

`A088996(A099375(n)+1+n)`
-/

namespace A059364.P8189242863503168717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (A099375 n + 1 + (n : ℤ)).toNat

end

end A059364.P8189242863503168717

namespace A059364

/-- `A088996(A099375(n)+1+n)` -/
def P8189242863503168717.Spec : Prop :=
  ∀ n, P8189242863503168717.a n = A059364 (n + 1)

end A059364

/-! ## A059364.P13277279921512729286

`abs(A142070(A061579(n)))`
-/

namespace A059364.P13277279921512729286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142070 (A061579 n).toNat|

end

end A059364.P13277279921512729286

namespace A059364

/-- `abs(A142070(A061579(n)))` -/
def P13277279921512729286.Spec : Prop :=
  ∀ n, P13277279921512729286.a n = A059364 (n + 1)

end A059364

/-! ## A059364.P8041961933427310894

`gcd(A000038(n), A142070(A061579(n)))`
-/

namespace A059364.P8041961933427310894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A142070 (A061579 n).toNat)

end

end A059364.P8041961933427310894

namespace A059364

/-- `gcd(A000038(n), A142070(A061579(n)))` -/
def P8041961933427310894.Spec : Prop :=
  ∀ n, (P8041961933427310894.a n : ℤ) = A059364 (n + 1)

end A059364

/-! ## A059364.P7535004632391429291

`lcm(A000034(n), A142070(A061579(n)))`
-/

namespace A059364.P7535004632391429291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A142070 (A061579 n).toNat)

end

end A059364.P7535004632391429291

namespace A059364

/-- `lcm(A000034(n), A142070(A061579(n)))` -/
def P7535004632391429291.Spec : Prop :=
  ∀ n, (P7535004632391429291.a n : ℤ) = A059364 (n + 1)

end A059364

/-! ## A059364.P12838282122097649782

`lcm(-A142070(A061579(n)), A318930(n+1))`
-/

namespace A059364.P12838282122097649782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A142070 (A061579 n).toNat) (A318930 (n + 1))

end

end A059364.P12838282122097649782

namespace A059364

/-- `lcm(-A142070(A061579(n)), A318930(n+1))` -/
def P12838282122097649782.Spec : Prop :=
  ∀ n, (P12838282122097649782.a n : ℤ) = A059364 (n + 1)

end A059364

/-! ## A059364.P10680485511951271971

`gcd(-A142070(A061579(n)), A154269(2*n+1))`
-/

namespace A059364.P10680485511951271971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A142070 (A061579 n).toNat) (A154269 (2 * n + 1))

end

end A059364.P10680485511951271971

namespace A059364

/-- `gcd(-A142070(A061579(n)), A154269(2*n+1))` -/
def P10680485511951271971.Spec : Prop :=
  ∀ n, (P10680485511951271971.a n : ℤ) = A059364 (n + 1)

end A059364

/-!
# A059365: Another version of the Catalan triangle: T(r,s) = binomial(2*r-s-1,r-1) - binomial(2*r-s-1,r), r>=0, 0 <= s <= r.

The programs for A059365, the canonical program `A059365.P1128714534162912503` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059365 has offset 0).

The definition of A059365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059365.P1128714534162912503

`A106566(A028310(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059365

/-- `A106566(A028310(n))` -/
def P1128714534162912503.Spec : Prop :=
  ∀ n, P1128714534162912503.a n = A059365 n

theorem P1128714534162912503.correct : P1128714534162912503.Spec := by
  intro n
  simp only [A059365]

end A059365

/-! ## A059365.P7474315759257751123

`A106566(A000007(n)+n)`
-/

namespace A059365.P7474315759257751123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A000007 n + (n : ℤ)).toNat

end

end A059365.P7474315759257751123

namespace A059365

/-- `A106566(A000007(n)+n)` -/
def P7474315759257751123.Spec : Prop :=
  ∀ n, P7474315759257751123.a n = A059365 n

end A059365

/-! ## A059365.P18141571395723762057

`A106566(n)-A000007(n)`
-/

namespace A059365.P18141571395723762057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n - A000007 n

end

end A059365.P18141571395723762057

namespace A059365

/-- `A106566(n)-A000007(n)` -/
def P18141571395723762057.Spec : Prop :=
  ∀ n, P18141571395723762057.a n = A059365 n

end A059365

/-! ## A059365.P15212346363631159577

`A106566(A004277(n)-n)`
-/

namespace A059365.P15212346363631159577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A004277 n - (n : ℤ)).toNat

end

end A059365.P15212346363631159577

namespace A059365

/-- `A106566(A004277(n)-n)` -/
def P15212346363631159577.Spec : Prop :=
  ∀ n, P15212346363631159577.a n = A059365 n

end A059365

/-! ## A059365.P8824133204638807561

`A057427(n)*A106566(n)`
-/

namespace A059365.P8824133204638807561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A106566 n

end

end A059365.P8824133204638807561

namespace A059365

/-- `A057427(n)*A106566(n)` -/
def P8824133204638807561.Spec : Prop :=
  ∀ n, P8824133204638807561.a n = A059365 n

end A059365

/-! ## A059365.P12036068148463925493

`A106566(n)*A157928(n)`
-/

namespace A059365.P12036068148463925493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A157928 n

end

end A059365.P12036068148463925493

namespace A059365

/-- `A106566(n)*A157928(n)` -/
def P12036068148463925493.Spec : Prop :=
  ∀ n, P12036068148463925493.a n = A059365 n

end A059365

/-! ## A059365.P3191982726305179625

`A106566(n)*A167407(n)`
-/

namespace A059365.P3191982726305179625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A167407 n

end

end A059365.P3191982726305179625

namespace A059365

/-- `A106566(n)*A167407(n)` -/
def P3191982726305179625.Spec : Prop :=
  ∀ n, P3191982726305179625.a n = A059365 n

end A059365

/-! ## A059365.P11831770743064673976

`and(A057428(n), A106566(n))`
-/

namespace A059365.P11831770743064673976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A106566 n)

end

end A059365.P11831770743064673976

namespace A059365

/-- `and(A057428(n), A106566(n))` -/
def P11831770743064673976.Spec : Prop :=
  ∀ n, P11831770743064673976.a n = A059365 n

end A059365

/-! ## A059365.P14986217399723237152

`and(A106566(n), A134824(n))`
-/

namespace A059365.P14986217399723237152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106566 n) (A134824 n)

end

end A059365.P14986217399723237152

namespace A059365

/-- `and(A106566(n), A134824(n))` -/
def P14986217399723237152.Spec : Prop :=
  ∀ n, P14986217399723237152.a n = A059365 n

end A059365

/-! ## A059365.P7888455345512704802

`A106566(or(n, A036987(n)))`
-/

namespace A059365.P7888455345512704802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (Int.lor (n : ℤ) (A036987 n)).toNat

end

end A059365.P7888455345512704802

namespace A059365

/-- `A106566(or(n, A036987(n)))` -/
def P7888455345512704802.Spec : Prop :=
  ∀ n, P7888455345512704802.a n = A059365 n

end A059365

/-! ## A059365.P10911786622922181688

`A062157(n)²*A106566(n)`
-/

namespace A059365.P10911786622922181688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A106566 n

end

end A059365.P10911786622922181688

namespace A059365

/-- `A062157(n)²*A106566(n)` -/
def P10911786622922181688.Spec : Prop :=
  ∀ n, P10911786622922181688.a n = A059365 n

end A059365

/-! ## A059365.P17369754673648299543

`A106566(A057428(n)+1+n)`
-/

namespace A059365.P17369754673648299543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A057428 n + 1 + (n : ℤ)).toNat

end

end A059365.P17369754673648299543

namespace A059365

/-- `A106566(A057428(n)+1+n)` -/
def P17369754673648299543.Spec : Prop :=
  ∀ n, P17369754673648299543.a n = A059365 n

end A059365

/-! ## A059365.P1200405774567507943

`A106566(A134824(n)+1+n)`
-/

namespace A059365.P1200405774567507943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A134824 n + 1 + (n : ℤ)).toNat

end

end A059365.P1200405774567507943

namespace A059365

/-- `A106566(A134824(n)+1+n)` -/
def P1200405774567507943.Spec : Prop :=
  ∀ n, P1200405774567507943.a n = A059365 n

end A059365

/-! ## A059365.P3253858288830752690

`A106566(1-A057427(n)+n)`
-/

namespace A059365.P3253858288830752690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (1 - A057427 n + (n : ℤ)).toNat

end

end A059365.P3253858288830752690

namespace A059365

/-- `A106566(1-A057427(n)+n)` -/
def P3253858288830752690.Spec : Prop :=
  ∀ n, P3253858288830752690.a n = A059365 n

end A059365

/-! ## A059365.P948251753246173863

`A106566(1-(A057427(n)-n))`
-/

namespace A059365.P948251753246173863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (1 - (A057427 n - (n : ℤ))).toNat

end

end A059365.P948251753246173863

namespace A059365

/-- `A106566(1-(A057427(n)-n))` -/
def P948251753246173863.Spec : Prop :=
  ∀ n, P948251753246173863.a n = A059365 n

end A059365

/-! ## A059365.P8886374301744391017

`A106566(A036987(2*n)+n)`
-/

namespace A059365.P8886374301744391017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A036987 (2 * n) + (n : ℤ)).toNat

end

end A059365.P8886374301744391017

namespace A059365

/-- `A106566(A036987(2*n)+n)` -/
def P8886374301744391017.Spec : Prop :=
  ∀ n, P8886374301744391017.a n = A059365 n

end A059365

/-! ## A059365.P3240348433647837123

`A106566(n)-A036987(2*n)`
-/

namespace A059365.P3240348433647837123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n - A036987 (2 * n)

end

end A059365.P3240348433647837123

namespace A059365

/-- `A106566(n)-A036987(2*n)` -/
def P3240348433647837123.Spec : Prop :=
  ∀ n, P3240348433647837123.a n = A059365 n

end A059365

/-! ## A059365.P10344156744740519285

`n/A066182(n+1)*A106566(n)`
-/

namespace A059365.P10344156744740519285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A066182 (n + 1) : ℚ) * (A106566 n : ℚ)

end

end A059365.P10344156744740519285

namespace A059365

/-- `n/A066182(n+1)*A106566(n)` -/
def P10344156744740519285.Spec : Prop :=
  ∀ n, P10344156744740519285.a n = (A059365 n : ℚ)

end A059365

/-! ## A059365.P6825805865482186539

`A106566(A171950(n+2))`
-/

namespace A059365.P6825805865482186539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A171950 (n + 2)).toNat

end

end A059365.P6825805865482186539

namespace A059365

/-- `A106566(A171950(n+2))` -/
def P6825805865482186539.Spec : Prop :=
  ∀ n, P6825805865482186539.a n = A059365 n

end A059365

/-! ## A059365.P13239831414185031220

`A106566(A066182(n+1))`
-/

namespace A059365.P13239831414185031220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A066182 (n + 1)).toNat

end

end A059365.P13239831414185031220

namespace A059365

/-- `A106566(A066182(n+1))` -/
def P13239831414185031220.Spec : Prop :=
  ∀ n, P13239831414185031220.a n = A059365 n

end A059365

/-!
# A059366: Triangle T(m,s), m >= 0, 0 <= s <= m, arising in the computation of certain integrals.

The programs for A059366, the canonical program `A059366.P10743554084252611164` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059366 has offset 0).

The definition of A059366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059366.P10743554084252611164

`A000984(col(n))*A000984(row(n)-col(n))*A000142(row(n))/A000079(row(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059366

/-- `A000984(col(n))*A000984(row(n)-col(n))*A000142(row(n))/A000079(row(n))` -/
def P10743554084252611164.Spec : Prop :=
  ∀ n, P10743554084252611164.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P14573275571131716989

`(2*row(n)-(2*col(n)+1))*T(n-1,k)+(2*col(n)-1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A059366.P14573275571131716989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n + 1 : ℤ)) * SequenceMachineLib.triUp a n + ((2 * SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUpLeft a n

end

end A059366.P14573275571131716989

namespace A059366

/-- `(2*row(n)-(2*col(n)+1))*T(n-1,k)+(2*col(n)-1)*T(n-1,k-1)` -/
def P14573275571131716989.Spec : Prop :=
  ∀ n, P14573275571131716989.a n = A059366 n

end A059366

/-! ## A059366.P8589930901197825332

`A007318(n)*A173424(n)`
-/

namespace A059366.P8589930901197825332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A173424 n

end

end A059366.P8589930901197825332

namespace A059366

/-- `A007318(n)*A173424(n)` -/
def P8589930901197825332.Spec : Prop :=
  ∀ n, P8589930901197825332.a n = A059366 n

end A059366

/-! ## A059366.P6772543631928925152

`A085881(n)/A086645(n)*A007318(n)`
-/

namespace A059366.P6772543631928925152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085881 n : ℚ) / (A086645 n : ℚ) * (A007318 n : ℚ)

end

end A059366.P6772543631928925152

namespace A059366

/-- `A085881(n)/A086645(n)*A007318(n)` -/
def P6772543631928925152.Spec : Prop :=
  ∀ n, P6772543631928925152.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P17663706798278161539

`A008459(n)/A155495(n)*A085881(n)`
-/

namespace A059366.P17663706798278161539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℚ) / (A155495 n : ℚ) * (A085881 n : ℚ)

end

end A059366.P17663706798278161539

namespace A059366

/-- `A008459(n)/A155495(n)*A085881(n)` -/
def P17663706798278161539.Spec : Prop :=
  ∀ n, P17663706798278161539.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P6107810352719336634

`A085881(n)/A123162(n)*A135225(n)`
-/

namespace A059366.P6107810352719336634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085881 n : ℚ) / (A123162 n : ℚ) * (A135225 n : ℚ)

end

end A059366.P6107810352719336634

namespace A059366

/-- `A085881(n)/A123162(n)*A135225(n)` -/
def P6107810352719336634.Spec : Prop :=
  ∀ n, P6107810352719336634.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P11324048675637768711

`(A014473(n)+1)*A085881(n)/A086645(n)`
-/

namespace A059366.P11324048675637768711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1 : ℚ) * ((A085881 n : ℚ) / (A086645 n : ℚ))

end

end A059366.P11324048675637768711

namespace A059366

/-- `(A014473(n)+1)*A085881(n)/A086645(n)` -/
def P11324048675637768711.Spec : Prop :=
  ∀ n, P11324048675637768711.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P8035653985764703036

`A007318(n)/A103327(n)*A380281(n)`
-/

namespace A059366.P8035653985764703036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A103327 n : ℚ) * (A380281 n : ℚ)

end

end A059366.P8035653985764703036

namespace A059366

/-- `A007318(n)/A103327(n)*A380281(n)` -/
def P8035653985764703036.Spec : Prop :=
  ∀ n, P8035653985764703036.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P10852389418389913742

`A007318(n+1)/A091042(n+1)*A380281(n)`
-/

namespace A059366.P10852389418389913742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (n + 1) : ℚ) / (A091042 (n + 1) : ℚ) * (A380281 n : ℚ)

end

end A059366.P10852389418389913742

namespace A059366

/-- `A007318(n+1)/A091042(n+1)*A380281(n)` -/
def P10852389418389913742.Spec : Prop :=
  ∀ n, P10852389418389913742.a n = (A059366 n : ℚ)

end A059366

/-! ## A059366.P7456365494666748322

`A007318(n)*∏{e}[A036561(n), A001147(#)]`
-/

namespace A059366.P7456365494666748322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001147 (Nat.factorization (f1 n).natAbs p))

end

end A059366.P7456365494666748322

namespace A059366

/-- `A007318(n)*∏{e}[A036561(n), A001147(#)]` -/
def P7456365494666748322.Spec : Prop :=
  ∀ n, P7456365494666748322.a n = A059366 n

end A059366

/-!
# A059367: From solution to x = tan x (next term is not an integer).

The programs for A059367, there is no canonical definition to state claims against.
-/

/-! ## A059367.P10755906212995101988

`A079330(n+1)*A102316(n)`
-/

namespace A059367.P10755906212995101988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079330 (n + 1) * A102316 n

end

end A059367.P10755906212995101988

/-!
# A059369: Triangle of numbers T(n,k) = T(n-1,k-1) + ((n+k-1)/k)*T(n-1,k), n >= 1, 1 <= k <= n, with T(n,1) = n!, T(n,n) = 1; read from right to left.

The programs for A059369, there is no canonical definition to state claims against.
-/

/-! ## A059369.P5112035273469437630

`A090238(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A059369.P5112035273469437630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A059369.P5112035273469437630

/-! ## A059369.P140312073027625387

`A033877(n+1)+A000122(A276955(2*n+3))`
-/

namespace A059369.P140312073027625387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (n + 1) + A000122 (A276955 (2 * n + 3)).toNat

end

end A059369.P140312073027625387

/-! ## A059369.P1321167772500062679

`A351870(A033877(n+1))%A311319(2*(n+1))`
-/

namespace A059369.P1321167772500062679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351870 (A033877 (n + 1)).toNat) (A311319 (2 * (n + 1)))

end

end A059369.P1321167772500062679

/-! ## A059369.P14070571448689293130

`A265537(lcm(A121757(n), A152060(n)))`
-/

namespace A059369.P14070571448689293130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 (Int.lcm (A121757 n) (A152060 n))

end

end A059369.P14070571448689293130

/-! ## A059369.P1906722012077603416

`A033909(A000032(n))+A033877(n+1)`
-/

namespace A059369.P1906722012077603416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033909 (A000032 n).toNat + A033877 (n + 1)

end

end A059369.P1906722012077603416

/-!
# A059370: Triangle of numbers obtained by inverting infinite matrix defined in A059369, read from right to left.

The programs for A059370, there is no canonical definition to state claims against.
-/

/-! ## A059370.P5343174840660447211

`A152060(n)-A078926(A148538(n))`
-/

namespace A059370.P5343174840660447211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152060 n - A078926 (A148538 n).toNat

end

end A059370.P5343174840660447211

/-!
# A059371: a(n) = (n-1)! + ((n+1)/2)*a(n-1), a(1)=0.

The programs for A059371, the canonical program `A059371.P8415874592198715895` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059371 has offset 2).

The definition of A059371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059371.P8415874592198715895

`(n+1)!+(n+3)/2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059371

/-- `(n+1)!+(n+3)/2*a(n-1)` -/
def P8415874592198715895.Spec : Prop :=
  ∀ n, P8415874592198715895.a n = (A059371 (n + 2) : ℚ)

end A059371

/-! ## A059371.P16371379886743277951

`A059369(∑[n+2])`
-/

namespace A059371.P16371379886743277951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059371.P16371379886743277951

namespace A059371

/-- `A059369(∑[n+2])` -/
def P16371379886743277951.Spec : Prop :=
  ∀ n, P16371379886743277951.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P2921423669991195192

`record[A059369(A061579(n+1))]`
-/

namespace A059371.P2921423669991195192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059369 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059371.P2921423669991195192

namespace A059371

/-- `record[A059369(A061579(n+1))]` -/
def P2921423669991195192.Spec : Prop :=
  ∀ n, P2921423669991195192.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P1040445067726015778

`record[A059369(A101881(lcm(2, n)/2))]`
-/

namespace A059371.P1040445067726015778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059369 (A101881 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059371.P1040445067726015778

namespace A059371

/-- `record[A059369(A101881(lcm(2, n)/2))]` -/
def P1040445067726015778.Spec : Prop :=
  ∀ n, P1040445067726015778.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P11160913768799661983

`record[A033999(A025581(n))*A059369(n+2)]`
-/

namespace A059371.P11160913768799661983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A059369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059371.P11160913768799661983

namespace A059371

/-- `record[A033999(A025581(n))*A059369(n+2)]` -/
def P11160913768799661983.Spec : Prop :=
  ∀ n, P11160913768799661983.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P5299340860516160505

`record[A003149(n)-A052849(n)]`
-/

namespace A059371.P5299340860516160505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 n - A052849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059371.P5299340860516160505

namespace A059371

/-- `record[A003149(n)-A052849(n)]` -/
def P5299340860516160505.Spec : Prop :=
  ∀ n, P5299340860516160505.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P10279540840197135233

`A090238(A000124(n+2)+1)`
-/

namespace A059371.P10279540840197135233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 (A000124 (n + 2) + 1).toNat

end

end A059371.P10279540840197135233

namespace A059371

/-- `A090238(A000124(n+2)+1)` -/
def P10279540840197135233.Spec : Prop :=
  ∀ n, P10279540840197135233.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P14251628831167685225

`A090238(A000217(n+2)+2)`
-/

namespace A059371.P14251628831167685225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 (A000217 (n + 2) + 2).toNat

end

end A059371.P14251628831167685225

namespace A059371

/-- `A090238(A000217(n+2)+2)` -/
def P14251628831167685225.Spec : Prop :=
  ∀ n, P14251628831167685225.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P17260015458798561612

`A136128(n+2)-A000142(n+2)`
-/

namespace A059371.P17260015458798561612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136128 (n + 2) - A000142 (n + 2)

end

end A059371.P17260015458798561612

namespace A059371

/-- `A136128(n+2)-A000142(n+2)` -/
def P17260015458798561612.Spec : Prop :=
  ∀ n, P17260015458798561612.a n = A059371 (n + 2)

end A059371

/-! ## A059371.P9493888624219876107

`A003149(n+2)%A000142(n+2)`
-/

namespace A059371.P9493888624219876107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003149 (n + 2)) (A000142 (n + 2))

end

end A059371.P9493888624219876107

namespace A059371

/-- `A003149(n+2)%A000142(n+2)` -/
def P9493888624219876107.Spec : Prop :=
  ∀ n, P9493888624219876107.a n = A059371 (n + 2)

end A059371

/-!
# A059372: Revert transform of factorials n! (n >= 1).

The programs for A059372, there is no canonical definition to state claims against.
-/

/-! ## A059372.P15758098464817769793

`A059370(∑[n]+n)`
-/

namespace A059372.P15758098464817769793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059372.P15758098464817769793

/-! ## A059372.P17669414977560738518

`A059370(A000096(n))^A178334(n)`
-/

namespace A059372.P17669414977560738518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059370 (A000096 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A059372.P17669414977560738518

/-! ## A059372.P8132791529514497527

`A059370(A000096(n))+A017817(A178334(n)+1)`
-/

namespace A059372.P8132791529514497527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (A000096 n).toNat + A017817 (A178334 n + 1).toNat

end

end A059372.P8132791529514497527

/-! ## A059372.P16341239880778919378

`A059370(A000096(n))*A214269(A178334(n)+1)`
-/

namespace A059372.P16341239880778919378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (A000096 n).toNat * A214269 (A178334 n + 1).toNat

end

end A059372.P16341239880778919378

/-! ## A059372.P18426869271301656902

`A059370(A000096(n))*A214664(A178334(n)+1)`
-/

namespace A059372.P18426869271301656902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (A000096 n).toNat * A214664 (A178334 n + 1).toNat

end

end A059372.P18426869271301656902

/-!
# A059373: Second diagonal of triangle in A059370.

The programs for A059373, there is no canonical definition to state claims against.
-/

/-! ## A059373.P15289464499437569002

`A059370(∑[n+2]-1)`
-/

namespace A059373.P15289464499437569002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A059373.P15289464499437569002

/-! ## A059373.P15890704763276029419

`A059370(A034856(n+1))+floor(acot(n+1))`
-/

namespace A059373.P15890704763276029419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (A034856 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A059373.P15890704763276029419

/-! ## A059373.P10751086667191393605

`A059370(A034856(n+1))/A062157(n)^n`
-/

namespace A059373.P10751086667191393605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059370 (A034856 (n + 1)).toNat : ℚ) / (A062157 n ^ n : ℚ)

end

end A059373.P10751086667191393605

/-! ## A059373.P12451589706840040934

`A059370(A034856(n+1))+A266046(n+1)%2`
-/

namespace A059373.P12451589706840040934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (A034856 (n + 1)).toNat + Int.tmod (A266046 (n + 1)) 2

end

end A059373.P12451589706840040934

/-! ## A059373.P7826409623655419484

`A059370(A034856(n+1))+A062768(n+1)%6`
-/

namespace A059373.P7826409623655419484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059370 (A034856 (n + 1)).toNat + Int.tmod (A062768 (n + 1)) 6

end

end A059373.P7826409623655419484

/-! ## A059373.P3278109357944182468

`A059370(A034856(n+1))^(A062339(n+1)%2)`
-/

namespace A059373.P3278109357944182468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059370 (A034856 (n + 1)).toNat : ℚ) ^ (Int.tmod (A062339 (n + 1)) 2 : ℤ)

end

end A059373.P3278109357944182468

/-! ## A059373.P14231390564373505805

`A059370(A034856(n+1))^(floor(A141858(n+1)/13)%2)`
-/

namespace A059373.P14231390564373505805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059370 (A034856 (n + 1)).toNat : ℚ) ^ (Int.tmod ⌊(A141858 (n + 1) : ℚ) / 13⌋ 2 : ℤ)

end

end A059373.P14231390564373505805

/-! ## A059373.P16247276644463066605

`A059370(A034856(n+1))%∏[A000040(n+1)]`
-/

namespace A059373.P16247276644463066605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059370 (A034856 (n + 1)).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A059373.P16247276644463066605

/-!
# A059374: Triangle read by rows, T(n, k) = Sum_{i=0..n} L'(n, n-i) * binomial(i, k), for k = 0..n-1.

The programs for A059374, the canonical program `A059374.P8362716122805063671` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059374 has offset 1).

The definition of A059374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059374.P8362716122805063671

`A007318(n)*A206703(A007401(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059374

/-- `A007318(n)*A206703(A007401(n+1))` -/
def P8362716122805063671.Spec : Prop :=
  ∀ n, P8362716122805063671.a n = A059374 (n + 1)

theorem P8362716122805063671.correct : P8362716122805063671.Spec := by
  intro n
  simp only [A059374, Nat.add_sub_cancel]

end A059374

/-! ## A059374.P648789915214299576

`A056953(A099375(n))*A089231(n+1)`
-/

namespace A059374.P648789915214299576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A099375 n).toNat * A089231 (n + 1)

end

end A059374.P648789915214299576

namespace A059374

/-- `A056953(A099375(n))*A089231(n+1)` -/
def P648789915214299576.Spec : Prop :=
  ∀ n, P648789915214299576.a n = A059374 (n + 1)

end A059374

/-! ## A059374.P16810948664705301358

`abs(A130595(n)*A206703(A007401(n+1)))`
-/

namespace A059374.P16810948664705301358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A206703 (A007401 (n + 1)).toNat|

end

end A059374.P16810948664705301358

namespace A059374

/-- `abs(A130595(n)*A206703(A007401(n+1)))` -/
def P16810948664705301358.Spec : Prop :=
  ∀ n, P16810948664705301358.a n = A059374 (n + 1)

end A059374

/-! ## A059374.P11254142766812110370

`A000262(A004736(n+1))*A089231(n+1)`
-/

namespace A059374.P11254142766812110370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A004736 (n + 1)).toNat * A089231 (n + 1)

end

end A059374.P11254142766812110370

namespace A059374

/-- `A000262(A004736(n+1))*A089231(n+1)` -/
def P11254142766812110370.Spec : Prop :=
  ∀ n, P11254142766812110370.a n = A059374 (n + 1)

end A059374

/-! ## A059374.P13774406176883463393

`(A014473(n)+1)*A206703(A007401(n+1))`
-/

namespace A059374.P13774406176883463393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A206703 (A007401 (n + 1)).toNat

end

end A059374.P13774406176883463393

namespace A059374

/-- `(A014473(n)+1)*A206703(A007401(n+1))` -/
def P13774406176883463393.Spec : Prop :=
  ∀ n, P13774406176883463393.a n = A059374 (n + 1)

theorem P13774406176883463393.correct : P13774406176883463393.Spec := by
  intro n
  simp only [A059374, Nat.add_sub_cancel, A059374.P13774406176883463393.a, A059374.P8362716122805063671.a, A007318, A007318.P11755526479805562006.a, A007401, A007401.P15765701893365026453.a, A014473, A014473.P9301799580602651200.a, A206703, A206703.P5177746352387235024.a, A000262, A000262.P5795723230427946542.a, A008279, A008279.P8600957270209025573.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A059374

/-!
# A059375: Number of seating arrangements for the ménage problem.

The programs for A059375, there is no canonical definition to state claims against.
-/

/-! ## A059375.P12148156347590102659

`A094314(A000217(n))*A098558(n)`
-/

namespace A059375.P12148156347590102659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A000217 n).toNat * A098558 n

end

end A059375.P12148156347590102659

/-! ## A059375.P7657284530682427269

`A156995(A000124(n))*A335700(n)`
-/

namespace A059375.P7657284530682427269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156995 (A000124 n).toNat * A335700 n

end

end A059375.P7657284530682427269

/-! ## A059375.P14023635851018031488

`(A124355(n+1)+n!)*A335700(n)`
-/

namespace A059375.P14023635851018031488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124355 (n + 1) + (Nat.factorial n : ℤ)) * A335700 n

end

end A059375.P14023635851018031488

/-! ## A059375.P13603216260498494646

`(A124355(n+1)+A000142(n))*A335700(n)`
-/

namespace A059375.P13603216260498494646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124355 (n + 1) + A000142 n) * A335700 n

end

end A059375.P13603216260498494646

/-!
# A059376: Jordan function J_3(n).

The programs for A059376, the canonical program `A059376.P5447320199524870202` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059376 has offset 1).

The definition of A059376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059376.P5447320199524870202

`∑{d}[n+1, #^3*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059376

/-- `∑{d}[n+1, #^3*A008683((n+1)/#)]` -/
def P5447320199524870202.Spec : Prop :=
  ∀ n, P5447320199524870202.a n = A059376 (n + 1)

theorem P5447320199524870202.correct : P5447320199524870202.Spec := by
  intro n
  simp only [A059376, Nat.add_sub_cancel]

end A059376

/-! ## A059376.P9116177216389058330

`∑{#}[n, gcd(#+1, n+1)^3*cos(2*π*(#+1)/(n+1))]`
-/

namespace A059376.P9116177216389058330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) ^ 3 : ℝ) * Real.cos (2 * Real.pi * (k + 1 : ℝ) / (n + 1 : ℝ))

end

end A059376.P9116177216389058330

namespace A059376

/-- `∑{#}[n, gcd(#+1, n+1)^3*cos(2*π*(#+1)/(n+1))]` -/
def P9116177216389058330.Spec : Prop :=
  ∀ n, P9116177216389058330.a n = (A059376 (n + 1) : ℝ)

end A059376

/-! ## A059376.P10264841628395998751

`A115224(n+1)/(n+1)²`
-/

namespace A059376.P10264841628395998751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115224 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A059376.P10264841628395998751

namespace A059376

/-- `A115224(n+1)/(n+1)²` -/
def P10264841628395998751.Spec : Prop :=
  ∀ n, P10264841628395998751.a n = (A059376 (n + 1) : ℚ)

end A059376

/-! ## A059376.P4095473169969573019

`∑{d}[n+1, A008683((n+1)/#)*#^3]`
-/

namespace A059376.P4095473169969573019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 3 : ℤ)

end

end A059376.P4095473169969573019

namespace A059376

/-- `∑{d}[n+1, A008683((n+1)/#)*#^3]` -/
def P4095473169969573019.Spec : Prop :=
  ∀ n, P4095473169969573019.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P7603156294880580510

`A000010(n+1)*A160889(n+1)`
-/

namespace A059376.P7603156294880580510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160889 (n + 1)

end

end A059376.P7603156294880580510

namespace A059376

/-- `A000010(n+1)*A160889(n+1)` -/
def P7603156294880580510.Spec : Prop :=
  ∀ n, P7603156294880580510.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P15872933088014753497

`A069091(n+1)/A065959(n+1)`
-/

namespace A059376.P15872933088014753497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A065959 (n + 1) : ℚ)

end

end A059376.P15872933088014753497

namespace A059376

/-- `A069091(n+1)/A065959(n+1)` -/
def P15872933088014753497.Spec : Prop :=
  ∀ n, P15872933088014753497.a n = (A059376 (n + 1) : ℚ)

end A059376

/-! ## A059376.P3876458675268551248

`A115226(n+1)/A053191(n+1)`
-/

namespace A059376.P3876458675268551248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ)

end

end A059376.P3876458675268551248

namespace A059376

/-- `A115226(n+1)/A053191(n+1)` -/
def P3876458675268551248.Spec : Prop :=
  ∀ n, P3876458675268551248.a n = (A059376 (n + 1) : ℚ)

end A059376

/-! ## A059376.P3228465383894538259

`A069094(n+1)/A381713(n+1)`
-/

namespace A059376.P3228465383894538259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A381713 (n + 1) : ℚ)

end

end A059376.P3228465383894538259

namespace A059376

/-- `A069094(n+1)/A381713(n+1)` -/
def P3228465383894538259.Spec : Prop :=
  ∀ n, P3228465383894538259.a n = (A059376 (n + 1) : ℚ)

end A059376

/-! ## A059376.P2954931396222464237

`A160889(n+1)*A349137(Δ[n²])`
-/

namespace A059376.P2954931396222464237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160889 (n + 1) * A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059376.P2954931396222464237

namespace A059376

/-- `A160889(n+1)*A349137(Δ[n²])` -/
def P2954931396222464237.Spec : Prop :=
  ∀ n, P2954931396222464237.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P2106510325809544743

`sqrt(A127473(n+1))*A160889(n+1)`
-/

namespace A059376.P2106510325809544743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * (A160889 (n + 1) : ℝ)

end

end A059376.P2106510325809544743

namespace A059376

/-- `sqrt(A127473(n+1))*A160889(n+1)` -/
def P2106510325809544743.Spec : Prop :=
  ∀ n, P2106510325809544743.a n = (A059376 (n + 1) : ℝ)

end A059376

/-! ## A059376.P17372302671813838154

`∑{d}[n+1, A000010(#)*A000056((n+1)/#)]`
-/

namespace A059376.P17372302671813838154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P17372302671813838154

namespace A059376

/-- `∑{d}[n+1, A000010(#)*A000056((n+1)/#)]` -/
def P17372302671813838154.Spec : Prop :=
  ∀ n, P17372302671813838154.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P12656735072516275082

`∑{d}[n+1, A001158(#)*A007427((n+1)/#)]`
-/

namespace A059376.P12656735072516275082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P12656735072516275082

namespace A059376

/-- `∑{d}[n+1, A001158(#)*A007427((n+1)/#)]` -/
def P12656735072516275082.Spec : Prop :=
  ∀ n, P12656735072516275082.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P12152432715247680233

`∑{d}[n+1, A007434(#)*A053191((n+1)/#)]`
-/

namespace A059376.P12152432715247680233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P12152432715247680233

namespace A059376

/-- `∑{d}[n+1, A007434(#)*A053191((n+1)/#)]` -/
def P12152432715247680233.Spec : Prop :=
  ∀ n, P12152432715247680233.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P2492138971675093359

`∑{d}[n+1, A050471(#)*A120630((n+1)/#)]`
-/

namespace A059376.P2492138971675093359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050471 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P2492138971675093359

namespace A059376

/-- `∑{d}[n+1, A050471(#)*A120630((n+1)/#)]` -/
def P2492138971675093359.Spec : Prop :=
  ∀ n, P2492138971675093359.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P8115847911398540711

`∑{d}[n+1, A065959(#)*A158522((n+1)/#)]`
-/

namespace A059376.P8115847911398540711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P8115847911398540711

namespace A059376

/-- `∑{d}[n+1, A065959(#)*A158522((n+1)/#)]` -/
def P8115847911398540711.Spec : Prop :=
  ∀ n, P8115847911398540711.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P18178055453090300151

`∑{d}[n+1, A007428(#)*A321140((n+1)/#)]`
-/

namespace A059376.P18178055453090300151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P18178055453090300151

namespace A059376

/-- `∑{d}[n+1, A007428(#)*A321140((n+1)/#)]` -/
def P18178055453090300151.Spec : Prop :=
  ∀ n, P18178055453090300151.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P5712463447341644135

`∑{d}[n+1, A007331(#)*A327276((n+1)/#)]`
-/

namespace A059376.P5712463447341644135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007331 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P5712463447341644135

namespace A059376

/-- `∑{d}[n+1, A007331(#)*A327276((n+1)/#)]` -/
def P5712463447341644135.Spec : Prop :=
  ∀ n, P5712463447341644135.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P1549858401217688926

`∑{d}[n+1, A020478(#)*A328502((n+1)/#)]`
-/

namespace A059376.P1549858401217688926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020478 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P1549858401217688926

namespace A059376

/-- `∑{d}[n+1, A020478(#)*A328502((n+1)/#)]` -/
def P1549858401217688926.Spec : Prop :=
  ∀ n, P1549858401217688926.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P5974190601039804136

`∑{d}[n+1, A046692(#)*A328259((n+1)/#)]`
-/

namespace A059376.P5974190601039804136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P5974190601039804136

namespace A059376

/-- `∑{d}[n+1, A046692(#)*A328259((n+1)/#)]` -/
def P5974190601039804136.Spec : Prop :=
  ∀ n, P5974190601039804136.a n = A059376 (n + 1)

end A059376

/-! ## A059376.P13469908650169748314

`∑{d}[n+1, A067856(#)*A309337((n+1)/#)]`
-/

namespace A059376.P13469908650169748314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A309337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P13469908650169748314

namespace A059376

/-- `∑{d}[n+1, A067856(#)*A309337((n+1)/#)]` -/
def P13469908650169748314.Spec : Prop :=
  ∀ n, P13469908650169748314.a n = A059376 (n + 1)

end A059376

/-!
# A059377: Jordan function J_4(n).

The programs for A059377, the canonical program `A059377.P1722587021532700789` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059377 has offset 1).

The definition of A059377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059377.P1722587021532700789

`∑{d}[n+1, #^4*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059377

/-- `∑{d}[n+1, #^4*A008683((n+1)/#)]` -/
def P1722587021532700789.Spec : Prop :=
  ∀ n, P1722587021532700789.a n = A059377 (n + 1)

theorem P1722587021532700789.correct : P1722587021532700789.Spec := by
  intro n
  simp only [A059377, Nat.add_sub_cancel]

end A059377

/-! ## A059377.P11390282352140231139

`∑{#}[n, gcd(#+1, n+1)^4*cos(2*π*(#+1)/(n+1))]`
-/

namespace A059377.P11390282352140231139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) ^ 4 : ℝ) * Real.cos (2 * Real.pi * (k + 1 : ℝ) / (n + 1 : ℝ))

end

end A059377.P11390282352140231139

namespace A059377

/-- `∑{#}[n, gcd(#+1, n+1)^4*cos(2*π*(#+1)/(n+1))]` -/
def P11390282352140231139.Spec : Prop :=
  ∀ n, P11390282352140231139.a n = (A059377 (n + 1) : ℝ)

end A059377

/-! ## A059377.P1953091498933348770

`∑{d}[n+1, A008683((n+1)/#)*#^4]`
-/

namespace A059377.P1953091498933348770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 4 : ℤ)

end

end A059377.P1953091498933348770

namespace A059377

/-- `∑{d}[n+1, A008683((n+1)/#)*#^4]` -/
def P1953091498933348770.Spec : Prop :=
  ∀ n, P1953091498933348770.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P12535855344779664294

`A007434(n+1)*A065958(n+1)`
-/

namespace A059377.P12535855344779664294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A065958 (n + 1)

end

end A059377.P12535855344779664294

namespace A059377

/-- `A007434(n+1)*A065958(n+1)` -/
def P12535855344779664294.Spec : Prop :=
  ∀ n, P12535855344779664294.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P14182672836529312163

`A000010(n+1)*A160891(n+1)`
-/

namespace A059377.P14182672836529312163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160891 (n + 1)

end

end A059377.P14182672836529312163

namespace A059377

/-- `A000010(n+1)*A160891(n+1)` -/
def P14182672836529312163.Spec : Prop :=
  ∀ n, P14182672836529312163.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P1883463178857427239

`A069093(n+1)/A065960(n+1)`
-/

namespace A059377.P1883463178857427239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A065960 (n + 1) : ℚ)

end

end A059377.P1883463178857427239

namespace A059377

/-- `A069093(n+1)/A065960(n+1)` -/
def P1883463178857427239.Spec : Prop :=
  ∀ n, P1883463178857427239.a n = (A059377 (n + 1) : ℚ)

end A059377

/-! ## A059377.P4346818254889849577

`∑{d}[n+1, A001159(#)*A007427((n+1)/#)]`
-/

namespace A059377.P4346818254889849577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P4346818254889849577

namespace A059377

/-- `∑{d}[n+1, A001159(#)*A007427((n+1)/#)]` -/
def P4346818254889849577.Spec : Prop :=
  ∀ n, P4346818254889849577.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P13506696226226978638

`∑{d}[n+1, A050468(#)*A120630((n+1)/#)]`
-/

namespace A059377.P13506696226226978638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050468 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P13506696226226978638

namespace A059377

/-- `∑{d}[n+1, A050468(#)*A120630((n+1)/#)]` -/
def P13506696226226978638.Spec : Prop :=
  ∀ n, P13506696226226978638.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P5801779732781515876

`∑{d}[n+1, A065960(#)*A158522((n+1)/#)]`
-/

namespace A059377.P5801779732781515876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P5801779732781515876

namespace A059377

/-- `∑{d}[n+1, A065960(#)*A158522((n+1)/#)]` -/
def P5801779732781515876.Spec : Prop :=
  ∀ n, P5801779732781515876.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P12922559842172262913

`∑{d}[n+1, A059376(#)*A189393((n+1)/#)]`
-/

namespace A059377.P12922559842172262913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P12922559842172262913

namespace A059377

/-- `∑{d}[n+1, A059376(#)*A189393((n+1)/#)]` -/
def P12922559842172262913.Spec : Prop :=
  ∀ n, P12922559842172262913.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P499687664678852933

`∑{d}[n+1, A067856(#)*A309338((n+1)/#)]`
-/

namespace A059377.P499687664678852933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A309338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P499687664678852933

namespace A059377

/-- `∑{d}[n+1, A067856(#)*A309338((n+1)/#)]` -/
def P499687664678852933.Spec : Prop :=
  ∀ n, P499687664678852933.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P16245802357749908211

`∑{d}[n+1, A007434(#)*A379833((n+1)/#)]`
-/

namespace A059377.P16245802357749908211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P16245802357749908211

namespace A059377

/-- `∑{d}[n+1, A007434(#)*A379833((n+1)/#)]` -/
def P16245802357749908211.Spec : Prop :=
  ∀ n, P16245802357749908211.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P1964402260697477229

`∑{d}[n+1, A087003(#)*A309336((n+1)/#)]`
-/

namespace A059377.P1964402260697477229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P1964402260697477229

namespace A059377

/-- `∑{d}[n+1, A087003(#)*A309336((n+1)/#)]` -/
def P1964402260697477229.Spec : Prop :=
  ∀ n, P1964402260697477229.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P3037609202234627746

`∑{d}[n+1, A055615(#)*A343498((n+1)/#)]`
-/

namespace A059377.P3037609202234627746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P3037609202234627746

namespace A059377

/-- `∑{d}[n+1, A055615(#)*A343498((n+1)/#)]` -/
def P3037609202234627746.Spec : Prop :=
  ∀ n, P3037609202234627746.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P15395768882563671101

`∑{d}[n+1, A084218(#)*A321322((n+1)/#)]`
-/

namespace A059377.P15395768882563671101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P15395768882563671101

namespace A059377

/-- `∑{d}[n+1, A084218(#)*A321322((n+1)/#)]` -/
def P15395768882563671101.Spec : Prop :=
  ∀ n, P15395768882563671101.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P11833071765899036145

`∑{d}[n+1, A053826(#)*A386013((n+1)/#)]`
-/

namespace A059377.P11833071765899036145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A386013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P11833071765899036145

namespace A059377

/-- `∑{d}[n+1, A053826(#)*A386013((n+1)/#)]` -/
def P11833071765899036145.Spec : Prop :=
  ∀ n, P11833071765899036145.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P16756072918881310873

`∑{d}[n+1, A284900(#)*A327274((n+1)/#)]`
-/

namespace A059377.P16756072918881310873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284900 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P16756072918881310873

namespace A059377

/-- `∑{d}[n+1, A284900(#)*A327274((n+1)/#)]` -/
def P16756072918881310873.Spec : Prop :=
  ∀ n, P16756072918881310873.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P7256256587104534056

`∑{d}[n+1, A285989(#)*A327276((n+1)/#)]`
-/

namespace A059377.P7256256587104534056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285989 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P7256256587104534056

namespace A059377

/-- `∑{d}[n+1, A285989(#)*A327276((n+1)/#)]` -/
def P7256256587104534056.Spec : Prop :=
  ∀ n, P7256256587104534056.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P10396231840211796064

`∑{d}[n+1, A334657(#)*A372926((n+1)/#)]`
-/

namespace A059377.P10396231840211796064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P10396231840211796064

namespace A059377

/-- `∑{d}[n+1, A334657(#)*A372926((n+1)/#)]` -/
def P10396231840211796064.Spec : Prop :=
  ∀ n, P10396231840211796064.a n = A059377 (n + 1)

end A059377

/-! ## A059377.P18363433233642244671

`∑{d}[n+1, A334659(#)*A372929((n+1)/#)]`
-/

namespace A059377.P18363433233642244671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334659 d * A372929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P18363433233642244671

namespace A059377

/-- `∑{d}[n+1, A334659(#)*A372929((n+1)/#)]` -/
def P18363433233642244671.Spec : Prop :=
  ∀ n, P18363433233642244671.a n = A059377 (n + 1)

end A059377

/-!
# A059378: Jordan function J_5(n).

The programs for A059378, the canonical program `A059378.P9320877882506427640` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059378 has offset 1).

The definition of A059378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059378.P9320877882506427640

`∑{d}[n+1, #^5*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059378

/-- `∑{d}[n+1, #^5*A008683((n+1)/#)]` -/
def P9320877882506427640.Spec : Prop :=
  ∀ n, P9320877882506427640.a n = A059378 (n + 1)

theorem P9320877882506427640.correct : P9320877882506427640.Spec := by
  intro n
  simp only [A059378, Nat.add_sub_cancel]

end A059378

/-! ## A059378.P10080898400966414172

`∑{d}[n+1, A008683((n+1)/#)*#^5]`
-/

namespace A059378.P10080898400966414172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 5 : ℤ)

end

end A059378.P10080898400966414172

namespace A059378

/-- `∑{d}[n+1, A008683((n+1)/#)*#^5]` -/
def P10080898400966414172.Spec : Prop :=
  ∀ n, P10080898400966414172.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P15528224625294844527

`A000010(n+1)*A160893(n+1)`
-/

namespace A059378.P15528224625294844527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160893 (n + 1)

end

end A059378.P15528224625294844527

namespace A059378

/-- `A000010(n+1)*A160893(n+1)` -/
def P15528224625294844527.Spec : Prop :=
  ∀ n, P15528224625294844527.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P13261112300429651711

`A069095(n+1)/A351300(n+1)`
-/

namespace A059378.P13261112300429651711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A351300 (n + 1) : ℚ)

end

end A059378.P13261112300429651711

namespace A059378

/-- `A069095(n+1)/A351300(n+1)` -/
def P13261112300429651711.Spec : Prop :=
  ∀ n, P13261112300429651711.a n = (A059378 (n + 1) : ℚ)

end A059378

/-! ## A059378.P847336418425473705

`∑{d}[n+1, A001160(#)*A007427((n+1)/#)]`
-/

namespace A059378.P847336418425473705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P847336418425473705

namespace A059378

/-- `∑{d}[n+1, A001160(#)*A007427((n+1)/#)]` -/
def P847336418425473705.Spec : Prop :=
  ∀ n, P847336418425473705.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P15557299653644984538

`∑{d}[n+1, A007434(#)*A115224((n+1)/#)]`
-/

namespace A059378.P15557299653644984538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P15557299653644984538

namespace A059378

/-- `∑{d}[n+1, A007434(#)*A115224((n+1)/#)]` -/
def P15557299653644984538.Spec : Prop :=
  ∀ n, P15557299653644984538.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P4682829445941154383

`∑{d}[n+1, A059377(#)*A238533((n+1)/#)]`
-/

namespace A059378.P4682829445941154383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059377 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P4682829445941154383

namespace A059378

/-- `∑{d}[n+1, A059377(#)*A238533((n+1)/#)]` -/
def P4682829445941154383.Spec : Prop :=
  ∀ n, P4682829445941154383.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P430269520942831919

`∑{d}[n+1, A055615(#)*A343499((n+1)/#)]`
-/

namespace A059378.P430269520942831919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343499 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P430269520942831919

namespace A059378

/-- `∑{d}[n+1, A055615(#)*A343499((n+1)/#)]` -/
def P430269520942831919.Spec : Prop :=
  ∀ n, P430269520942831919.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P10506115492388621676

`∑{d}[n+1, A096960(#)*A327276((n+1)/#)]`
-/

namespace A059378.P10506115492388621676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096960 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P10506115492388621676

namespace A059378

/-- `∑{d}[n+1, A096960(#)*A327276((n+1)/#)]` -/
def P10506115492388621676.Spec : Prop :=
  ∀ n, P10506115492388621676.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P13205502154136896903

`∑{d}[n+1, A120630(#)*A321829((n+1)/#)]`
-/

namespace A059378.P13205502154136896903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P13205502154136896903

namespace A059378

/-- `∑{d}[n+1, A120630(#)*A321829((n+1)/#)]` -/
def P13205502154136896903.Spec : Prop :=
  ∀ n, P13205502154136896903.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P17140669525575687198

`∑{d}[n+1, A158522(#)*A351300((n+1)/#)]`
-/

namespace A059378.P17140669525575687198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A351300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P17140669525575687198

namespace A059378

/-- `∑{d}[n+1, A158522(#)*A351300((n+1)/#)]` -/
def P17140669525575687198.Spec : Prop :=
  ∀ n, P17140669525575687198.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P16323079695702221229

`∑{d}[n+1, A284926(#)*A327274((n+1)/#)]`
-/

namespace A059378.P16323079695702221229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284926 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P16323079695702221229

namespace A059378

/-- `∑{d}[n+1, A284926(#)*A327274((n+1)/#)]` -/
def P16323079695702221229.Spec : Prop :=
  ∀ n, P16323079695702221229.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P14819719415441004566

`∑{d}[n+1, A321322(#)*A372962((n+1)/#)]`
-/

namespace A059378.P14819719415441004566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P14819719415441004566

namespace A059378

/-- `∑{d}[n+1, A321322(#)*A372962((n+1)/#)]` -/
def P14819719415441004566.Spec : Prop :=
  ∀ n, P14819719415441004566.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P2832002469117475478

`∑{d}[n+1, A334657(#)*A372927((n+1)/#)]`
-/

namespace A059378.P2832002469117475478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A372927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P2832002469117475478

namespace A059378

/-- `∑{d}[n+1, A334657(#)*A372927((n+1)/#)]` -/
def P2832002469117475478.Spec : Prop :=
  ∀ n, P2832002469117475478.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P10331407189745304899

`∑{d}[n+1, A334659(#)*A372930((n+1)/#)]`
-/

namespace A059378.P10331407189745304899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334659 d * A372930 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P10331407189745304899

namespace A059378

/-- `∑{d}[n+1, A334659(#)*A372930((n+1)/#)]` -/
def P10331407189745304899.Spec : Prop :=
  ∀ n, P10331407189745304899.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P15020619741020698625

`∑{d}[n+1, A334660(#)*A372937((n+1)/#)]`
-/

namespace A059378.P15020619741020698625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334660 d * A372937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P15020619741020698625

namespace A059378

/-- `∑{d}[n+1, A334660(#)*A372937((n+1)/#)]` -/
def P15020619741020698625.Spec : Prop :=
  ∀ n, P15020619741020698625.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P7549957226682637783

`(A002088(n+1)-A002088(n))*A160893(n+1)`
-/

namespace A059378.P7549957226682637783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A160893 (n + 1)

end

end A059378.P7549957226682637783

namespace A059378

/-- `(A002088(n+1)-A002088(n))*A160893(n+1)` -/
def P7549957226682637783.Spec : Prop :=
  ∀ n, P7549957226682637783.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P9259886325931134877

`∑{d}[n+1, A053826(#)*A280022((n+1)/#)]`
-/

namespace A059378.P9259886325931134877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A280022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P9259886325931134877

namespace A059378

/-- `∑{d}[n+1, A053826(#)*A280022((n+1)/#)]` -/
def P9259886325931134877.Spec : Prop :=
  ∀ n, P9259886325931134877.a n = A059378 (n + 1)

end A059378

/-! ## A059378.P15844401616338820315

`∑{d}[n+1, A053822(#)*A282099((n+1)/#)]`
-/

namespace A059378.P15844401616338820315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A282099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P15844401616338820315

namespace A059378

/-- `∑{d}[n+1, A053822(#)*A282099((n+1)/#)]` -/
def P15844401616338820315.Spec : Prop :=
  ∀ n, P15844401616338820315.a n = A059378 (n + 1)

end A059378

/-!
# A059379: Array of values of Jordan function J_k(n) read by antidiagonals (version 1).

The programs for A059379, there is no canonical definition to state claims against.
-/

/-! ## A059379.P10448168882329147646

`A106476(n)*A263950(n+1)`
-/

namespace A059379.P10448168882329147646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 n * A263950 (n + 1)

end

end A059379.P10448168882329147646

/-! ## A059379.P10258920743019551702

`A059380(A038722(n+1))`
-/

namespace A059379.P10258920743019551702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059380 (A038722 (n + 1)).toNat

end

end A059379.P10258920743019551702

/-! ## A059379.P14013834704557751295

`A059380(A061579(n)+1)`
-/

namespace A059379.P14013834704557751295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059380 (A061579 n + 1).toNat

end

end A059379.P14013834704557751295

/-! ## A059379.P4872448568777361847

`A059380(∑[A198954(n)]-n)`
-/

namespace A059379.P4872448568777361847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059380 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A059379.P4872448568777361847

/-! ## A059379.P14814439754137618341

`A059380(A114327(n)+1+n)`
-/

namespace A059379.P14814439754137618341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059380 (A114327 n + 1 + (n : ℤ)).toNat

end

end A059379.P14814439754137618341

/-! ## A059379.P11618644890725737098

`A059380(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A059379.P11618644890725737098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059380 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A059379.P11618644890725737098

/-!
# A059380: Array of values of Jordan function J_k(n) read by antidiagonals (version 2).

The programs for A059380, there is no canonical definition to state claims against.
-/

/-! ## A059380.P9144346002699460600

`A059379(A038722(n+1))`
-/

namespace A059380.P9144346002699460600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 (A038722 (n + 1)).toNat

end

end A059380.P9144346002699460600

/-! ## A059380.P7834385840970149081

`A059379(A061579(n)+1)`
-/

namespace A059380.P7834385840970149081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 (A061579 n + 1).toNat

end

end A059380.P7834385840970149081

/-! ## A059380.P2702490988648624529

`A059379(A002024(n+1)²-n)`
-/

namespace A059380.P2702490988648624529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A059380.P2702490988648624529

/-! ## A059380.P14039095350500931433

`A059379((1-A083920(n)+n)²-n)`
-/

namespace A059380.P14039095350500931433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 ((1 - A083920 n + (n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A059380.P14039095350500931433

/-! ## A059380.P10372471897838136959

`A059379(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A059380.P10372471897838136959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A059380.P10372471897838136959

/-!
# A059381: a(n) = Product_{i=1..n} J_2(i).

The programs for A059381, there is no canonical definition to state claims against.
-/

/-! ## A059381.P9481037210790782187

`A001088(n+1)*A175836(n+1)`
-/

namespace A059381.P9481037210790782187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001088 (n + 1) * A175836 (n + 1)

end

end A059381.P9481037210790782187

/-! ## A059381.P12501415723586455351

`∏[Δ[A321879(n)]]`
-/

namespace A059381.P12501415723586455351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059381.P12501415723586455351

/-! ## A059381.P4608433405592145569

`∏[A007434(n+1)]`
-/

namespace A059381.P4608433405592145569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059381.P4608433405592145569

/-! ## A059381.P10367906197195284577

`∏[A063659((n+1)²)]`
-/

namespace A059381.P10367906197195284577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059381.P10367906197195284577

/-! ## A059381.P4626733473776780026

`∏[A342693((n+1)²)]`
-/

namespace A059381.P4626733473776780026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342693 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059381.P4626733473776780026

/-!
# A059382: a(n) = Product_{i=1..n} J_3(i).

The programs for A059382, there is no canonical definition to state claims against.
-/

/-! ## A059382.P14748488647572758689

`∏[A059376(n+1)]`
-/

namespace A059382.P14748488647572758689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059382.P14748488647572758689

/-! ## A059382.P2859784211417869080

`∏[A059379(A167614(n+1))]`
-/

namespace A059382.P2859784211417869080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059382.P2859784211417869080

/-! ## A059382.P4164512555743966304

`∏[A000010(n+1)*A160889(n+1)]`
-/

namespace A059382.P4164512555743966304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059382.P4164512555743966304

/-! ## A059382.P12004155219019730266

`∏[A115226(n+1)/A053191(n+1)]`
-/

namespace A059382.P12004155219019730266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059382.P12004155219019730266

/-! ## A059382.P16531718464453775139

`∏[record[A059376(A050603(n))]]`
-/

namespace A059382.P16531718464453775139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059376 (A050603 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059382.P16531718464453775139

/-!
# A059383: a(n) = Product_{i=1..n} J_4(i).

The programs for A059383, there is no canonical definition to state claims against.
-/

/-! ## A059383.P2096089980186322318

`∏[A059377(n+1)]`
-/

namespace A059383.P2096089980186322318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059383.P2096089980186322318

/-! ## A059383.P7713931578097398511

`∏[record[A059377(A008619(n))]]`
-/

namespace A059383.P7713931578097398511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059383.P7713931578097398511

/-! ## A059383.P17347777349992489515

`∏[record[A059377(A008620(n))]]`
-/

namespace A059383.P17347777349992489515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (A008620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059383.P17347777349992489515

/-! ## A059383.P14146469399033325362

`∏[record[A059377(A028310(n))]]`
-/

namespace A059383.P14146469399033325362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059383.P14146469399033325362

/-! ## A059383.P7041806487607658654

`∏[record[A059377(A117910(n))]]`
-/

namespace A059383.P7041806487607658654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059383.P7041806487607658654

/-!
# A059384: a(n) = Product_{i=1..n} J_5(i).

The programs for A059384, there is no canonical definition to state claims against.
-/

/-! ## A059384.P12941288730151484164

`∏[A059378(n+1)]`
-/

namespace A059384.P12941288730151484164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059384.P12941288730151484164

/-!
# A059385: Expansion of e.g.f. sinh(cosh(x)-1), (even terms only).

The programs for A059385, there is no canonical definition to state claims against.
-/

/-! ## A059385.P13783970765064673569

`A005046(n)-A059386(n)`
-/

namespace A059385.P13783970765064673569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n - A059386 n

end

end A059385.P13783970765064673569

/-! ## A059385.P15378087628262246361

`A059386(n)-A260884(n)`
-/

namespace A059385.P15378087628262246361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059386 n - A260884 n

end

end A059385.P15378087628262246361

/-! ## A059385.P4149878498643019149

`(A005046(n)-A260884(n))/2`
-/

namespace A059385.P4149878498643019149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005046 n - A260884 n : ℚ) / 2

end

end A059385.P4149878498643019149

/-! ## A059385.P4088710754745331906

`A081557(abs(1-2*n))-A059386(n)`
-/

namespace A059385.P4088710754745331906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 |1 - (2 * n : ℤ)|.toNat - A059386 n

end

end A059385.P4088710754745331906

/-! ## A059385.P13674164550109138201

`A124321(C(Δ[n²], 2))-A059386(n)`
-/

namespace A059385.P13674164550109138201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2) - A059386 n

end

end A059385.P13674164550109138201

/-!
# A059386: Expansion of e.g.f. cosh(cosh(x)-1) (even powers only).

The programs for A059386, there is no canonical definition to state claims against.
-/

/-! ## A059386.P18378931799773149690

`A260884(n)+A059385(n)`
-/

namespace A059386.P18378931799773149690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260884 n + A059385 n

end

end A059386.P18378931799773149690

/-! ## A059386.P14825396399276340236

`A005046(n)-A059385(n)`
-/

namespace A059386.P14825396399276340236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n - A059385 n

end

end A059386.P14825396399276340236

/-! ## A059386.P10822272044200915289

`(A260884(n)+A005046(n))/2`
-/

namespace A059386.P10822272044200915289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260884 n + A005046 n : ℚ) / 2

end

end A059386.P10822272044200915289

/-! ## A059386.P6343192396463430542

`A081557(abs(1-2*n))-A059385(n)`
-/

namespace A059386.P6343192396463430542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 |1 - (2 * n : ℤ)|.toNat - A059385 n

end

end A059386.P6343192396463430542

/-! ## A059386.P4861786699184358636

`A124321(C(Δ[n²], 2))-A059385(n)`
-/

namespace A059386.P4861786699184358636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2) - A059385 n

end

end A059386.P4861786699184358636

/-!
# A059387: Jordan function J_n(6) (see A059379).

The programs for A059387, the canonical program `A059387.P10296164876162014752` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059387 has offset 0).

The definition of A059387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059387.P10296164876162014752

`(2^n-1)*(3^n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A059387

/-- `(2^n-1)*(3^n-1)` -/
def P10296164876162014752.Spec : Prop :=
  ∀ n, P10296164876162014752.a n = A059387 n

theorem P10296164876162014752.correct : P10296164876162014752.Spec := by
  intro n
  simp only [A059387]

end A059387

/-! ## A059387.P14643310200706244252

`ogf((2x-12x^3)/(1-12x+47x^2-72x^3+36x^4))`
-/

namespace A059387.P14643310200706244252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, -12] [1, -12, 47, -72, 36] n

end

end A059387.P14643310200706244252

namespace A059387

/-- `ogf((2x-12x^3)/(1-12x+47x^2-72x^3+36x^4))` -/
def P14643310200706244252.Spec : Prop :=
  ∀ n, P14643310200706244252.a n = A059387 n

end A059387

/-! ## A059387.P14753186038926652164

`A155611(n)-2^n`
-/

namespace A059387.P14753186038926652164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155611 n - (2 ^ n : ℤ)

end

end A059387.P14753186038926652164

namespace A059387

/-- `A155611(n)-2^n` -/
def P14753186038926652164.Spec : Prop :=
  ∀ n, P14753186038926652164.a n = A059387 n

end A059387

/-! ## A059387.P18200423839307053739

`A155597(n)-3^n`
-/

namespace A059387.P18200423839307053739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155597 n - (3 ^ n : ℤ)

end

end A059387.P18200423839307053739

namespace A059387

/-- `A155597(n)-3^n` -/
def P18200423839307053739.Spec : Prop :=
  ∀ n, P18200423839307053739.a n = A059387 n

end A059387

/-! ## A059387.P11554091725517316546

`A090021(n)+2^n-1`
-/

namespace A059387.P11554091725517316546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090021 n + ((2 ^ n : ℤ) - 1)

end

end A059387.P11554091725517316546

namespace A059387

/-- `A090021(n)+2^n-1` -/
def P11554091725517316546.Spec : Prop :=
  ∀ n, P11554091725517316546.a n = A059387 n

end A059387

/-! ## A059387.P1101211166863154260

`A248216(n)-(3^n-1)`
-/

namespace A059387.P1101211166863154260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 n - ((3 ^ n : ℤ) - 1)

end

end A059387.P1101211166863154260

namespace A059387

/-- `A248216(n)-(3^n-1)` -/
def P1101211166863154260.Spec : Prop :=
  ∀ n, P1101211166863154260.a n = A059387 n

end A059387

/-! ## A059387.P17443423392061826639

`6^n+1-A007689(n)`
-/

namespace A059387.P17443423392061826639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n + 1 : ℤ) - A007689 n

end

end A059387.P17443423392061826639

namespace A059387

/-- `6^n+1-A007689(n)` -/
def P17443423392061826639.Spec : Prop :=
  ∀ n, P17443423392061826639.a n = A059387 n

end A059387

/-! ## A059387.P2498641800599330878

`abs((2^n-1)*A024023(n))`
-/

namespace A059387.P2498641800599330878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 ^ n : ℤ) - 1) * A024023 n|

end

end A059387.P2498641800599330878

namespace A059387

/-- `abs((2^n-1)*A024023(n))` -/
def P2498641800599330878.Spec : Prop :=
  ∀ n, P2498641800599330878.a n = A059387 n

end A059387

/-! ## A059387.P1085433951973165173

`A062394(n)-(2^n+3^n)`
-/

namespace A059387.P1085433951973165173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n - (2 ^ n + 3 ^ n : ℤ)

end

end A059387.P1085433951973165173

namespace A059387

/-- `A062394(n)-(2^n+3^n)` -/
def P1085433951973165173.Spec : Prop :=
  ∀ n, P1085433951973165173.a n = A059387 n

end A059387

/-! ## A059387.P17010427823979092630

`6^n-2^n-(A000244(n)-1)`
-/

namespace A059387.P17010427823979092630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - (2 ^ n : ℤ) - (A000244 n - 1)

end

end A059387.P17010427823979092630

namespace A059387

/-- `6^n-2^n-(A000244(n)-1)` -/
def P17010427823979092630.Spec : Prop :=
  ∀ n, P17010427823979092630.a n = A059387 n

end A059387

/-! ## A059387.P16571786717293949835

`A074512(n)-A074526(n)`
-/

namespace A059387.P16571786717293949835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074512 n - A074526 n

end

end A059387.P16571786717293949835

namespace A059387

/-- `A074512(n)-A074526(n)` -/
def P16571786717293949835.Spec : Prop :=
  ∀ n, P16571786717293949835.a n = A059387 n

end A059387

/-! ## A059387.P11329241660929891281

`A074516(n)-A074527(n)`
-/

namespace A059387.P11329241660929891281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074516 n - A074527 n

end

end A059387.P11329241660929891281

namespace A059387

/-- `A074516(n)-A074527(n)` -/
def P11329241660929891281.Spec : Prop :=
  ∀ n, P11329241660929891281.a n = A059387 n

end A059387

/-! ## A059387.P17687514591868409836

`A248225(n)-A000225(n)`
-/

namespace A059387.P17687514591868409836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248225 n - A000225 n

end

end A059387.P17687514591868409836

namespace A059387

/-- `A248225(n)-A000225(n)` -/
def P17687514591868409836.Spec : Prop :=
  ∀ n, P17687514591868409836.a n = A059387 n

end A059387

/-! ## A059387.P17861904686890140255

`A000400(n)+1-A007689(n)`
-/

namespace A059387.P17861904686890140255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + (1 - A007689 n)

end

end A059387.P17861904686890140255

namespace A059387

/-- `A000400(n)+1-A007689(n)` -/
def P17861904686890140255.Spec : Prop :=
  ∀ n, P17861904686890140255.a n = A059387 n

end A059387

/-! ## A059387.P1062966280924781743

`A000400(n)+2-A001550(n)`
-/

namespace A059387.P1062966280924781743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + (2 - A001550 n)

end

end A059387.P1062966280924781743

namespace A059387

/-- `A000400(n)+2-A001550(n)` -/
def P1062966280924781743.Spec : Prop :=
  ∀ n, P1062966280924781743.a n = A059387 n

end A059387

/-! ## A059387.P4203897781019491684

`A024062(n)-(A024023(n)+A000225(n))`
-/

namespace A059387.P4203897781019491684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n - (A024023 n + A000225 n)

end

end A059387.P4203897781019491684

namespace A059387

/-- `A024062(n)-(A024023(n)+A000225(n))` -/
def P4203897781019491684.Spec : Prop :=
  ∀ n, P4203897781019491684.a n = A059387 n

end A059387

/-! ## A059387.P12080729198654764831

`A178681(n)-(A178674(n)+A052548(n))`
-/

namespace A059387.P12080729198654764831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178681 n - (A178674 n + A052548 n)

end

end A059387.P12080729198654764831

namespace A059387

/-- `A178681(n)-(A178674(n)+A052548(n))` -/
def P12080729198654764831.Spec : Prop :=
  ∀ n, P12080729198654764831.a n = A059387 n

end A059387

/-! ## A059387.P11177920047035928222

`A024023(n)+A000918(n)*A024023(n)`
-/

namespace A059387.P11177920047035928222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + A000918 n * A024023 n

end

end A059387.P11177920047035928222

namespace A059387

/-- `A024023(n)+A000918(n)*A024023(n)` -/
def P11177920047035928222.Spec : Prop :=
  ∀ n, P11177920047035928222.a n = A059387 n

theorem P11177920047035928222.correct : P11177920047035928222.Spec := by
  intro n
  simp only [A059387, Nat.add_sub_cancel, A059387.P11177920047035928222.a, A059387.P10296164876162014752.a, A000918, A000918.P14329454465793069288.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059387

/-! ## A059387.P1066375362982644351

`A248216(n)-A003462(n)-A003462(n)`
-/

namespace A059387.P1066375362982644351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 n - A003462 n - A003462 n

end

end A059387.P1066375362982644351

namespace A059387

/-- `A248216(n)-A003462(n)-A003462(n)` -/
def P1066375362982644351.Spec : Prop :=
  ∀ n, P1066375362982644351.a n = A059387 n

end A059387

/-! ## A059387.P18046630319926195422

`A000225(n)*A000244(n)-A000225(n)`
-/

namespace A059387.P18046630319926195422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A000244 n - A000225 n

end

end A059387.P18046630319926195422

namespace A059387

/-- `A000225(n)*A000244(n)-A000225(n)` -/
def P18046630319926195422.Spec : Prop :=
  ∀ n, P18046630319926195422.a n = A059387 n

theorem P18046630319926195422.correct : P18046630319926195422.Spec := by
  intro n
  simp only [A059387, Nat.add_sub_cancel, A059387.P18046630319926195422.a, A059387.P10296164876162014752.a, A000225, A000225.P6535533121115206393.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059387

/-!
# A059389: Sums of two nonzero Fibonacci numbers.

The programs for A059389, the canonical program `A059389.P7252088712234272494` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059389 has offset 1).

The definition of A059389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059389.P537476565902759040

`∪[A020695(n), A179242(n+1)]`
-/

namespace A059389.P537476565902759040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059389.P537476565902759040

namespace A059389

/-- `∪[A020695(n), A179242(n+1)]` -/
def P537476565902759040.Spec : Prop :=
  ∀ n, (P537476565902759040.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P7252088712234272494

`A131410(n+1)+a(A083920(n))` with `a(0)=2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059389

/-- `A131410(n+1)+a(A083920(n))` -/
def P7252088712234272494.Spec : Prop :=
  ∀ n, P7252088712234272494.a n = A059389 (n + 1)

theorem P7252088712234272494.correct : P7252088712234272494.Spec := by
  intro n
  simp only [A059389, Nat.add_sub_cancel]

end A059389

/-! ## A059389.P6426674716839681156

`∪[A068922(n+1), A078643(n+1)]`
-/

namespace A059389.P6426674716839681156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059389.P6426674716839681156

namespace A059389

/-- `∪[A068922(n+1), A078643(n+1)]` -/
def P6426674716839681156.Spec : Prop :=
  ∀ n, (P6426674716839681156.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P12401408933798703826

`∪[A078642(n+1), A078643(n+1)]`
-/

namespace A059389.P12401408933798703826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059389.P12401408933798703826

namespace A059389

/-- `∪[A078642(n+1), A078643(n+1)]` -/
def P12401408933798703826.Spec : Prop :=
  ∀ n, (P12401408933798703826.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P18243680407725728614

`∪[A078643(n+1), A169694(n+1)]`
-/

namespace A059389.P18243680407725728614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059389.P18243680407725728614

namespace A059389

/-- `∪[A078643(n+1), A169694(n+1)]` -/
def P18243680407725728614.Spec : Prop :=
  ∀ n, (P18243680407725728614.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P9543315010645247855

`∪[A078643(n+1), A179242(n+1)]`
-/

namespace A059389.P9543315010645247855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059389.P9543315010645247855

namespace A059389

/-- `∪[A078643(n+1), A179242(n+1)]` -/
def P9543315010645247855.Spec : Prop :=
  ∀ n, (P9543315010645247855.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P8868562570287267260

`∪[A078643(n+1), A272632(n+1)]`
-/

namespace A059389.P8868562570287267260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059389.P8868562570287267260

namespace A059389

/-- `∪[A078643(n+1), A272632(n+1)]` -/
def P8868562570287267260.Spec : Prop :=
  ∀ n, (P8868562570287267260.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P9843654726854964946

`A131410(n+1)+a(A122797(n+1)-1)` with `a(0)=2`
-/

namespace A059389.P9843654726854964946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131410 (n + 1) + a (A122797 (n + 1) - 1).toNat

end

end A059389.P9843654726854964946

namespace A059389

/-- `A131410(n+1)+a(A122797(n+1)-1)` -/
def P9843654726854964946.Spec : Prop :=
  ∀ n, P9843654726854964946.a n = A059389 (n + 1)

end A059389

/-! ## A059389.P8764034452343862237

`A084176(n+3)`
-/

namespace A059389.P8764034452343862237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 3)

end

end A059389.P8764034452343862237

namespace A059389

/-- `A084176(n+3)` -/
def P8764034452343862237.Spec : Prop :=
  ∀ n, P8764034452343862237.a n = A059389 (n + 1)

end A059389

/-! ## A059389.P6499706218067913291

`record[A141169(n+2)+A131410(n+1)]`
-/

namespace A059389.P6499706218067913291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (n + 2) + A131410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059389.P6499706218067913291

namespace A059389

/-- `record[A141169(n+2)+A131410(n+1)]` -/
def P6499706218067913291.Spec : Prop :=
  ∀ n, P6499706218067913291.a n = A059389 (n + 1)

end A059389

/-! ## A059389.P10561559613475296001

`record[A084176(A052938(A052938(n)))]`
-/

namespace A059389.P10561559613475296001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059389.P10561559613475296001

namespace A059389

/-- `record[A084176(A052938(A052938(n)))]` -/
def P10561559613475296001.Spec : Prop :=
  ∀ n, P10561559613475296001.a n = A059389 (n + 1)

end A059389

/-! ## A059389.P7514198392277692610

`eq[A004396(A104324(n))+1, A104324(n)]`
-/

namespace A059389.P7514198392277692610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104324 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059389.P7514198392277692610

namespace A059389

/-- `eq[A004396(A104324(n))+1, A104324(n)]` -/
def P7514198392277692610.Spec : Prop :=
  ∀ n, (P7514198392277692610.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P15535091772273937660

`lt[0, A319395(n)]`
-/

namespace A059389.P15535091772273937660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059389.P15535091772273937660

namespace A059389

/-- `lt[0, A319395(n)]` -/
def P15535091772273937660.Spec : Prop :=
  ∀ n, (P15535091772273937660.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P13957985307844260297

`eq[1, A026741(a(A319395(n)))]` with `a(0)=4`
-/

namespace A059389.P13957985307844260297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A026741 (f2 (A319395 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059389.P13957985307844260297

namespace A059389

/-- `eq[1, A026741(a(A319395(n)))]` -/
def P13957985307844260297.Spec : Prop :=
  ∀ n, (P13957985307844260297.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P4769540446573999511

`A319433(A179242(n+1))`
-/

namespace A059389.P4769540446573999511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A179242 (n + 1)).toNat

end

end A059389.P4769540446573999511

namespace A059389

/-- `A319433(A179242(n+1))` -/
def P4769540446573999511.Spec : Prop :=
  ∀ n, P4769540446573999511.a n = A059389 (n + 1)

end A059389

/-! ## A059389.P11238778951543860573

`eq[1, char[A131411(n+1)+1]]`
-/

namespace A059389.P11238778951543860573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059389.P11238778951543860573

namespace A059389

/-- `eq[1, char[A131411(n+1)+1]]` -/
def P11238778951543860573.Spec : Prop :=
  ∀ n, (P11238778951543860573.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P10854020655761699636

`lt[A007895(n)!, A104324(n)]`
-/

namespace A059389.P10854020655761699636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059389.P10854020655761699636

namespace A059389

/-- `lt[A007895(n)!, A104324(n)]` -/
def P10854020655761699636.Spec : Prop :=
  ∀ n, (P10854020655761699636.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P16353648941925581841

`lt[(n-A219641(n))!, A104324(n)]`
-/

namespace A059389.P16353648941925581841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - A219641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059389.P16353648941925581841

namespace A059389

/-- `lt[(n-A219641(n))!, A104324(n)]` -/
def P16353648941925581841.Spec : Prop :=
  ∀ n, (P16353648941925581841.a n : ℤ) = A059389 (n + 1)

end A059389

/-! ## A059389.P14516872869589975037

`lt[∑{digits}[A014417(n), #]!, A104324(n)]`
-/

namespace A059389.P14516872869589975037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A059389.P14516872869589975037

namespace A059389

/-- `lt[∑{digits}[A014417(n), #]!, A104324(n)]` -/
def P14516872869589975037.Spec : Prop :=
  ∀ n, (P14516872869589975037.a n : ℤ) = A059389 (n + 1)

end A059389

/-!
# A059390: Numbers that are not the sum of two nonzero Fibonacci numbers.

The programs for A059390, the canonical program `A059390.P1527196255180977362` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059390 has offset 1).

The definition of A059390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059390.P11722049792603862343

`lt[n*A319395(n), n]`
-/

namespace A059390.P11722049792603862343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A319395 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059390.P11722049792603862343

namespace A059390

/-- `lt[n*A319395(n), n]` -/
def P11722049792603862343.Spec : Prop :=
  ∀ n, (P11722049792603862343.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P1527196255180977362

`comp[A131411(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059390

/-- `comp[A131411(n+1)]+1` -/
def P1527196255180977362.Spec : Prop :=
  ∀ n, (P1527196255180977362.a n : ℤ) = A059390 (n + 1)

theorem P1527196255180977362.correct : P1527196255180977362.Spec := by
  intro n
  simp only [A059390, Nat.add_sub_cancel]

end A059390

/-! ## A059390.P2397252013716514026

`lt[A319395(n+1), 1]+1`
-/

namespace A059390.P2397252013716514026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A059390.P2397252013716514026

namespace A059390

/-- `lt[A319395(n+1), 1]+1` -/
def P2397252013716514026.Spec : Prop :=
  ∀ n, (P2397252013716514026.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P3950916329288968419

`comp[A059389(n+1)-1]+1`
-/

namespace A059390.P3950916329288968419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059390.P3950916329288968419

namespace A059390

/-- `comp[A059389(n+1)-1]+1` -/
def P3950916329288968419.Spec : Prop :=
  ∀ n, (P3950916329288968419.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P16385431273113370874

`eq[A063524(n), A359514(n)]`
-/

namespace A059390.P16385431273113370874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P16385431273113370874

namespace A059390

/-- `eq[A063524(n), A359514(n)]` -/
def P16385431273113370874.Spec : Prop :=
  ∀ n, (P16385431273113370874.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P9505983381180043053

`eq[A102460(n), A359514(n)]`
-/

namespace A059390.P9505983381180043053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P9505983381180043053

namespace A059390

/-- `eq[A102460(n), A359514(n)]` -/
def P9505983381180043053.Spec : Prop :=
  ∀ n, (P9505983381180043053.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P5136696663707457665

`eq[1, A319395(a(A319395(n)))]` with `a(0)=2`
-/

namespace A059390.P5136696663707457665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A319395 (f2 (A319395 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059390.P5136696663707457665

namespace A059390

/-- `eq[1, A319395(a(A319395(n)))]` -/
def P5136696663707457665.Spec : Prop :=
  ∀ n, (P5136696663707457665.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P8506975557444306013

`lt[A121549(n+1), 1]+1`
-/

namespace A059390.P8506975557444306013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121549 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A059390.P8506975557444306013

namespace A059390

/-- `lt[A121549(n+1), 1]+1` -/
def P8506975557444306013.Spec : Prop :=
  ∀ n, (P8506975557444306013.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P7931823925372110650

`eq[A000038(n), A319395(n)]`
-/

namespace A059390.P7931823925372110650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P7931823925372110650

namespace A059390

/-- `eq[A000038(n), A319395(n)]` -/
def P7931823925372110650.Spec : Prop :=
  ∀ n, (P7931823925372110650.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P8388346728225778469

`eq[and(1, A000122(n)), A319395(n)]`
-/

namespace A059390.P8388346728225778469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000122 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P8388346728225778469

namespace A059390

/-- `eq[and(1, A000122(n)), A319395(n)]` -/
def P8388346728225778469.Spec : Prop :=
  ∀ n, (P8388346728225778469.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P12357225930303136325

`eq[and(1, A102376(n)), A319395(n)]`
-/

namespace A059390.P12357225930303136325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A102376 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P12357225930303136325

namespace A059390

/-- `eq[and(1, A102376(n)), A319395(n)]` -/
def P12357225930303136325.Spec : Prop :=
  ∀ n, (P12357225930303136325.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P15362055696278577645

`eq[A000007(n), A319395(n)]`
-/

namespace A059390.P15362055696278577645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P15362055696278577645

namespace A059390

/-- `eq[A000007(n), A319395(n)]` -/
def P15362055696278577645.Spec : Prop :=
  ∀ n, (P15362055696278577645.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P4012153065554207913

`eq[A033322(n+1), A359514(n)]`
-/

namespace A059390.P4012153065554207913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P4012153065554207913

namespace A059390

/-- `eq[A033322(n+1), A359514(n)]` -/
def P4012153065554207913.Spec : Prop :=
  ∀ n, (P4012153065554207913.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P8379743108696218976

`eq[A069468(n+1), A359514(n)]`
-/

namespace A059390.P8379743108696218976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P8379743108696218976

namespace A059390

/-- `eq[A069468(n+1), A359514(n)]` -/
def P8379743108696218976.Spec : Prop :=
  ∀ n, (P8379743108696218976.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P18356439881109482109

`eq[A000122(A000122(n)+n), A319395(n)]`
-/

namespace A059390.P18356439881109482109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059390.P18356439881109482109

namespace A059390

/-- `eq[A000122(A000122(n)+n), A319395(n)]` -/
def P18356439881109482109.Spec : Prop :=
  ∀ n, (P18356439881109482109.a n : ℤ) = A059390 (n + 1)

end A059390

/-! ## A059390.P12163575798160612771

`comp[lt[A007895(n), 2%(n+1)+1]]`
-/

namespace A059390.P12163575798160612771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A059390.P12163575798160612771

namespace A059390

/-- `comp[lt[A007895(n), 2%(n+1)+1]]` -/
def P12163575798160612771.Spec : Prop :=
  ∀ n, (P12163575798160612771.a n : ℤ) = A059390 (n + 1)

end A059390

/-!
# A059393: Smallest possible sum of n positive integers g(1) < g(2) < ... < g(n) such that A001222(g(i)+g(j)) = A001222(g(i)) + A001222(g(j)) for all 1<=i<j<=n.

The programs for A059393, there is no canonical definition to state claims against.
-/

/-! ## A059393.P11746920267960243550

`A108690(∑[A130883(n)])`
-/

namespace A059393.P11746920267960243550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108690 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059393.P11746920267960243550

/-!
# A059394: Special safe primes (from A005385) such that the next prime is also a safe prime.

The programs for A059394, there is no canonical definition to state claims against.
-/

/-! ## A059394.P14873825866818938366

`∩[A005385(n+1), A000040(A266400(n+1))]`
-/

namespace A059394.P14873825866818938366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A266400 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059394.P14873825866818938366

/-! ## A059394.P2450345126943198831

`∩[A005385(n+1), A006005(A266400(n+2))]`
-/

namespace A059394.P2450345126943198831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A266400 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059394.P2450345126943198831

/-! ## A059394.P1514996724803880664

`∩[A077065(n+1)+1, A000040(A266400(n+1))]`
-/

namespace A059394.P1514996724803880664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A266400 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059394.P1514996724803880664

/-! ## A059394.P11675044276949669849

`A000040(∩[A266400(n+1)+1, A266400(n+1)])`
-/

namespace A059394.P11675044276949669849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266400 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266400 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A059394.P11675044276949669849

/-!
# A059395: Smaller of safe prime twins: special safe primes (A005385) p such that the next prime is also the next safe prime and is p+12, i.e., occurs at the closest possible distance, 12.

The programs for A059395, there is no canonical definition to state claims against.
-/

/-! ## A059395.P11897031122646830309

`∩[A059323(n+1), A059394(n+1)]`
-/

namespace A059395.P11897031122646830309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059395.P11897031122646830309

/-! ## A059395.P18031574415269754767

`∩[A005385(n+1)-12, A059394(n+1)]`
-/

namespace A059395.P18031574415269754767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059395.P18031574415269754767

/-! ## A059395.P8490016211594860496

`∩[A031930(n+1), A059323(n+1)]`
-/

namespace A059395.P8490016211594860496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059395.P8490016211594860496

/-! ## A059395.P14221968275779548149

`∩[A031930(n+1), A059394(n+1)]`
-/

namespace A059395.P14221968275779548149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059395.P14221968275779548149

/-! ## A059395.P4886054577723743760

`∩[A059323(n+1), A000040(A266400(n+1))]`
-/

namespace A059395.P4886054577723743760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A266400 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059395.P4886054577723743760

/-!
# A059396: Number of primes less than square root of n-th prime; i.e., number of trial divisions by smaller primes to show that n-th prime is indeed prime.

The programs for A059396, the canonical program `A059396.P16168764180705293964` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059396 has offset 1).

The definition of A059396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059396.P16168764180705293964

`A000720(A000196(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059396

/-- `A000720(A000196(A000040(n+1)))` -/
def P16168764180705293964.Spec : Prop :=
  ∀ n, P16168764180705293964.a n = A059396 (n + 1)

theorem P16168764180705293964.correct : P16168764180705293964.Spec := by
  intro n
  simp only [A059396, Nat.add_sub_cancel]

end A059396

/-! ## A059396.P13701198088565398366

`∑[char[∑[A050216(n)]]]`
-/

namespace A059396.P13701198088565398366
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P13701198088565398366

namespace A059396

/-- `∑[char[∑[A050216(n)]]]` -/
def P13701198088565398366.Spec : Prop :=
  ∀ n, (P13701198088565398366.a n : ℤ) = A059396 (n + 1)

end A059396

/-! ## A059396.P12571494721050990800

`∑[char[A000879(n+1)]]`
-/

namespace A059396.P12571494721050990800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P12571494721050990800

namespace A059396

/-- `∑[char[A000879(n+1)]]` -/
def P12571494721050990800.Spec : Prop :=
  ∀ n, (P12571494721050990800.a n : ℤ) = A059396 (n + 1)

end A059396

/-! ## A059396.P7872323676659429405

`∑[char[A062773(n+1)-1]]`
-/

namespace A059396.P7872323676659429405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P7872323676659429405

namespace A059396

/-- `∑[char[A062773(n+1)-1]]` -/
def P7872323676659429405.Spec : Prop :=
  ∀ n, (P7872323676659429405.a n : ℤ) = A059396 (n + 1)

end A059396

/-! ## A059396.P4758952825380068027

`∑[char[A054272(n+1)+n]]`
-/

namespace A059396.P4758952825380068027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P4758952825380068027

namespace A059396

/-- `∑[char[A054272(n+1)+n]]` -/
def P4758952825380068027.Spec : Prop :=
  ∀ n, (P4758952825380068027.a n : ℤ) = A059396 (n + 1)

end A059396

/-! ## A059396.P13972743628663987504

`A284263(1-a(n-1)+n)` with `a(0)=0`
-/

namespace A059396.P13972743628663987504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A284263 (1 - a (n - 1) + (n : ℤ)).toNat

end

end A059396.P13972743628663987504

namespace A059396

/-- `A284263(1-a(n-1)+n)` -/
def P13972743628663987504.Spec : Prop :=
  ∀ n, P13972743628663987504.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P8227193353622619851

`A284263(1-(a(n-1)-n))` with `a(0)=0`
-/

namespace A059396.P8227193353622619851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A284263 (1 - (a (n - 1) - (n : ℤ))).toNat

end

end A059396.P8227193353622619851

namespace A059396

/-- `A284263(1-(a(n-1)-n))` -/
def P8227193353622619851.Spec : Prop :=
  ∀ n, P8227193353622619851.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P9596609310762091080

`A000720(A000006(n+1))`
-/

namespace A059396.P9596609310762091080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000006 (n + 1)).toNat

end

end A059396.P9596609310762091080

namespace A059396

/-- `A000720(A000006(n+1))` -/
def P9596609310762091080.Spec : Prop :=
  ∀ n, P9596609310762091080.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P12179894628811707338

`A242096(A117767(n+1))`
-/

namespace A059396.P12179894628811707338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A117767 (n + 1)).toNat

end

end A059396.P12179894628811707338

namespace A059396

/-- `A242096(A117767(n+1))` -/
def P12179894628811707338.Spec : Prop :=
  ∀ n, P12179894628811707338.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P17776437476661843999

`A000720(n-A103416(n))`
-/

namespace A059396.P17776437476661843999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n : ℤ) - A103416 n).toNat

end

end A059396.P17776437476661843999

namespace A059396

/-- `A000720(n-A103416(n))` -/
def P17776437476661843999.Spec : Prop :=
  ∀ n, P17776437476661843999.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P2700769870299887886

`A000720(∑[char[A038107(n)]])`
-/

namespace A059396.P2700769870299887886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059396.P2700769870299887886

namespace A059396

/-- `A000720(∑[char[A038107(n)]])` -/
def P2700769870299887886.Spec : Prop :=
  ∀ n, P2700769870299887886.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P17703778838353800100

`∑[char[A038107(A151800(n))]]`
-/

namespace A059396.P17703778838353800100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A151800 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P17703778838353800100

namespace A059396

/-- `∑[char[A038107(A151800(n))]]` -/
def P17703778838353800100.Spec : Prop :=
  ∀ n, (P17703778838353800100.a n : ℤ) = A059396 (n + 1)

end A059396

/-! ## A059396.P1512602789134092647

`A000720(A104103(n+1)-1)`
-/

namespace A059396.P1512602789134092647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104103 (n + 1) - 1).toNat

end

end A059396.P1512602789134092647

namespace A059396

/-- `A000720(A104103(n+1)-1)` -/
def P1512602789134092647.Spec : Prop :=
  ∀ n, P1512602789134092647.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P12675156142368146257

`A230980(A104103(n+1)-1)`
-/

namespace A059396.P12675156142368146257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A104103 (n + 1) - 1).toNat

end

end A059396.P12675156142368146257

namespace A059396

/-- `A230980(A104103(n+1)-1)` -/
def P12675156142368146257.Spec : Prop :=
  ∀ n, P12675156142368146257.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P11199957268578881530

`A000720(A096494(n+1)/2)`
-/

namespace A059396.P11199957268578881530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A096494 (n + 1) : ℚ) / 2)).toNat

end

end A059396.P11199957268578881530

namespace A059396

/-- `A000720(A096494(n+1)/2)` -/
def P11199957268578881530.Spec : Prop :=
  ∀ n, P11199957268578881530.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P12586725153592405584

`A000720(floor(sqrt(A000040(n+1))))`
-/

namespace A059396.P12586725153592405584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A000040 (n + 1))).toNat

end

end A059396.P12586725153592405584

namespace A059396

/-- `A000720(floor(sqrt(A000040(n+1))))` -/
def P12586725153592405584.Spec : Prop :=
  ∀ n, P12586725153592405584.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P12787570555578116412

`A000720(floor(sqrt(A006093(n+1))))`
-/

namespace A059396.P12787570555578116412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A006093 (n + 1))).toNat

end

end A059396.P12787570555578116412

namespace A059396

/-- `A000720(floor(sqrt(A006093(n+1))))` -/
def P12787570555578116412.Spec : Prop :=
  ∀ n, P12787570555578116412.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P5004574462891422889

`A230980(floor(sqrt(A000040(n+1))))`
-/

namespace A059396.P5004574462891422889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.sqrt (A000040 (n + 1))).toNat

end

end A059396.P5004574462891422889

namespace A059396

/-- `A230980(floor(sqrt(A000040(n+1))))` -/
def P5004574462891422889.Spec : Prop :=
  ∀ n, P5004574462891422889.a n = A059396 (n + 1)

end A059396

/-! ## A059396.P2453711166365270717

`∑[char[A038107(A039650(n+1))]]`
-/

namespace A059396.P2453711166365270717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A039650 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P2453711166365270717

namespace A059396

/-- `∑[char[A038107(A039650(n+1))]]` -/
def P2453711166365270717.Spec : Prop :=
  ∀ n, (P2453711166365270717.a n : ℤ) = A059396 (n + 1)

end A059396

/-! ## A059396.P4028427431153986761

`∑[char[A038107(A006530(n+2))]]`
-/

namespace A059396.P4028427431153986761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A006530 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059396.P4028427431153986761

namespace A059396

/-- `∑[char[A038107(A006530(n+2))]]` -/
def P4028427431153986761.Spec : Prop :=
  ∀ n, (P4028427431153986761.a n : ℤ) = A059396 (n + 1)

end A059396

/-!
# A059397: Triangle formed by right-bounded rhombus rule, read by rows.

The programs for A059397, the canonical program `A059397.P12598692652799507170` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059397 has offset 0).

The definition of A059397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059397.P15764795610261212804

`A132276(∑[2*n]%comp[∑[n]])`
-/

namespace A059397.P15764795610261212804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A059397.P15764795610261212804

namespace A059397

/-- `A132276(∑[2*n]%comp[∑[n]])` -/
def P15764795610261212804.Spec : Prop :=
  ∀ n, P15764795610261212804.a n = A059397 n

end A059397

/-! ## A059397.P14051040069657291307

`A132276(∑[char[∑[n]]]²-n-1)`
-/

namespace A059397.P14051040069657291307
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A059397.P14051040069657291307

namespace A059397

/-- `A132276(∑[char[∑[n]]]²-n-1)` -/
def P14051040069657291307.Spec : Prop :=
  ∀ n, P14051040069657291307.a n = A059397 n

end A059397

/-! ## A059397.P12598692652799507170

`xor(3, xor(3, A132276(A061579(n))))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059397

/-- `xor(3, xor(3, A132276(A061579(n))))` -/
def P12598692652799507170.Spec : Prop :=
  ∀ n, P12598692652799507170.a n = A059397 n

theorem P12598692652799507170.correct : P12598692652799507170.Spec := by
  intro n
  simp only [A059397]

end A059397

/-! ## A059397.P16935106192612855800

`gcd(A000038(n), A132276(A061579(n)))`
-/

namespace A059397.P16935106192612855800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132276 (A061579 n).toNat)

end

end A059397.P16935106192612855800

namespace A059397

/-- `gcd(A000038(n), A132276(A061579(n)))` -/
def P16935106192612855800.Spec : Prop :=
  ∀ n, (P16935106192612855800.a n : ℤ) = A059397 n

end A059397

/-! ## A059397.P6811438655613680805

`A132276(A061579(n))+A008683(4*(n+1))`
-/

namespace A059397.P6811438655613680805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A059397.P6811438655613680805

namespace A059397

/-- `A132276(A061579(n))+A008683(4*(n+1))` -/
def P6811438655613680805.Spec : Prop :=
  ∀ n, P6811438655613680805.a n = A059397 n

end A059397

/-! ## A059397.P10775941693156905035

`A132276(A061579(n))+(2*A007318(n))%2`
-/

namespace A059397.P10775941693156905035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 (A061579 n).toNat + Int.tmod (2 * A007318 n) 2

end

end A059397.P10775941693156905035

namespace A059397

/-- `A132276(A061579(n))+(2*A007318(n))%2` -/
def P10775941693156905035.Spec : Prop :=
  ∀ n, P10775941693156905035.a n = A059397 n

end A059397

/-! ## A059397.P16490197212158463796

`A132276(A061579(n))^and(1, A000040(n+1))`
-/

namespace A059397.P16490197212158463796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132276 (A061579 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A059397.P16490197212158463796

namespace A059397

/-- `A132276(A061579(n))^and(1, A000040(n+1))` -/
def P16490197212158463796.Spec : Prop :=
  ∀ n, P16490197212158463796.a n = (A059397 n : ℚ)

end A059397

/-! ## A059397.P12686917211466924004

`A132276(A061579(n))^A000203(C(2, n)+1)`
-/

namespace A059397.P12686917211466924004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132276 (A061579 n).toNat : ℚ) ^ (A000203 (Nat.choose 2 n + 1) : ℤ)

end

end A059397.P12686917211466924004

namespace A059397

/-- `A132276(A061579(n))^A000203(C(2, n)+1)` -/
def P12686917211466924004.Spec : Prop :=
  ∀ n, P12686917211466924004.a n = (A059397 n : ℚ)

end A059397

/-! ## A059397.P4685500682696669858

`A132276(A061579(n))%A000211(n)`
-/

namespace A059397.P4685500682696669858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132276 (A061579 n).toNat) (A000211 n)

end

end A059397.P4685500682696669858

namespace A059397

/-- `A132276(A061579(n))%A000211(n)` -/
def P4685500682696669858.Spec : Prop :=
  ∀ n, P4685500682696669858.a n = A059397 n

end A059397

/-!
# A059398: Row sums of triangle in A059397.

The programs for A059398, there is no canonical definition to state claims against.
-/

/-! ## A059398.P10093349732565586979

`A132887(Δ[n²])`
-/

namespace A059398.P10093349732565586979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059398.P10093349732565586979

/-! ## A059398.P13401002541426829875

`record[A132887(A196020(n+1))]`
-/

namespace A059398.P13401002541426829875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132887 (A196020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059398.P13401002541426829875

/-! ## A059398.P6463169872099632951

`A106053(n+1)+A059345(n)`
-/

namespace A059398.P6463169872099632951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106053 (n + 1) + A059345 n

end

end A059398.P6463169872099632951

/-! ## A059398.P11616394730315419834

`2*A132887(2*n+1)-A132887(2*n+1)`
-/

namespace A059398.P11616394730315419834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132887 (2 * n + 1) - A132887 (2 * n + 1)

end

end A059398.P11616394730315419834

/-! ## A059398.P8243222018848001210

`A106050(n+1)+A128720(n)+A106053(n+1)`
-/

namespace A059398.P8243222018848001210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106050 (n + 1) + (A128720 n + A106053 (n + 1))

end

end A059398.P8243222018848001210

/-! ## A059398.P16428967321944364454

`A106053(n+1)+A059317(∑[2*n])`
-/

namespace A059398.P16428967321944364454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106053 (n + 1) + A059317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059398.P16428967321944364454

/-! ## A059398.P18411346738747191280

`A106053(n+1)+A059317(n²+n)/A033999(n)²`
-/

namespace A059398.P18411346738747191280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106053 (n + 1) : ℚ) + (A059317 (n ^ 2 + n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A059398.P18411346738747191280

/-! ## A059398.P18404770018325903178

`A106053(n+1)+A000164(A000164(n))*A059317(n*(n+1))`
-/

namespace A059398.P18404770018325903178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106053 (n + 1) + A000164 (A000164 n).toNat * A059317 (n * (n + 1))

end

end A059398.P18404770018325903178

/-!
# A059399: Triangular hopscotch.

The programs for A059399, the canonical program `A059399.P9766970929742721937` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059399 has offset 1).

The definition of A059399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059399.P9179405822188052887

`A038722(A057027(n+1))`
-/

namespace A059399.P9179405822188052887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A057027 (n + 1)).toNat

end

end A059399.P9179405822188052887

namespace A059399

/-- `A038722(A057027(n+1))` -/
def P9179405822188052887.Spec : Prop :=
  ∀ n, P9179405822188052887.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P9766970929742721937

`A057944(n)+A057059(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059399

/-- `A057944(n)+A057059(n+1)` -/
def P9766970929742721937.Spec : Prop :=
  ∀ n, P9766970929742721937.a n = A059399 (n + 1)

theorem P9766970929742721937.correct : P9766970929742721937.Spec := by
  intro n
  simp only [A059399, Nat.add_sub_cancel]

end A059399

/-! ## A059399.P1013412297311229603

`A265129(n+1)-A057027(n+1)`
-/

namespace A059399.P1013412297311229603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A057027 (n + 1)

end

end A059399.P1013412297311229603

namespace A059399

/-- `A265129(n+1)-A057027(n+1)` -/
def P1013412297311229603.Spec : Prop :=
  ∀ n, P1013412297311229603.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P5087570190670216331

`A056011(n+1)+A056023(n+1)-A057027(n+1)`
-/

namespace A059399.P5087570190670216331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A056023 (n + 1) - A057027 (n + 1))

end

end A059399.P5087570190670216331

namespace A059399

/-- `A056011(n+1)+A056023(n+1)-A057027(n+1)` -/
def P5087570190670216331.Spec : Prop :=
  ∀ n, P5087570190670216331.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P10079750576688149749

`A057027(n+1)+A057059(n+1)-A057058(n+1)`
-/

namespace A059399.P10079750576688149749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (n + 1) + (A057059 (n + 1) - A057058 (n + 1))

end

end A059399.P10079750576688149749

namespace A059399

/-- `A057027(n+1)+A057059(n+1)-A057058(n+1)` -/
def P10079750576688149749.Spec : Prop :=
  ∀ n, P10079750576688149749.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P16023932350828805

`A064578(n+1)+A064789(n+1)-A057027(n+1)`
-/

namespace A059399.P16023932350828805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1) + (A064789 (n + 1) - A057027 (n + 1))

end

end A059399.P16023932350828805

namespace A059399

/-- `A064578(n+1)+A064789(n+1)-A057027(n+1)` -/
def P16023932350828805.Spec : Prop :=
  ∀ n, P16023932350828805.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P16554838314501741760

`A038722(A002260(n+1)+A038722(n+1)-A057059(n+1))`
-/

namespace A059399.P16554838314501741760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A002260 (n + 1) + (A038722 (n + 1) - A057059 (n + 1))).toNat

end

end A059399.P16554838314501741760

namespace A059399

/-- `A038722(A002260(n+1)+A038722(n+1)-A057059(n+1))` -/
def P16554838314501741760.Spec : Prop :=
  ∀ n, P16554838314501741760.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P16471484833574645556

`Δ[A333119(n+1)]+1+n`
-/

namespace A059399.P16471484833574645556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A059399.P16471484833574645556

namespace A059399

/-- `Δ[A333119(n+1)]+1+n` -/
def P16471484833574645556.Spec : Prop :=
  ∀ n, P16471484833574645556.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P4756339512781398878

`A064789(A057027(A057027(A057027(A064578(n+1)))))`
-/

namespace A059399.P4756339512781398878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A057027 (A057027 (A057027 (A064578 (n + 1)).toNat).toNat).toNat).toNat

end

end A059399.P4756339512781398878

namespace A059399

/-- `A064789(A057027(A057027(A057027(A064578(n+1)))))` -/
def P4756339512781398878.Spec : Prop :=
  ∀ n, P4756339512781398878.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P551393105435375769

`A209293(A038722(n+1))`
-/

namespace A059399.P551393105435375769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A038722 (n + 1)).toNat

end

end A059399.P551393105435375769

namespace A059399

/-- `A209293(A038722(n+1))` -/
def P551393105435375769.Spec : Prop :=
  ∀ n, P551393105435375769.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P16416563389520326128

`A209293(A093995(n+1)-n)`
-/

namespace A059399.P16416563389520326128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A059399.P16416563389520326128

namespace A059399

/-- `A209293(A093995(n+1)-n)` -/
def P16416563389520326128.Spec : Prop :=
  ∀ n, P16416563389520326128.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P7697240379615819928

`A209293(A002024(n+1)²-n)`
-/

namespace A059399.P7697240379615819928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A059399.P7697240379615819928

namespace A059399

/-- `A209293(A002024(n+1)²-n)` -/
def P7697240379615819928.Spec : Prop :=
  ∀ n, P7697240379615819928.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P7216565325444406121

`A209293(A265129(n+1)-(n+1))`
-/

namespace A059399.P7216565325444406121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A059399.P7216565325444406121

namespace A059399

/-- `A209293(A265129(n+1)-(n+1))` -/
def P7216565325444406121.Spec : Prop :=
  ∀ n, P7216565325444406121.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P12230691736231210593

`A209293(A057028(A185180(n+1)))`
-/

namespace A059399.P12230691736231210593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A057028 (A185180 (n + 1)).toNat).toNat

end

end A059399.P12230691736231210593

namespace A059399

/-- `A209293(A057028(A185180(n+1)))` -/
def P12230691736231210593.Spec : Prop :=
  ∀ n, P12230691736231210593.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P4332132248801182790

`A209293(A209293(A064789(n+1)))`
-/

namespace A059399.P4332132248801182790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A209293 (A064789 (n + 1)).toNat).toNat

end

end A059399.P4332132248801182790

namespace A059399

/-- `A209293(A209293(A064789(n+1)))` -/
def P4332132248801182790.Spec : Prop :=
  ∀ n, P4332132248801182790.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P15834732880754377167

`A056011(A385406(A056023(A056011(n+1))))`
-/

namespace A059399.P15834732880754377167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A385406 (A056023 (A056011 (n + 1)).toNat).toNat).toNat

end

end A059399.P15834732880754377167

namespace A059399

/-- `A056011(A385406(A056023(A056011(n+1))))` -/
def P15834732880754377167.Spec : Prop :=
  ∀ n, P15834732880754377167.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P12378529310621946922

`A064578(A057028(A057028(A064578(A057028(n+1)))))`
-/

namespace A059399.P12378529310621946922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (A057028 (A057028 (A064578 (A057028 (n + 1)).toNat).toNat).toNat).toNat

end

end A059399.P12378529310621946922

namespace A059399

/-- `A064578(A057028(A057028(A064578(A057028(n+1)))))` -/
def P12378529310621946922.Spec : Prop :=
  ∀ n, P12378529310621946922.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P17725878150358334604

`A064789(A057027(A057027(A188568(A188568(n+1)))))`
-/

namespace A059399.P17725878150358334604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A057027 (A057027 (A188568 (A188568 (n + 1)).toNat).toNat).toNat).toNat

end

end A059399.P17725878150358334604

namespace A059399

/-- `A064789(A057027(A057027(A188568(A188568(n+1)))))` -/
def P17725878150358334604.Spec : Prop :=
  ∀ n, P17725878150358334604.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P15256824526250855773

`A385406(A378762(n+1))`
-/

namespace A059399.P15256824526250855773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385406 (A378762 (n + 1)).toNat

end

end A059399.P15256824526250855773

namespace A059399

/-- `A385406(A378762(n+1))` -/
def P15256824526250855773.Spec : Prop :=
  ∀ n, P15256824526250855773.a n = A059399 (n + 1)

end A059399

/-! ## A059399.P3828449540335124346

`A214929(A081344(n+1))`
-/

namespace A059399.P3828449540335124346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214929 (A081344 (n + 1)).toNat

end

end A059399.P3828449540335124346

namespace A059399

/-- `A214929(A081344(n+1))` -/
def P3828449540335124346.Spec : Prop :=
  ∀ n, P3828449540335124346.a n = A059399 (n + 1)

end A059399


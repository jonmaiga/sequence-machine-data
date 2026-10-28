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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B002.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A005700: a(n) = C(n)*C(n+2) - C(n+1)^2 where C() are the Catalan numbers A000108.

The programs for A005700, the canonical program `A005700.P14500087397422980431` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005700 has offset 0).

The definition of A005700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005700.P14500087397422980431

`A000108(n)*A000108(n+2)-A000108(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005700

/-- `A000108(n)*A000108(n+2)-A000108(n+1)²` -/
def P14500087397422980431.Spec : Prop :=
  ∀ n, P14500087397422980431.a n = A005700 n

theorem P14500087397422980431.correct : P14500087397422980431.Spec := by
  intro n
  simp only [A005700]

end A005700

/-! ## A005700.P18299236881536787736

`A039797(∑[n])`
-/

namespace A005700.P18299236881536787736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005700.P18299236881536787736

namespace A005700

/-- `A039797(∑[n])` -/
def P18299236881536787736.Spec : Prop :=
  ∀ n, P18299236881536787736.a n = A005700 n

end A005700

/-! ## A005700.P13837245185639195478

`A138349(2*n)`
-/

namespace A005700.P13837245185639195478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138349 (2 * n)

end

end A005700.P13837245185639195478

namespace A005700

/-- `A138349(2*n)` -/
def P13837245185639195478.Spec : Prop :=
  ∀ n, P13837245185639195478.a n = A005700 n

end A005700

/-! ## A005700.P4829162735680835394

`A039798(∑[n]+n)`
-/

namespace A005700.P4829162735680835394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005700.P4829162735680835394

namespace A005700

/-- `A039798(∑[n]+n)` -/
def P4829162735680835394.Spec : Prop :=
  ∀ n, P4829162735680835394.a n = A005700 n

end A005700

/-! ## A005700.P5648522909071502261

`A000245(n+1)/A000217(n+1)*A000108(n)`
-/

namespace A005700.P5648522909071502261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000245 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A000108 n : ℚ)

end

end A005700.P5648522909071502261

namespace A005700

/-- `A000245(n+1)/A000217(n+1)*A000108(n)` -/
def P5648522909071502261.Spec : Prop :=
  ∀ n, P5648522909071502261.a n = (A005700 n : ℚ)

end A005700

/-! ## A005700.P13494229840537642894

`A000108(n+1)/A000292(n+1)*A000984(n)`
-/

namespace A005700.P13494229840537642894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ) * (A000984 n : ℚ)

end

end A005700.P13494229840537642894

namespace A005700

/-- `A000108(n+1)/A000292(n+1)*A000984(n)` -/
def P13494229840537642894.Spec : Prop :=
  ∀ n, P13494229840537642894.a n = (A005700 n : ℚ)

end A005700

/-! ## A005700.P12060339186299319509

`A001791(n+1)/A000292(n+1)*A000108(n)`
-/

namespace A005700.P12060339186299319509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ) * (A000108 n : ℚ)

end

end A005700.P12060339186299319509

namespace A005700

/-- `A001791(n+1)/A000292(n+1)*A000108(n)` -/
def P12060339186299319509.Spec : Prop :=
  ∀ n, P12060339186299319509.a n = (A005700 n : ℚ)

end A005700

/-! ## A005700.P16980210452682116046

`A186262(n)/(n+1)`
-/

namespace A005700.P16980210452682116046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186262 n : ℚ) / (n + 1 : ℚ)

end

end A005700.P16980210452682116046

namespace A005700

/-- `A186262(n)/(n+1)` -/
def P16980210452682116046.Spec : Prop :=
  ∀ n, P16980210452682116046.a n = (A005700 n : ℚ)

end A005700

/-! ## A005700.P16115955727855328497

`A186264(n)/(2*n+1)`
-/

namespace A005700.P16115955727855328497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186264 n : ℚ) / (2 * n + 1 : ℚ)

end

end A005700.P16115955727855328497

namespace A005700

/-- `A186264(n)/(2*n+1)` -/
def P16115955727855328497.Spec : Prop :=
  ∀ n, P16115955727855328497.a n = (A005700 n : ℚ)

end A005700

/-! ## A005700.P6269522907497033863

`2*A186262(n)-A186264(n)`
-/

namespace A005700.P6269522907497033863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186262 n - A186264 n

end

end A005700.P6269522907497033863

namespace A005700

/-- `2*A186262(n)-A186264(n)` -/
def P6269522907497033863.Spec : Prop :=
  ∀ n, P6269522907497033863.a n = A005700 n

end A005700

/-!
# A005701: Number of exterior points formed by extending diagonals of n-gon in general position.

The programs for A005701, the canonical program `A005701.P2064058240252632397` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005701 has offset 0).

The definition of A005701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005701.P14623812455255675809

`ogf((3-x)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A005701.P14623812455255675809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -5, 10, -10, 5, -1] n

end

end A005701.P14623812455255675809

namespace A005701

/-- `ogf((3-x)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14623812455255675809.Spec : Prop :=
  ∀ n, P14623812455255675809.a n = A005701 n

end A005701

/-! ## A005701.P14267267020819111807

`(n+1)*(n+2)*(n+3)*(n+6)/12`
-/

namespace A005701.P14267267020819111807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 6) : ℚ) / 12

end

end A005701.P14267267020819111807

namespace A005701

/-- `(n+1)*(n+2)*(n+3)*(n+6)/12` -/
def P14267267020819111807.Spec : Prop :=
  ∀ n, P14267267020819111807.a n = (A005701 n : ℚ)

theorem P14267267020819111807.correct : P14267267020819111807.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A005701, Nat.add_sub_cancel, A005701.P14267267020819111807.a, A005701.P2064058240252632397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A005701, Nat.add_sub_cancel, A005701.P14267267020819111807.a, A005701.P2064058240252632397.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005701

/-! ## A005701.P2064058240252632397

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=14, a(2)=40, a(3)=90, a(4)=175`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005701

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2064058240252632397.Spec : Prop :=
  ∀ n, P2064058240252632397.a n = A005701 n

theorem P2064058240252632397.correct : P2064058240252632397.Spec := by
  intro n
  simp only [A005701]

end A005701

/-! ## A005701.P5668811510725234268

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=3`
-/

namespace A005701.P5668811510725234268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005701.P5668811510725234268

namespace A005701

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P5668811510725234268.Spec : Prop :=
  ∀ n, (P5668811510725234268.a n : ℤ) = A005701 n

end A005701

/-! ## A005701.P1979195196121655282

`∑[∑[∑[ogf((3-x)/(1-2x+x^2))]]]`
-/

namespace A005701.P1979195196121655282
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005701.P1979195196121655282

namespace A005701

/-- `∑[∑[∑[ogf((3-x)/(1-2x+x^2))]]]` -/
def P1979195196121655282.Spec : Prop :=
  ∀ n, P1979195196121655282.a n = A005701 n

end A005701

/-! ## A005701.P5427187939730105406

`C(n+3, 2)/3*∑[n+3]`
-/

namespace A005701.P5427187939730105406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A005701.P5427187939730105406

namespace A005701

/-- `C(n+3, 2)/3*∑[n+3]` -/
def P5427187939730105406.Spec : Prop :=
  ∀ n, P5427187939730105406.a n = (A005701 n : ℚ)

end A005701

/-! ## A005701.P2471505734577254542

`∑[∑[(a(n-1)/n)²-1]]` with `a(0)=3`
-/

namespace A005701.P2471505734577254542
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f2 =>
  (f2 (n - 1) / (n : ℚ)) ^ 2 - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005701.P2471505734577254542

namespace A005701

/-- `∑[∑[(a(n-1)/n)²-1]]` -/
def P2471505734577254542.Spec : Prop :=
  ∀ n, P2471505734577254542.a n = (A005701 n : ℚ)

end A005701

/-! ## A005701.P10817257812114150099

`((n+2)/2+2)*C(n+3, 3)`
-/

namespace A005701.P10817257812114150099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / 2 + 2) * (Nat.choose (n + 3) 3 : ℚ)

end

end A005701.P10817257812114150099

namespace A005701

/-- `((n+2)/2+2)*C(n+3, 3)` -/
def P10817257812114150099.Spec : Prop :=
  ∀ n, P10817257812114150099.a n = (A005701 n : ℚ)

end A005701

/-! ## A005701.P17472371027938441649

`lcm(2, (n+3)*∑[∑[n+2]])/2`
-/

namespace A005701.P17472371027938441649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2

end

end A005701.P17472371027938441649

namespace A005701

/-- `lcm(2, (n+3)*∑[∑[n+2]])/2` -/
def P17472371027938441649.Spec : Prop :=
  ∀ n, P17472371027938441649.a n = (A005701 n : ℚ)

end A005701

/-! ## A005701.P10374452913351461716

`and(1-4/2, ∑[∑[∑[2*n+3]]])`
-/

namespace A005701.P10374452913351461716
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005701.P10374452913351461716

namespace A005701

/-- `and(1-4/2, ∑[∑[∑[2*n+3]]])` -/
def P10374452913351461716.Spec : Prop :=
  ∀ n, P10374452913351461716.a n = A005701 n

end A005701

/-! ## A005701.P3382808227835340329

`∑[∑[∑[2*(n+2)]]]-C(n+3, 3)`
-/

namespace A005701.P3382808227835340329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n + 3) 3 : ℤ)

end

end A005701.P3382808227835340329

namespace A005701

/-- `∑[∑[∑[2*(n+2)]]]-C(n+3, 3)` -/
def P3382808227835340329.Spec : Prop :=
  ∀ n, P3382808227835340329.a n = A005701 n

end A005701

/-! ## A005701.P12784851276639879641

`∑[∑[(n+1)*(n+3)]]+and(1, 2*n)`
-/

namespace A005701.P12784851276639879641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A005701.P12784851276639879641

namespace A005701

/-- `∑[∑[(n+1)*(n+3)]]+and(1, 2*n)` -/
def P12784851276639879641.Spec : Prop :=
  ∀ n, (P12784851276639879641.a n : ℤ) = A005701 n

end A005701

/-! ## A005701.P14816427281768448817

`(n+3)/gcd(2, 2*n)*∑[∑[n+2]]`
-/

namespace A005701.P14816427281768448817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A005701.P14816427281768448817

namespace A005701

/-- `(n+3)/gcd(2, 2*n)*∑[∑[n+2]]` -/
def P14816427281768448817.Spec : Prop :=
  ∀ n, P14816427281768448817.a n = (A005701 n : ℚ)

end A005701

/-! ## A005701.P13782517320843253619

`gcd(n, n+1)*∑[∑[(n+1)*(n+3)]]`
-/

namespace A005701.P13782517320843253619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005701.P13782517320843253619

namespace A005701

/-- `gcd(n, n+1)*∑[∑[(n+1)*(n+3)]]` -/
def P13782517320843253619.Spec : Prop :=
  ∀ n, (P13782517320843253619.a n : ℤ) = A005701 n

end A005701

/-! ## A005701.P2561115451412856828

`A052472(n+3)+3+n`
-/

namespace A005701.P2561115451412856828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) + 3 + (n : ℤ)

end

end A005701.P2561115451412856828

namespace A005701

/-- `A052472(n+3)+3+n` -/
def P2561115451412856828.Spec : Prop :=
  ∀ n, P2561115451412856828.a n = A005701 n

end A005701

/-! ## A005701.P16966269201754978747

`∑[A145066(n+1)+(n+1)²]`
-/

namespace A005701.P16966269201754978747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005701.P16966269201754978747

namespace A005701

/-- `∑[A145066(n+1)+(n+1)²]` -/
def P16966269201754978747.Spec : Prop :=
  ∀ n, P16966269201754978747.a n = A005701 n

end A005701

/-! ## A005701.P5749883791434867447

`A005718(n)+A005582(n)`
-/

namespace A005701.P5749883791434867447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + A005582 n

end

end A005701.P5749883791434867447

namespace A005701

/-- `A005718(n)+A005582(n)` -/
def P5749883791434867447.Spec : Prop :=
  ∀ n, P5749883791434867447.a n = A005701 n

end A005701

/-! ## A005701.P8482279012945308806

`A136396(n)+A094792(n)`
-/

namespace A005701.P8482279012945308806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n + A094792 n

end

end A005701.P8482279012945308806

namespace A005701

/-- `A136396(n)+A094792(n)` -/
def P8482279012945308806.Spec : Prop :=
  ∀ n, P8482279012945308806.a n = A005701 n

end A005701

/-! ## A005701.P363030828428584045

`A027659(n)-A027658(n)`
-/

namespace A005701.P363030828428584045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n - A027658 n

end

end A005701.P363030828428584045

namespace A005701

/-- `A027659(n)-A027658(n)` -/
def P363030828428584045.Spec : Prop :=
  ∀ n, P363030828428584045.a n = A005701 n

end A005701

/-! ## A005701.P6602975550943154333

`A219621(n+1)+A016061(n)`
-/

namespace A005701.P6602975550943154333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219621 (n + 1) + A016061 n

end

end A005701.P6602975550943154333

namespace A005701

/-- `A219621(n+1)+A016061(n)` -/
def P6602975550943154333.Spec : Prop :=
  ∀ n, P6602975550943154333.a n = A005701 n

end A005701

/-!
# A005702: Number of sesquirotational Kotzig factorizations.

The programs for A005702, there is no canonical definition to state claims against.
-/

/-! ## A005702.P6242611684353233656

`A320423(n)%A161778(n+1)`
-/

namespace A005702.P6242611684353233656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320423 n) (A161778 (n + 1))

end

end A005702.P6242611684353233656

/-! ## A005702.P7998525767404720864

`A320423(n)%A002326(A004149(n))`
-/

namespace A005702.P7998525767404720864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320423 n) (A002326 (A004149 n).toNat)

end

end A005702.P7998525767404720864

/-!
# A005703: Number of n-node connected graphs with at most one cycle.

The programs for A005703, there is no canonical definition to state claims against.
-/

/-! ## A005703.P6363848163946377390

`A369289(n)-A000081(n)`
-/

namespace A005703.P6363848163946377390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369289 n - A000081 n

end

end A005703.P6363848163946377390

/-! ## A005703.P1398339438083428869

`A368983(n)-A217420(n+1)`
-/

namespace A005703.P1398339438083428869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368983 n - A217420 (n + 1)

end

end A005703.P1398339438083428869

/-! ## A005703.P9013658297568190677

`A369289(n)-(A222380(n)+A222379(n))`
-/

namespace A005703.P9013658297568190677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369289 n - (A222380 n + A222379 n)

end

end A005703.P9013658297568190677

/-! ## A005703.P1296144967986340652

`A369289(n)-(A211192(n)+2*A222379(n))`
-/

namespace A005703.P1296144967986340652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369289 n - (A211192 n + 2 * A222379 n)

end

end A005703.P1296144967986340652

/-! ## A005703.P13332255841544449051

`A369289(n)-(2*A222380(n)-A211192(n))`
-/

namespace A005703.P13332255841544449051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369289 n - (2 * A222380 n - A211192 n)

end

end A005703.P13332255841544449051

/-! ## A005703.P16582648318243599361

`A213683(n)+A369289(n)-A213674(n)`
-/

namespace A005703.P16582648318243599361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213683 n + (A369289 n - A213674 n)

end

end A005703.P16582648318243599361

/-! ## A005703.P13160217579787168155

`A369289(n)-(A033185(A000124(n))-A174145(n))`
-/

namespace A005703.P13160217579787168155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369289 n - (A033185 (A000124 n).toNat - A174145 n)

end

end A005703.P13160217579787168155

/-!
# A005704: Number of partitions of 3n into powers of 3.

The programs for A005704, the canonical program `A005704.P7204327875039928643` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005704 has offset 0).

The definition of A005704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005704.P7204327875039928643

`a(n-1)+a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005704

/-- `a(n-1)+a(floor(n/3))` -/
def P7204327875039928643.Spec : Prop :=
  ∀ n, (P7204327875039928643.a n : ℤ) = A005704 n

theorem P7204327875039928643.correct : P7204327875039928643.Spec := by
  intro n
  simp only [A005704]

end A005704

/-! ## A005704.P9277809124849300129

`∑[A062051(n)]`
-/

namespace A005704.P9277809124849300129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005704.P9277809124849300129

namespace A005704

/-- `∑[A062051(n)]` -/
def P9277809124849300129.Spec : Prop :=
  ∀ n, P9277809124849300129.a n = A005704 n

end A005704

/-! ## A005704.P10158196587165862298

`A062051(3*n)`
-/

namespace A005704.P10158196587165862298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (3 * n)

end

end A005704.P10158196587165862298

namespace A005704

/-- `A062051(3*n)` -/
def P10158196587165862298.Spec : Prop :=
  ∀ n, P10158196587165862298.a n = A005704 n

end A005704

/-! ## A005704.P4109123409173220474

`record[A062051(or(2, n))]`
-/

namespace A005704.P4109123409173220474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P4109123409173220474

namespace A005704

/-- `record[A062051(or(2, n))]` -/
def P4109123409173220474.Spec : Prop :=
  ∀ n, P4109123409173220474.a n = A005704 n

end A005704

/-! ## A005704.P13387055647532543479

`record[A062051(n^(n%2))]`
-/

namespace A005704.P13387055647532543479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P13387055647532543479

namespace A005704

/-- `record[A062051(n^(n%2))]` -/
def P13387055647532543479.Spec : Prop :=
  ∀ n, P13387055647532543479.a n = A005704 n

end A005704

/-! ## A005704.P4058725179255488767

`record[A062051((n+1)/2^val(n+1, 2))]`
-/

namespace A005704.P4058725179255488767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P4058725179255488767

namespace A005704

/-- `record[A062051((n+1)/2^val(n+1, 2))]` -/
def P4058725179255488767.Spec : Prop :=
  ∀ n, P4058725179255488767.a n = A005704 n

end A005704

/-! ## A005704.P10218860057004844705

`record[A062051(A302034(n+1))]`
-/

namespace A005704.P10218860057004844705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (A302034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P10218860057004844705

namespace A005704

/-- `record[A062051(A302034(n+1))]` -/
def P10218860057004844705.Spec : Prop :=
  ∀ n, P10218860057004844705.a n = A005704 n

end A005704

/-! ## A005704.P11859879827212158555

`record[A062051(A000034(n)²+n)]`
-/

namespace A005704.P11859879827212158555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (A000034 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P11859879827212158555

namespace A005704

/-- `record[A062051(A000034(n)²+n)]` -/
def P11859879827212158555.Spec : Prop :=
  ∀ n, P11859879827212158555.a n = A005704 n

end A005704

/-! ## A005704.P13951549581795451630

`record[A062051(n+1)/A000034(n)]`
-/

namespace A005704.P13951549581795451630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062051 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P13951549581795451630

namespace A005704

/-- `record[A062051(n+1)/A000034(n)]` -/
def P13951549581795451630.Spec : Prop :=
  ∀ n, P13951549581795451630.a n = (A005704 n : ℚ)

end A005704

/-! ## A005704.P8967175799160788450

`record[A062051(A029578(n))]`
-/

namespace A005704.P8967175799160788450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P8967175799160788450

namespace A005704

/-- `record[A062051(A029578(n))]` -/
def P8967175799160788450.Spec : Prop :=
  ∀ n, P8967175799160788450.a n = A005704 n

end A005704

/-! ## A005704.P11267462758031661708

`record[A062051(n)/A000034(n)²]`
-/

namespace A005704.P11267462758031661708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062051 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P11267462758031661708

namespace A005704

/-- `record[A062051(n)/A000034(n)²]` -/
def P11267462758031661708.Spec : Prop :=
  ∀ n, P11267462758031661708.a n = (A005704 n : ℚ)

end A005704

/-! ## A005704.P6905317021495164016

`record[root(A062051(n), A000034(n+1))]`
-/

namespace A005704.P6905317021495164016
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062051 n : ℝ) ^ (1 / (A000034 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005704.P6905317021495164016

namespace A005704

/-- `record[root(A062051(n), A000034(n+1))]` -/
def P6905317021495164016.Spec : Prop :=
  ∀ n, P6905317021495164016.a n = (A005704 n : ℝ)

end A005704

/-! ## A005704.P11484323097881169399

`A393313(n+1)-(A393313(n)+A062051(n+1))`
-/

namespace A005704.P11484323097881169399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393313 (n + 1) - (A393313 n + A062051 (n + 1))

end

end A005704.P11484323097881169399

namespace A005704

/-- `A393313(n+1)-(A393313(n)+A062051(n+1))` -/
def P11484323097881169399.Spec : Prop :=
  ∀ n, P11484323097881169399.a n = A005704 n

end A005704

/-! ## A005704.P7125175438096861059

`A292477(∑[n+2]-1)`
-/

namespace A005704.P7125175438096861059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005704.P7125175438096861059

namespace A005704

/-- `A292477(∑[n+2]-1)` -/
def P7125175438096861059.Spec : Prop :=
  ∀ n, P7125175438096861059.a n = A005704 n

end A005704

/-! ## A005704.P6899417048720244823

`A089688(∑[n+2]+3)`
-/

namespace A005704.P6899417048720244823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005704.P6899417048720244823

namespace A005704

/-- `A089688(∑[n+2]+3)` -/
def P6899417048720244823.Spec : Prop :=
  ∀ n, P6899417048720244823.a n = A005704 n

end A005704

/-!
# A005705: Number of partitions of 4*n into powers of 4.

The programs for A005705, the canonical program `A005705.P9520510629403342121` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005705 has offset 0).

The definition of A005705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005705.P9520510629403342121

`a(n-1)+a(floor(n/4))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005705

/-- `a(n-1)+a(floor(n/4))` -/
def P9520510629403342121.Spec : Prop :=
  ∀ n, (P9520510629403342121.a n : ℤ) = A005705 n

theorem P9520510629403342121.correct : P9520510629403342121.Spec := by
  intro n
  simp only [A005705]

end A005705

/-! ## A005705.P4698589852974593109

`a(floor(n/4))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005705.P4698589852974593109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat - (-a (n - 1))

end

end A005705.P4698589852974593109

namespace A005705

/-- `a(floor(n/4))-floor(-a(n-1))` -/
def P4698589852974593109.Spec : Prop :=
  ∀ n, P4698589852974593109.a n = A005705 n

end A005705

/-! ## A005705.P15605206349797531852

`floor(a(n-1)+a(A002265(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005705.P15605206349797531852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A002265 n).toNat

end

end A005705.P15605206349797531852

namespace A005705

/-- `floor(a(n-1)+a(A002265(n)))` -/
def P15605206349797531852.Spec : Prop :=
  ∀ n, (P15605206349797531852.a n : ℤ) = A005705 n

end A005705

/-! ## A005705.P16242353114189177848

`a(A008621(n)-1)-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A005705.P16242353114189177848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008621 n - 1).toNat - (-a (n - 1))

end

end A005705.P16242353114189177848

namespace A005705

/-- `a(A008621(n)-1)-ceil(-a(n-1))` -/
def P16242353114189177848.Spec : Prop :=
  ∀ n, P16242353114189177848.a n = A005705 n

end A005705

/-! ## A005705.P4323028633003359614

`A000027(a(n-1))+a(A002265(n))` with `a(0)=1`
-/

namespace A005705.P4323028633003359614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + a (A002265 n).toNat

end

end A005705.P4323028633003359614

namespace A005705

/-- `A000027(a(n-1))+a(A002265(n))` -/
def P4323028633003359614.Spec : Prop :=
  ∀ n, P4323028633003359614.a n = A005705 n

end A005705

/-! ## A005705.P6752936840544143365

`A028310(a(n-1))+a(A002265(n))` with `a(0)=1`
-/

namespace A005705.P6752936840544143365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + a (A002265 n).toNat

end

end A005705.P6752936840544143365

namespace A005705

/-- `A028310(a(n-1))+a(A002265(n))` -/
def P6752936840544143365.Spec : Prop :=
  ∀ n, P6752936840544143365.a n = A005705 n

end A005705

/-! ## A005705.P4782429144210463362

`A292477(∑[n+3])`
-/

namespace A005705.P4782429144210463362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005705.P4782429144210463362

namespace A005705

/-- `A292477(∑[n+3])` -/
def P4782429144210463362.Spec : Prop :=
  ∀ n, P4782429144210463362.a n = A005705 n

end A005705

/-! ## A005705.P16326306282767693723

`A089688(∑[n+3]+6)`
-/

namespace A005705.P16326306282767693723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A005705.P16326306282767693723

namespace A005705

/-- `A089688(∑[n+3]+6)` -/
def P16326306282767693723.Spec : Prop :=
  ∀ n, P16326306282767693723.a n = A005705 n

end A005705

/-! ## A005705.P9178195264051620630

`A089688(A167614(n+2))%(n²+12)`
-/

namespace A005705.P9178195264051620630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089688 (A167614 (n + 2)).toNat) (n ^ 2 + 12 : ℤ)

end

end A005705.P9178195264051620630

namespace A005705

/-- `A089688(A167614(n+2))%(n²+12)` -/
def P9178195264051620630.Spec : Prop :=
  ∀ n, P9178195264051620630.a n = A005705 n

end A005705

/-! ## A005705.P7496069613579084994

`gcd(A000038(n), A089688(A167614(n+2)))`
-/

namespace A005705.P7496069613579084994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A089688 (A167614 (n + 2)).toNat)

end

end A005705.P7496069613579084994

namespace A005705

/-- `gcd(A000038(n), A089688(A167614(n+2)))` -/
def P7496069613579084994.Spec : Prop :=
  ∀ n, (P7496069613579084994.a n : ℤ) = A005705 n

end A005705

/-!
# A005706: Number of partitions of 5n into powers of 5.

The programs for A005706, the canonical program `A005706.P17228566610142384067` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005706 has offset 0).

The definition of A005706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005706.P17228566610142384067

`a(n-1)+a(floor(n/5))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005706

/-- `a(n-1)+a(floor(n/5))` -/
def P17228566610142384067.Spec : Prop :=
  ∀ n, (P17228566610142384067.a n : ℤ) = A005706 n

theorem P17228566610142384067.correct : P17228566610142384067.Spec := by
  intro n
  simp only [A005706]

end A005706

/-! ## A005706.P11799386906826423299

`a(floor(n/5))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005706.P11799386906826423299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 5⌋.toNat - (-a (n - 1))

end

end A005706.P11799386906826423299

namespace A005706

/-- `a(floor(n/5))-floor(-a(n-1))` -/
def P11799386906826423299.Spec : Prop :=
  ∀ n, P11799386906826423299.a n = A005706 n

end A005706

/-! ## A005706.P3153484762061539514

`floor(a(n-1)+a(A002266(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005706.P3153484762061539514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A002266 n).toNat

end

end A005706.P3153484762061539514

namespace A005706

/-- `floor(a(n-1)+a(A002266(n)))` -/
def P3153484762061539514.Spec : Prop :=
  ∀ n, (P3153484762061539514.a n : ℤ) = A005706 n

end A005706

/-! ## A005706.P4040557459846073915

`A000007(n)+a(n-1)+a(A002266(n))` with `a(0)=1`
-/

namespace A005706.P4040557459846073915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 n + (a (n - 1) + a (A002266 n).toNat)

end

end A005706.P4040557459846073915

namespace A005706

/-- `A000007(n)+a(n-1)+a(A002266(n))` -/
def P4040557459846073915.Spec : Prop :=
  ∀ n, P4040557459846073915.a n = A005706 n

end A005706

/-! ## A005706.P12579586933924737409

`a(n-1)+a(A002266(n))%A307271(n)` with `a(0)=1`
-/

namespace A005706.P12579586933924737409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (a (A002266 n).toNat) (A307271 n)

end

end A005706.P12579586933924737409

namespace A005706

/-- `a(n-1)+a(A002266(n))%A307271(n)` -/
def P12579586933924737409.Spec : Prop :=
  ∀ n, P12579586933924737409.a n = A005706 n

end A005706

/-! ## A005706.P14156072999807780033

`A028310(a(n-1))+a(A002266(n))` with `a(0)=1`
-/

namespace A005706.P14156072999807780033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + a (A002266 n).toNat

end

end A005706.P14156072999807780033

namespace A005706

/-- `A028310(a(n-1))+a(A002266(n))` -/
def P14156072999807780033.Spec : Prop :=
  ∀ n, P14156072999807780033.a n = A005706 n

end A005706

/-! ## A005706.P4455450235573034040

`A292477(∑[n+4]+2)`
-/

namespace A005706.P4455450235573034040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005706.P4455450235573034040

namespace A005706

/-- `A292477(∑[n+4]+2)` -/
def P4455450235573034040.Spec : Prop :=
  ∀ n, P4455450235573034040.a n = A005706 n

end A005706

/-! ## A005706.P8781592705956633915

`A089688(A155212(n)+12)`
-/

namespace A005706.P8781592705956633915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A155212 n + 12).toNat

end

end A005706.P8781592705956633915

namespace A005706

/-- `A089688(A155212(n)+12)` -/
def P8781592705956633915.Spec : Prop :=
  ∀ n, P8781592705956633915.a n = A005706 n

end A005706

/-! ## A005706.P9406854493477857397

`A089688(A056000(n)+14)`
-/

namespace A005706.P9406854493477857397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A056000 n + 14).toNat

end

end A005706.P9406854493477857397

namespace A005706

/-- `A089688(A056000(n)+14)` -/
def P9406854493477857397.Spec : Prop :=
  ∀ n, P9406854493477857397.a n = A005706 n

end A005706

/-! ## A005706.P4874343367191394765

`record[A292477(abs(A046691(n)))]`
-/

namespace A005706.P4874343367191394765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005706.P4874343367191394765

namespace A005706

/-- `record[A292477(abs(A046691(n)))]` -/
def P4874343367191394765.Spec : Prop :=
  ∀ n, P4874343367191394765.a n = A005706 n

end A005706

/-! ## A005706.P13109691589378559791

`A089688(A000124(n+4)+3)`
-/

namespace A005706.P13109691589378559791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A000124 (n + 4) + 3).toNat

end

end A005706.P13109691589378559791

namespace A005706

/-- `A089688(A000124(n+4)+3)` -/
def P13109691589378559791.Spec : Prop :=
  ∀ n, P13109691589378559791.a n = A005706 n

end A005706

/-! ## A005706.P9352096745808098818

`A089688(A000096(n+3)+5)`
-/

namespace A005706.P9352096745808098818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A000096 (n + 3) + 5).toNat

end

end A005706.P9352096745808098818

namespace A005706

/-- `A089688(A000096(n+3)+5)` -/
def P9352096745808098818.Spec : Prop :=
  ∀ n, P9352096745808098818.a n = A005706 n

end A005706

/-! ## A005706.P10239063425617419210

`A089688(A046691(n+2)+8)`
-/

namespace A005706.P10239063425617419210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A046691 (n + 2) + 8).toNat

end

end A005706.P10239063425617419210

namespace A005706

/-- `A089688(A046691(n+2)+8)` -/
def P10239063425617419210.Spec : Prop :=
  ∀ n, P10239063425617419210.a n = A005706 n

end A005706

/-! ## A005706.P5902191458316549357

`∑[A008648(n)%A057825(n+1)]`
-/

namespace A005706.P5902191458316549357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008648 n) (A057825 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005706.P5902191458316549357

namespace A005706

/-- `∑[A008648(n)%A057825(n+1)]` -/
def P5902191458316549357.Spec : Prop :=
  ∀ n, P5902191458316549357.a n = A005706 n

end A005706

/-! ## A005706.P12724577522337100965

`∑[A008648(n)%A172348(A017113(n))]`
-/

namespace A005706.P12724577522337100965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008648 n) (A172348 (A017113 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005706.P12724577522337100965

namespace A005706

/-- `∑[A008648(n)%A172348(A017113(n))]` -/
def P12724577522337100965.Spec : Prop :=
  ∀ n, P12724577522337100965.a n = A005706 n

end A005706

/-! ## A005706.P2701110741729372803

`A010051(A293201(a(n-1)+1)+1)+∑[A008648(n)]` with `a(0)=1`
-/

namespace A005706.P2701110741729372803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008648 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010051 (A293201 (a (n - 1) + 1).toNat + 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005706.P2701110741729372803

namespace A005706

/-- `A010051(A293201(a(n-1)+1)+1)+∑[A008648(n)]` -/
def P2701110741729372803.Spec : Prop :=
  ∀ n, P2701110741729372803.a n = A005706 n

end A005706

/-!
# A005707: a(1) = a(2) = a(3) = a(4) = 1, a(n) = a(a(n-1))+a(n-a(n-1)) for n >= 5.

The programs for A005707, the canonical program `A005707.P4803997774332419576` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005707 has offset 1).

The definition of A005707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))` (program `A005707.P4803997774332419576`, by `A005707.P4803997774332419576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005707.P4803997774332419576

`a(a(n-1)-1)+a(n-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005707

/-- `a(a(n-1)-1)+a(n-a(n-1))` -/
def P4803997774332419576.Spec : Prop :=
  ∀ n, (P4803997774332419576.a n : ℤ) = A005707 (n + 1)

theorem P4803997774332419576.correct : P4803997774332419576.Spec := by
  intro n
  simp only [A005707, Nat.add_sub_cancel]

end A005707

/-! ## A005707.P15454719115910256823

`A095769(A095769(A095769(n+1)))`
-/

namespace A005707.P15454719115910256823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095769 (A095769 (A095769 (n + 1)).toNat).toNat

end

end A005707.P15454719115910256823

namespace A005707

/-- `A095769(A095769(A095769(n+1)))` -/
def P15454719115910256823.Spec : Prop :=
  ∀ n, P15454719115910256823.a n = A005707 (n + 1)

end A005707

/-!
# A005708: a(n) = a(n-1) + a(n-6), with a(i) = 1 for i = 0..5.

The programs for A005708, the canonical program `A005708.P6712669368843718734` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005708 has offset 0).

The definition of A005708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-6)` (program `A005708.P6712669368843718734`, by `A005708.P6712669368843718734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005708.P2301251309536506947

`ogf(1/(1-x-x^6))`
-/

namespace A005708.P2301251309536506947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, 0, -1] n

end

end A005708.P2301251309536506947

namespace A005708

/-- `ogf(1/(1-x-x^6))` -/
def P2301251309536506947.Spec : Prop :=
  ∀ n, P2301251309536506947.a n = A005708 n

end A005708

/-! ## A005708.P6712669368843718734

`a(n-1)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005708

/-- `a(n-1)+a(n-6)` -/
def P6712669368843718734.Spec : Prop :=
  ∀ n, (P6712669368843718734.a n : ℤ) = A005708 n

theorem P6712669368843718734.correct : P6712669368843718734.Spec := by
  intro n
  simp only [A005708]

end A005708

/-! ## A005708.P4989248363925284690

`∑[A017900(n)]`
-/

namespace A005708.P4989248363925284690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005708.P4989248363925284690

namespace A005708

/-- `∑[A017900(n)]` -/
def P4989248363925284690.Spec : Prop :=
  ∀ n, P4989248363925284690.a n = A005708 n

end A005708

/-! ## A005708.P2677362991021267259

`A017900(n+6)`
-/

namespace A005708.P2677362991021267259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 6)

end

end A005708.P2677362991021267259

namespace A005708

/-- `A017900(n+6)` -/
def P2677362991021267259.Spec : Prop :=
  ∀ n, P2677362991021267259.a n = A005708 n

end A005708

/-! ## A005708.P5328118459737007949

`A193941(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A005708.P5328118459737007949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A193941 n - a (n - 3)

end

end A005708.P5328118459737007949

namespace A005708

/-- `A193941(n)-a(n-3)` -/
def P5328118459737007949.Spec : Prop :=
  ∀ n, P5328118459737007949.a n = A005708 n

end A005708

/-! ## A005708.P16057281885978526129

`Δ[A335184(n)]+1`
-/

namespace A005708.P16057281885978526129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A005708.P16057281885978526129

namespace A005708

/-- `Δ[A335184(n)]+1` -/
def P16057281885978526129.Spec : Prop :=
  ∀ n, P16057281885978526129.a n = A005708 n

end A005708

/-! ## A005708.P1931168268393069794

`A143285(n+1)+A005709(n)-A143285(n)`
-/

namespace A005708.P1931168268393069794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143285 (n + 1) + (A005709 n - A143285 n)

end

end A005708.P1931168268393069794

namespace A005708

/-- `A143285(n+1)+A005709(n)-A143285(n)` -/
def P1931168268393069794.Spec : Prop :=
  ∀ n, P1931168268393069794.a n = A005708 n

end A005708

/-! ## A005708.P211850974164142170

`∑{#}[floor(n/6), C(n-5*#, #)]`
-/

namespace A005708.P211850974164142170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (5 * k : ℤ)).toNat k

end

end A005708.P211850974164142170

namespace A005708

/-- `∑{#}[floor(n/6), C(n-5*#, #)]` -/
def P211850974164142170.Spec : Prop :=
  ∀ n, (P211850974164142170.a n : ℤ) = A005708 n

end A005708

/-! ## A005708.P1816629282367274494

`A003520(n)-Δ[A143284(n)]`
-/

namespace A005708.P1816629282367274494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - (f1 (n + 1) - f1 n)

end

end A005708.P1816629282367274494

namespace A005708

/-- `A003520(n)-Δ[A143284(n)]` -/
def P1816629282367274494.Spec : Prop :=
  ∀ n, P1816629282367274494.a n = A005708 n

end A005708

/-! ## A005708.P8707483500874662583

`A003520(n)+A143284(n)-A143284(n+1)`
-/

namespace A005708.P8707483500874662583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + (A143284 n - A143284 (n + 1))

end

end A005708.P8707483500874662583

namespace A005708

/-- `A003520(n)+A143284(n)-A143284(n+1)` -/
def P8707483500874662583.Spec : Prop :=
  ∀ n, P8707483500874662583.a n = A005708 n

end A005708

/-! ## A005708.P10342330787144282193

`sqrt(A224812(2*n))`
-/

namespace A005708.P10342330787144282193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224812 (2 * n) : ℝ)

end

end A005708.P10342330787144282193

namespace A005708

/-- `sqrt(A224812(2*n))` -/
def P10342330787144282193.Spec : Prop :=
  ∀ n, P10342330787144282193.a n = (A005708 n : ℝ)

end A005708

/-! ## A005708.P6537032070049980202

`A193518(∑[n]+floor(acot(n)))`
-/

namespace A005708.P6537032070049980202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A005708.P6537032070049980202

namespace A005708

/-- `A193518(∑[n]+floor(acot(n)))` -/
def P6537032070049980202.Spec : Prop :=
  ∀ n, P6537032070049980202.a n = A005708 n

end A005708

/-! ## A005708.P16898907621046709222

`A193518(∑[C(n, a(n-1))])` with `a(0)=2`
-/

namespace A005708.P16898907621046709222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005708.P16898907621046709222

namespace A005708

/-- `A193518(∑[C(n, a(n-1))])` -/
def P16898907621046709222.Spec : Prop :=
  ∀ n, P16898907621046709222.a n = A005708 n

end A005708

/-! ## A005708.P11703122823364221461

`A193518(A179865(n+1))`
-/

namespace A005708.P11703122823364221461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A179865 (n + 1)).toNat

end

end A005708.P11703122823364221461

namespace A005708

/-- `A193518(A179865(n+1))` -/
def P11703122823364221461.Spec : Prop :=
  ∀ n, P11703122823364221461.a n = A005708 n

end A005708

/-!
# A005709: a(n) = a(n-1) + a(n-7), with a(i) = 1 for i = 0..6.

The programs for A005709, the canonical program `A005709.P4514442800659273842` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005709 has offset 0).

The definition of A005709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-7)` (program `A005709.P4514442800659273842`, by `A005709.P4514442800659273842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005709.P7225585965441985911

`ogf(1/(1-x-x^7))`
-/

namespace A005709.P7225585965441985911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, 0, 0, -1] n

end

end A005709.P7225585965441985911

namespace A005709

/-- `ogf(1/(1-x-x^7))` -/
def P7225585965441985911.Spec : Prop :=
  ∀ n, P7225585965441985911.a n = A005709 n

end A005709

/-! ## A005709.P4514442800659273842

`a(n-1)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005709

/-- `a(n-1)+a(n-7)` -/
def P4514442800659273842.Spec : Prop :=
  ∀ n, (P4514442800659273842.a n : ℤ) = A005709 n

theorem P4514442800659273842.correct : P4514442800659273842.Spec := by
  intro n
  simp only [A005709]

end A005709

/-! ## A005709.P53636125737319344

`∑[A017901(n)]`
-/

namespace A005709.P53636125737319344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005709.P53636125737319344

namespace A005709

/-- `∑[A017901(n)]` -/
def P53636125737319344.Spec : Prop :=
  ∀ n, P53636125737319344.a n = A005709 n

end A005709

/-! ## A005709.P11919268999518604787

`A017901(n+7)`
-/

namespace A005709.P11919268999518604787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (n + 7)

end

end A005709.P11919268999518604787

namespace A005709

/-- `A017901(n+7)` -/
def P11919268999518604787.Spec : Prop :=
  ∀ n, P11919268999518604787.a n = A005709 n

end A005709

/-! ## A005709.P2363036765161874201

`A098527(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A005709.P2363036765161874201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A098527 n - a (n - 3)

end

end A005709.P2363036765161874201

namespace A005709

/-- `A098527(n)-a(n-3)` -/
def P2363036765161874201.Spec : Prop :=
  ∀ n, P2363036765161874201.a n = A005709 n

end A005709

/-! ## A005709.P62032461007204598

`A143286(n+1)+A005710(n)-A143286(n)`
-/

namespace A005709.P62032461007204598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143286 (n + 1) + (A005710 n - A143286 n)

end

end A005709.P62032461007204598

namespace A005709

/-- `A143286(n+1)+A005710(n)-A143286(n)` -/
def P62032461007204598.Spec : Prop :=
  ∀ n, P62032461007204598.a n = A005709 n

end A005709

/-! ## A005709.P7532750764190079666

`A005708(n)+A143285(n)-A143285(n+1)`
-/

namespace A005709.P7532750764190079666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + (A143285 n - A143285 (n + 1))

end

end A005709.P7532750764190079666

namespace A005709

/-- `A005708(n)+A143285(n)-A143285(n+1)` -/
def P7532750764190079666.Spec : Prop :=
  ∀ n, P7532750764190079666.a n = A005709 n

end A005709

/-! ## A005709.P10579246762732253857

`sqrt(A224813(2*n))`
-/

namespace A005709.P10579246762732253857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224813 (2 * n) : ℝ)

end

end A005709.P10579246762732253857

namespace A005709

/-- `sqrt(A224813(2*n))` -/
def P10579246762732253857.Spec : Prop :=
  ∀ n, P10579246762732253857.a n = (A005709 n : ℝ)

end A005709

/-!
# A005710: a(n) = a(n-1) + a(n-8), with a(i) = 1 for i = 0..7.

The programs for A005710, the canonical program `A005710.P17329121890001037151` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005710 has offset 0).

The definition of A005710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-8)` (program `A005710.P17329121890001037151`, by `A005710.P17329121890001037151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005710.P2665437653337723151

`ogf(1/(1-x-x^8))`
-/

namespace A005710.P2665437653337723151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, 0, 0, 0, -1] n

end

end A005710.P2665437653337723151

namespace A005710

/-- `ogf(1/(1-x-x^8))` -/
def P2665437653337723151.Spec : Prop :=
  ∀ n, P2665437653337723151.a n = A005710 n

end A005710

/-! ## A005710.P17329121890001037151

`a(n-1)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005710

/-- `a(n-1)+a(n-8)` -/
def P17329121890001037151.Spec : Prop :=
  ∀ n, (P17329121890001037151.a n : ℤ) = A005710 n

theorem P17329121890001037151.correct : P17329121890001037151.Spec := by
  intro n
  simp only [A005710]

end A005710

/-! ## A005710.P15361805245687867214

`∑[A017902(n)]`
-/

namespace A005710.P15361805245687867214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005710.P15361805245687867214

namespace A005710

/-- `∑[A017902(n)]` -/
def P15361805245687867214.Spec : Prop :=
  ∀ n, P15361805245687867214.a n = A005710 n

end A005710

/-! ## A005710.P12424290719933840570

`A017902(n+8)`
-/

namespace A005710.P12424290719933840570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (n + 8)

end

end A005710.P12424290719933840570

namespace A005710

/-- `A017902(n+8)` -/
def P12424290719933840570.Spec : Prop :=
  ∀ n, P12424290719933840570.a n = A005710 n

end A005710

/-! ## A005710.P14903010282218165969

`A017863(n+8)-A017863(n+1)`
-/

namespace A005710.P14903010282218165969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017863 (n + 8) - A017863 (n + 1)

end

end A005710.P14903010282218165969

namespace A005710

/-- `A017863(n+8)-A017863(n+1)` -/
def P14903010282218165969.Spec : Prop :=
  ∀ n, P14903010282218165969.a n = A005710 n

end A005710

/-! ## A005710.P4429712882196071973

`A005709(n)-Δ[A143286(n)]`
-/

namespace A005710.P4429712882196071973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n - (f1 (n + 1) - f1 n)

end

end A005710.P4429712882196071973

namespace A005710

/-- `A005709(n)-Δ[A143286(n)]` -/
def P4429712882196071973.Spec : Prop :=
  ∀ n, P4429712882196071973.a n = A005710 n

end A005710

/-! ## A005710.P13713068458012951906

`A005709(n)+A143286(n)-A143286(n+1)`
-/

namespace A005710.P13713068458012951906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n + (A143286 n - A143286 (n + 1))

end

end A005710.P13713068458012951906

namespace A005710

/-- `A005709(n)+A143286(n)-A143286(n+1)` -/
def P13713068458012951906.Spec : Prop :=
  ∀ n, P13713068458012951906.a n = A005710 n

end A005710

/-! ## A005710.P14477121881092722885

`and(A141311(n+2), A367800(n+1))`
-/

namespace A005710.P14477121881092722885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 2)) (A367800 (n + 1))

end

end A005710.P14477121881092722885

namespace A005710

/-- `and(A141311(n+2), A367800(n+1))` -/
def P14477121881092722885.Spec : Prop :=
  ∀ n, P14477121881092722885.a n = A005710 n

end A005710

/-!
# A005711: a(n) = a(n-1) + a(n-9) for n >= 9; a(n) = 1 for n=0..7; a(8) = 2.

The programs for A005711, the canonical program `A005711.P6115173691964906152` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005711 has offset 0).

The definition of A005711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-9)` (program `A005711.P6115173691964906152`, by `A005711.P6115173691964906152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005711.P6115173691964906152

`a(n-1)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005711

/-- `a(n-1)+a(n-9)` -/
def P6115173691964906152.Spec : Prop :=
  ∀ n, (P6115173691964906152.a n : ℤ) = A005711 n

theorem P6115173691964906152.correct : P6115173691964906152.Spec := by
  intro n
  simp only [A005711]

end A005711

/-! ## A005711.P14086509451807214684

`ogf((1+x^8)/(1-x-x^9))`
-/

namespace A005711.P14086509451807214684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 0, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1] n

end

end A005711.P14086509451807214684

namespace A005711

/-- `ogf((1+x^8)/(1-x-x^9))` -/
def P14086509451807214684.Spec : Prop :=
  ∀ n, P14086509451807214684.a n = A005711 n

end A005711

/-! ## A005711.P12416375190002749544

`A017903(n+10)`
-/

namespace A005711.P12416375190002749544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (n + 10)

end

end A005711.P12416375190002749544

namespace A005711

/-- `A017903(n+10)` -/
def P12416375190002749544.Spec : Prop :=
  ∀ n, P12416375190002749544.a n = A005711 n

end A005711

/-! ## A005711.P16436028138579174652

`∑[A017903(A326178(n))]`
-/

namespace A005711.P16436028138579174652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (A326178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005711.P16436028138579174652

namespace A005711

/-- `∑[A017903(A326178(n))]` -/
def P16436028138579174652.Spec : Prop :=
  ∀ n, P16436028138579174652.a n = A005711 n

end A005711

/-! ## A005711.P13368176276319917410

`∑[A017903(n-A057428(n))]`
-/

namespace A005711.P13368176276319917410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 ((n : ℤ) - A057428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005711.P13368176276319917410

namespace A005711

/-- `∑[A017903(n-A057428(n))]` -/
def P13368176276319917410.Spec : Prop :=
  ∀ n, P13368176276319917410.a n = A005711 n

end A005711

/-! ## A005711.P11291722388646270561

`∑[A017903(A008611(A008486(n)))]`
-/

namespace A005711.P11291722388646270561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (A008611 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005711.P11291722388646270561

namespace A005711

/-- `∑[A017903(A008611(A008486(n)))]` -/
def P11291722388646270561.Spec : Prop :=
  ∀ n, P11291722388646270561.a n = A005711 n

end A005711

/-! ## A005711.P7822331882869396203

`∑[A017903(A004526(A103517(n)))]`
-/

namespace A005711.P7822331882869396203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (A004526 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005711.P7822331882869396203

namespace A005711

/-- `∑[A017903(A004526(A103517(n)))]` -/
def P7822331882869396203.Spec : Prop :=
  ∀ n, P7822331882869396203.a n = A005711 n

end A005711

/-! ## A005711.P15406261509091180423

`∑[A017903(A002262(A001844(n)))]`
-/

namespace A005711.P15406261509091180423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (A002262 (A001844 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005711.P15406261509091180423

namespace A005711

/-- `∑[A017903(A002262(A001844(n)))]` -/
def P15406261509091180423.Spec : Prop :=
  ∀ n, P15406261509091180423.a n = A005711 n

end A005711

/-!
# A005712: Coefficient of x^4 in expansion of (1+x+x^2)^n.

The programs for A005712, the canonical program `A005712.P7755511830153947435` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005712 has offset 2).

The definition of A005712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005712.P5944732316749482921

`ogf((1+x-x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A005712.P5944732316749482921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -5, 10, -10, 5, -1] n

end

end A005712.P5944732316749482921

namespace A005712

/-- `ogf((1+x-x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5944732316749482921.Spec : Prop :=
  ∀ n, P5944732316749482921.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P16505199131425224239

`C(n+4, n)+C(n+3, n)-C(n+2, n)`
-/

namespace A005712.P16505199131425224239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) n + Nat.choose (n + 3) n : ℤ) - (Nat.choose (n + 2) n : ℤ)

end

end A005712.P16505199131425224239

namespace A005712

/-- `C(n+4, n)+C(n+3, n)-C(n+2, n)` -/
def P16505199131425224239.Spec : Prop :=
  ∀ n, P16505199131425224239.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P11530028306621782498

`C(n+2, 2)+3*C(n+2, 3)+C(n+2, 4)`
-/

namespace A005712.P11530028306621782498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 3 * Nat.choose (n + 2) 3 + Nat.choose (n + 2) 4

end

end A005712.P11530028306621782498

namespace A005712

/-- `C(n+2, 2)+3*C(n+2, 3)+C(n+2, 4)` -/
def P11530028306621782498.Spec : Prop :=
  ∀ n, (P11530028306621782498.a n : ℤ) = A005712 (n + 2)

end A005712

/-! ## A005712.P7755511830153947435

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=19, a(3)=45, a(4)=90`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005712

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7755511830153947435.Spec : Prop :=
  ∀ n, P7755511830153947435.a n = A005712 (n + 2)

theorem P7755511830153947435.correct : P7755511830153947435.Spec := by
  intro n
  simp only [A005712, Nat.add_sub_cancel]

end A005712

/-! ## A005712.P3294502912907364093

`∑[∑[∑[n+2]-1]]`
-/

namespace A005712.P3294502912907364093
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005712.P3294502912907364093

namespace A005712

/-- `∑[∑[∑[n+2]-1]]` -/
def P3294502912907364093.Spec : Prop :=
  ∀ n, P3294502912907364093.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P920709506813049173

`∑[∑[n]]+C(n+4, 4)`
-/

namespace A005712.P920709506813049173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 4) 4

end

end A005712.P920709506813049173

namespace A005712

/-- `∑[∑[n]]+C(n+4, 4)` -/
def P920709506813049173.Spec : Prop :=
  ∀ n, (P920709506813049173.a n : ℤ) = A005712 (n + 2)

end A005712

/-! ## A005712.P15330882398075941081

`C(n+5, 4)-(n+2)²`
-/

namespace A005712.P15330882398075941081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A005712.P15330882398075941081

namespace A005712

/-- `C(n+5, 4)-(n+2)²` -/
def P15330882398075941081.Spec : Prop :=
  ∀ n, P15330882398075941081.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P10317015835747292411

`floor(∑[∑[n-∑[a(n-1)-1]]])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A005712.P10317015835747292411
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005712.P10317015835747292411

namespace A005712

/-- `floor(∑[∑[n-∑[a(n-1)-1]]])` -/
def P10317015835747292411.Spec : Prop :=
  ∀ n, P10317015835747292411.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P7551633064308703006

`∑[∑[lcm(n+1, n+2)+2*n]]/2`
-/

namespace A005712.P7551633064308703006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2) + 2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A005712.P7551633064308703006

namespace A005712

/-- `∑[∑[lcm(n+1, n+2)+2*n]]/2` -/
def P7551633064308703006.Spec : Prop :=
  ∀ n, P7551633064308703006.a n = (A005712 (n + 2) : ℚ)

end A005712

/-! ## A005712.P7013285404521544627

`A008779(n)-∑[n²]`
-/

namespace A005712.P7013285404521544627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005712.P7013285404521544627

namespace A005712

/-- `A008779(n)-∑[n²]` -/
def P7013285404521544627.Spec : Prop :=
  ∀ n, P7013285404521544627.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P13330482522396728505

`∑[∑[n]]+sqrt(A288876(n))`
-/

namespace A005712.P13330482522396728505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (A288876 n : ℝ)

end

end A005712.P13330482522396728505

namespace A005712

/-- `∑[∑[n]]+sqrt(A288876(n))` -/
def P13330482522396728505.Spec : Prop :=
  ∀ n, P13330482522396728505.a n = (A005712 (n + 2) : ℝ)

end A005712

/-! ## A005712.P6813085741670454945

`A014309(n+1)+2+n`
-/

namespace A005712.P6813085741670454945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014309 (n + 1) + 2 + (n : ℤ)

end

end A005712.P6813085741670454945

namespace A005712

/-- `A014309(n+1)+2+n` -/
def P6813085741670454945.Spec : Prop :=
  ∀ n, P6813085741670454945.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P15182328575098724558

`A227259(n+1)-(n+2)`
-/

namespace A005712.P15182328575098724558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 1) - (n + 2 : ℤ)

end

end A005712.P15182328575098724558

namespace A005712

/-- `A227259(n+1)-(n+2)` -/
def P15182328575098724558.Spec : Prop :=
  ∀ n, P15182328575098724558.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P4155554374874313163

`A008778(n)+a(n-1)` with `a(0)=1`
-/

namespace A005712.P4155554374874313163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008778 n + a (n - 1)

end

end A005712.P4155554374874313163

namespace A005712

/-- `A008778(n)+a(n-1)` -/
def P4155554374874313163.Spec : Prop :=
  ∀ n, P4155554374874313163.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P7591815151620405562

`A005582(n)+∑[∑[n+1]]`
-/

namespace A005712.P7591815151620405562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005712.P7591815151620405562

namespace A005712

/-- `A005582(n)+∑[∑[n+1]]` -/
def P7591815151620405562.Spec : Prop :=
  ∀ n, P7591815151620405562.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P16027268345564293085

`∑[A000292(n+1)]+∑[∑[n]]`
-/

namespace A005712.P16027268345564293085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A005712.P16027268345564293085

namespace A005712

/-- `∑[A000292(n+1)]+∑[∑[n]]` -/
def P16027268345564293085.Spec : Prop :=
  ∀ n, P16027268345564293085.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P5022660369174284540

`a(n-1)+A027378(n)+n` with `a(0)=1`
-/

namespace A005712.P5022660369174284540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A027378 n + (n : ℤ))

end

end A005712.P5022660369174284540

namespace A005712

/-- `a(n-1)+A027378(n)+n` -/
def P5022660369174284540.Spec : Prop :=
  ∀ n, P5022660369174284540.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P15966857107309581712

`a(n-1)+A005286(n)-n` with `a(0)=1`
-/

namespace A005712.P15966857107309581712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005286 n - (n : ℤ))

end

end A005712.P15966857107309581712

namespace A005712

/-- `a(n-1)+A005286(n)-n` -/
def P15966857107309581712.Spec : Prop :=
  ∀ n, P15966857107309581712.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P14782146365149335266

`A055417(n)+A016061(n)`
-/

namespace A005712.P14782146365149335266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n + A016061 n

end

end A005712.P14782146365149335266

namespace A005712

/-- `A055417(n)+A016061(n)` -/
def P14782146365149335266.Spec : Prop :=
  ∀ n, P14782146365149335266.a n = A005712 (n + 2)

end A005712

/-! ## A005712.P7244725692966199668

`A318054(n)+A006000(n)`
-/

namespace A005712.P7244725692966199668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n + A006000 n

end

end A005712.P7244725692966199668

namespace A005712

/-- `A318054(n)+A006000(n)` -/
def P7244725692966199668.Spec : Prop :=
  ∀ n, P7244725692966199668.a n = A005712 (n + 2)

end A005712

/-!
# A005713: Define strings S(0)=0, S(1)=11, S(n) = S(n-1)S(n-2); iterate.

The programs for A005713, the canonical program `A005713.P7596571295974710938` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005713 has offset 0).

The definition of A005713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014677, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005713.P7596571295974710938

`abs(A014677(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005713

/-- `abs(A014677(n+1))` -/
def P7596571295974710938.Spec : Prop :=
  ∀ n, P7596571295974710938.a n = A005713 n

theorem P7596571295974710938.correct : P7596571295974710938.Spec := by
  intro n
  simp only [A005713]

end A005713

/-! ## A005713.P9253491273186775372

`char[floor(∑[ϕ^((n-1)%2)])]`
-/

namespace A005713.P9253491273186775372
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005713.P9253491273186775372

namespace A005713

/-- `char[floor(∑[ϕ^((n-1)%2)])]` -/
def P9253491273186775372.Spec : Prop :=
  ∀ n, (P9253491273186775372.a n : ℤ) = A005713 n

end A005713

/-! ## A005713.P2938690976926739239

`1-Δ[floor(ceil(n/ϕ²)/ϕ)]`
-/

namespace A005713.P2938690976926739239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(n : ℝ) / Real.goldenRatio ^ 2⌉ : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A005713.P2938690976926739239

namespace A005713

/-- `1-Δ[floor(ceil(n/ϕ²)/ϕ)]` -/
def P2938690976926739239.Spec : Prop :=
  ∀ n, P2938690976926739239.a n = A005713 n

end A005713

/-! ## A005713.P14522651373094404553

`xor(1, Δ[floor(ceil(n/ϕ²)/ϕ)])`
-/

namespace A005713.P14522651373094404553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(n : ℝ) / Real.goldenRatio ^ 2⌉ : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A005713.P14522651373094404553

namespace A005713

/-- `xor(1, Δ[floor(ceil(n/ϕ²)/ϕ)])` -/
def P14522651373094404553.Spec : Prop :=
  ∀ n, P14522651373094404553.a n = A005713 n

end A005713

/-! ## A005713.P11107987222440043030

`A129761(n)%2`
-/

namespace A005713.P11107987222440043030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129761 n) 2

end

end A005713.P11107987222440043030

namespace A005713

/-- `A129761(n)%2` -/
def P11107987222440043030.Spec : Prop :=
  ∀ n, P11107987222440043030.a n = A005713 n

end A005713

/-! ## A005713.P18185599450777926245

`char[A219636(n+1)]`
-/

namespace A005713.P18185599450777926245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005713.P18185599450777926245

namespace A005713

/-- `char[A219636(n+1)]` -/
def P18185599450777926245.Spec : Prop :=
  ∀ n, (P18185599450777926245.a n : ℤ) = A005713 n

end A005713

/-! ## A005713.P4180590964084778188

`char[A307295(n)-2]`
-/

namespace A005713.P4180590964084778188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005713.P4180590964084778188

namespace A005713

/-- `char[A307295(n)-2]` -/
def P4180590964084778188.Spec : Prop :=
  ∀ n, (P4180590964084778188.a n : ℤ) = A005713 n

end A005713

/-! ## A005713.P4899421292683581419

`A134408(n+1)%2`
-/

namespace A005713.P4899421292683581419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134408 (n + 1)) 2

end

end A005713.P4899421292683581419

namespace A005713

/-- `A134408(n+1)%2` -/
def P4899421292683581419.Spec : Prop :=
  ∀ n, P4899421292683581419.a n = A005713 n

end A005713

/-! ## A005713.P7070957310164371590

`floor(sqrt(A383999(n+1)))`
-/

namespace A005713.P7070957310164371590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A383999 (n + 1))

end

end A005713.P7070957310164371590

namespace A005713

/-- `floor(sqrt(A383999(n+1)))` -/
def P7070957310164371590.Spec : Prop :=
  ∀ n, P7070957310164371590.a n = A005713 n

end A005713

/-! ## A005713.P2335180448487405341

`(1-A123740(n+1))²`
-/

namespace A005713.P2335180448487405341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A123740 (n + 1)) ^ 2

end

end A005713.P2335180448487405341

namespace A005713

/-- `(1-A123740(n+1))²` -/
def P2335180448487405341.Spec : Prop :=
  ∀ n, P2335180448487405341.a n = A005713 n

end A005713

/-! ## A005713.P9839009484380907681

`char[A187485(n+1)-1]`
-/

namespace A005713.P9839009484380907681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005713.P9839009484380907681

namespace A005713

/-- `char[A187485(n+1)-1]` -/
def P9839009484380907681.Spec : Prop :=
  ∀ n, (P9839009484380907681.a n : ℤ) = A005713 n

end A005713

/-! ## A005713.P15691309676597660150

`char[n-A327174(n+1)]`
-/

namespace A005713.P15691309676597660150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A327174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005713.P15691309676597660150

namespace A005713

/-- `char[n-A327174(n+1)]` -/
def P15691309676597660150.Spec : Prop :=
  ∀ n, (P15691309676597660150.a n : ℤ) = A005713 n

end A005713

/-! ## A005713.P3192779137930656466

`A005614(A319433(n))`
-/

namespace A005713.P3192779137930656466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A319433 n).toNat

end

end A005713.P3192779137930656466

namespace A005713

/-- `A005614(A319433(n))` -/
def P3192779137930656466.Spec : Prop :=
  ∀ n, P3192779137930656466.a n = A005713 n

end A005713

/-! ## A005713.P3816089826123240808

`A096270(A002251(n)+1)`
-/

namespace A005713.P3816089826123240808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A002251 n + 1).toNat

end

end A005713.P3816089826123240808

namespace A005713

/-- `A096270(A002251(n)+1)` -/
def P3816089826123240808.Spec : Prop :=
  ∀ n, P3816089826123240808.a n = A005713 n

end A005713

/-! ## A005713.P13191897346086055792

`A096270(A005206(n+1))`
-/

namespace A005713.P13191897346086055792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A005206 (n + 1)).toNat

end

end A005713.P13191897346086055792

namespace A005713

/-- `A096270(A005206(n+1))` -/
def P13191897346086055792.Spec : Prop :=
  ∀ n, P13191897346086055792.a n = A005713 n

end A005713

/-! ## A005713.P14139016925439110976

`A096270(A135414(n+1))`
-/

namespace A005713.P14139016925439110976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A135414 (n + 1)).toNat

end

end A005713.P14139016925439110976

namespace A005713

/-- `A096270(A135414(n+1))` -/
def P14139016925439110976.Spec : Prop :=
  ∀ n, P14139016925439110976.a n = A005713 n

end A005713

/-! ## A005713.P6256511218917368511

`A003849(A005614(n)+n)`
-/

namespace A005713.P6256511218917368511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A005614 n + (n : ℤ)).toNat

end

end A005713.P6256511218917368511

namespace A005713

/-- `A003849(A005614(n)+n)` -/
def P6256511218917368511.Spec : Prop :=
  ∀ n, P6256511218917368511.a n = A005713 n

end A005713

/-! ## A005713.P15410988814723997551

`A005614(A014675(n)+n)`
-/

namespace A005713.P15410988814723997551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A014675 n + (n : ℤ)).toNat

end

end A005713.P15410988814723997551

namespace A005713

/-- `A005614(A014675(n)+n)` -/
def P15410988814723997551.Spec : Prop :=
  ∀ n, P15410988814723997551.a n = A005713 n

end A005713

/-!
# A005714: Coefficient of x^6 in expansion of (1+x+x^2)^n.

The programs for A005714, the canonical program `A005714.P16785582213835551995` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005714 has offset 3).

The definition of A005714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005714.P5965902612558592370

`ogf((1+3x-4x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A005714.P5965902612558592370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -4, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A005714.P5965902612558592370

namespace A005714

/-- `ogf((1+3x-4x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5965902612558592370.Spec : Prop :=
  ∀ n, P5965902612558592370.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P16785582213835551995

`C(n+3, 3)+6*C(n+3, 4)+5*C(n+3, 5)+C(n+3, 6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005714

/-- `C(n+3, 3)+6*C(n+3, 4)+5*C(n+3, 5)+C(n+3, 6)` -/
def P16785582213835551995.Spec : Prop :=
  ∀ n, (P16785582213835551995.a n : ℤ) = A005714 (n + 3)

theorem P16785582213835551995.correct : P16785582213835551995.Spec := by
  intro n
  simp only [A005714, Nat.add_sub_cancel]

end A005714

/-! ## A005714.P15104916427485329449

`∑[∑[∑[∑[∑[n+3]]-(n+2)]]]`
-/

namespace A005714.P15104916427485329449
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005714.P15104916427485329449

namespace A005714

/-- `∑[∑[∑[∑[∑[n+3]]-(n+2)]]]` -/
def P15104916427485329449.Spec : Prop :=
  ∀ n, P15104916427485329449.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P17633603645944871507

`A095662(n)-A005582(n+1)`
-/

namespace A005714.P17633603645944871507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n - A005582 (n + 1)

end

end A005714.P17633603645944871507

namespace A005714

/-- `A095662(n)-A005582(n+1)` -/
def P17633603645944871507.Spec : Prop :=
  ∀ n, P17633603645944871507.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P496100771778665536

`A001919(n+3)-A062990(n)`
-/

namespace A005714.P496100771778665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - A062990 n

end

end A005714.P496100771778665536

namespace A005714

/-- `A001919(n+3)-A062990(n)` -/
def P496100771778665536.Spec : Prop :=
  ∀ n, P496100771778665536.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P16565570531140543153

`A278670(n+1)+A277935(n+1)`
-/

namespace A005714.P16565570531140543153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) + A277935 (n + 1)

end

end A005714.P16565570531140543153

namespace A005714

/-- `A278670(n+1)+A277935(n+1)` -/
def P16565570531140543153.Spec : Prop :=
  ∀ n, P16565570531140543153.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P4289115447654740819

`A056074(n+3)-∑[A005712(n+2)]`
-/

namespace A005714.P4289115447654740819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056074 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005714.P4289115447654740819

namespace A005714

/-- `A056074(n+3)-∑[A005712(n+2)]` -/
def P4289115447654740819.Spec : Prop :=
  ∀ n, P4289115447654740819.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P4231998824400628785

`A056241(A374004(n+1))`
-/

namespace A005714.P4231998824400628785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056241 (A374004 (n + 1)).toNat

end

end A005714.P4231998824400628785

namespace A005714

/-- `A056241(A374004(n+1))` -/
def P4231998824400628785.Spec : Prop :=
  ∀ n, P4231998824400628785.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P15125654930390535446

`A056241(A167614(n+2)+1)`
-/

namespace A005714.P15125654930390535446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056241 (A167614 (n + 2) + 1).toNat

end

end A005714.P15125654930390535446

namespace A005714

/-- `A056241(A167614(n+2)+1)` -/
def P15125654930390535446.Spec : Prop :=
  ∀ n, P15125654930390535446.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P14963769014890465676

`A122935(eq[4, A002262(n)])`
-/

namespace A005714.P14963769014890465676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005714.P14963769014890465676

namespace A005714

/-- `A122935(eq[4, A002262(n)])` -/
def P14963769014890465676.Spec : Prop :=
  ∀ n, P14963769014890465676.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P9746537287954199258

`A122935(A000217(n+4)+4)`
-/

namespace A005714.P9746537287954199258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 (A000217 (n + 4) + 4).toNat

end

end A005714.P9746537287954199258

namespace A005714

/-- `A122935(A000217(n+4)+4)` -/
def P9746537287954199258.Spec : Prop :=
  ∀ n, P9746537287954199258.a n = A005714 (n + 3)

end A005714

/-! ## A005714.P9442737289494968730

`A056241(A000217(n+3)+n+1)`
-/

namespace A005714.P9442737289494968730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056241 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A005714.P9442737289494968730

namespace A005714

/-- `A056241(A000217(n+3)+n+1)` -/
def P9442737289494968730.Spec : Prop :=
  ∀ n, P9442737289494968730.a n = A005714 (n + 3)

end A005714

/-!
# A005715: Coefficient of x^7 in expansion of (1+x+x^2)^n.

The programs for A005715, the canonical program `A005715.P10380124962562780927` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005715 has offset 4).

The definition of A005715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005715.P9118815798821133704

`ogf((4-2x-2x^2+x^3)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A005715.P9118815798821133704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -2, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A005715.P9118815798821133704

namespace A005715

/-- `ogf((4-2x-2x^2+x^3)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P9118815798821133704.Spec : Prop :=
  ∀ n, P9118815798821133704.a n = A005715 (n + 4)

end A005715

/-! ## A005715.P13738800333726613142

`C(n+4, 4)*((n+4)^3+27*(n+4)²+116*(n+4)-120)/210`
-/

namespace A005715.P13738800333726613142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 4) 4 : ℤ) * (((n + 4) ^ 3 + 27 * (n + 4) ^ 2 + 116 * (n + 4) : ℤ) - 120) : ℚ) / 210

end

end A005715.P13738800333726613142

namespace A005715

/-- `C(n+4, 4)*((n+4)^3+27*(n+4)²+116*(n+4)-120)/210` -/
def P13738800333726613142.Spec : Prop :=
  ∀ n, P13738800333726613142.a n = (A005715 (n + 4) : ℚ)

theorem P13738800333726613142.correct : P13738800333726613142.Spec := by
  intro n
  simp only [A005715, Nat.add_sub_cancel, A005715.P13738800333726613142.a, A005715.P10380124962562780927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005715

/-! ## A005715.P10380124962562780927

`4*C(n+4, 4)+10*C(n+4, 5)+6*C(n+4, 6)+C(n+4, 7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005715

/-- `4*C(n+4, 4)+10*C(n+4, 5)+6*C(n+4, 6)+C(n+4, 7)` -/
def P10380124962562780927.Spec : Prop :=
  ∀ n, (P10380124962562780927.a n : ℤ) = A005715 (n + 4)

theorem P10380124962562780927.correct : P10380124962562780927.Spec := by
  intro n
  simp only [A005715, Nat.add_sub_cancel]

end A005715

/-! ## A005715.P789025504842363666

`∑[∑[∑[∑[∑[∑[n+4]]+n]]]]`
-/

namespace A005715.P789025504842363666
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005715.P789025504842363666

namespace A005715

/-- `∑[∑[∑[∑[∑[∑[n+4]]+n]]]]` -/
def P789025504842363666.Spec : Prop :=
  ∀ n, (P789025504842363666.a n : ℤ) = A005715 (n + 4)

end A005715

/-! ## A005715.P8207570735369345716

`A096945(n)-A257200(n+1)`
-/

namespace A005715.P8207570735369345716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n - A257200 (n + 1)

end

end A005715.P8207570735369345716

namespace A005715

/-- `A096945(n)-A257200(n+1)` -/
def P8207570735369345716.Spec : Prop :=
  ∀ n, P8207570735369345716.a n = A005715 (n + 4)

end A005715

/-! ## A005715.P17340995261414577605

`∑[A096944(n)]-A257200(n+1)`
-/

namespace A005715.P17340995261414577605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A257200 (n + 1)

end

end A005715.P17340995261414577605

namespace A005715

/-- `∑[A096944(n)]-A257200(n+1)` -/
def P17340995261414577605.Spec : Prop :=
  ∀ n, P17340995261414577605.a n = A005715 (n + 4)

end A005715

/-! ## A005715.P11086974481227673395

`A095662(n)+∑[A005714(n+3)]`
-/

namespace A005715.P11086974481227673395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005715.P11086974481227673395

namespace A005715

/-- `A095662(n)+∑[A005714(n+3)]` -/
def P11086974481227673395.Spec : Prop :=
  ∀ n, P11086974481227673395.a n = A005715 (n + 4)

end A005715

/-! ## A005715.P4321909756749419940

`Δ[A005716(n+4)]-A005714(n+4)`
-/

namespace A005715.P4321909756749419940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005714 (n + 4)

end

end A005715.P4321909756749419940

namespace A005715

/-- `Δ[A005716(n+4)]-A005714(n+4)` -/
def P4321909756749419940.Spec : Prop :=
  ∀ n, P4321909756749419940.a n = A005715 (n + 4)

theorem P4321909756749419940.correct : P4321909756749419940.Spec := by
  intro n
  simp only [A005715, Nat.add_sub_cancel, A005715.P4321909756749419940.f1, A005715.P4321909756749419940.a, A005715.P10380124962562780927.a, A005714, A005714.P16785582213835551995.a, A005716, A005716.P12168191936695265211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005715

/-! ## A005715.P9180060750425750857

`A005716(n+5)-(A005716(n+4)+A005714(n+4))`
-/

namespace A005715.P9180060750425750857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 5) - (A005716 (n + 4) + A005714 (n + 4))

end

end A005715.P9180060750425750857

namespace A005715

/-- `A005716(n+5)-(A005716(n+4)+A005714(n+4))` -/
def P9180060750425750857.Spec : Prop :=
  ∀ n, P9180060750425750857.a n = A005715 (n + 4)

theorem P9180060750425750857.correct : P9180060750425750857.Spec := by
  intro n
  simp only [A005715, Nat.add_sub_cancel, A005715.P9180060750425750857.a, A005715.P10380124962562780927.a, A005714, A005714.P16785582213835551995.a, A005716, A005716.P12168191936695265211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005715

/-! ## A005715.P17129264655629910760

`A123934(A374004(n+1))`
-/

namespace A005715.P17129264655629910760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123934 (A374004 (n + 1)).toNat

end

end A005715.P17129264655629910760

namespace A005715

/-- `A123934(A374004(n+1))` -/
def P17129264655629910760.Spec : Prop :=
  ∀ n, P17129264655629910760.a n = A005715 (n + 4)

end A005715

/-! ## A005715.P14894927236859497850

`A099509(eq[8, A002260(n+1)])`
-/

namespace A005715.P14894927236859497850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005715.P14894927236859497850

namespace A005715

/-- `A099509(eq[8, A002260(n+1)])` -/
def P14894927236859497850.Spec : Prop :=
  ∀ n, P14894927236859497850.a n = A005715 (n + 4)

end A005715

/-! ## A005715.P10222085746442670630

`A099509(eq[15, A158405(n+1)])`
-/

namespace A005715.P10222085746442670630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005715.P10222085746442670630

namespace A005715

/-- `A099509(eq[15, A158405(n+1)])` -/
def P10222085746442670630.Spec : Prop :=
  ∀ n, P10222085746442670630.a n = A005715 (n + 4)

end A005715

/-!
# A005716: Coefficient of x^8 in expansion of (1+x+x^2)^n.

The programs for A005716, the canonical program `A005716.P12168191936695265211` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005716 has offset 4).

The definition of A005716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005716.P14218319942104723290

`C(n+5, 5)*((n+4)²+23*(n+4)-84)*(n+14)/336`
-/

namespace A005716.P14218319942104723290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 5) 5 : ℤ) * (((n + 4) ^ 2 + 23 * (n + 4) : ℤ) - 84) * (n + 14 : ℤ) : ℚ) / 336

end

end A005716.P14218319942104723290

namespace A005716

/-- `C(n+5, 5)*((n+4)²+23*(n+4)-84)*(n+14)/336` -/
def P14218319942104723290.Spec : Prop :=
  ∀ n, P14218319942104723290.a n = (A005716 (n + 4) : ℚ)

theorem P14218319942104723290.correct : P14218319942104723290.Spec := by
  intro n
  simp only [A005716, Nat.add_sub_cancel, A005716.P14218319942104723290.a, A005716.P12168191936695265211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005716

/-! ## A005716.P12168191936695265211

`C(n+4, 4)+10*C(n+4, 5)+15*C(n+4, 6)+7*C(n+4, 7)+C(n+4, 8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005716

/-- `C(n+4, 4)+10*C(n+4, 5)+15*C(n+4, 6)+7*C(n+4, 7)+C(n+4, 8)` -/
def P12168191936695265211.Spec : Prop :=
  ∀ n, (P12168191936695265211.a n : ℤ) = A005716 (n + 4)

theorem P12168191936695265211.correct : P12168191936695265211.Spec := by
  intro n
  simp only [A005716, Nat.add_sub_cancel]

end A005716

/-! ## A005716.P13536440567241101968

`∑[A005715(n+4)]-A095662(n)`
-/

namespace A005716.P13536440567241101968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005715 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095662 n

end

end A005716.P13536440567241101968

namespace A005716

/-- `∑[A005715(n+4)]-A095662(n)` -/
def P13536440567241101968.Spec : Prop :=
  ∀ n, P13536440567241101968.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P6483412666358167850

`∑[A005715(n+4)-A000574(n+3)]`
-/

namespace A005716.P6483412666358167850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005715 (n + 4) - A000574 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005716.P6483412666358167850

namespace A005716

/-- `∑[A005715(n+4)-A000574(n+3)]` -/
def P6483412666358167850.Spec : Prop :=
  ∀ n, P6483412666358167850.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P15024277315367290837

`∑[A005715(n+4)+A005714(n+3)]-A005715(n+4)`
-/

namespace A005716.P15024277315367290837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005715 (n + 4) + A005714 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005715 (n + 4)

end

end A005716.P15024277315367290837

namespace A005716

/-- `∑[A005715(n+4)+A005714(n+3)]-A005715(n+4)` -/
def P15024277315367290837.Spec : Prop :=
  ∀ n, P15024277315367290837.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P17695610978150016805

`∑[∑[A252970(n+3)]]`
-/

namespace A005716.P17695610978150016805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252970 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005716.P17695610978150016805

namespace A005716

/-- `∑[∑[A252970(n+3)]]` -/
def P17695610978150016805.Spec : Prop :=
  ∀ n, P17695610978150016805.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P8146111714475388290

`A095671(n)-A253942(n+4)`
-/

namespace A005716.P8146111714475388290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n - A253942 (n + 4)

end

end A005716.P8146111714475388290

namespace A005716

/-- `A095671(n)-A253942(n+4)` -/
def P8146111714475388290.Spec : Prop :=
  ∀ n, P8146111714475388290.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P156698337934358959

`∑[A056005(n+3)-A000332(n+4)]`
-/

namespace A005716.P156698337934358959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (n + 3) - A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005716.P156698337934358959

namespace A005716

/-- `∑[A056005(n+3)-A000332(n+4)]` -/
def P156698337934358959.Spec : Prop :=
  ∀ n, P156698337934358959.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P3119197325586313450

`∑[A056005(n+3)]-A000389(n+5)`
-/

namespace A005716.P3119197325586313450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000389 (n + 5)

end

end A005716.P3119197325586313450

namespace A005716

/-- `∑[A056005(n+3)]-A000389(n+5)` -/
def P3119197325586313450.Spec : Prop :=
  ∀ n, P3119197325586313450.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P9781898578225129799

`A120987(Δ[A008778(n+1)]-1)`
-/

namespace A005716.P9781898578225129799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (f1 (n + 1) - f1 n - 1).toNat

end

end A005716.P9781898578225129799

namespace A005716

/-- `A120987(Δ[A008778(n+1)]-1)` -/
def P9781898578225129799.Spec : Prop :=
  ∀ n, P9781898578225129799.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P12961493910498167400

`A120987(A000096(n+2)+n+2)`
-/

namespace A005716.P12961493910498167400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A005716.P12961493910498167400

namespace A005716

/-- `A120987(A000096(n+2)+n+2)` -/
def P12961493910498167400.Spec : Prop :=
  ∀ n, P12961493910498167400.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P6591547863426903564

`A120987(A000217(n+3)+n+1)`
-/

namespace A005716.P6591547863426903564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A005716.P6591547863426903564

namespace A005716

/-- `A120987(A000217(n+3)+n+1)` -/
def P6591547863426903564.Spec : Prop :=
  ∀ n, P6591547863426903564.a n = A005716 (n + 4)

end A005716

/-! ## A005716.P8306821942079341424

`A056241(A374005(n+1))`
-/

namespace A005716.P8306821942079341424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056241 (A374005 (n + 1)).toNat

end

end A005716.P8306821942079341424

namespace A005716

/-- `A056241(A374005(n+1))` -/
def P8306821942079341424.Spec : Prop :=
  ∀ n, P8306821942079341424.a n = A005716 (n + 4)

end A005716

/-!
# A005717: Construct triangle in which n-th row is obtained by expanding (1 + x + x^2)^n and take the next-to-central column.

The programs for A005717, the canonical program `A005717.P3550266723113261491` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005717 has offset 1).

The definition of A005717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005717.P9191820474792570212

`∑{#}[n, C(n+1, #)*C(n+1-#, #+1)]`
-/

namespace A005717.P9191820474792570212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k * Nat.choose ((n + 1 : ℤ) - (k : ℤ)).toNat (k + 1)

end

end A005717.P9191820474792570212

namespace A005717

/-- `∑{#}[n, C(n+1, #)*C(n+1-#, #+1)]` -/
def P9191820474792570212.Spec : Prop :=
  ∀ n, (P9191820474792570212.a n : ℤ) = A005717 (n + 1)

end A005717

/-! ## A005717.P3550266723113261491

`(n+1)*A001006(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005717

/-- `(n+1)*A001006(n)` -/
def P3550266723113261491.Spec : Prop :=
  ∀ n, P3550266723113261491.a n = A005717 (n + 1)

theorem P3550266723113261491.correct : P3550266723113261491.Spec := by
  intro n
  simp only [A005717, Nat.add_sub_cancel]

end A005717

/-! ## A005717.P16339579924829478616

`A002426(n+1)-A005043(n+1)`
-/

namespace A005717.P16339579924829478616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) - A005043 (n + 1)

end

end A005717.P16339579924829478616

namespace A005717

/-- `A002426(n+1)-A005043(n+1)` -/
def P16339579924829478616.Spec : Prop :=
  ∀ n, P16339579924829478616.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P9810693374627415751

`1/2*(A005773(n+2)-A005043(n+1))`
-/

namespace A005717.P9810693374627415751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A005773 (n + 2) - A005043 (n + 1) : ℚ)

end

end A005717.P9810693374627415751

namespace A005717

/-- `1/2*(A005773(n+2)-A005043(n+1))` -/
def P9810693374627415751.Spec : Prop :=
  ∀ n, P9810693374627415751.a n = (A005717 (n + 1) : ℚ)

end A005717

/-! ## A005717.P3031281436767547017

`a(n-1)+A002426(n)+A014531(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005717.P3031281436767547017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A002426 n + A014531 (n - 1)

end

end A005717.P3031281436767547017

namespace A005717

/-- `a(n-1)+A002426(n)+A014531(n-1)` -/
def P3031281436767547017.Spec : Prop :=
  ∀ n, P3031281436767547017.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P9140999089258144181

`(A002426(n+2)-A002426(n+1))/2`
-/

namespace A005717.P9140999089258144181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 (n + 2) - A002426 (n + 1) : ℚ) / 2

end

end A005717.P9140999089258144181

namespace A005717

/-- `(A002426(n+2)-A002426(n+1))/2` -/
def P9140999089258144181.Spec : Prop :=
  ∀ n, P9140999089258144181.a n = (A005717 (n + 1) : ℚ)

end A005717

/-! ## A005717.P7604738516541232096

`Δ[A097861(n+1)]`
-/

namespace A005717.P7604738516541232096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005717.P7604738516541232096

namespace A005717

/-- `Δ[A097861(n+1)]` -/
def P7604738516541232096.Spec : Prop :=
  ∀ n, P7604738516541232096.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P7127351754083126215

`Δ[A257520(n+1)]`
-/

namespace A005717.P7127351754083126215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005717.P7127351754083126215

namespace A005717

/-- `Δ[A257520(n+1)]` -/
def P7127351754083126215.Spec : Prop :=
  ∀ n, P7127351754083126215.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P4668453252904300368

`A005213(2*n+3)`
-/

namespace A005717.P4668453252904300368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n + 3)

end

end A005717.P4668453252904300368

namespace A005717

/-- `A005213(2*n+3)` -/
def P4668453252904300368.Spec : Prop :=
  ∀ n, P4668453252904300368.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P15648102650370364196

`A025178(n+2)/2`
-/

namespace A005717.P15648102650370364196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025178 (n + 2) : ℚ) / 2

end

end A005717.P15648102650370364196

namespace A005717

/-- `A025178(n+2)/2` -/
def P15648102650370364196.Spec : Prop :=
  ∀ n, P15648102650370364196.a n = (A005717 (n + 1) : ℚ)

end A005717

/-! ## A005717.P15904220601659848126

`∑[∑[A024998(n+1)]]`
-/

namespace A005717.P15904220601659848126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005717.P15904220601659848126

namespace A005717

/-- `∑[∑[A024998(n+1)]]` -/
def P15904220601659848126.Spec : Prop :=
  ∀ n, P15904220601659848126.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P16470594013527132468

`(n+1)*Δ[A097332(n)]`
-/

namespace A005717.P16470594013527132468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A005717.P16470594013527132468

namespace A005717

/-- `(n+1)*Δ[A097332(n)]` -/
def P16470594013527132468.Spec : Prop :=
  ∀ n, P16470594013527132468.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P2547431841711940759

`record[(1-n)*A168051(n)]`
-/

namespace A005717.P2547431841711940759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A168051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005717.P2547431841711940759

namespace A005717

/-- `record[(1-n)*A168051(n)]` -/
def P2547431841711940759.Spec : Prop :=
  ∀ n, P2547431841711940759.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P14971235192454781455

`record[(1-n)*A292440(n)]`
-/

namespace A005717.P14971235192454781455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A292440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005717.P14971235192454781455

namespace A005717

/-- `record[(1-n)*A292440(n)]` -/
def P14971235192454781455.Spec : Prop :=
  ∀ n, P14971235192454781455.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P6275163853745708456

`(n+1)*A086246(n+2)`
-/

namespace A005717.P6275163853745708456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086246 (n + 2)

end

end A005717.P6275163853745708456

namespace A005717

/-- `(n+1)*A086246(n+2)` -/
def P6275163853745708456.Spec : Prop :=
  ∀ n, P6275163853745708456.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P10119267035572793436

`(n+1)*A168049(n+2)`
-/

namespace A005717.P10119267035572793436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168049 (n + 2)

end

end A005717.P10119267035572793436

namespace A005717

/-- `(n+1)*A168049(n+2)` -/
def P10119267035572793436.Spec : Prop :=
  ∀ n, P10119267035572793436.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P4009401238465392482

`A026135(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A005717.P4009401238465392482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026135 n + a (n - 2)

end

end A005717.P4009401238465392482

namespace A005717

/-- `A026135(n)+a(n-2)` -/
def P4009401238465392482.Spec : Prop :=
  ∀ n, P4009401238465392482.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P8580512405995397635

`∑[A026079(n+1)-2]+2`
-/

namespace A005717.P8580512405995397635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026079 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A005717.P8580512405995397635

namespace A005717

/-- `∑[A026079(n+1)-2]+2` -/
def P8580512405995397635.Spec : Prop :=
  ∀ n, P8580512405995397635.a n = A005717 (n + 1)

end A005717

/-! ## A005717.P38736477021325136

`(n+1)/2*A007971(n+2)`
-/

namespace A005717.P38736477021325136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A007971 (n + 2) : ℚ)

end

end A005717.P38736477021325136

namespace A005717

/-- `(n+1)/2*A007971(n+2)` -/
def P38736477021325136.Spec : Prop :=
  ∀ n, P38736477021325136.a n = (A005717 (n + 1) : ℚ)

end A005717

/-! ## A005717.P13855645891831017763

`(n+1)/2*A126068(n+2)`
-/

namespace A005717.P13855645891831017763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A126068 (n + 2) : ℚ)

end

end A005717.P13855645891831017763

namespace A005717

/-- `(n+1)/2*A126068(n+2)` -/
def P13855645891831017763.Spec : Prop :=
  ∀ n, P13855645891831017763.a n = (A005717 (n + 1) : ℚ)

end A005717

/-!
# A005718: Quadrinomial coefficients: C(2+n,n) + C(3+n,n) + C(4+n,n).

The programs for A005718, the canonical program `A005718.P1183563811903939973` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005718 has offset 0).

The definition of A005718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2+n, n)+C(3+n, n)+C(4+n, n)` (program `A005718.P1183563811903939973`, by `A005718.P1183563811903939973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005718.P15982770731908740571

`ogf((3-3x+x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A005718.P15982770731908740571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 1] [1, -5, 10, -10, 5, -1] n

end

end A005718.P15982770731908740571

namespace A005718

/-- `ogf((3-3x+x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15982770731908740571.Spec : Prop :=
  ∀ n, P15982770731908740571.a n = A005718 n

end A005718

/-! ## A005718.P1183563811903939973

`C(2+n, n)+C(3+n, n)+C(4+n, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005718

/-- `C(2+n, n)+C(3+n, n)+C(4+n, n)` -/
def P1183563811903939973.Spec : Prop :=
  ∀ n, (P1183563811903939973.a n : ℤ) = A005718 n

theorem P1183563811903939973.correct : P1183563811903939973.Spec := by
  intro n
  simp only [A005718]

end A005718

/-! ## A005718.P16629710133425486269

`(((n+14)*n+71)*n+130)*n/24+3`
-/

namespace A005718.P16629710133425486269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 14) * n + 71) * n + 130) * n : ℚ) / 24 + 3

end

end A005718.P16629710133425486269

namespace A005718

/-- `(((n+14)*n+71)*n+130)*n/24+3` -/
def P16629710133425486269.Spec : Prop :=
  ∀ n, P16629710133425486269.a n = (A005718 n : ℚ)

end A005718

/-! ## A005718.P5514993554339547366

`∑[∑[C(n+3, 2)]]`
-/

namespace A005718.P5514993554339547366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P5514993554339547366

namespace A005718

/-- `∑[∑[C(n+3, 2)]]` -/
def P5514993554339547366.Spec : Prop :=
  ∀ n, (P5514993554339547366.a n : ℤ) = A005718 n

end A005718

/-! ## A005718.P10799240504818403220

`record[C(n, 4)+3-n]`
-/

namespace A005718.P10799240504818403220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) + (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005718.P10799240504818403220

namespace A005718

/-- `record[C(n, 4)+3-n]` -/
def P10799240504818403220.Spec : Prop :=
  ∀ n, P10799240504818403220.a n = A005718 n

end A005718

/-! ## A005718.P8072071992418586475

`record[3-(n-C(n, 4))]`
-/

namespace A005718.P8072071992418586475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n : ℤ) - (Nat.choose n 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005718.P8072071992418586475

namespace A005718

/-- `record[3-(n-C(n, 4))]` -/
def P8072071992418586475.Spec : Prop :=
  ∀ n, P8072071992418586475.a n = A005718 n

end A005718

/-! ## A005718.P5142850809015153426

`C(n+5, 4)-(n+2)`
-/

namespace A005718.P5142850809015153426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℤ) - (n + 2 : ℤ)

end

end A005718.P5142850809015153426

namespace A005718

/-- `C(n+5, 4)-(n+2)` -/
def P5142850809015153426.Spec : Prop :=
  ∀ n, P5142850809015153426.a n = A005718 n

end A005718

/-! ## A005718.P4077711488242058031

`∑[∑[1-∑[a(n-1)-1]]]` with `a(0)=-2`
-/

namespace A005718.P4077711488242058031
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P4077711488242058031

namespace A005718

/-- `∑[∑[1-∑[a(n-1)-1]]]` -/
def P4077711488242058031.Spec : Prop :=
  ∀ n, P4077711488242058031.a n = A005718 n

end A005718

/-! ## A005718.P14317821405071834743

`(4/(n+1)+1)*a(n-1)+3` with `a(0)=3`
-/

namespace A005718.P14317821405071834743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (4 / (n + 1 : ℚ) + 1) * a (n - 1) + 3

end

end A005718.P14317821405071834743

namespace A005718

/-- `(4/(n+1)+1)*a(n-1)+3` -/
def P14317821405071834743.Spec : Prop :=
  ∀ n, P14317821405071834743.a n = (A005718 n : ℚ)

end A005718

/-! ## A005718.P15668693111622031252

`∑[A062748(n)]`
-/

namespace A005718.P15668693111622031252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P15668693111622031252

namespace A005718

/-- `∑[A062748(n)]` -/
def P15668693111622031252.Spec : Prop :=
  ∀ n, P15668693111622031252.a n = A005718 n

end A005718

/-! ## A005718.P11676481516213576036

`∑[A092286(n)+3]`
-/

namespace A005718.P11676481516213576036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P11676481516213576036

namespace A005718

/-- `∑[A092286(n)+3]` -/
def P11676481516213576036.Spec : Prop :=
  ∀ n, P11676481516213576036.a n = A005718 n

end A005718

/-! ## A005718.P9574640368013297819

`∑[∑[A000217(n+2)]]`
-/

namespace A005718.P9574640368013297819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P9574640368013297819

namespace A005718

/-- `∑[∑[A000217(n+2)]]` -/
def P9574640368013297819.Spec : Prop :=
  ∀ n, P9574640368013297819.a n = A005718 n

end A005718

/-! ## A005718.P3488970415653264259

`∑[A166830(n+1)+1]`
-/

namespace A005718.P3488970415653264259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P3488970415653264259

namespace A005718

/-- `∑[A166830(n+1)+1]` -/
def P3488970415653264259.Spec : Prop :=
  ∀ n, P3488970415653264259.a n = A005718 n

end A005718

/-! ## A005718.P3251853917295084295

`∑[A222001(n+1)-3]`
-/

namespace A005718.P3251853917295084295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P3251853917295084295

namespace A005718

/-- `∑[A222001(n+1)-3]` -/
def P3251853917295084295.Spec : Prop :=
  ∀ n, P3251853917295084295.a n = A005718 n

end A005718

/-! ## A005718.P1544072339732565545

`∑[A238806(n+1)+n²]`
-/

namespace A005718.P1544072339732565545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P1544072339732565545

namespace A005718

/-- `∑[A238806(n+1)+n²]` -/
def P1544072339732565545.Spec : Prop :=
  ∀ n, P1544072339732565545.a n = A005718 n

end A005718

/-! ## A005718.P6009583062139578615

`∑[A177787(n+1)+(n+1)²]`
-/

namespace A005718.P6009583062139578615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P6009583062139578615

namespace A005718

/-- `∑[A177787(n+1)+(n+1)²]` -/
def P6009583062139578615.Spec : Prop :=
  ∀ n, P6009583062139578615.a n = A005718 n

end A005718

/-! ## A005718.P7948193356551612027

`∑[∑[A253145(n+1)]]`
-/

namespace A005718.P7948193356551612027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P7948193356551612027

namespace A005718

/-- `∑[∑[A253145(n+1)]]` -/
def P7948193356551612027.Spec : Prop :=
  ∀ n, P7948193356551612027.a n = A005718 n

end A005718

/-! ## A005718.P9548698353073255594

`∑[A180118(n+1)/2]`
-/

namespace A005718.P9548698353073255594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180118 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P9548698353073255594

namespace A005718

/-- `∑[A180118(n+1)/2]` -/
def P9548698353073255594.Spec : Prop :=
  ∀ n, P9548698353073255594.a n = (A005718 n : ℚ)

end A005718

/-! ## A005718.P7758754418761126231

`∑[record[∑[n]+a(n-1)]]` with `a(0)=3, a(1)=0`
-/

namespace A005718.P7758754418761126231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P7758754418761126231

namespace A005718

/-- `∑[record[∑[n]+a(n-1)]]` -/
def P7758754418761126231.Spec : Prop :=
  ∀ n, (P7758754418761126231.a n : ℤ) = A005718 n

end A005718

/-! ## A005718.P13588333086860116999

`∑[∑[A161680(n+3)]]`
-/

namespace A005718.P13588333086860116999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005718.P13588333086860116999

namespace A005718

/-- `∑[∑[A161680(n+3)]]` -/
def P13588333086860116999.Spec : Prop :=
  ∀ n, P13588333086860116999.a n = A005718 n

end A005718

/-!
# A005719: Quadrinomial coefficients.

The programs for A005719, the canonical program `A005719.P13471366835109475850` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005719 has offset 2).

The definition of A005719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005719.P16821411628707202954

`ogf((2-2x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A005719.P16821411628707202954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -2, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A005719.P16821411628707202954

namespace A005719

/-- `ogf((2-2x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P16821411628707202954.Spec : Prop :=
  ∀ n, P16821411628707202954.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P15983165856798015114

`C(n+2, 2)*((n+2)^3+11*(n+2)²+46*(n+2)-24)/60`
-/

namespace A005719.P15983165856798015114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 : ℤ) * (((n + 2) ^ 3 + 11 * (n + 2) ^ 2 + 46 * (n + 2) : ℤ) - 24) : ℚ) / 60

end

end A005719.P15983165856798015114

namespace A005719

/-- `C(n+2, 2)*((n+2)^3+11*(n+2)²+46*(n+2)-24)/60` -/
def P15983165856798015114.Spec : Prop :=
  ∀ n, P15983165856798015114.a n = (A005719 (n + 2) : ℚ)

theorem P15983165856798015114.correct : P15983165856798015114.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel, A005719.P15983165856798015114.a, A005719.P13471366835109475850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005719

/-! ## A005719.P13471366835109475850

`2*C(n+2, 2)+6*C(n+2, 3)+4*C(n+2, 4)+C(n+2, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005719

/-- `2*C(n+2, 2)+6*C(n+2, 3)+4*C(n+2, 4)+C(n+2, 5)` -/
def P13471366835109475850.Spec : Prop :=
  ∀ n, (P13471366835109475850.a n : ℤ) = A005719 (n + 2)

theorem P13471366835109475850.correct : P13471366835109475850.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel]

end A005719

/-! ## A005719.P11601761718170983578

`∑[∑[C(n+4, 3)-2]]`
-/

namespace A005719.P11601761718170983578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005719.P11601761718170983578

namespace A005719

/-- `∑[∑[C(n+4, 3)-2]]` -/
def P11601761718170983578.Spec : Prop :=
  ∀ n, P11601761718170983578.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P7383340233755941174

`∑[∑[record[abs(2-C(n, 3))]]]`
-/

namespace A005719.P7383340233755941174
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose n 3 : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005719.P7383340233755941174

namespace A005719

/-- `∑[∑[record[abs(2-C(n, 3))]]]` -/
def P7383340233755941174.Spec : Prop :=
  ∀ n, P7383340233755941174.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P3616937043617480725

`∑[∑[∑[∑[n+2]]+n]]`
-/

namespace A005719.P3616937043617480725
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005719.P3616937043617480725

namespace A005719

/-- `∑[∑[∑[∑[n+2]]+n]]` -/
def P3616937043617480725.Spec : Prop :=
  ∀ n, (P3616937043617480725.a n : ℤ) = A005719 (n + 2)

end A005719

/-! ## A005719.P6713766982823092840

`C(n+6, 5)-(n+2)²`
-/

namespace A005719.P6713766982823092840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 5 : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A005719.P6713766982823092840

namespace A005719

/-- `C(n+6, 5)-(n+2)²` -/
def P6713766982823092840.Spec : Prop :=
  ∀ n, P6713766982823092840.a n = A005719 (n + 2)

theorem P6713766982823092840.correct : P6713766982823092840.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel, A005719.P6713766982823092840.a, A005719.P13471366835109475850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005719

/-! ## A005719.P5706195137039724680

`A005583(n+1)+∑[∑[n]]`
-/

namespace A005719.P5706195137039724680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005719.P5706195137039724680

namespace A005719

/-- `A005583(n+1)+∑[∑[n]]` -/
def P5706195137039724680.Spec : Prop :=
  ∀ n, P5706195137039724680.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P10228282880553062281

`A027659(n)-(n+1)*(n+2)`
-/

namespace A005719.P10228282880553062281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n - ((n + 1) * (n + 2) : ℤ)

end

end A005719.P10228282880553062281

namespace A005719

/-- `A027659(n)-(n+1)*(n+2)` -/
def P10228282880553062281.Spec : Prop :=
  ∀ n, P10228282880553062281.a n = A005719 (n + 2)

theorem P10228282880553062281.correct : P10228282880553062281.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel, A005719.P10228282880553062281.a, A005719.P13471366835109475850.a, A027659, A027659.P8446224191872039570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005719

/-! ## A005719.P9580583542129888200

`A062988(n)-(n+1)*(n+3)`
-/

namespace A005719.P9580583542129888200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - ((n + 1) * (n + 3) : ℤ)

end

end A005719.P9580583542129888200

namespace A005719

/-- `A062988(n)-(n+1)*(n+3)` -/
def P9580583542129888200.Spec : Prop :=
  ∀ n, P9580583542129888200.a n = A005719 (n + 2)

theorem P9580583542129888200.correct : P9580583542129888200.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel, A005719.P9580583542129888200.a, A005719.P13471366835109475850.a, A062988, A062988.P10319984421922645529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005719

/-! ## A005719.P2390592349745596029

`A290312(n)+A027660(n)`
-/

namespace A005719.P2390592349745596029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + A027660 n

end

end A005719.P2390592349745596029

namespace A005719

/-- `A290312(n)+A027660(n)` -/
def P2390592349745596029.Spec : Prop :=
  ∀ n, P2390592349745596029.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P9683870285900863016

`A051747(n+1)+A005582(n)`
-/

namespace A005719.P9683870285900863016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) + A005582 n

end

end A005719.P9683870285900863016

namespace A005719

/-- `A051747(n+1)+A005582(n)` -/
def P9683870285900863016.Spec : Prop :=
  ∀ n, P9683870285900863016.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P2092723855778850106

`∑[A024191(n+1)]-A005718(n)`
-/

namespace A005719.P2092723855778850106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005718 n

end

end A005719.P2092723855778850106

namespace A005719

/-- `∑[A024191(n+1)]-A005718(n)` -/
def P2092723855778850106.Spec : Prop :=
  ∀ n, P2092723855778850106.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P6217694704067429340

`A051745(n+2)-(n+2)*(n+3)`
-/

namespace A005719.P6217694704067429340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 2) - ((n + 2) * (n + 3) : ℤ)

end

end A005719.P6217694704067429340

namespace A005719

/-- `A051745(n+2)-(n+2)*(n+3)` -/
def P6217694704067429340.Spec : Prop :=
  ∀ n, P6217694704067429340.a n = A005719 (n + 2)

theorem P6217694704067429340.correct : P6217694704067429340.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel, A005719.P6217694704067429340.a, A005719.P13471366835109475850.a, A051745, A051745.P5054150048059455946.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005719

/-! ## A005719.P11287168725304223598

`A139798(n+1)-A001701(n+2)`
-/

namespace A005719.P11287168725304223598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139798 (n + 1) - A001701 (n + 2)

end

end A005719.P11287168725304223598

namespace A005719

/-- `A139798(n+1)-A001701(n+2)` -/
def P11287168725304223598.Spec : Prop :=
  ∀ n, P11287168725304223598.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P5276492250954442328

`A005581(n+1)+A005583(n+1)-A000217(n)`
-/

namespace A005719.P5276492250954442328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 1) + (A005583 (n + 1) - A000217 n)

end

end A005719.P5276492250954442328

namespace A005719

/-- `A005581(n+1)+A005583(n+1)-A000217(n)` -/
def P5276492250954442328.Spec : Prop :=
  ∀ n, P5276492250954442328.a n = A005719 (n + 2)

end A005719

/-! ## A005719.P12059399215276308837

`A253942(n+4)+A000292(n)-A005585(n+1)`
-/

namespace A005719.P12059399215276308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + (A000292 n - A005585 (n + 1))

end

end A005719.P12059399215276308837

namespace A005719

/-- `A253942(n+4)+A000292(n)-A005585(n+1)` -/
def P12059399215276308837.Spec : Prop :=
  ∀ n, P12059399215276308837.a n = A005719 (n + 2)

theorem P12059399215276308837.correct : P12059399215276308837.Spec := by
  intro n
  simp only [A005719, Nat.add_sub_cancel, A005719.P12059399215276308837.a, A005719.P13471366835109475850.a, A000292, A000292.P18322089543142633594.a, A005585, A005585.P5066831349655201454.a, A253942, A253942.P11522209056307406865.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005719

/-!
# A005720: Quadrinomial coefficients.

The programs for A005720, the canonical program `A005720.P7376256172959337863` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005720 has offset 2).

The definition of A005720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005720.P9030924148266600408

`ogf((1+3x-5x^2+2x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A005720.P9030924148266600408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -5, 2] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A005720.P9030924148266600408

namespace A005720

/-- `ogf((1+3x-5x^2+2x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P9030924148266600408.Spec : Prop :=
  ∀ n, P9030924148266600408.a n = A005720 (n + 2)

end A005720

/-! ## A005720.P14547345117374776584

`C(n+3, 3)*((n+2)^3+15*(n+2)²+86*(n+2)-120)/120`
-/

namespace A005720.P14547345117374776584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) * (((n + 2) ^ 3 + 15 * (n + 2) ^ 2 + 86 * (n + 2) : ℤ) - 120) : ℚ) / 120

end

end A005720.P14547345117374776584

namespace A005720

/-- `C(n+3, 3)*((n+2)^3+15*(n+2)²+86*(n+2)-120)/120` -/
def P14547345117374776584.Spec : Prop :=
  ∀ n, P14547345117374776584.a n = (A005720 (n + 2) : ℚ)

theorem P14547345117374776584.correct : P14547345117374776584.Spec := by
  intro n
  simp only [A005720, Nat.add_sub_cancel, A005720.P14547345117374776584.a, A005720.P7376256172959337863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005720

/-! ## A005720.P7376256172959337863

`C(n+2, 2)+7*C(n+2, 3)+10*C(n+2, 4)+5*C(n+2, 5)+C(n+2, 6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005720

/-- `C(n+2, 2)+7*C(n+2, 3)+10*C(n+2, 4)+5*C(n+2, 5)+C(n+2, 6)` -/
def P7376256172959337863.Spec : Prop :=
  ∀ n, (P7376256172959337863.a n : ℤ) = A005720 (n + 2)

theorem P7376256172959337863.correct : P7376256172959337863.Spec := by
  intro n
  simp only [A005720, Nat.add_sub_cancel]

end A005720

/-! ## A005720.P241472871579174838

`((n+2)^6+15*(n+2)^5+85*(n+2)^4-135*(n+2)^3-86*(n+2)²+120*(n+2))/720`
-/

namespace A005720.P241472871579174838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 6 + 15 * (n + 2) ^ 5 + 85 * (n + 2) ^ 4 : ℤ) - (135 * (n + 2) ^ 3 : ℤ) - (86 * (n + 2) ^ 2 : ℤ) + (120 * (n + 2) : ℤ) : ℚ) / 720

end

end A005720.P241472871579174838

namespace A005720

/-- `((n+2)^6+15*(n+2)^5+85*(n+2)^4-135*(n+2)^3-86*(n+2)²+120*(n+2))/720` -/
def P241472871579174838.Spec : Prop :=
  ∀ n, P241472871579174838.a n = (A005720 (n + 2) : ℚ)

theorem P241472871579174838.correct : P241472871579174838.Spec := by
  intro n
  simp only [A005720, Nat.add_sub_cancel, A005720.P241472871579174838.a, A005720.P7376256172959337863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005720

/-! ## A005720.P1798730274724790401

`A064057(n)-A000580(n+7)`
-/

namespace A005720.P1798730274724790401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n - A000580 (n + 7)

end

end A005720.P1798730274724790401

namespace A005720

/-- `A064057(n)-A000580(n+7)` -/
def P1798730274724790401.Spec : Prop :=
  ∀ n, P1798730274724790401.a n = A005720 (n + 2)

end A005720

/-! ## A005720.P12029568126020964895

`A056074(n+3)-A005585(n+1)`
-/

namespace A005720.P12029568126020964895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056074 (n + 3) - A005585 (n + 1)

end

end A005720.P12029568126020964895

namespace A005720

/-- `A056074(n+3)-A005585(n+1)` -/
def P12029568126020964895.Spec : Prop :=
  ∀ n, P12029568126020964895.a n = A005720 (n + 2)

end A005720

/-! ## A005720.P15411137351897483002

`Δ[A098992(n+2)]`
-/

namespace A005720.P15411137351897483002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005720.P15411137351897483002

namespace A005720

/-- `Δ[A098992(n+2)]` -/
def P15411137351897483002.Spec : Prop :=
  ∀ n, P15411137351897483002.a n = A005720 (n + 2)

end A005720

/-! ## A005720.P5241239510900001964

`A098992(n+3)-A098992(n+2)`
-/

namespace A005720.P5241239510900001964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098992 (n + 3) - A098992 (n + 2)

end

end A005720.P5241239510900001964

namespace A005720

/-- `A098992(n+3)-A098992(n+2)` -/
def P5241239510900001964.Spec : Prop :=
  ∀ n, P5241239510900001964.a n = A005720 (n + 2)

end A005720

/-! ## A005720.P4640549988038833490

`A005714(n+3)-A000389(n+3)`
-/

namespace A005720.P4640549988038833490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) - A000389 (n + 3)

end

end A005720.P4640549988038833490

namespace A005720

/-- `A005714(n+3)-A000389(n+3)` -/
def P4640549988038833490.Spec : Prop :=
  ∀ n, P4640549988038833490.a n = A005720 (n + 2)

theorem P4640549988038833490.correct : P4640549988038833490.Spec := by
  intro n
  simp only [A005720, Nat.add_sub_cancel, A005720.P4640549988038833490.a, A005720.P7376256172959337863.a, A000389, A000389.P15450220129395289428.a, A005714, A005714.P16785582213835551995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005720

/-!
# A005721: Central quadrinomial coefficients.

The programs for A005721, the canonical program `A005721.P12897772073284282479` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005721 has offset 0).

The definition of A005721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005721.P14815538085749964155

`A005190(2*n)`
-/

namespace A005721.P14815538085749964155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (2 * n)

end

end A005721.P14815538085749964155

namespace A005721

/-- `A005190(2*n)` -/
def P14815538085749964155.Spec : Prop :=
  ∀ n, P14815538085749964155.a n = A005721 n

end A005721

/-! ## A005721.P12897772073284282479

`∑{#}[2*n, C(2*n, #)*C(6*n-2*#, 3*n-#)*(-2)^#]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005721

/-- `∑{#}[2*n, C(2*n, #)*C(6*n-2*#, 3*n-#)*(-2)^#]` -/
def P12897772073284282479.Spec : Prop :=
  ∀ n, P12897772073284282479.a n = A005721 n

theorem P12897772073284282479.correct : P12897772073284282479.Spec := by
  intro n
  simp only [A005721]

end A005721

/-! ## A005721.P17427956198249585658

`record[A005190(A014681(n))]`
-/

namespace A005721.P17427956198249585658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P17427956198249585658

namespace A005721

/-- `record[A005190(A014681(n))]` -/
def P17427956198249585658.Spec : Prop :=
  ∀ n, P17427956198249585658.a n = A005721 n

end A005721

/-! ## A005721.P15010895455407295549

`record[A005190(A006369(n)+1)]`
-/

namespace A005721.P15010895455407295549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A006369 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P15010895455407295549

namespace A005721

/-- `record[A005190(A006369(n)+1)]` -/
def P15010895455407295549.Spec : Prop :=
  ∀ n, P15010895455407295549.a n = A005721 n

end A005721

/-! ## A005721.P6379572917104836767

`record[A005190(A026741(n)+1)]`
-/

namespace A005721.P6379572917104836767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P6379572917104836767

namespace A005721

/-- `record[A005190(A026741(n)+1)]` -/
def P6379572917104836767.Spec : Prop :=
  ∀ n, P6379572917104836767.a n = A005721 n

end A005721

/-! ## A005721.P5840702187222436690

`record[A005190(A022998(n)-n)]`
-/

namespace A005721.P5840702187222436690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P5840702187222436690

namespace A005721

/-- `record[A005190(A022998(n)-n)]` -/
def P5840702187222436690.Spec : Prop :=
  ∀ n, P5840702187222436690.a n = A005721 n

end A005721

/-! ## A005721.P10665524372334172714

`record[A005190(gcd(n, A090192(n)))]`
-/

namespace A005721.P10665524372334172714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (Int.gcd (n : ℤ) (A090192 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P10665524372334172714

namespace A005721

/-- `record[A005190(gcd(n, A090192(n)))]` -/
def P10665524372334172714.Spec : Prop :=
  ∀ n, P10665524372334172714.a n = A005721 n

end A005721

/-! ## A005721.P56531274622494100

`record[A005190(A000265(n+1)-1)]`
-/

namespace A005721.P56531274622494100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P56531274622494100

namespace A005721

/-- `record[A005190(A000265(n+1)-1)]` -/
def P56531274622494100.Spec : Prop :=
  ∀ n, P56531274622494100.a n = A005721 n

end A005721

/-! ## A005721.P9091417289084679980

`record[A005190(A052928(A006369(n)))]`
-/

namespace A005721.P9091417289084679980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A052928 (A006369 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P9091417289084679980

namespace A005721

/-- `record[A005190(A052928(A006369(n)))]` -/
def P9091417289084679980.Spec : Prop :=
  ∀ n, P9091417289084679980.a n = A005721 n

end A005721

/-! ## A005721.P11079342983497686684

`record[A005190(A065033(A022998(n)))]`
-/

namespace A005721.P11079342983497686684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A065033 (A022998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005721.P11079342983497686684

namespace A005721

/-- `record[A005190(A065033(A022998(n)))]` -/
def P11079342983497686684.Spec : Prop :=
  ∀ n, P11079342983497686684.a n = A005721 n

end A005721

/-!
# A005722: a(n) = (prime(n) - 1)^2.

The programs for A005722, the canonical program `A005722.P9626108162633457683` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005722 has offset 1).

The definition of A005722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)-1)²` (program `A005722.P9626108162633457683`, by `A005722.P9626108162633457683.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005722.P552758404114209471

`A006093(n+1)²`
-/

namespace A005722.P552758404114209471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) ^ 2

end

end A005722.P552758404114209471

namespace A005722

/-- `A006093(n+1)²` -/
def P552758404114209471.Spec : Prop :=
  ∀ n, P552758404114209471.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P9626108162633457683

`(A000040(n+1)-1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005722

/-- `(A000040(n+1)-1)²` -/
def P9626108162633457683.Spec : Prop :=
  ∀ n, P9626108162633457683.a n = A005722 (n + 1)

theorem P9626108162633457683.correct : P9626108162633457683.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel]

end A005722

/-! ## A005722.P12153018952940246101

`∑[A075526(n)]²`
-/

namespace A005722.P12153018952940246101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A005722.P12153018952940246101

namespace A005722

/-- `∑[A075526(n)]²` -/
def P12153018952940246101.Spec : Prop :=
  ∀ n, P12153018952940246101.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P5847249756205089052

`(1-Δ[A007504(n)])²`
-/

namespace A005722.P5847249756205089052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A005722.P5847249756205089052

namespace A005722

/-- `(1-Δ[A007504(n)])²` -/
def P5847249756205089052.Spec : Prop :=
  ∀ n, P5847249756205089052.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P10369432406373490237

`record[(1-A259153(n))²]`
-/

namespace A005722.P10369432406373490237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A259153 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005722.P10369432406373490237

namespace A005722

/-- `record[(1-A259153(n))²]` -/
def P10369432406373490237.Spec : Prop :=
  ∀ n, P10369432406373490237.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P8727358272761275242

`(A040976(n+1)+1)²`
-/

namespace A005722.P8727358272761275242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 1) ^ 2

end

end A005722.P8727358272761275242

namespace A005722

/-- `(A040976(n+1)+1)²` -/
def P8727358272761275242.Spec : Prop :=
  ∀ n, P8727358272761275242.a n = A005722 (n + 1)

theorem P8727358272761275242.correct : P8727358272761275242.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P8727358272761275242.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P6614678031133695327

`(1-A000040(n+1))²`
-/

namespace A005722.P6614678031133695327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000040 (n + 1)) ^ 2

end

end A005722.P6614678031133695327

namespace A005722

/-- `(1-A000040(n+1))²` -/
def P6614678031133695327.Spec : Prop :=
  ∀ n, P6614678031133695327.a n = A005722 (n + 1)

theorem P6614678031133695327.correct : P6614678031133695327.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P6614678031133695327.a, A005722.P9626108162633457683.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005722

/-! ## A005722.P16330296071091584987

`(A086801(n+1)+2)²`
-/

namespace A005722.P16330296071091584987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086801 (n + 1) + 2) ^ 2

end

end A005722.P16330296071091584987

namespace A005722

/-- `(A086801(n+1)+2)²` -/
def P16330296071091584987.Spec : Prop :=
  ∀ n, P16330296071091584987.a n = A005722 (n + 1)

theorem P16330296071091584987.correct : P16330296071091584987.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P16330296071091584987.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P10377651466973198522

`(2-A008864(n+1))²`
-/

namespace A005722.P10377651466973198522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008864 (n + 1)) ^ 2

end

end A005722.P10377651466973198522

namespace A005722

/-- `(2-A008864(n+1))²` -/
def P10377651466973198522.Spec : Prop :=
  ∀ n, P10377651466973198522.a n = A005722 (n + 1)

theorem P10377651466973198522.correct : P10377651466973198522.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P10377651466973198522.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P4032144189174706896

`(3-A052147(n+1))²`
-/

namespace A005722.P4032144189174706896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A052147 (n + 1)) ^ 2

end

end A005722.P4032144189174706896

namespace A005722

/-- `(3-A052147(n+1))²` -/
def P4032144189174706896.Spec : Prop :=
  ∀ n, P4032144189174706896.a n = A005722 (n + 1)

theorem P4032144189174706896.correct : P4032144189174706896.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P4032144189174706896.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P6126436672155940698

`(A014689(n+1)+n)²`
-/

namespace A005722.P6126436672155940698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014689 (n + 1) + (n : ℤ)) ^ 2

end

end A005722.P6126436672155940698

namespace A005722

/-- `(A014689(n+1)+n)²` -/
def P6126436672155940698.Spec : Prop :=
  ∀ n, P6126436672155940698.a n = A005722 (n + 1)

theorem P6126436672155940698.correct : P6126436672155940698.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P6126436672155940698.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P17605922170087184582

`∑[A230849(2*n+1)]²`
-/

namespace A005722.P17605922170087184582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A005722.P17605922170087184582

namespace A005722

/-- `∑[A230849(2*n+1)]²` -/
def P17605922170087184582.Spec : Prop :=
  ∀ n, P17605922170087184582.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P3461763880044741133

`A036689(n+1)-A006093(n+1)`
-/

namespace A005722.P3461763880044741133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A006093 (n + 1)

end

end A005722.P3461763880044741133

namespace A005722

/-- `A036689(n+1)-A006093(n+1)` -/
def P3461763880044741133.Spec : Prop :=
  ∀ n, P3461763880044741133.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P15732108034903491916

`A060800(n+1)-A001748(n+1)`
-/

namespace A005722.P15732108034903491916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - A001748 (n + 1)

end

end A005722.P15732108034903491916

namespace A005722

/-- `A060800(n+1)-A001748(n+1)` -/
def P15732108034903491916.Spec : Prop :=
  ∀ n, P15732108034903491916.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P16888677900978153273

`A110833(n+1)-A001749(n+1)`
-/

namespace A005722.P16888677900978153273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) - A001749 (n + 1)

end

end A005722.P16888677900978153273

namespace A005722

/-- `A110833(n+1)-A001749(n+1)` -/
def P16888677900978153273.Spec : Prop :=
  ∀ n, P16888677900978153273.a n = A005722 (n + 1)

theorem P16888677900978153273.correct : P16888677900978153273.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P16888677900978153273.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, A110833, A110833.P2318291333998140493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P18321599563868249153

`A119959(n+1)-A000040(n+1)`
-/

namespace A005722.P18321599563868249153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) - A000040 (n + 1)

end

end A005722.P18321599563868249153

namespace A005722

/-- `A119959(n+1)-A000040(n+1)` -/
def P18321599563868249153.Spec : Prop :=
  ∀ n, P18321599563868249153.a n = A005722 (n + 1)

end A005722

/-! ## A005722.P793257671324395791

`A084920(n+1)-A037168(n+1)`
-/

namespace A005722.P793257671324395791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A037168 (n + 1)

end

end A005722.P793257671324395791

namespace A005722

/-- `A084920(n+1)-A037168(n+1)` -/
def P793257671324395791.Spec : Prop :=
  ∀ n, P793257671324395791.a n = A005722 (n + 1)

theorem P793257671324395791.correct : P793257671324395791.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P793257671324395791.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P14408813877808478664

`A061725(n+1)-A072055(n+1)`
-/

namespace A005722.P14408813877808478664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - A072055 (n + 1)

end

end A005722.P14408813877808478664

namespace A005722

/-- `A061725(n+1)-A072055(n+1)` -/
def P14408813877808478664.Spec : Prop :=
  ∀ n, P14408813877808478664.a n = A005722 (n + 1)

theorem P14408813877808478664.correct : P14408813877808478664.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P14408813877808478664.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P7443699667437203140

`A066872(n+1)-A100484(n+1)`
-/

namespace A005722.P7443699667437203140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A100484 (n + 1)

end

end A005722.P7443699667437203140

namespace A005722

/-- `A066872(n+1)-A100484(n+1)` -/
def P7443699667437203140.Spec : Prop :=
  ∀ n, P7443699667437203140.a n = A005722 (n + 1)

theorem P7443699667437203140.correct : P7443699667437203140.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P7443699667437203140.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-! ## A005722.P11830456440643513969

`A049001(n+1)-A131426(n+1)`
-/

namespace A005722.P11830456440643513969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) - A131426 (n + 1)

end

end A005722.P11830456440643513969

namespace A005722

/-- `A049001(n+1)-A131426(n+1)` -/
def P11830456440643513969.Spec : Prop :=
  ∀ n, P11830456440643513969.a n = A005722 (n + 1)

theorem P11830456440643513969.correct : P11830456440643513969.Spec := by
  intro n
  simp only [A005722, Nat.add_sub_cancel, A005722.P11830456440643513969.a, A005722.P9626108162633457683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005722

/-!
# A005723: Quadrinomial coefficients.

The programs for A005723, there is no canonical definition to state claims against.
-/

/-! ## A005723.P17899349838511554001

`A005190(Δ[n²])`
-/

namespace A005723.P17899349838511554001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005723.P17899349838511554001

/-! ## A005723.P7689556308229417696

`or(char[2], A005190(2*n+1))`
-/

namespace A005723.P7689556308229417696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005190 (2 * n + 1))

end

end A005723.P7689556308229417696

/-! ## A005723.P15107513332248369982

`(2*n+1)*A349819(2*n+1)`
-/

namespace A005723.P15107513332248369982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A349819 (2 * n + 1)

end

end A005723.P15107513332248369982

/-! ## A005723.P11324895520085091351

`record[A005190(A006369(n))]`
-/

namespace A005723.P11324895520085091351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005723.P11324895520085091351

/-! ## A005723.P2065935129220443357

`record[A005190(A026741(n))]`
-/

namespace A005723.P2065935129220443357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005723.P2065935129220443357

/-! ## A005723.P15812964208248189319

`record[A005190(A000265(n+1))]`
-/

namespace A005723.P15812964208248189319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005723.P15812964208248189319

/-! ## A005723.P14092779303963010360

`record[A005190(A014681(n)+1)]`
-/

namespace A005723.P14092779303963010360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005723.P14092779303963010360

/-! ## A005723.P9873301817011372633

`record[A005190(A022998(n+1)-n)]`
-/

namespace A005723.P9873301817011372633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005723.P9873301817011372633

/-! ## A005723.P14432257326490764359

`record[gcd(A005190(n+1), A090192(n))]`
-/

namespace A005723.P14432257326490764359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005190 (n + 1)) (A090192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005723.P14432257326490764359

/-! ## A005723.P17311668066280446278

`gcd(A005190(2*n+1)*A090192(n+1), A005190(2*n+1))`
-/

namespace A005723.P17311668066280446278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005190 (2 * n + 1) * A090192 (n + 1)) (A005190 (2 * n + 1))

end

end A005723.P17311668066280446278

/-!
# A005724: Coefficient of x^(3*n-1) and of x^(3*n+1) in the expansion of (1+x+x^2+x^3)^(2*n).

The programs for A005724, there is no canonical definition to state claims against.
-/

/-! ## A005724.P3503831613436139616

`(n+1)*A349819(2*(n+1))`
-/

namespace A005724.P3503831613436139616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349819 (2 * (n + 1))

end

end A005724.P3503831613436139616

/-! ## A005724.P16883883099696414325

`A008287(A136392(n+2))`
-/

namespace A005724.P16883883099696414325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (A136392 (n + 2)).toNat

end

end A005724.P16883883099696414325

/-! ## A005724.P15855747107452635056

`A008287(A033580(n+1)+1)`
-/

namespace A005724.P15855747107452635056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (A033580 (n + 1) + 1).toNat

end

end A005724.P15855747107452635056

/-! ## A005724.P14861653144597816946

`A008287(∩[A008813(3*(n+1)), A005408(n)])`
-/

namespace A005724.P14861653144597816946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008813 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A005724.P14861653144597816946

/-! ## A005724.P9627515700312325883

`A213887(A022282(n+1))`
-/

namespace A005724.P9627515700312325883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (A022282 (n + 1)).toNat

end

end A005724.P9627515700312325883

/-!
# A005725: Quadrinomial coefficients.

The programs for A005725, the canonical program `A005725.P10849571819469584221` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005725 has offset 0).

The definition of A005725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005725.P10849571819469584221

`∑{#}[floor(n/2), C(n, #)*C(n, 2*#)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005725

/-- `∑{#}[floor(n/2), C(n, #)*C(n, 2*#)]` -/
def P10849571819469584221.Spec : Prop :=
  ∀ n, (P10849571819469584221.a n : ℤ) = A005725 n

theorem P10849571819469584221.correct : P10849571819469584221.Spec := by
  intro n
  simp only [A005725]

end A005725

/-! ## A005725.P9500966655614429862

`A305161(∑[n+3]+n+3)`
-/

namespace A005725.P9500966655614429862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005725.P9500966655614429862

namespace A005725

/-- `A305161(∑[n+3]+n+3)` -/
def P9500966655614429862.Spec : Prop :=
  ∀ n, P9500966655614429862.a n = A005725 n

end A005725

/-! ## A005725.P12512141349750816289

`A213742(∑[n]+n)`
-/

namespace A005725.P12512141349750816289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213742 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005725.P12512141349750816289

namespace A005725

/-- `A213742(∑[n]+n)` -/
def P12512141349750816289.Spec : Prop :=
  ∀ n, P12512141349750816289.a n = A005725 n

end A005725

/-! ## A005725.P15153759639520339606

`A008287(∑[3*n])`
-/

namespace A005725.P15153759639520339606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005725.P15153759639520339606

namespace A005725

/-- `A008287(∑[3*n])` -/
def P15153759639520339606.Spec : Prop :=
  ∀ n, P15153759639520339606.a n = A005725 n

end A005725

/-! ## A005725.P7764423931806582127

`A008287(A045943(n))+floor(n/(n+1))`
-/

namespace A005725.P7764423931806582127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (A045943 n).toNat + ⌊(n : ℚ) / (n + 1 : ℚ)⌋

end

end A005725.P7764423931806582127

namespace A005725

/-- `A008287(A045943(n))+floor(n/(n+1))` -/
def P7764423931806582127.Spec : Prop :=
  ∀ n, P7764423931806582127.a n = A005725 n

end A005725

/-! ## A005725.P16887984129422359875

`lcm(A008287(A045943(n)), A033999(n))`
-/

namespace A005725.P16887984129422359875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008287 (A045943 n).toNat) (A033999 n)

end

end A005725.P16887984129422359875

namespace A005725

/-- `lcm(A008287(A045943(n)), A033999(n))` -/
def P16887984129422359875.Spec : Prop :=
  ∀ n, (P16887984129422359875.a n : ℤ) = A005725 n

end A005725

/-! ## A005725.P7550910887490297841

`or(A008287(A045943(n)), A010051(2*(n+1)))`
-/

namespace A005725.P7550910887490297841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008287 (A045943 n).toNat) (A010051 (2 * (n + 1)))

end

end A005725.P7550910887490297841

namespace A005725

/-- `or(A008287(A045943(n)), A010051(2*(n+1)))` -/
def P7550910887490297841.Spec : Prop :=
  ∀ n, P7550910887490297841.a n = A005725 n

end A005725

/-! ## A005725.P503312714408870603

`A010051(6*(n+8)+2)+A008287(A045943(n))`
-/

namespace A005725.P503312714408870603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * (n + 8) + 2) + A008287 (A045943 n).toNat

end

end A005725.P503312714408870603

namespace A005725

/-- `A010051(6*(n+8)+2)+A008287(A045943(n))` -/
def P503312714408870603.Spec : Prop :=
  ∀ n, P503312714408870603.a n = A005725 n

end A005725

/-! ## A005725.P10723242790358158480

`A213887(∑[4*n])`
-/

namespace A005725.P10723242790358158480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005725.P10723242790358158480

namespace A005725

/-- `A213887(∑[4*n])` -/
def P10723242790358158480.Spec : Prop :=
  ∀ n, P10723242790358158480.a n = A005725 n

end A005725

/-!
# A005726: Quadrinomial coefficients.

The programs for A005726, the canonical program `A005726.P4749513407933357919` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005726 has offset 1).

The definition of A005726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005726.P4749513407933357919

`∑{#}[floor(n/2), C(n+1, n-2*#)*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005726

/-- `∑{#}[floor(n/2), C(n+1, n-2*#)*C(n+1, #)]` -/
def P4749513407933357919.Spec : Prop :=
  ∀ n, (P4749513407933357919.a n : ℤ) = A005726 (n + 1)

theorem P4749513407933357919.correct : P4749513407933357919.Spec := by
  intro n
  simp only [A005726, Nat.add_sub_cancel]

end A005726

/-! ## A005726.P12415598137333702484

`(n+1)*A036765(n)`
-/

namespace A005726.P12415598137333702484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036765 n

end

end A005726.P12415598137333702484

namespace A005726

/-- `(n+1)*A036765(n)` -/
def P12415598137333702484.Spec : Prop :=
  ∀ n, P12415598137333702484.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P15564358920059884923

`(n+1)*A246555(n+1)`
-/

namespace A005726.P15564358920059884923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A246555 (n + 1)

end

end A005726.P15564358920059884923

namespace A005726

/-- `(n+1)*A246555(n+1)` -/
def P15564358920059884923.Spec : Prop :=
  ∀ n, P15564358920059884923.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P2814426451645183147

`A036765(n)*A106466(2*n)`
-/

namespace A005726.P2814426451645183147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 n * A106466 (2 * n)

end

end A005726.P2814426451645183147

namespace A005726

/-- `A036765(n)*A106466(2*n)` -/
def P2814426451645183147.Spec : Prop :=
  ∀ n, P2814426451645183147.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P5469398935274488081

`(n+1)*A064580(A000096(n))`
-/

namespace A005726.P5469398935274488081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064580 (A000096 n).toNat

end

end A005726.P5469398935274488081

namespace A005726

/-- `(n+1)*A064580(A000096(n))` -/
def P5469398935274488081.Spec : Prop :=
  ∀ n, P5469398935274488081.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P4848970014596338091

`A213742(∑[n+2]-1)`
-/

namespace A005726.P4848970014596338091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213742 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005726.P4848970014596338091

namespace A005726

/-- `A213742(∑[n+2]-1)` -/
def P4848970014596338091.Spec : Prop :=
  ∀ n, P4848970014596338091.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P14954331107701583976

`(n+1)*A288942(∑[n+3]+n+3)`
-/

namespace A005726.P14954331107701583976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288942 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005726.P14954331107701583976

namespace A005726

/-- `(n+1)*A288942(∑[n+3]+n+3)` -/
def P14954331107701583976.Spec : Prop :=
  ∀ n, P14954331107701583976.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P3421316871891189763

`A008287(∑[n]+(n+2)²)`
-/

namespace A005726.P3421316871891189763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2)

end

end A005726.P3421316871891189763

namespace A005726

/-- `A008287(∑[n]+(n+2)²)` -/
def P3421316871891189763.Spec : Prop :=
  ∀ n, P3421316871891189763.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P14615120232450465058

`A186332((n+1)²+n²)`
-/

namespace A005726.P14615120232450465058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186332 ((n + 1) ^ 2 + n ^ 2)

end

end A005726.P14615120232450465058

namespace A005726

/-- `A186332((n+1)²+n²)` -/
def P14615120232450465058.Spec : Prop :=
  ∀ n, P14615120232450465058.a n = A005726 (n + 1)

end A005726

/-! ## A005726.P16340690301492108134

`A213887(2*(n+1)²)`
-/

namespace A005726.P16340690301492108134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (2 * (n + 1) ^ 2)

end

end A005726.P16340690301492108134

namespace A005726

/-- `A213887(2*(n+1)²)` -/
def P16340690301492108134.Spec : Prop :=
  ∀ n, P16340690301492108134.a n = A005726 (n + 1)

end A005726

/-!
# A005727: n-th derivative of x^x at x=1. Also called Lehmer-Comtet numbers.

The programs for A005727, there is no canonical definition to state claims against.
-/

/-! ## A005727.P5309974971261825924

`∑{#}[n, (-1)^#*A203852(#)*C(n, #)]`
-/

namespace A005727.P5309974971261825924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A203852 k * (Nat.choose n k : ℤ)

end

end A005727.P5309974971261825924

/-! ## A005727.P13969494459321130081

`∑{#}[n, (-1)^(n-#)*A293297(#)*C(n, #)]`
-/

namespace A005727.P13969494459321130081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A293297 k : ℚ) * (Nat.choose n k : ℚ)

end

end A005727.P13969494459321130081

/-! ## A005727.P16959947178464017108

`A215703(∑[n+2]-1)`
-/

namespace A005727.P16959947178464017108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005727.P16959947178464017108

/-! ## A005727.P8045642484452758300

`and(-1, A215703(A034856(n+1)))`
-/

namespace A005727.P8045642484452758300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A215703 (A034856 (n + 1)).toNat)

end

end A005727.P8045642484452758300

/-! ## A005727.P5314012094526511443

`round(sqrt(n²+1))*A005168(A028310(n))`
-/

namespace A005727.P5314012094526511443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A005168 (A028310 n).toNat

end

end A005727.P5314012094526511443

/-! ## A005727.P872506981120724128

`A005168(A028310(n))*A028310(n)`
-/

namespace A005727.P872506981120724128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005168 (A028310 n).toNat * A028310 n

end

end A005727.P872506981120724128

/-! ## A005727.P16870970595031034370

`or(A000007(n), A215703(A034856(n+1)))`
-/

namespace A005727.P16870970595031034370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215703 (A034856 (n + 1)).toNat)

end

end A005727.P16870970595031034370

/-! ## A005727.P3253543815291998388

`A277537(∑[n+3])`
-/

namespace A005727.P3253543815291998388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005727.P3253543815291998388

/-! ## A005727.P18298635284281629497

`A298605(A238531(n))`
-/

namespace A005727.P18298635284281629497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298605 (A238531 n).toNat

end

end A005727.P18298635284281629497

/-!
# A005728: Number of fractions in Farey series of order n.

The programs for A005728, the canonical program `A005728.P12032251568510858139` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005728 has offset 0).

The definition of A005728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005728.P12032251568510858139

`1+A002088(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005728

/-- `1+A002088(n)` -/
def P12032251568510858139.Spec : Prop :=
  ∀ n, P12032251568510858139.a n = A005728 n

theorem P12032251568510858139.correct : P12032251568510858139.Spec := by
  intro n
  simp only [A005728]

end A005728

/-! ## A005728.P5188061140425401483

`a(n-1)+A000010(n)` with `a(0)=1`
-/

namespace A005728.P5188061140425401483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 n

end

end A005728.P5188061140425401483

namespace A005728

/-- `a(n-1)+A000010(n)` -/
def P5188061140425401483.Spec : Prop :=
  ∀ n, P5188061140425401483.a n = A005728 n

end A005728

/-! ## A005728.P47163463513189671

`ceil(A100449(n)/4)`
-/

namespace A005728.P47163463513189671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100449 n : ℚ) / 4⌉

end

end A005728.P47163463513189671

namespace A005728

/-- `ceil(A100449(n)/4)` -/
def P47163463513189671.Spec : Prop :=
  ∀ n, P47163463513189671.a n = A005728 n

end A005728

/-! ## A005728.P11306514271742134019

`A049696(n)/2+1`
-/

namespace A005728.P11306514271742134019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) / 2 + 1

end

end A005728.P11306514271742134019

namespace A005728

/-- `A049696(n)/2+1` -/
def P11306514271742134019.Spec : Prop :=
  ∀ n, P11306514271742134019.a n = (A005728 n : ℚ)

theorem P11306514271742134019.correct : P11306514271742134019.Spec := by
  intro n
  simp only [A005728, Nat.add_sub_cancel, A005728.P11306514271742134019.a, A005728.P12032251568510858139.a, A002088, A002088.P11293466613211840242.a, A049696, A049696.P12004431397855860570.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005728

/-! ## A005728.P12560865732286767954

`A140466(n)/4+1`
-/

namespace A005728.P12560865732286767954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 n : ℚ) / 4 + 1

end

end A005728.P12560865732286767954

namespace A005728

/-- `A140466(n)/4+1` -/
def P12560865732286767954.Spec : Prop :=
  ∀ n, P12560865732286767954.a n = (A005728 n : ℚ)

theorem P12560865732286767954.correct : P12560865732286767954.Spec := by
  intro n
  simp only [A005728, Nat.add_sub_cancel, A005728.P12560865732286767954.a, A005728.P12032251568510858139.a, A002088, A002088.P11293466613211840242.a, A140466, A140466.P2617124052483112329.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005728

/-! ## A005728.P16069705688207549127

`floor(A049643(n)+acot(n))`
-/

namespace A005728.P16069705688207549127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049643 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A005728.P16069705688207549127

namespace A005728

/-- `floor(A049643(n)+acot(n))` -/
def P16069705688207549127.Spec : Prop :=
  ∀ n, P16069705688207549127.a n = A005728 n

end A005728

/-! ## A005728.P15189068592036803326

`∑[A000010(ceil(abs(γ-n)))]`
-/

namespace A005728.P15189068592036803326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005728.P15189068592036803326

namespace A005728

/-- `∑[A000010(ceil(abs(γ-n)))]` -/
def P15189068592036803326.Spec : Prop :=
  ∀ n, P15189068592036803326.a n = A005728 n

end A005728

/-! ## A005728.P17415647041975360937

`A384710(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005728.P17415647041975360937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A384710 n + a (n - 1)

end

end A005728.P17415647041975360937

namespace A005728

/-- `A384710(n)+a(n-1)` -/
def P17415647041975360937.Spec : Prop :=
  ∀ n, P17415647041975360937.a n = A005728 n

end A005728

/-! ## A005728.P16463781887926568751

`a(n-1)+A109606(n)+1` with `a(0)=1`
-/

namespace A005728.P16463781887926568751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A109606 n + 1)

end

end A005728.P16463781887926568751

namespace A005728

/-- `a(n-1)+A109606(n)+1` -/
def P16463781887926568751.Spec : Prop :=
  ∀ n, P16463781887926568751.a n = A005728 n

end A005728

/-! ## A005728.P18324591011208360046

`a(n-1)+n-A051953(n)` with `a(0)=1`
-/

namespace A005728.P18324591011208360046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A051953 n)

end

end A005728.P18324591011208360046

namespace A005728

/-- `a(n-1)+n-A051953(n)` -/
def P18324591011208360046.Spec : Prop :=
  ∀ n, P18324591011208360046.a n = A005728 n

end A005728

/-! ## A005728.P13802723359988505231

`A049643(n)+A000007(n)`
-/

namespace A005728.P13802723359988505231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A000007 n

end

end A005728.P13802723359988505231

namespace A005728

/-- `A049643(n)+A000007(n)` -/
def P13802723359988505231.Spec : Prop :=
  ∀ n, P13802723359988505231.a n = A005728 n

end A005728

/-! ## A005728.P12530172500541087822

`∪[A061560(n+1), A078334(n+1)]`
-/

namespace A005728.P12530172500541087822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005728.P12530172500541087822

namespace A005728

/-- `∪[A061560(n+1), A078334(n+1)]` -/
def P12530172500541087822.Spec : Prop :=
  ∀ n, (P12530172500541087822.a n : ℤ) = A005728 n

end A005728

/-! ## A005728.P11489640645819460873

`∑[A000010(n+1)]-A109606(n+1)`
-/

namespace A005728.P11489640645819460873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109606 (n + 1)

end

end A005728.P11489640645819460873

namespace A005728

/-- `∑[A000010(n+1)]-A109606(n+1)` -/
def P11489640645819460873.Spec : Prop :=
  ∀ n, P11489640645819460873.a n = A005728 n

end A005728

/-! ## A005728.P155162125397166961

`A015613(n+1)+A051953(n+1)+1`
-/

namespace A005728.P155162125397166961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (A051953 (n + 1) + 1)

end

end A005728.P155162125397166961

namespace A005728

/-- `A015613(n+1)+A051953(n+1)+1` -/
def P155162125397166961.Spec : Prop :=
  ∀ n, P155162125397166961.a n = A005728 n

end A005728

/-! ## A005728.P18160251899255857093

`A092249(n+1)+1-A000010(n+1)`
-/

namespace A005728.P18160251899255857093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + (1 - A000010 (n + 1))

end

end A005728.P18160251899255857093

namespace A005728

/-- `A092249(n+1)+1-A000010(n+1)` -/
def P18160251899255857093.Spec : Prop :=
  ∀ n, P18160251899255857093.a n = A005728 n

end A005728

/-! ## A005728.P15929221632036016057

`A015614(n+1)+2-A000010(n+1)`
-/

namespace A005728.P15929221632036016057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (2 - A000010 (n + 1))

end

end A005728.P15929221632036016057

namespace A005728

/-- `A015614(n+1)+2-A000010(n+1)` -/
def P15929221632036016057.Spec : Prop :=
  ∀ n, P15929221632036016057.a n = A005728 n

end A005728

/-! ## A005728.P17700030770667780532

`∑[A039649(n+1)-1]-A109606(n+1)`
-/

namespace A005728.P17700030770667780532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109606 (n + 1)

end

end A005728.P17700030770667780532

namespace A005728

/-- `∑[A039649(n+1)-1]-A109606(n+1)` -/
def P17700030770667780532.Spec : Prop :=
  ∀ n, P17700030770667780532.a n = A005728 n

end A005728

/-! ## A005728.P16566919857410249070

`A002088(n)-A008683(A020484(n))`
-/

namespace A005728.P16566919857410249070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n - A008683 (A020484 n).toNat

end

end A005728.P16566919857410249070

namespace A005728

/-- `A002088(n)-A008683(A020484(n))` -/
def P16566919857410249070.Spec : Prop :=
  ∀ n, P16566919857410249070.a n = A005728 n

end A005728

/-! ## A005728.P9905034750346226234

`A049643(n+1)-A000010(n+1)`
-/

namespace A005728.P9905034750346226234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 1) - A000010 (n + 1)

end

end A005728.P9905034750346226234

namespace A005728

/-- `A049643(n+1)-A000010(n+1)` -/
def P9905034750346226234.Spec : Prop :=
  ∀ n, P9905034750346226234.a n = A005728 n

end A005728

/-! ## A005728.P6778027816839858007

`A005598(n+1)-(A103116(n)+A000010(n+1))`
-/

namespace A005728.P6778027816839858007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 (n + 1) - (A103116 n + A000010 (n + 1))

end

end A005728.P6778027816839858007

namespace A005728

/-- `A005598(n+1)-(A103116(n)+A000010(n+1))` -/
def P6778027816839858007.Spec : Prop :=
  ∀ n, P6778027816839858007.a n = A005728 n

end A005728

/-!
# A005729: a(n) is the smallest positive integer a for which there is an identity of the form a*n*x = Sum_{i=1..m} ai*gi(x)^n where a1, ..., am are in Z and g1(x), ..., gm(x) are in Z[x].

The programs for A005729, there is no canonical definition to state claims against.
-/

/-! ## A005729.P4534526955096514981

`A005730(n+1)*A005731(n+1)`
-/

namespace A005729.P4534526955096514981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005730 (n + 1) * A005731 (n + 1)

end

end A005729.P4534526955096514981

/-! ## A005729.P14336073684483905439

`A370252(n+1)/(n+1)`
-/

namespace A005729.P14336073684483905439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370252 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005729.P14336073684483905439

/-! ## A005729.P1159905723826071832

`lcm(A005730(n+1), A005731(-xor(n, -1)))`
-/

namespace A005729.P1159905723826071832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005730 (n + 1)) (A005731 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A005729.P1159905723826071832

/-! ## A005729.P10979507188970838739

`lcm(A005730(A000027(n+1)), A005731(n+1))`
-/

namespace A005729.P10979507188970838739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005730 (A000027 (n + 1)).toNat) (A005731 (n + 1))

end

end A005729.P10979507188970838739

/-! ## A005729.P16280036132005128265

`lcm(A005730(n+1), A005731(A181440(n+1)))`
-/

namespace A005729.P16280036132005128265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005730 (n + 1)) (A005731 (A181440 (n + 1)).toNat)

end

end A005729.P16280036132005128265

/-!
# A005730: Related to n-th powers of polynomials: factors complementary to A005731.

The programs for A005730, the canonical program `A005730.P9332930387800122468` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005730 has offset 1).

The definition of A005730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005730.P16366117595191490735

`A005729(n+1)/A005731(n+1)`
-/

namespace A005730.P16366117595191490735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005729 (n + 1) : ℚ) / (A005731 (n + 1) : ℚ)

end

end A005730.P16366117595191490735

namespace A005730

/-- `A005729(n+1)/A005731(n+1)` -/
def P16366117595191490735.Spec : Prop :=
  ∀ n, P16366117595191490735.a n = (A005730 (n + 1) : ℚ)

end A005730

/-! ## A005730.P1777794389220003376

`gcd((n+1)², A005729(n+1))`
-/

namespace A005730.P1777794389220003376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A005729 (n + 1))

end

end A005730.P1777794389220003376

namespace A005730

/-- `gcd((n+1)², A005729(n+1))` -/
def P1777794389220003376.Spec : Prop :=
  ∀ n, (P1777794389220003376.a n : ℤ) = A005730 (n + 1)

end A005730

/-! ## A005730.P9332930387800122468

`A245477(n)*A334085(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005730

/-- `A245477(n)*A334085(n+1)` -/
def P9332930387800122468.Spec : Prop :=
  ∀ n, P9332930387800122468.a n = A005730 (n + 1)

theorem P9332930387800122468.correct : P9332930387800122468.Spec := by
  intro n
  simp only [A005730, Nat.add_sub_cancel]

end A005730

/-! ## A005730.P12245187875210811401

`gcd(A005729(n+1), A129196(n))`
-/

namespace A005730.P12245187875210811401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005729 (n + 1)) (A129196 n)

end

end A005730.P12245187875210811401

namespace A005730

/-- `gcd(A005729(n+1), A129196(n))` -/
def P12245187875210811401.Spec : Prop :=
  ∀ n, (P12245187875210811401.a n : ℤ) = A005730 (n + 1)

end A005730

/-! ## A005730.P12777564947641997682

`gcd(n*A005729(n+1), A053143(n+1))`
-/

namespace A005730.P12777564947641997682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A005729 (n + 1)) (A053143 (n + 1))

end

end A005730.P12777564947641997682

namespace A005730

/-- `gcd(n*A005729(n+1), A053143(n+1))` -/
def P12777564947641997682.Spec : Prop :=
  ∀ n, (P12777564947641997682.a n : ℤ) = A005730 (n + 1)

end A005730

/-! ## A005730.P4388303248639717566

`gcd(A005729(-xor(n, -1)), A064549(n+1))`
-/

namespace A005730.P4388303248639717566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005729 (-Int.xor (n : ℤ) (-1)).toNat) (A064549 (n + 1))

end

end A005730.P4388303248639717566

namespace A005730

/-- `gcd(A005729(-xor(n, -1)), A064549(n+1))` -/
def P4388303248639717566.Spec : Prop :=
  ∀ n, (P4388303248639717566.a n : ℤ) = A005730 (n + 1)

end A005730

/-! ## A005730.P14624324638132572401

`gcd(A005729(A000027(n+1)), A064549(n+1))`
-/

namespace A005730.P14624324638132572401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005729 (A000027 (n + 1)).toNat) (A064549 (n + 1))

end

end A005730.P14624324638132572401

namespace A005730

/-- `gcd(A005729(A000027(n+1)), A064549(n+1))` -/
def P14624324638132572401.Spec : Prop :=
  ∀ n, (P14624324638132572401.a n : ℤ) = A005730 (n + 1)

end A005730

/-! ## A005730.P6170147507255405851

`gcd(A005729(A008619(2*n)), A053143(n+1))`
-/

namespace A005730.P6170147507255405851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005729 (A008619 (2 * n)).toNat) (A053143 (n + 1))

end

end A005730.P6170147507255405851

namespace A005730

/-- `gcd(A005729(A008619(2*n)), A053143(n+1))` -/
def P6170147507255405851.Spec : Prop :=
  ∀ n, (P6170147507255405851.a n : ℤ) = A005730 (n + 1)

end A005730

/-! ## A005730.P12200756204983862052

`lcm(A005729(n+1), A066838(n+1))/A066838(n+1)`
-/

namespace A005730.P12200756204983862052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005729 (n + 1)) (A066838 (n + 1)) : ℚ) / (A066838 (n + 1) : ℚ)

end

end A005730.P12200756204983862052

namespace A005730

/-- `lcm(A005729(n+1), A066838(n+1))/A066838(n+1)` -/
def P12200756204983862052.Spec : Prop :=
  ∀ n, P12200756204983862052.a n = (A005730 (n + 1) : ℚ)

end A005730

/-!
# A005731: Related to n-th powers of polynomials: factors complementary to A005730.

The programs for A005731, there is no canonical definition to state claims against.
-/

/-! ## A005731.P7135000989550450211

`A005729(n+1)/A005730(n+1)`
-/

namespace A005731.P7135000989550450211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005729 (n + 1) : ℚ) / (A005730 (n + 1) : ℚ)

end

end A005731.P7135000989550450211

/-! ## A005731.P10056604482786725626

`A005729(n+1)/gcd(A005729(n+1), A129196(n))`
-/

namespace A005731.P10056604482786725626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005729 (n + 1) : ℚ) / (Int.gcd (A005729 (n + 1)) (A129196 n) : ℚ)

end

end A005731.P10056604482786725626

/-! ## A005731.P12734904526499856115

`lcm(A005729(n+1), A053167(n+1))/A053167(n+1)`
-/

namespace A005731.P12734904526499856115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005729 (n + 1)) (A053167 (n + 1)) : ℚ) / (A053167 (n + 1) : ℚ)

end

end A005731.P12734904526499856115

/-! ## A005731.P17678748971123680244

`A005729(n+1)/gcd(A005729(-xor(n, -1)), A064549(n+1))`
-/

namespace A005731.P17678748971123680244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005729 (n + 1) : ℚ) / (Int.gcd (A005729 (-Int.xor (n : ℤ) (-1)).toNat) (A064549 (n + 1)) : ℚ)

end

end A005731.P17678748971123680244

/-! ## A005731.P16566388700823321930

`A005729(n+1)/gcd(A005729(A000027(n+1)), A064549(n+1))`
-/

namespace A005731.P16566388700823321930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005729 (n + 1) : ℚ) / (Int.gcd (A005729 (A000027 (n + 1)).toNat) (A064549 (n + 1)) : ℚ)

end

end A005731.P16566388700823321930

/-! ## A005731.P2105858347003237489

`gcd(A005729(n+1), A066838(n+1))`
-/

namespace A005731.P2105858347003237489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005729 (n + 1)) (A066838 (n + 1))

end

end A005731.P2105858347003237489

/-! ## A005731.P4447228744593386628

`gcd(A005729(n+1), A038610(n+1))`
-/

namespace A005731.P4447228744593386628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005729 (n + 1)) (A038610 (n + 1))

end

end A005731.P4447228744593386628

/-!
# A005732: a(n) = binomial(n+3,6) + binomial(n+1,5) + binomial(n,5).

The programs for A005732, the canonical program `A005732.P12394827948572800737` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005732 has offset 3).

The definition of A005732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)+C(n+4, 5)+C(n+3, 5)` (program `A005732.P12394827948572800737`, by `A005732.P12394827948572800737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005732.P248061783194237341

`ogf((1+x-x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A005732.P248061783194237341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A005732.P248061783194237341

namespace A005732

/-- `ogf((1+x-x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P248061783194237341.Spec : Prop :=
  ∀ n, P248061783194237341.a n = A005732 (n + 3)

end A005732

/-! ## A005732.P12394827948572800737

`C(n+6, 6)+C(n+4, 5)+C(n+3, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005732

/-- `C(n+6, 6)+C(n+4, 5)+C(n+3, 5)` -/
def P12394827948572800737.Spec : Prop :=
  ∀ n, (P12394827948572800737.a n : ℤ) = A005732 (n + 3)

theorem P12394827948572800737.correct : P12394827948572800737.Spec := by
  intro n
  simp only [A005732, Nat.add_sub_cancel]

end A005732

/-! ## A005732.P18445813506261260475

`∑[∑[∑[∑[∑[n+1]]+n²]]]`
-/

namespace A005732.P18445813506261260475
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005732.P18445813506261260475

namespace A005732

/-- `∑[∑[∑[∑[∑[n+1]]+n²]]]` -/
def P18445813506261260475.Spec : Prop :=
  ∀ n, (P18445813506261260475.a n : ℤ) = A005732 (n + 3)

end A005732

/-! ## A005732.P3967478957450105661

`A005714(n+3)-∑[∑[∑[2*n]]]`
-/

namespace A005732.P3967478957450105661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005732.P3967478957450105661

namespace A005732

/-- `A005714(n+3)-∑[∑[∑[2*n]]]` -/
def P3967478957450105661.Spec : Prop :=
  ∀ n, P3967478957450105661.a n = A005732 (n + 3)

end A005732

/-! ## A005732.P5773087601814269232

`A040977(n)-A000579(n+3)`
-/

namespace A005732.P5773087601814269232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n - A000579 (n + 3)

end

end A005732.P5773087601814269232

namespace A005732

/-- `A040977(n)-A000579(n+3)` -/
def P5773087601814269232.Spec : Prop :=
  ∀ n, P5773087601814269232.a n = A005732 (n + 3)

theorem P5773087601814269232.correct : P5773087601814269232.Spec := by
  intro n
  simp only [A005732, Nat.add_sub_cancel, A005732.P5773087601814269232.a, A005732.P12394827948572800737.a, A000579, A000579.P13663713855180125612.a, A040977, A040977.P17094286001024075111.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005732

/-! ## A005732.P7870706241769191834

`∑[A005585(n+1)]-A000579(n+3)`
-/

namespace A005732.P7870706241769191834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000579 (n + 3)

end

end A005732.P7870706241769191834

namespace A005732

/-- `∑[A005585(n+1)]-A000579(n+3)` -/
def P7870706241769191834.Spec : Prop :=
  ∀ n, P7870706241769191834.a n = A005732 (n + 3)

end A005732

/-! ## A005732.P3429900492509478571

`A299337(2*n)-A000579(n+3)`
-/

namespace A005732.P3429900492509478571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 (2 * n) - A000579 (n + 3)

end

end A005732.P3429900492509478571

namespace A005732

/-- `A299337(2*n)-A000579(n+3)` -/
def P3429900492509478571.Spec : Prop :=
  ∀ n, P3429900492509478571.a n = A005732 (n + 3)

end A005732

/-! ## A005732.P5807376784075693233

`A257200(n+1)+∑[A000914(n)]`
-/

namespace A005732.P5807376784075693233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005732.P5807376784075693233

namespace A005732

/-- `A257200(n+1)+∑[A000914(n)]` -/
def P5807376784075693233.Spec : Prop :=
  ∀ n, P5807376784075693233.a n = A005732 (n + 3)

end A005732

/-! ## A005732.P7873903183864439946

`A095662(n)-A000914(n+1)`
-/

namespace A005732.P7873903183864439946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n - A000914 (n + 1)

end

end A005732.P7873903183864439946

namespace A005732

/-- `A095662(n)-A000914(n+1)` -/
def P7873903183864439946.Spec : Prop :=
  ∀ n, P7873903183864439946.a n = A005732 (n + 3)

end A005732

/-!
# A005736: Number of degenerate fanout-free Boolean functions of n variables using And, Or and Not gates.

The programs for A005736, there is no canonical definition to state claims against.
-/

/-! ## A005736.P14355439588965138542

`A005737(n)-A224766(n)`
-/

namespace A005736.P14355439588965138542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005737 n - A224766 n

end

end A005736.P14355439588965138542

/-! ## A005736.P13413508409538631448

`A005737(n)-lcm(2, A005640(n+1))`
-/

namespace A005736.P13413508409538631448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005737 n - (Int.lcm 2 (A005640 (n + 1)) : ℤ)

end

end A005736.P13413508409538631448

/-! ## A005736.P15026649943982467528

`A005737(n)-A005640(A233583(n+2))`
-/

namespace A005736.P15026649943982467528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005737 n - A005640 (A233583 (n + 2)).toNat

end

end A005736.P15026649943982467528

/-! ## A005736.P6079556651316770113

`A005737(n)-2*A005172(A028310(n))`
-/

namespace A005736.P6079556651316770113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005737 n - 2 * A005172 (A028310 n).toNat

end

end A005736.P6079556651316770113

/-! ## A005736.P1981089031144800630

`A005737(n)-(A005640(n+1)+A225170(n+1)-A005172(n+1))`
-/

namespace A005736.P1981089031144800630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005737 n - (A005640 (n + 1) + (A225170 (n + 1) - A005172 (n + 1)))

end

end A005736.P1981089031144800630

/-!
# A005737: Number of fanout-free Boolean functions of n variables using And, Or and Not gates.

The programs for A005737, there is no canonical definition to state claims against.
-/

/-! ## A005737.P1946697188819263942

`A224766(n)+A005736(n)`
-/

namespace A005737.P1946697188819263942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224766 n + A005736 n

end

end A005737.P1946697188819263942

/-! ## A005737.P3641489165635962841

`A005736(n)+lcm(2, A005640(n+1))`
-/

namespace A005737.P3641489165635962841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005736 n + (Int.lcm 2 (A005640 (n + 1)) : ℤ)

end

end A005737.P3641489165635962841

/-! ## A005737.P2949478723871239039

`A005736(n)+A005640(A233583(n+2))`
-/

namespace A005737.P2949478723871239039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005736 n + A005640 (A233583 (n + 2)).toNat

end

end A005737.P2949478723871239039

/-! ## A005737.P4656941140801148273

`A005736(n)+2*A005172(A028310(n))`
-/

namespace A005737.P4656941140801148273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005736 n + 2 * A005172 (A028310 n).toNat

end

end A005737.P4656941140801148273

/-! ## A005737.P12564196219419856389

`A005736(n)+A005640(n+1)+A225170(n+1)-A005172(n+1)`
-/

namespace A005737.P12564196219419856389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005736 n + (A005640 (n + 1) + (A225170 (n + 1) - A005172 (n + 1)))

end

end A005737.P12564196219419856389

/-!
# A005738: Number of degenerate fanout-free Boolean functions of n variables using And, Or, Xor, and Not gates.

The programs for A005738, there is no canonical definition to state claims against.
-/

/-! ## A005738.P9966898607841476340

`∑{#}[n-1, C(n, #)*A005616(#)]`
-/

namespace A005738.P9966898607841476340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n k : ℤ) * A005616 k

end

end A005738.P9966898607841476340

/-! ## A005738.P13661692743976316061

`A005739(n)-A005616(n)`
-/

namespace A005738.P13661692743976316061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005739 n - A005616 n

end

end A005738.P13661692743976316061

/-!
# A005739: Number of disjunctively-realizable functions of n variables.

The programs for A005739, there is no canonical definition to state claims against.
-/

/-! ## A005739.P1894950294259106913

`A005616(n)+A005738(n)`
-/

namespace A005739.P1894950294259106913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005616 n + A005738 n

end

end A005739.P1894950294259106913

/-!
# A005740: Number of degenerate fanout-free Boolean functions of n variables using And, Or, Xor, Not, and Majority gates.

The programs for A005740, there is no canonical definition to state claims against.
-/

/-! ## A005740.P8725100292923596015

`∑{#}[n, C(n+1, #)*A005617(#)]`
-/

namespace A005740.P8725100292923596015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A005617 k

end

end A005740.P8725100292923596015

/-! ## A005740.P3104171355400178282

`A005741(n+1)-A005617(n+1)`
-/

namespace A005740.P3104171355400178282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005741 (n + 1) - A005617 (n + 1)

end

end A005740.P3104171355400178282

/-!
# A005741: Number of fanout-free Boolean functions of n variables using And, Or, Xor, Not, and Majority gates.

The programs for A005741, there is no canonical definition to state claims against.
-/

/-! ## A005741.P16683257904155606076

`A066208(A161715(n)+A107669(n))`
-/

namespace A005741.P16683257904155606076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (A161715 n + A107669 n).toNat

end

end A005741.P16683257904155606076

/-!
# A005742: Number of degenerate fanout-free Boolean functions of n variables using And, Or, Not and Majority gates.

The programs for A005742, there is no canonical definition to state claims against.
-/

/-! ## A005742.P3335140937945795551

`∑{#}[n, C(n+1, #)*A005615(#)]`
-/

namespace A005742.P3335140937945795551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A005615 k

end

end A005742.P3335140937945795551

/-! ## A005742.P2451411931515902957

`A005743(n+1)-A005615(n+1)`
-/

namespace A005742.P2451411931515902957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005743 (n + 1) - A005615 (n + 1)

end

end A005742.P2451411931515902957

/-!
# A005743: Number of fanout-free Boolean functions of n variables using And, Or, Not and Majority gates.

The programs for A005743, there is no canonical definition to state claims against.
-/

/-! ## A005743.P12632865675866035263

`A004277(A046662(n))`
-/

namespace A005743.P12632865675866035263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046662 n).toNat

end

end A005743.P12632865675866035263

/-!
# A005744: Expansion of x*(1+x-x^2)/((1-x)^4*(1+x)).

The programs for A005744, the canonical program `A005744.P1809808301674466484` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005744 has offset 0).

The definition of A005744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2-x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` (program `A005744.P1809808301674466484`, by `A005744.P1809808301674466484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005744.P1809808301674466484

`ogf((x+x^2-x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005744

/-- `ogf((x+x^2-x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P1809808301674466484.Spec : Prop :=
  ∀ n, P1809808301674466484.a n = A005744 n

theorem P1809808301674466484.correct : P1809808301674466484.Spec := by
  intro n
  simp only [A005744]

end A005744

/-! ## A005744.P9694332330559471288

`5*n/12-1/16+5*n²/8+n^3/12+(-1)^n/16`
-/

namespace A005744.P9694332330559471288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n : ℚ) / 12 - (1 : ℚ) / 16 + (5 * n ^ 2 : ℚ) / 8 + (n ^ 3 : ℚ) / 12 + ((-1) ^ n : ℚ) / 16

end

end A005744.P9694332330559471288

namespace A005744

/-- `5*n/12-1/16+5*n²/8+n^3/12+(-1)^n/16` -/
def P9694332330559471288.Spec : Prop :=
  ∀ n, P9694332330559471288.a n = (A005744 n : ℚ)

end A005744

/-! ## A005744.P15533290316797442664

`∑[and(n², -2)/4+n]`
-/

namespace A005744.P15533290316797442664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n ^ 2 : ℤ) (-2) : ℚ) / 4 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P15533290316797442664

namespace A005744

/-- `∑[and(n², -2)/4+n]` -/
def P15533290316797442664.Spec : Prop :=
  ∀ n, P15533290316797442664.a n = (A005744 n : ℚ)

end A005744

/-! ## A005744.P10419474232964244099

`∑[∑[and(n, -2)/2]+n]`
-/

namespace A005744.P10419474232964244099
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P10419474232964244099

namespace A005744

/-- `∑[∑[and(n, -2)/2]+n]` -/
def P10419474232964244099.Spec : Prop :=
  ∀ n, P10419474232964244099.a n = (A005744 n : ℚ)

end A005744

/-! ## A005744.P17149521627081296866

`∑[∑[∑[(n+1)%2]]-1]`
-/

namespace A005744.P17149521627081296866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P17149521627081296866

namespace A005744

/-- `∑[∑[∑[(n+1)%2]]-1]` -/
def P17149521627081296866.Spec : Prop :=
  ∀ n, P17149521627081296866.a n = A005744 n

end A005744

/-! ## A005744.P11071849609966242671

`∑[∑[∑[1-n%2]]-1]`
-/

namespace A005744.P11071849609966242671
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P11071849609966242671

namespace A005744

/-- `∑[∑[∑[1-n%2]]-1]` -/
def P11071849609966242671.Spec : Prop :=
  ∀ n, P11071849609966242671.a n = A005744 n

end A005744

/-! ## A005744.P566459906435601503

`abs(∑[record[floor((n/2)²-n)]])`
-/

namespace A005744.P566459906435601503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2 - (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005744.P566459906435601503

namespace A005744

/-- `abs(∑[record[floor((n/2)²-n)]])` -/
def P566459906435601503.Spec : Prop :=
  ∀ n, P566459906435601503.a n = A005744 n

end A005744

/-! ## A005744.P17617002225972016893

`∑[∑[n-a(n-3)]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A005744.P17617002225972016893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f2 =>
  (n : ℤ) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P17617002225972016893

namespace A005744

/-- `∑[∑[n-a(n-3)]]` -/
def P17617002225972016893.Spec : Prop :=
  ∀ n, P17617002225972016893.a n = A005744 n

end A005744

/-! ## A005744.P8040053313652176259

`∑[∑[∑[and(1, n+1)]]]-(n+1)`
-/

namespace A005744.P8040053313652176259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A005744.P8040053313652176259

namespace A005744

/-- `∑[∑[∑[and(1, n+1)]]]-(n+1)` -/
def P8040053313652176259.Spec : Prop :=
  ∀ n, P8040053313652176259.a n = A005744 n

end A005744

/-! ## A005744.P2001946859817497138

`floor(a(n-1)+(n/2)²+n)` with `a(0)=0`
-/

namespace A005744.P2001946859817497138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (((n : ℚ) / 2) ^ 2 + (n : ℚ))⌋

end

end A005744.P2001946859817497138

namespace A005744

/-- `floor(a(n-1)+(n/2)²+n)` -/
def P2001946859817497138.Spec : Prop :=
  ∀ n, P2001946859817497138.a n = A005744 n

end A005744

/-! ## A005744.P13032079992206533237

`a(n-2)+C(n+2, 2)-2` with `a(0)=0, a(1)=1`
-/

namespace A005744.P13032079992206533237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Nat.choose (n + 2) 2 : ℤ) - 2

end

end A005744.P13032079992206533237

namespace A005744

/-- `a(n-2)+C(n+2, 2)-2` -/
def P13032079992206533237.Spec : Prop :=
  ∀ n, P13032079992206533237.a n = A005744 n

end A005744

/-! ## A005744.P5169590310175896689

`a(n-2)+a(n-1)+n+1-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A005744.P5169590310175896689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 2) + a (n - 1) + (n + 1 : ℤ) - a (n - 3)

end

end A005744.P5169590310175896689

namespace A005744

/-- `a(n-2)+a(n-1)+n+1-a(n-3)` -/
def P5169590310175896689.Spec : Prop :=
  ∀ n, P5169590310175896689.a n = A005744 n

end A005744

/-! ## A005744.P8497653678256150190

`∑[A024206(n+1)]`
-/

namespace A005744.P8497653678256150190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P8497653678256150190

namespace A005744

/-- `∑[A024206(n+1)]` -/
def P8497653678256150190.Spec : Prop :=
  ∀ n, P8497653678256150190.a n = A005744 n

end A005744

/-! ## A005744.P11844709297315701127

`∑[A002620(n)+n]`
-/

namespace A005744.P11844709297315701127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P11844709297315701127

namespace A005744

/-- `∑[A002620(n)+n]` -/
def P11844709297315701127.Spec : Prop :=
  ∀ n, P11844709297315701127.a n = A005744 n

end A005744

/-! ## A005744.P8772691086625602870

`∑[A249547(n)-n²]`
-/

namespace A005744.P8772691086625602870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P8772691086625602870

namespace A005744

/-- `∑[A249547(n)-n²]` -/
def P8772691086625602870.Spec : Prop :=
  ∀ n, P8772691086625602870.a n = A005744 n

end A005744

/-! ## A005744.P8942877552466083025

`∑[A087811(n+1)-1]`
-/

namespace A005744.P8942877552466083025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P8942877552466083025

namespace A005744

/-- `∑[A087811(n+1)-1]` -/
def P8942877552466083025.Spec : Prop :=
  ∀ n, P8942877552466083025.a n = A005744 n

end A005744

/-! ## A005744.P18378556965730069889

`∑[A183575(n+1)/2]`
-/

namespace A005744.P18378556965730069889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183575 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P18378556965730069889

namespace A005744

/-- `∑[A183575(n+1)/2]` -/
def P18378556965730069889.Spec : Prop :=
  ∀ n, P18378556965730069889.a n = (A005744 n : ℚ)

end A005744

/-! ## A005744.P10344111919879818878

`∑[(n+1)²-A263807(n)]`
-/

namespace A005744.P10344111919879818878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A263807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005744.P10344111919879818878

namespace A005744

/-- `∑[(n+1)²-A263807(n)]` -/
def P10344111919879818878.Spec : Prop :=
  ∀ n, P10344111919879818878.a n = A005744 n

end A005744

/-!
# A005745: Number of n-covers of an unlabeled 3-set.

The programs for A005745, the canonical program `A005745.P2343868508805754794` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005745 has offset 1).

The definition of A005745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005745.P6042996248778681363

`ogf((1+2x+3x^2-x^3-2x^4+2x^5+x^6+x^7-x^8)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))`
-/

namespace A005745.P6042996248778681363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, -1, -2, 2, 1, 1, -1] [1, -4, 4, 2, -2, -4, -3, 12, -3, -4, -2, 2, 4, -4, 1] n

end

end A005745.P6042996248778681363

namespace A005745

/-- `ogf((1+2x+3x^2-x^3-2x^4+2x^5+x^6+x^7-x^8)/(1-4x+4x^2+2x^3-2x^4-4x^5-3x^6+12x^7-3x^8-4x^9-2x^10+2x^11+4x^12-4x^13+x^14))` -/
def P6042996248778681363.Spec : Prop :=
  ∀ n, P6042996248778681363.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P2343868508805754794

`A002727(n+1)-A002623(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005745

/-- `A002727(n+1)-A002623(n+1)` -/
def P2343868508805754794.Spec : Prop :=
  ∀ n, P2343868508805754794.a n = A005745 (n + 1)

theorem P2343868508805754794.correct : P2343868508805754794.Spec := by
  intro n
  simp only [A005745, Nat.add_sub_cancel]

end A005745

/-! ## A005745.P2701470633622022605

`∑[A055609(n+1)]`
-/

namespace A005745.P2701470633622022605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005745.P2701470633622022605

namespace A005745

/-- `∑[A055609(n+1)]` -/
def P2701470633622022605.Spec : Prop :=
  ∀ n, P2701470633622022605.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P8434756047648325671

`∑[A327728(n+1)+A005783(n)]`
-/

namespace A005745.P8434756047648325671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327728 (n + 1) + A005783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005745.P8434756047648325671

namespace A005745

/-- `∑[A327728(n+1)+A005783(n)]` -/
def P8434756047648325671.Spec : Prop :=
  ∀ n, P8434756047648325671.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P613574775339285908

`∑[A327728(n+1)+∑[A050531(n)]]`
-/

namespace A005745.P613574775339285908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327728 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005745.P613574775339285908

namespace A005745

/-- `∑[A327728(n+1)+∑[A050531(n)]]` -/
def P613574775339285908.Spec : Prop :=
  ∀ n, P613574775339285908.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P6173554683789002327

`Δ[-∑[A002623(n)-A002727(n)]]`
-/

namespace A005745.P6173554683789002327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - A002727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005745.P6173554683789002327

namespace A005745

/-- `Δ[-∑[A002623(n)-A002727(n)]]` -/
def P6173554683789002327.Spec : Prop :=
  ∀ n, P6173554683789002327.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P7835526768290912569

`∑[A005783(n+1)-Δ[A002623(n)]]`
-/

namespace A005745.P7835526768290912569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005745.P7835526768290912569

namespace A005745

/-- `∑[A005783(n+1)-Δ[A002623(n)]]` -/
def P7835526768290912569.Spec : Prop :=
  ∀ n, P7835526768290912569.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P18092501929221084007

`A002623(n+1)+A055194(n+2)-A055609(n+2)`
-/

namespace A005745.P18092501929221084007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) + (A055194 (n + 2) - A055609 (n + 2))

end

end A005745.P18092501929221084007

namespace A005745

/-- `A002623(n+1)+A055194(n+2)-A055609(n+2)` -/
def P18092501929221084007.Spec : Prop :=
  ∀ n, P18092501929221084007.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P6781944808282234434

`A002727(n+1)-A173196(n+3)`
-/

namespace A005745.P6781944808282234434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 (n + 1) - A173196 (n + 3)

end

end A005745.P6781944808282234434

namespace A005745

/-- `A002727(n+1)-A173196(n+3)` -/
def P6781944808282234434.Spec : Prop :=
  ∀ n, P6781944808282234434.a n = A005745 (n + 1)

end A005745

/-! ## A005745.P5666253033755993833

`∑[record[A055609(A193738(n))]]`
-/

namespace A005745.P5666253033755993833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005745.P5666253033755993833

namespace A005745

/-- `∑[record[A055609(A193738(n))]]` -/
def P5666253033755993833.Spec : Prop :=
  ∀ n, P5666253033755993833.a n = A005745 (n + 1)

end A005745

/-!
# A005746: Number of n-covers of an unlabeled 4-set.

The programs for A005746, there is no canonical definition to state claims against.
-/

/-! ## A005746.P15295603448866015300

`A006148(n+1)-A002727(n+1)`
-/

namespace A005746.P15295603448866015300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 (n + 1) - A002727 (n + 1)

end

end A005746.P15295603448866015300

/-! ## A005746.P15798758657958191466

`∑[A055082(n+1)]`
-/

namespace A005746.P15798758657958191466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P15798758657958191466

/-! ## A005746.P10386408755998117663

`∑[record[A055082(A328395(n))]]`
-/

namespace A005746.P10386408755998117663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055082 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P10386408755998117663

/-! ## A005746.P5114402909071357699

`∑[record[A055082(A328396(n))]]`
-/

namespace A005746.P5114402909071357699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055082 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P5114402909071357699

/-! ## A005746.P12586195053552914533

`∑[record[A055082(A328399(n))]]`
-/

namespace A005746.P12586195053552914533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055082 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P12586195053552914533

/-! ## A005746.P3261696200049623183

`∑[A005784(n+1)-Δ[A002727(n)]]`
-/

namespace A005746.P3261696200049623183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P3261696200049623183

/-! ## A005746.P17227845053305236279

`∑[A005784(n+1)-A005783(n+1)]`
-/

namespace A005746.P17227845053305236279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 (n + 1) - A005783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P17227845053305236279

/-! ## A005746.P2433196173696462976

`∑[record[A055082(A193738(n))]]`
-/

namespace A005746.P2433196173696462976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055082 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005746.P2433196173696462976

/-!
# A005747: Number of n-covers of an unlabeled 6-set.

The programs for A005747, there is no canonical definition to state claims against.
-/

/-! ## A005747.P3515047570185500518

`∑[A055084(n+1)]`
-/

namespace A005747.P3515047570185500518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005747.P3515047570185500518

/-! ## A005747.P11634350528041394047

`∑[record[A055084(A133310(n))]]`
-/

namespace A005747.P11634350528041394047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055084 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005747.P11634350528041394047

/-! ## A005747.P13362519132441831468

`∑[record[A055084(A328395(n))]]`
-/

namespace A005747.P13362519132441831468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055084 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005747.P13362519132441831468

/-! ## A005747.P3855129118226191385

`∑[record[A055084(A328396(n))]]`
-/

namespace A005747.P3855129118226191385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055084 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005747.P3855129118226191385

/-! ## A005747.P8975479291372219375

`∑[record[A055084(A143182(n))]]`
-/

namespace A005747.P8975479291372219375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055084 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005747.P8975479291372219375

/-!
# A005748: Number of n-covers of an unlabeled 7-set.

The programs for A005748, there is no canonical definition to state claims against.
-/

/-! ## A005748.P6230294031588412505

`∑[A055066(n+1)-A005786(n+1)]`
-/

namespace A005748.P6230294031588412505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055066 (n + 1) - A005786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005748.P6230294031588412505

/-! ## A005748.P12049157490519072570

`∑[A055066(n+1)-(A055084(n+1)+A005785(n+1))]`
-/

namespace A005748.P12049157490519072570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055066 (n + 1) - (A055084 (n + 1) + A005785 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005748.P12049157490519072570

/-! ## A005748.P12696664029690822121

`A055080(eq[5, A219347(n)])`
-/

namespace A005748.P12696664029690822121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005748.P12696664029690822121

/-! ## A005748.P12016270560216571756

`A055080(eq[7, A193592(n)])`
-/

namespace A005748.P12016270560216571756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005748.P12016270560216571756

/-! ## A005748.P12415444909999207811

`A055080(eq[64, A057728(n+1)])`
-/

namespace A005748.P12415444909999207811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005748.P12415444909999207811

/-!
# A005749: Cascade-realizable Boolean functions of n variables.

The programs for A005749, there is no canonical definition to state claims against.
-/

/-! ## A005749.P8832994292912187056

`∑{#}[n+1, C(n+1, #)*A005613(#)]`
-/

namespace A005749.P8832994292912187056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A005613 k

end

end A005749.P8832994292912187056

/-!
# A005750: Number of planted matched trees with n nodes.

The programs for A005750, there is no canonical definition to state claims against.
-/

/-! ## A005750.P3001895820179415841

`A007748(Δ[n²])`
-/

namespace A005750.P3001895820179415841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005750.P3001895820179415841

/-! ## A005750.P7639138155812595991

`or(char[1], A007748(2*n+1))`
-/

namespace A005750.P7639138155812595991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007748 (2 * n + 1))

end

end A005750.P7639138155812595991

/-! ## A005750.P4530073691282645613

`A007748(A005408(n))/gcd(n, n+1)`
-/

namespace A005750.P4530073691282645613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007748 (A005408 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A005750.P4530073691282645613

/-! ## A005750.P10589813552842799861

`A007748(A005408(n))%A034491(n)`
-/

namespace A005750.P10589813552842799861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007748 (A005408 n).toNat) (A034491 n)

end

end A005750.P10589813552842799861

/-! ## A005750.P6411901831019586921

`A007748(A005408(n))-A000035(2*n)`
-/

namespace A005750.P6411901831019586921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 (A005408 n).toNat - A000035 (2 * n)

end

end A005750.P6411901831019586921

/-! ## A005750.P17182430063760289474

`lcm(A007748(A005408(n)), A008836(n+1))`
-/

namespace A005750.P17182430063760289474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007748 (A005408 n).toNat) (A008836 (n + 1))

end

end A005750.P17182430063760289474

/-! ## A005750.P959949166782458110

`A007748(2*n+1)+A000035(2*n)*A007748(2*n+2)`
-/

namespace A005750.P959949166782458110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 (2 * n + 1) + A000035 (2 * n) * A007748 (2 * n + 2)

end

end A005750.P959949166782458110

/-! ## A005750.P13674027371688468414

`gcd(A005408(2*n)*A007748(2*n+1), A007748(2*n+1))`
-/

namespace A005750.P13674027371688468414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 (2 * n) * A007748 (2 * n + 1)) (A007748 (2 * n + 1))

end

end A005750.P13674027371688468414

/-! ## A005750.P15797018630356122543

`A340814(∑[n+2]-1)`
-/

namespace A005750.P15797018630356122543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005750.P15797018630356122543

/-! ## A005750.P11384653286217759131

`2*A005751(2*n+1)-A000060(2*n+1)`
-/

namespace A005750.P11384653286217759131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (2 * n + 1) - A000060 (2 * n + 1)

end

end A005750.P11384653286217759131

/-!
# A005751: Number of matched trees with 2n nodes.

The programs for A005751, there is no canonical definition to state claims against.
-/

/-! ## A005751.P15500906946589700468

`(A007748(n+1)+A000238(n+1))/2`
-/

namespace A005751.P15500906946589700468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007748 (n + 1) + A000238 (n + 1) : ℚ) / 2

end

end A005751.P15500906946589700468

/-! ## A005751.P12025001053717003962

`(A007748(n+1)+A038056(n+1)-A000060(n+1))/2`
-/

namespace A005751.P12025001053717003962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007748 (n + 1) + (A038056 (n + 1) - A000060 (n + 1)) : ℚ) / 2

end

end A005751.P12025001053717003962

/-! ## A005751.P3869078194220006558

`A339829(2*(n+1)²)`
-/

namespace A005751.P3869078194220006558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339829 (2 * (n + 1) ^ 2)

end

end A005751.P3869078194220006558

/-! ## A005751.P2910771613165830960

`a(and(1, n+1))*A339829(A001105(n+1))` with `a(0)=1`
-/

namespace A005751.P2910771613165830960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.land 1 (n + 1)) * A339829 (A001105 (n + 1)).toNat

end

end A005751.P2910771613165830960

/-! ## A005751.P8128649799247670299

`A339829(A001105(n+1))%A339831(n+1)`
-/

namespace A005751.P8128649799247670299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339829 (A001105 (n + 1)).toNat) (A339831 (n + 1))

end

end A005751.P8128649799247670299

/-!
# A005752: a(n) = n^2 + n*floor(n*tau) - floor(n*tau)^2.

The programs for A005752, the canonical program `A005752.P917050918762581210` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005752 has offset 0).

The definition of A005752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005752.P917050918762581210

`n²-floor(ϕ*n)*floor(n/ϕ)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005752

/-- `n²-floor(ϕ*n)*floor(n/ϕ)` -/
def P917050918762581210.Spec : Prop :=
  ∀ n, P917050918762581210.a n = A005752 n

theorem P917050918762581210.correct : P917050918762581210.Spec := by
  intro n
  simp only [A005752]

end A005752

/-! ## A005752.P7158284805982700701

`A066096(n)²%A026352(A066096(n))`
-/

namespace A005752.P7158284805982700701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066096 n ^ 2) (A026352 (A066096 n).toNat)

end

end A005752.P7158284805982700701

namespace A005752

/-- `A066096(n)²%A026352(A066096(n))` -/
def P7158284805982700701.Spec : Prop :=
  ∀ n, P7158284805982700701.a n = A005752 n

end A005752

/-! ## A005752.P115985205753450081

`A134538(A026351(n))%A054770(A026351(n))`
-/

namespace A005752.P115985205753450081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134538 (A026351 n).toNat) (A054770 (A026351 n).toNat)

end

end A005752.P115985205753450081

namespace A005752

/-- `A134538(A026351(n))%A054770(A026351(n))` -/
def P115985205753450081.Spec : Prop :=
  ∀ n, P115985205753450081.a n = A005752 n

end A005752

/-! ## A005752.P14479145369036227147

`A053186(n*floor(n*ϕ²))`
-/

namespace A005752.P14479145369036227147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((n : ℤ) * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋).toNat

end

end A005752.P14479145369036227147

namespace A005752

/-- `A053186(n*floor(n*ϕ²))` -/
def P14479145369036227147.Spec : Prop :=
  ∀ n, P14479145369036227147.a n = A005752 n

end A005752

/-! ## A005752.P13045253830378763710

`A002251(n*A276886(n+1))%A276886(n+1)`
-/

namespace A005752.P13045253830378763710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002251 ((n : ℤ) * A276886 (n + 1)).toNat) (A276886 (n + 1))

end

end A005752.P13045253830378763710

namespace A005752

/-- `A002251(n*A276886(n+1))%A276886(n+1)` -/
def P13045253830378763710.Spec : Prop :=
  ∀ n, P13045253830378763710.a n = A005752 n

end A005752

/-!
# A005753: Number of rooted identity matched trees with n nodes.

The programs for A005753, there is no canonical definition to state claims against.
-/

/-! ## A005753.P9484659722349139462

`A038077(n+1)/2`
-/

namespace A005753.P9484659722349139462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038077 (n + 1) : ℚ) / 2

end

end A005753.P9484659722349139462

/-! ## A005753.P11682547740295951401

`A255517(A027379(n+2))`
-/

namespace A005753.P11682547740295951401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A027379 (n + 2)).toNat

end

end A005753.P11682547740295951401

/-! ## A005753.P3681632962578409553

`A255517(A055998(n+2))`
-/

namespace A005753.P3681632962578409553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055998 (n + 2)).toNat

end

end A005753.P3681632962578409553

/-! ## A005753.P5967911770193355028

`A255517(A155212(n)+5)`
-/

namespace A005753.P5967911770193355028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A155212 n + 5).toNat

end

end A005753.P5967911770193355028

/-! ## A005753.P17560593573179614995

`A255517(A056000(n)+7)`
-/

namespace A005753.P17560593573179614995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A056000 n + 7).toNat

end

end A005753.P17560593573179614995

/-! ## A005753.P3940712915423487389

`A255517(eq[3, A193592(n)])`
-/

namespace A005753.P3940712915423487389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005753.P3940712915423487389

/-! ## A005753.P5399909396600333359

`record[A255517(A060577(n)+1)]`
-/

namespace A005753.P5399909396600333359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A060577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005753.P5399909396600333359

/-! ## A005753.P8703446912036671023

`A255517(A052905(n+1)+2)`
-/

namespace A005753.P8703446912036671023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (n + 1) + 2).toNat

end

end A005753.P8703446912036671023

/-! ## A005753.P12212181866300740138

`A255517(A055999(n+1)+3)`
-/

namespace A005753.P12212181866300740138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055999 (n + 1) + 3).toNat

end

end A005753.P12212181866300740138

/-! ## A005753.P17780881916514874307

`record[A255517(abs(A046691(n))+1)]`
-/

namespace A005753.P17780881916514874307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (|A046691 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005753.P17780881916514874307

/-!
# A005754: Number of planted identity matched trees with n nodes.

The programs for A005754, there is no canonical definition to state claims against.
-/

/-! ## A005754.P11369911068708444750

`A027868(A150454(n)+5)`
-/

namespace A005754.P11369911068708444750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A150454 n + 5).toNat

end

end A005754.P11369911068708444750

/-! ## A005754.P9138562842568958036

`A382717(A116704(n))`
-/

namespace A005754.P9138562842568958036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A116704 n).toNat

end

end A005754.P9138562842568958036

/-! ## A005754.P599465771443393385

`A382717(A165530(n))`
-/

namespace A005754.P599465771443393385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A165530 n).toNat

end

end A005754.P599465771443393385

/-!
# A005755: Number of identity matched trees with n nodes.

The programs for A005755, there is no canonical definition to state claims against.
-/

/-! ## A005755.P12964446185544872435

`A343609(A151455(n)-1+n)`
-/

namespace A005755.P12964446185544872435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A151455 n - 1 + (n : ℤ)).toNat

end

end A005755.P12964446185544872435

/-! ## A005755.P14283582495620366014

`A343609(n-(1-A151455(n)))`
-/

namespace A005755.P14283582495620366014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 ((n : ℤ) - (1 - A151455 n)).toNat

end

end A005755.P14283582495620366014

/-! ## A005755.P3434546165304797230

`A343609(A333942(n)+A151455(n))`
-/

namespace A005755.P3434546165304797230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A333942 n + A151455 n).toNat

end

end A005755.P3434546165304797230

/-! ## A005755.P9962422715725925337

`A343609(A346426(n)+A151455(n))`
-/

namespace A005755.P9962422715725925337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A346426 n + A151455 n).toNat

end

end A005755.P9962422715725925337

/-! ## A005755.P2287496168275706121

`A343609(A343609(n²)+A151455(n))`
-/

namespace A005755.P2287496168275706121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A343609 (n ^ 2) + A151455 n).toNat

end

end A005755.P2287496168275706121

/-!
# A005756: Number of non-degenerate fanout-free Boolean functions of n variables having AND rank 2.

The programs for A005756, there is no canonical definition to state claims against.
-/

/-! ## A005756.P15300544567077415025

`A225171(∑[n+1]+2)`
-/

namespace A005756.P15300544567077415025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005756.P15300544567077415025

/-! ## A005756.P6951672359542975921

`record[A225171(A080036(n+1))]`
-/

namespace A005756.P6951672359542975921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (A080036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005756.P6951672359542975921

/-! ## A005756.P551143526022205982

`record[lcm(4, A225171(A080036(n)))]`
-/

namespace A005756.P551143526022205982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A225171 (A080036 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005756.P551143526022205982

/-! ## A005756.P6579530836759400125

`record[gcd(A213191(n), A225171(n+2))]`
-/

namespace A005756.P6579530836759400125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213191 n) (A225171 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005756.P6579530836759400125

/-! ## A005756.P6081770470094595389

`record[A221073(2*n)*A225171(A080036(n))]`
-/

namespace A005756.P6081770470094595389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (2 * n) * A225171 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005756.P6081770470094595389

/-!
# A005758: Number of partitions of n into parts of 12 kinds.

The programs for A005758, there is no canonical definition to state claims against.
-/

/-! ## A005758.P1566445321058122030

`A144064(A000217(n+12)+n)`
-/

namespace A005758.P1566445321058122030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A005758.P1566445321058122030

/-! ## A005758.P12949086063700231000

`A144064(A000124(n+12)+n-1)`
-/

namespace A005758.P12949086063700231000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000124 (n + 12) + ((n : ℤ) - 1)).toNat

end

end A005758.P12949086063700231000

/-! ## A005758.P11614222052275926600

`A144064(A055999(n+9)-A001489(n+6))`
-/

namespace A005758.P11614222052275926600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055999 (n + 9) - A001489 (n + 6)).toNat

end

end A005758.P11614222052275926600

/-! ## A005758.P14907171287013298245

`A144064(A052905(n+8)+A005408(n+8))`
-/

namespace A005758.P14907171287013298245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A052905 (n + 8) + A005408 (n + 8)).toNat

end

end A005758.P14907171287013298245

/-! ## A005758.P12839203973252286891

`A144064(A034856(n+10)+A005843(n+7))`
-/

namespace A005758.P12839203973252286891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 10) + A005843 (n + 7)).toNat

end

end A005758.P12839203973252286891

/-!
# A005765: Size of Doehlert-Klee design with n blocks.

The programs for A005765, there is no canonical definition to state claims against.
-/

/-! ## A005765.P11314297421660711157

`(n*A277885(n+2))%(n+1)+1`
-/

namespace A005765.P11314297421660711157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A277885 (n + 2)) (n + 1 : ℤ) + 1

end

end A005765.P11314297421660711157

/-! ## A005765.P10162226762630619746

`n+3-A261969((n+2)^3)`
-/

namespace A005765.P10162226762630619746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A261969 ((n + 2) ^ 3)

end

end A005765.P10162226762630619746

/-!
# A005766: a(n) = cost of minimal multiplication-cost addition chain for n.

The programs for A005766, the canonical program `A005766.P3798851385480700409` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005766 has offset 1).

The definition of A005766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005766.P11322927321063745933

`∑[floor(n/2^val(n+1, 2))+val(n+1, 2)]`
-/

namespace A005766.P11322927321063745933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P11322927321063745933

namespace A005766

/-- `∑[floor(n/2^val(n+1, 2))+val(n+1, 2)]` -/
def P11322927321063745933.Spec : Prop :=
  ∀ n, P11322927321063745933.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P3798851385480700409

`∑[floor(n/and(n+1, -(n+1)))+val(n+1, 2)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005766

/-- `∑[floor(n/and(n+1, -(n+1)))+val(n+1, 2)]` -/
def P3798851385480700409.Spec : Prop :=
  ∀ n, P3798851385480700409.a n = A005766 (n + 1)

theorem P3798851385480700409.correct : P3798851385480700409.Spec := by
  intro n
  simp only [A005766, Nat.add_sub_cancel]

end A005766

/-! ## A005766.P7228780812339015171

`∑[val(n+1, 2)+(n+1)/2^val(n+1, 2)-1]`
-/

namespace A005766.P7228780812339015171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P7228780812339015171

namespace A005766

/-- `∑[val(n+1, 2)+(n+1)/2^val(n+1, 2)-1]` -/
def P7228780812339015171.Spec : Prop :=
  ∀ n, P7228780812339015171.a n = (A005766 (n + 1) : ℚ)

end A005766

/-! ## A005766.P11352425590323889832

`∑[A089265(n+1)]`
-/

namespace A005766.P11352425590323889832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P11352425590323889832

namespace A005766

/-- `∑[A089265(n+1)]` -/
def P11352425590323889832.Spec : Prop :=
  ∀ n, P11352425590323889832.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P4891397418198748556

`∑[A119674(n+1)-1]`
-/

namespace A005766.P4891397418198748556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P4891397418198748556

namespace A005766

/-- `∑[A119674(n+1)-1]` -/
def P4891397418198748556.Spec : Prop :=
  ∀ n, P4891397418198748556.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P17335658636167721333

`∑[2*n-A274593(n)]`
-/

namespace A005766.P17335658636167721333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A274593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P17335658636167721333

namespace A005766

/-- `∑[2*n-A274593(n)]` -/
def P17335658636167721333.Spec : Prop :=
  ∀ n, P17335658636167721333.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P6132690866645278326

`∑[A153733(n)+log2(or(n, n+1)-n)]`
-/

namespace A005766.P6132690866645278326
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153733 n : ℝ) + Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P6132690866645278326

namespace A005766

/-- `∑[A153733(n)+log2(or(n, n+1)-n)]` -/
def P6132690866645278326.Spec : Prop :=
  ∀ n, P6132690866645278326.a n = (A005766 (n + 1) : ℝ)

end A005766

/-! ## A005766.P5351286190446832035

`∑[(n+1)/and(n+1, -(n+1))]-A000120(n+1)`
-/

namespace A005766.P5351286190446832035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000120 (n + 1) : ℚ)

end

end A005766.P5351286190446832035

namespace A005766

/-- `∑[(n+1)/and(n+1, -(n+1))]-A000120(n+1)` -/
def P5351286190446832035.Spec : Prop :=
  ∀ n, P5351286190446832035.a n = (A005766 (n + 1) : ℚ)

end A005766

/-! ## A005766.P11793308014081378513

`∑[A153733(n)+A007814(n+1)]`
-/

namespace A005766.P11793308014081378513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P11793308014081378513

namespace A005766

/-- `∑[A153733(n)+A007814(n+1)]` -/
def P11793308014081378513.Spec : Prop :=
  ∀ n, P11793308014081378513.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P1069580390643110116

`A135013(n+1)-A000120(n+1)`
-/

namespace A005766.P1069580390643110116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (n + 1) - A000120 (n + 1)

end

end A005766.P1069580390643110116

namespace A005766

/-- `A135013(n+1)-A000120(n+1)` -/
def P1069580390643110116.Spec : Prop :=
  ∀ n, P1069580390643110116.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P9576272936649669297

`∑[A153733(n)+1-Δ[A000120(n)]]`
-/

namespace A005766.P9576272936649669297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + (1 - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P9576272936649669297

namespace A005766

/-- `∑[A153733(n)+1-Δ[A000120(n)]]` -/
def P9576272936649669297.Spec : Prop :=
  ∀ n, P9576272936649669297.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P10487383424078591854

`∑[A000265(n+1)]-A000120(n+1)`
-/

namespace A005766.P10487383424078591854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 (n + 1)

end

end A005766.P10487383424078591854

namespace A005766

/-- `∑[A000265(n+1)]-A000120(n+1)` -/
def P10487383424078591854.Spec : Prop :=
  ∀ n, P10487383424078591854.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P16017040700765943603

`∑[A000265(n+1)+A001511(n+1)-2]`
-/

namespace A005766.P16017040700765943603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + (A001511 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P16017040700765943603

namespace A005766

/-- `∑[A000265(n+1)+A001511(n+1)-2]` -/
def P16017040700765943603.Spec : Prop :=
  ∀ n, P16017040700765943603.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P701266112500891517

`∑[A153733(n)+A001222(and(n+1, -(n+1)))]`
-/

namespace A005766.P701266112500891517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P701266112500891517

namespace A005766

/-- `∑[A153733(n)+A001222(and(n+1, -(n+1)))]` -/
def P701266112500891517.Spec : Prop :=
  ∀ n, P701266112500891517.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P9839864463491055731

`∑[A153733(n)+A001222(xor(n, n+1)+1)-1]`
-/

namespace A005766.P9839864463491055731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + (A001222 (Nat.xor n (n + 1) + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005766.P9839864463491055731

namespace A005766

/-- `∑[A153733(n)+A001222(xor(n, n+1)+1)-1]` -/
def P9839864463491055731.Spec : Prop :=
  ∀ n, P9839864463491055731.a n = A005766 (n + 1)

end A005766

/-! ## A005766.P7702213248559708681

`∑[A030101(A030101(n+1))]-A000120(n+1)`
-/

namespace A005766.P7702213248559708681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 (n + 1)

end

end A005766.P7702213248559708681

namespace A005766

/-- `∑[A030101(A030101(n+1))]-A000120(n+1)` -/
def P7702213248559708681.Spec : Prop :=
  ∀ n, P7702213248559708681.a n = A005766 (n + 1)

end A005766

/-!
# A005767: Solutions k to k^2 = a^2 + b^2 + c^2 (a,b,c > 0).

The programs for A005767, the canonical program `A005767.P10402982537272659529` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005767 has offset 1).

The definition of A005767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005767.P10402982537272659529

`comp[2*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005767

/-- `comp[2*a(n-2)]` -/
def P10402982537272659529.Spec : Prop :=
  ∀ n, (P10402982537272659529.a n : ℤ) = A005767 (n + 1)

theorem P10402982537272659529.correct : P10402982537272659529.Spec := by
  intro n
  simp only [A005767, Nat.add_sub_cancel]

end A005767

/-! ## A005767.P7205772132620718888

`comp[Δ[a(n-3)+a(n-3)]]` with `a(0)=6, a(1)=6, a(2)=7`
-/

namespace A005767.P7205772132620718888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 6, 7] fun n f2 =>
  f2 (n - 3) + f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005767.P7205772132620718888

namespace A005767

/-- `comp[Δ[a(n-3)+a(n-3)]]` -/
def P7205772132620718888.Spec : Prop :=
  ∀ n, (P7205772132620718888.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P5721830215187104895

`lt[A292895(n), n]`
-/

namespace A005767.P5721830215187104895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005767.P5721830215187104895

namespace A005767

/-- `lt[A292895(n), n]` -/
def P5721830215187104895.Spec : Prop :=
  ∀ n, (P5721830215187104895.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P9994119314372989967

`sqrt(A169580(n+1))`
-/

namespace A005767.P9994119314372989967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A169580 (n + 1) : ℝ)

end

end A005767.P9994119314372989967

namespace A005767

/-- `sqrt(A169580(n+1))` -/
def P9994119314372989967.Spec : Prop :=
  ∀ n, P9994119314372989967.a n = (A005767 (n + 1) : ℝ)

end A005767

/-! ## A005767.P2497051047238851974

`lt[4, A286599(2*n)]`
-/

namespace A005767.P2497051047238851974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286599 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005767.P2497051047238851974

namespace A005767

/-- `lt[4, A286599(2*n)]` -/
def P2497051047238851974.Spec : Prop :=
  ∀ n, (P2497051047238851974.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P5973952868752066532

`lt[6*A341509(6*n), n]`
-/

namespace A005767.P5973952868752066532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A341509 (6 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005767.P5973952868752066532

namespace A005767

/-- `lt[6*A341509(6*n), n]` -/
def P5973952868752066532.Spec : Prop :=
  ∀ n, (P5973952868752066532.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P2625282958919308465

`lt[4, A295563((n+1)/round(xor(n, n+1)/2))]+1`
-/

namespace A005767.P2625282958919308465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005767.P2625282958919308465

namespace A005767

/-- `lt[4, A295563((n+1)/round(xor(n, n+1)/2))]+1` -/
def P2625282958919308465.Spec : Prop :=
  ∀ n, (P2625282958919308465.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P5117608786647188232

`∪[A020742(n), A065940(n)]`
-/

namespace A005767.P5117608786647188232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P5117608786647188232

namespace A005767

/-- `∪[A020742(n), A065940(n)]` -/
def P5117608786647188232.Spec : Prop :=
  ∀ n, (P5117608786647188232.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P16398148503167478686

`∪[A004169(n+1), A065940(n)]`
-/

namespace A005767.P16398148503167478686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P16398148503167478686

namespace A005767

/-- `∪[A004169(n+1), A065940(n)]` -/
def P16398148503167478686.Spec : Prop :=
  ∀ n, (P16398148503167478686.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P10401132273245470207

`∪[A005818(n+1), A065940(n)]`
-/

namespace A005767.P10401132273245470207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P10401132273245470207

namespace A005767

/-- `∪[A005818(n+1), A065940(n)]` -/
def P10401132273245470207.Spec : Prop :=
  ∀ n, (P10401132273245470207.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P9198487545067401274

`∪[A055741(n+1), A065940(n)]`
-/

namespace A005767.P9198487545067401274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P9198487545067401274

namespace A005767

/-- `∪[A055741(n+1), A065940(n)]` -/
def P9198487545067401274.Spec : Prop :=
  ∀ n, (P9198487545067401274.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P18109788916546820225

`∪[A007283(n), A161992(n+1)]`
-/

namespace A005767.P18109788916546820225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P18109788916546820225

namespace A005767

/-- `∪[A007283(n), A161992(n+1)]` -/
def P18109788916546820225.Spec : Prop :=
  ∀ n, (P18109788916546820225.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P4675168409965288854

`∪[A161992(n+1), A065940(n)]`
-/

namespace A005767.P4675168409965288854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P4675168409965288854

namespace A005767

/-- `∪[A161992(n+1), A065940(n)]` -/
def P4675168409965288854.Spec : Prop :=
  ∀ n, (P4675168409965288854.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P13805286326379915971

`comp[and(A029747(n+1), A029749(n))]`
-/

namespace A005767.P13805286326379915971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029747 (n + 1)) (A029749 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005767.P13805286326379915971

namespace A005767

/-- `comp[and(A029747(n+1), A029749(n))]` -/
def P13805286326379915971.Spec : Prop :=
  ∀ n, (P13805286326379915971.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P7163363476055830295

`∪[A004169(n+1), A085837(n+1)]`
-/

namespace A005767.P7163363476055830295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P7163363476055830295

namespace A005767

/-- `∪[A004169(n+1), A085837(n+1)]` -/
def P7163363476055830295.Spec : Prop :=
  ∀ n, (P7163363476055830295.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P4938441143388838532

`∪[A004749(n+1), A085837(n+1)]`
-/

namespace A005767.P4938441143388838532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P4938441143388838532

namespace A005767

/-- `∪[A004749(n+1), A085837(n+1)]` -/
def P4938441143388838532.Spec : Prop :=
  ∀ n, (P4938441143388838532.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P15280794928996113209

`∪[A085837(n+1), A004780(n+1)]`
-/

namespace A005767.P15280794928996113209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P15280794928996113209

namespace A005767

/-- `∪[A085837(n+1), A004780(n+1)]` -/
def P15280794928996113209.Spec : Prop :=
  ∀ n, (P15280794928996113209.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P18016580020035020457

`∪[A009177(n+1), A085837(n+1)]`
-/

namespace A005767.P18016580020035020457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P18016580020035020457

namespace A005767

/-- `∪[A009177(n+1), A085837(n+1)]` -/
def P18016580020035020457.Spec : Prop :=
  ∀ n, (P18016580020035020457.a n : ℤ) = A005767 (n + 1)

end A005767

/-! ## A005767.P16056748625633159560

`∪[A038838(n+1), A085837(n+1)]`
-/

namespace A005767.P16056748625633159560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005767.P16056748625633159560

namespace A005767

/-- `∪[A038838(n+1), A085837(n+1)]` -/
def P16056748625633159560.Spec : Prop :=
  ∀ n, (P16056748625633159560.a n : ℤ) = A005767 (n + 1)

end A005767

/-!
# A005768: Number of convex polygons of length 2n on square lattice whose leftmost bottom vertex is strictly to the left of the rightmost top vertex.

The programs for A005768, there is no canonical definition to state claims against.
-/

/-! ## A005768.P14905117558588036554

`A008620(A109509(n)+A017960(n))`
-/

namespace A005768.P14905117558588036554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A109509 n + A017960 n).toNat

end

end A005768.P14905117558588036554

/-! ## A005768.P15061784071158404473

`A004001(or(A002620(n), A083878(n)))`
-/

namespace A005768.P15061784071158404473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.lor (A002620 n) (A083878 n)).toNat

end

end A005768.P15061784071158404473

/-! ## A005768.P866166054662526373

`A004001(or(A083878(n), A330228(n)))`
-/

namespace A005768.P866166054662526373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.lor (A083878 n) (A330228 n)).toNat

end

end A005768.P866166054662526373

/-!
# A005769: Number of convex polygons of length 2n on square lattice whose leftmost bottom vertex is strictly to the right of the rightmost top vertex.

The programs for A005769, there is no canonical definition to state claims against.
-/

/-! ## A005769.P15874108894833359656

`A005436(n+6)-A005768(n+6)-A005770(n+6)`
-/

namespace A005769.P15874108894833359656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005436 (n + 6) - A005768 (n + 6) - A005770 (n + 6)

end

end A005769.P15874108894833359656

/-!
# A005770: Number of convex polygons of length 2n on square lattice whose leftmost bottom vertex and rightmost top vertex have the same x-coordinate.

The programs for A005770, the canonical program `A005770.P10139504297732212981` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005770 has offset 5).

The definition of A005770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005770.P10139504297732212981

`A171496(n)-Δ[A001871(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005770

/-- `A171496(n)-Δ[A001871(n)]` -/
def P10139504297732212981.Spec : Prop :=
  ∀ n, P10139504297732212981.a n = A005770 (n + 5)

theorem P10139504297732212981.correct : P10139504297732212981.Spec := by
  intro n
  simp only [A005770, Nat.add_sub_cancel]

end A005770

/-!
# A005771: Number of n-covers of an unlabeled 5-set.

The programs for A005771, there is no canonical definition to state claims against.
-/

/-! ## A005771.P6864762953985263601

`A052264(n+1)-A006148(n+1)`
-/

namespace A005771.P6864762953985263601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052264 (n + 1) - A006148 (n + 1)

end

end A005771.P6864762953985263601

/-! ## A005771.P6291632045923646609

`∑[A055083(n+1)]`
-/

namespace A005771.P6291632045923646609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005771.P6291632045923646609

/-! ## A005771.P8469593410442794319

`∑[record[A055083(A126759(n))]]`
-/

namespace A005771.P8469593410442794319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055083 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005771.P8469593410442794319

/-! ## A005771.P4621164018876275063

`∑[record[A055083(A133310(n))]]`
-/

namespace A005771.P4621164018876275063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055083 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005771.P4621164018876275063

/-! ## A005771.P15275068509610130913

`∑[record[A055083(A328395(n))]]`
-/

namespace A005771.P15275068509610130913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055083 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005771.P15275068509610130913

/-! ## A005771.P16586640490855197549

`∑[A005785(n+1)-Δ[A006148(n)]]`
-/

namespace A005771.P16586640490855197549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005785 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005771.P16586640490855197549

/-!
# A005772: Number of permutations of length n with 2 cycle lengths.

The programs for A005772, there is no canonical definition to state claims against.
-/

/-! ## A005772.P4075131155972912774

`A218868(lt[A219047(n+1), A083140(3*n+2)])`
-/

namespace A005772.P4075131155972912774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A005772.P4075131155972912774

/-!
# A005773: Number of directed animals of size n (or directed n-ominoes in standard position).

The programs for A005773, the canonical program `A005773.P2300326801340372225` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005773 has offset 0).

The definition of A005773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005773.P2300326801340372225

`(2*n*a(n-1)+3*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005773

/-- `(2*n*a(n-1)+3*(n-2)*a(n-2))/n` -/
def P2300326801340372225.Spec : Prop :=
  ∀ n, P2300326801340372225.a n = (A005773 n : ℚ)

end A005773

/-! ## A005773.P16059599087406818053

`A307789(n+1)`
-/

namespace A005773.P16059599087406818053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1)

end

end A005773.P16059599087406818053

namespace A005773

/-- `A307789(n+1)` -/
def P16059599087406818053.Spec : Prop :=
  ∀ n, P16059599087406818053.a n = A005773 n

end A005773

/-! ## A005773.P8683875778804746155

`∑[A025566(n)-char[1]]`
-/

namespace A005773.P8683875778804746155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005773.P8683875778804746155

namespace A005773

/-- `∑[A025566(n)-char[1]]` -/
def P8683875778804746155.Spec : Prop :=
  ∀ n, P8683875778804746155.a n = A005773 n

end A005773

/-! ## A005773.P2388619200672191740

`∑[A025566(n)]-A057427(n)`
-/

namespace A005773.P2388619200672191740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A005773.P2388619200672191740

namespace A005773

/-- `∑[A025566(n)]-A057427(n)` -/
def P2388619200672191740.Spec : Prop :=
  ∀ n, P2388619200672191740.a n = A005773 n

end A005773

/-! ## A005773.P2740597838347103391

`∑[lcm(A025566(n), A105812(n))]`
-/

namespace A005773.P2740597838347103391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025566 n) (A105812 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005773.P2740597838347103391

namespace A005773

/-- `∑[lcm(A025566(n), A105812(n))]` -/
def P2740597838347103391.Spec : Prop :=
  ∀ n, (P2740597838347103391.a n : ℤ) = A005773 n

end A005773

/-! ## A005773.P142626266188506629

`∑[A025566(n)]-A105812(n+1)²`
-/

namespace A005773.P142626266188506629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105812 (n + 1) ^ 2

end

end A005773.P142626266188506629

namespace A005773

/-- `∑[A025566(n)]-A105812(n+1)²` -/
def P142626266188506629.Spec : Prop :=
  ∀ n, P142626266188506629.a n = A005773 n

end A005773

/-! ## A005773.P8219532408162413588

`∑[A025566(n)]-A105812(2*n+1)`
-/

namespace A005773.P8219532408162413588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105812 (2 * n + 1)

end

end A005773.P8219532408162413588

namespace A005773

/-- `∑[A025566(n)]-A105812(2*n+1)` -/
def P8219532408162413588.Spec : Prop :=
  ∀ n, P8219532408162413588.a n = A005773 n

end A005773

/-! ## A005773.P7308666849500574692

`∑[A025566(n)]-A001221(A000961(n+1))`
-/

namespace A005773.P7308666849500574692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (A000961 (n + 1)).toNat

end

end A005773.P7308666849500574692

namespace A005773

/-- `∑[A025566(n)]-A001221(A000961(n+1))` -/
def P7308666849500574692.Spec : Prop :=
  ∀ n, P7308666849500574692.a n = A005773 n

end A005773

/-! ## A005773.P14237537976371946345

`lcm(2, A085455(n))/2`
-/

namespace A005773.P14237537976371946345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A085455 n) : ℚ) / 2

end

end A005773.P14237537976371946345

namespace A005773

/-- `lcm(2, A085455(n))/2` -/
def P14237537976371946345.Spec : Prop :=
  ∀ n, P14237537976371946345.a n = (A005773 n : ℚ)

end A005773

/-! ## A005773.P5289700603916171306

`ceil(∑[A105696(n)/2])`
-/

namespace A005773.P5289700603916171306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A005773.P5289700603916171306

namespace A005773

/-- `ceil(∑[A105696(n)/2])` -/
def P5289700603916171306.Spec : Prop :=
  ∀ n, P5289700603916171306.a n = A005773 n

end A005773

/-! ## A005773.P8763160686268136595

`ceil(A025565(n+1)/2)`
-/

namespace A005773.P8763160686268136595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025565 (n + 1) : ℚ) / 2⌉

end

end A005773.P8763160686268136595

namespace A005773

/-- `ceil(A025565(n+1)/2)` -/
def P8763160686268136595.Spec : Prop :=
  ∀ n, P8763160686268136595.a n = A005773 n

end A005773

/-! ## A005773.P4143646815556966682

`A225034(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005773.P4143646815556966682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A225034 (n - 1) - a (n - 1)

end

end A005773.P4143646815556966682

namespace A005773

/-- `A225034(n-1)-a(n-1)` -/
def P4143646815556966682.Spec : Prop :=
  ∀ n, P4143646815556966682.a n = A005773 n

end A005773

/-! ## A005773.P13439818708871936527

`A085455(n)/A280560(n)`
-/

namespace A005773.P13439818708871936527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085455 n : ℚ) / (A280560 n : ℚ)

end

end A005773.P13439818708871936527

namespace A005773

/-- `A085455(n)/A280560(n)` -/
def P13439818708871936527.Spec : Prop :=
  ∀ n, P13439818708871936527.a n = (A005773 n : ℚ)

end A005773

/-! ## A005773.P17936159278505398760

`A025565(n+1)/A036453(n+1)`
-/

namespace A005773.P17936159278505398760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A005773.P17936159278505398760

namespace A005773

/-- `A025565(n+1)/A036453(n+1)` -/
def P17936159278505398760.Spec : Prop :=
  ∀ n, P17936159278505398760.a n = (A005773 n : ℚ)

end A005773

/-! ## A005773.P6839379752572973990

`A025565(n+1)/(A305801(A000040(n+1))-1)`
-/

namespace A005773.P6839379752572973990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) : ℚ) / (A305801 (A000040 (n + 1)).toNat - 1 : ℚ)

end

end A005773.P6839379752572973990

namespace A005773

/-- `A025565(n+1)/(A305801(A000040(n+1))-1)` -/
def P6839379752572973990.Spec : Prop :=
  ∀ n, P6839379752572973990.a n = (A005773 n : ℚ)

end A005773

/-! ## A005773.P9599943935889651487

`A026135(n)-A005774(n)`
-/

namespace A005773.P9599943935889651487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n - A005774 n

end

end A005773.P9599943935889651487

namespace A005773

/-- `A026135(n)-A005774(n)` -/
def P9599943935889651487.Spec : Prop :=
  ∀ n, P9599943935889651487.a n = A005773 n

end A005773

/-! ## A005773.P6955238756302233777

`A245455(n+2)-(A026135(n)+A001006(n))`
-/

namespace A005773.P6955238756302233777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245455 (n + 2) - (A026135 n + A001006 n)

end

end A005773.P6955238756302233777

namespace A005773

/-- `A245455(n+2)-(A026135(n)+A001006(n))` -/
def P6955238756302233777.Spec : Prop :=
  ∀ n, P6955238756302233777.a n = A005773 n

end A005773

/-! ## A005773.P962290404412846617

`(A025565(n+1)+A025565(n+1))/A151798(n+1)`
-/

namespace A005773.P962290404412846617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) + A025565 (n + 1) : ℚ) / (A151798 (n + 1) : ℚ)

end

end A005773.P962290404412846617

namespace A005773

/-- `(A025565(n+1)+A025565(n+1))/A151798(n+1)` -/
def P962290404412846617.Spec : Prop :=
  ∀ n, P962290404412846617.a n = (A005773 n : ℚ)

end A005773

/-!
# A005774: Number of directed animals of size n (k=1 column of A038622); number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, where s(0) = 2; also sum of row n+1 of array T in A026323.

The programs for A005774, the canonical program `A005774.P857244679272864475` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005774 has offset 0).

The definition of A005774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005774.P857244679272864475

`∑{#}[n, C(#+1, n-#+1)*C(n, #)*#/(#+1)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005774

/-- `∑{#}[n, C(#+1, n-#+1)*C(n, #)*#/(#+1)]` -/
def P857244679272864475.Spec : Prop :=
  ∀ n, P857244679272864475.a n = (A005774 n : ℚ)

end A005774

/-! ## A005774.P15731835361577538642

`n/2*A005554(n+1)`
-/

namespace A005774.P15731835361577538642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A005554 (n + 1) : ℚ)

end

end A005774.P15731835361577538642

namespace A005774

/-- `n/2*A005554(n+1)` -/
def P15731835361577538642.Spec : Prop :=
  ∀ n, P15731835361577538642.a n = (A005774 n : ℚ)

end A005774

/-! ## A005774.P11674759060284518255

`A005773(n+1)-A001006(n)`
-/

namespace A005774.P11674759060284518255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A001006 n

end

end A005774.P11674759060284518255

namespace A005774

/-- `A005773(n+1)-A001006(n)` -/
def P11674759060284518255.Spec : Prop :=
  ∀ n, P11674759060284518255.a n = A005774 n

end A005774

/-! ## A005774.P8742848700030595869

`A025577(n+1)-A086615(n)`
-/

namespace A005774.P8742848700030595869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025577 (n + 1) - A086615 n

end

end A005774.P8742848700030595869

namespace A005774

/-- `A025577(n+1)-A086615(n)` -/
def P8742848700030595869.Spec : Prop :=
  ∀ n, P8742848700030595869.a n = A005774 n

end A005774

/-! ## A005774.P13931484085268988952

`A307789(n+2)-A001006(n)`
-/

namespace A005774.P13931484085268988952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 2) - A001006 n

end

end A005774.P13931484085268988952

namespace A005774

/-- `A307789(n+2)-A001006(n)` -/
def P13931484085268988952.Spec : Prop :=
  ∀ n, P13931484085268988952.a n = A005774 n

end A005774

/-! ## A005774.P9902887587483368364

`∑[∑[A105696(n)]-A001006(n)]`
-/

namespace A005774.P9902887587483368364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005774.P9902887587483368364

namespace A005774

/-- `∑[∑[A105696(n)]-A001006(n)]` -/
def P9902887587483368364.Spec : Prop :=
  ∀ n, P9902887587483368364.a n = A005774 n

end A005774

/-! ## A005774.P12981222635026745409

`∑[A025565(n+1)-A001006(n)]`
-/

namespace A005774.P12981222635026745409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1) - A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005774.P12981222635026745409

namespace A005774

/-- `∑[A025565(n+1)-A001006(n)]` -/
def P12981222635026745409.Spec : Prop :=
  ∀ n, P12981222635026745409.a n = A005774 n

end A005774

/-! ## A005774.P1980218246269777722

`∑[A025566(n+1)]-A001006(n)`
-/

namespace A005774.P1980218246269777722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001006 n

end

end A005774.P1980218246269777722

namespace A005774

/-- `∑[A025566(n+1)]-A001006(n)` -/
def P1980218246269777722.Spec : Prop :=
  ∀ n, P1980218246269777722.a n = A005774 n

end A005774

/-! ## A005774.P1345118511653223698

`A005773(n+1)-Δ[A097332(n)]`
-/

namespace A005774.P1345118511653223698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - (f1 (n + 1) - f1 n)

end

end A005774.P1345118511653223698

namespace A005774

/-- `A005773(n+1)-Δ[A097332(n)]` -/
def P1345118511653223698.Spec : Prop :=
  ∀ n, P1345118511653223698.a n = A005774 n

end A005774

/-! ## A005774.P4671318373198942766

`A025178(n+1)-A005043(n+1)`
-/

namespace A005774.P4671318373198942766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1) - A005043 (n + 1)

end

end A005774.P4671318373198942766

namespace A005774

/-- `A025178(n+1)-A005043(n+1)` -/
def P4671318373198942766.Spec : Prop :=
  ∀ n, P4671318373198942766.a n = A005774 n

end A005774

/-! ## A005774.P18274597918267577405

`A292440(n+2)+A005773(n+1)`
-/

namespace A005774.P18274597918267577405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A005773 (n + 1)

end

end A005774.P18274597918267577405

namespace A005774

/-- `A292440(n+2)+A005773(n+1)` -/
def P18274597918267577405.Spec : Prop :=
  ∀ n, P18274597918267577405.a n = A005774 n

end A005774

/-! ## A005774.P5541737676108158275

`A005773(n+1)-A086246(n+2)`
-/

namespace A005774.P5541737676108158275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A086246 (n + 2)

end

end A005774.P5541737676108158275

namespace A005774

/-- `A005773(n+1)-A086246(n+2)` -/
def P5541737676108158275.Spec : Prop :=
  ∀ n, P5541737676108158275.a n = A005774 n

end A005774

/-! ## A005774.P13722203632546492626

`A025178(n+1)-Δ[A082395(n+1)]`
-/

namespace A005774.P13722203632546492626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1) - (f1 (n + 1) - f1 n)

end

end A005774.P13722203632546492626

namespace A005774

/-- `A025178(n+1)-Δ[A082395(n+1)]` -/
def P13722203632546492626.Spec : Prop :=
  ∀ n, P13722203632546492626.a n = A005774 n

end A005774

/-! ## A005774.P10598762291768104209

`A005043(n+1)+n*A105695(n+1)`
-/

namespace A005774.P10598762291768104209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (n : ℤ) * A105695 (n + 1)

end

end A005774.P10598762291768104209

namespace A005774

/-- `A005043(n+1)+n*A105695(n+1)` -/
def P10598762291768104209.Spec : Prop :=
  ∀ n, P10598762291768104209.a n = A005774 n

end A005774

/-! ## A005774.P10043650972226770949

`n*A007971(n+1)-A005043(n+1)`
-/

namespace A005774.P10043650972226770949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007971 (n + 1) - A005043 (n + 1)

end

end A005774.P10043650972226770949

namespace A005774

/-- `n*A007971(n+1)-A005043(n+1)` -/
def P10043650972226770949.Spec : Prop :=
  ∀ n, P10043650972226770949.a n = A005774 n

end A005774

/-! ## A005774.P6606159958366401711

`A005773(n+1)-abs(Δ[A099323(n+1)])`
-/

namespace A005774.P6606159958366401711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - |f1 (n + 1) - f1 n|

end

end A005774.P6606159958366401711

namespace A005774

/-- `A005773(n+1)-abs(Δ[A099323(n+1)])` -/
def P6606159958366401711.Spec : Prop :=
  ∀ n, P6606159958366401711.a n = A005774 n

end A005774

/-! ## A005774.P3979589715579224728

`2*A005213(2*n+1)-A005043(n+1)`
-/

namespace A005774.P3979589715579224728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005213 (2 * n + 1) - A005043 (n + 1)

end

end A005774.P3979589715579224728

namespace A005774

/-- `2*A005213(2*n+1)-A005043(n+1)` -/
def P3979589715579224728.Spec : Prop :=
  ∀ n, P3979589715579224728.a n = A005774 n

end A005774

/-! ## A005774.P12339657391774556299

`A307575(n)+A307577(n)-A001006(n)`
-/

namespace A005774.P12339657391774556299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A307577 n - A001006 n)

end

end A005774.P12339657391774556299

namespace A005774

/-- `A307575(n)+A307577(n)-A001006(n)` -/
def P12339657391774556299.Spec : Prop :=
  ∀ n, P12339657391774556299.a n = A005774 n

end A005774

/-! ## A005774.P3636345851663693779

`A005773(n)-Δ[A097332(n)-A005773(n)]`
-/

namespace A005774.P3636345851663693779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n - A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - (f1 (n + 1) - f1 n)

end

end A005774.P3636345851663693779

namespace A005774

/-- `A005773(n)-Δ[A097332(n)-A005773(n)]` -/
def P3636345851663693779.Spec : Prop :=
  ∀ n, P3636345851663693779.a n = A005774 n

end A005774

/-! ## A005774.P3816167644110366234

`A097861(n+1)+A257520(n)-A001006(n)`
-/

namespace A005774.P3816167644110366234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + (A257520 n - A001006 n)

end

end A005774.P3816167644110366234

namespace A005774

/-- `A097861(n+1)+A257520(n)-A001006(n)` -/
def P3816167644110366234.Spec : Prop :=
  ∀ n, P3816167644110366234.a n = A005774 n

end A005774

/-!
# A005775: Number of compact-rooted directed animals of size n having 3 source points.

The programs for A005775, the canonical program `A005775.P7825511991155880648` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005775 has offset 3).

The definition of A005775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005775.P7825511991155880648

`A005773(n+3)-A001006(n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005775

/-- `A005773(n+3)-A001006(n+3)` -/
def P7825511991155880648.Spec : Prop :=
  ∀ n, P7825511991155880648.a n = A005775 (n + 3)

theorem P7825511991155880648.correct : P7825511991155880648.Spec := by
  intro n
  simp only [A005775, Nat.add_sub_cancel]

end A005775

/-! ## A005775.P2749219471445075822

`A005774(n+2)-A002026(n+2)`
-/

namespace A005775.P2749219471445075822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 2) - A002026 (n + 2)

end

end A005775.P2749219471445075822

namespace A005775

/-- `A005774(n+2)-A002026(n+2)` -/
def P2749219471445075822.Spec : Prop :=
  ∀ n, P2749219471445075822.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P5979502990249759499

`A005774(n+2)-Δ[A001006(n+2)]`
-/

namespace A005775.P5979502990249759499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 2) - (f1 (n + 1) - f1 n)

end

end A005775.P5979502990249759499

namespace A005775

/-- `A005774(n+2)-Δ[A001006(n+2)]` -/
def P5979502990249759499.Spec : Prop :=
  ∀ n, P5979502990249759499.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P15638228304238913838

`A014531(n+1)+A025180(n+3)-A005717(n+2)`
-/

namespace A005775.P15638228304238913838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (n + 1) + (A025180 (n + 3) - A005717 (n + 2))

end

end A005775.P15638228304238913838

namespace A005775

/-- `A014531(n+1)+A025180(n+3)-A005717(n+2)` -/
def P15638228304238913838.Spec : Prop :=
  ∀ n, P15638228304238913838.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P9919940048970846106

`A014531(n+2)-A005717(n+2)`
-/

namespace A005775.P9919940048970846106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (n + 2) - A005717 (n + 2)

end

end A005775.P9919940048970846106

namespace A005775

/-- `A014531(n+2)-A005717(n+2)` -/
def P9919940048970846106.Spec : Prop :=
  ∀ n, P9919940048970846106.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P17004237160590210559

`Δ[A097894(n+1)-A097861(n+2)]`
-/

namespace A005775.P17004237160590210559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097894 (n + 1) - A097861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005775.P17004237160590210559

namespace A005775

/-- `Δ[A097894(n+1)-A097861(n+2)]` -/
def P17004237160590210559.Spec : Prop :=
  ∀ n, P17004237160590210559.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P7591985782254236251

`record[A005773(n)-A001006(n)%A002426(n)]`
-/

namespace A005775.P7591985782254236251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - Int.tmod (A001006 n) (A002426 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005775.P7591985782254236251

namespace A005775

/-- `record[A005773(n)-A001006(n)%A002426(n)]` -/
def P7591985782254236251.Spec : Prop :=
  ∀ n, P7591985782254236251.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P2709055762777694858

`A014531(n+1)+A014532(n+1)-A025181(n+3)`
-/

namespace A005775.P2709055762777694858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (n + 1) + (A014532 (n + 1) - A025181 (n + 3))

end

end A005775.P2709055762777694858

namespace A005775

/-- `A014531(n+1)+A014532(n+1)-A025181(n+3)` -/
def P2709055762777694858.Spec : Prop :=
  ∀ n, P2709055762777694858.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P6993803272954584451

`A097894(n+2)-(A097894(n+1)+A005717(n+2))`
-/

namespace A005775.P6993803272954584451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097894 (n + 2) - (A097894 (n + 1) + A005717 (n + 2))

end

end A005775.P6993803272954584451

namespace A005775

/-- `A097894(n+2)-(A097894(n+1)+A005717(n+2))` -/
def P6993803272954584451.Spec : Prop :=
  ∀ n, P6993803272954584451.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P16887851272342688593

`A038622(∑[n+2]+3)`
-/

namespace A005775.P16887851272342688593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005775.P16887851272342688593

namespace A005775

/-- `A038622(∑[n+2]+3)` -/
def P16887851272342688593.Spec : Prop :=
  ∀ n, P16887851272342688593.a n = A005775 (n + 3)

end A005775

/-! ## A005775.P9346825956358832568

`record[gcd(A030528(n+1), A038622(n+2))]`
-/

namespace A005775.P9346825956358832568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030528 (n + 1)) (A038622 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005775.P9346825956358832568

namespace A005775

/-- `record[gcd(A030528(n+1), A038622(n+2))]` -/
def P9346825956358832568.Spec : Prop :=
  ∀ n, (P9346825956358832568.a n : ℤ) = A005775 (n + 3)

end A005775

/-!
# A005777: Rook polynomials.

The programs for A005777, the canonical program `A005777.P5934853881025488378` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005777 has offset 1).

The definition of A005777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005777.P5934853881025488378

`ogf((1-x+5x^2+33x^3-91x^4-x^5+14x^6+152x^7-37x^8-49x^9-71x^10+19x^11+19x^12+15x^13)/(1-5x+7x^2-x^3+2x^4-10x^5+2x^6+2x^7+5x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005777

/-- `ogf((1-x+5x^2+33x^3-91x^4-x^5+14x^6+152x^7-37x^8-49x^9-71x^10+19x^11+19x^12+15x^13)/(1-5x+7x^2-x^3+2x^4-10x^5+2x^6+2x^7+5x^8-x^9-x^10-x^11))` -/
def P5934853881025488378.Spec : Prop :=
  ∀ n, P5934853881025488378.a n = A005777 (n + 1)

theorem P5934853881025488378.correct : P5934853881025488378.Spec := by
  intro n
  simp only [A005777, Nat.add_sub_cancel]

end A005777

/-! ## A005777.P2405414142032099448

`A259985(∑[n+2]-1)`
-/

namespace A005777.P2405414142032099448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259985 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005777.P2405414142032099448

namespace A005777

/-- `A259985(∑[n+2]-1)` -/
def P2405414142032099448.Spec : Prop :=
  ∀ n, P2405414142032099448.a n = A005777 (n + 1)

end A005777

/-! ## A005777.P16742987513116008921

`record[gcd(A065600(n), A259985(n))]`
-/

namespace A005777.P16742987513116008921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065600 n) (A259985 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005777.P16742987513116008921

namespace A005777

/-- `record[gcd(A065600(n), A259985(n))]` -/
def P16742987513116008921.Spec : Prop :=
  ∀ n, (P16742987513116008921.a n : ℤ) = A005777 (n + 1)

end A005777

/-! ## A005777.P1205424626805921428

`lcm(n+1, A259985(A034856(n+1)))`
-/

namespace A005777.P1205424626805921428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A259985 (A034856 (n + 1)).toNat)

end

end A005777.P1205424626805921428

namespace A005777

/-- `lcm(n+1, A259985(A034856(n+1)))` -/
def P1205424626805921428.Spec : Prop :=
  ∀ n, (P1205424626805921428.a n : ℤ) = A005777 (n + 1)

end A005777

/-! ## A005777.P798310871123604921

`gcd(A000038(n), A259985(A034856(n+1)))`
-/

namespace A005777.P798310871123604921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259985 (A034856 (n + 1)).toNat)

end

end A005777.P798310871123604921

namespace A005777

/-- `gcd(A000038(n), A259985(A034856(n+1)))` -/
def P798310871123604921.Spec : Prop :=
  ∀ n, (P798310871123604921.a n : ℤ) = A005777 (n + 1)

end A005777

/-! ## A005777.P7125899835126696389

`A007318(∑[n])*A259985(A034856(n+1))`
-/

namespace A005777.P7125899835126696389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A259985 (A034856 (n + 1)).toNat

end

end A005777.P7125899835126696389

namespace A005777

/-- `A007318(∑[n])*A259985(A034856(n+1))` -/
def P7125899835126696389.Spec : Prop :=
  ∀ n, P7125899835126696389.a n = A005777 (n + 1)

end A005777

/-! ## A005777.P3135730503816620524

`A259985(A034856(n+1))%A259994(n+1)`
-/

namespace A005777.P3135730503816620524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259985 (A034856 (n + 1)).toNat) (A259994 (n + 1))

end

end A005777.P3135730503816620524

namespace A005777

/-- `A259985(A034856(n+1))%A259994(n+1)` -/
def P3135730503816620524.Spec : Prop :=
  ∀ n, P3135730503816620524.a n = A005777 (n + 1)

end A005777

/-! ## A005777.P12677937924835078118

`A259985(A034856(n+1))+A185709(7*(n+1))`
-/

namespace A005777.P12677937924835078118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259985 (A034856 (n + 1)).toNat + A185709 (7 * (n + 1))

end

end A005777.P12677937924835078118

namespace A005777

/-- `A259985(A034856(n+1))+A185709(7*(n+1))` -/
def P12677937924835078118.Spec : Prop :=
  ∀ n, P12677937924835078118.a n = A005777 (n + 1)

end A005777

/-! ## A005777.P9692895993681707808

`A001222(A039654(n+2))*A259985(A034856(n+1))`
-/

namespace A005777.P9692895993681707808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039654 (n + 2)).toNat * A259985 (A034856 (n + 1)).toNat

end

end A005777.P9692895993681707808

namespace A005777

/-- `A001222(A039654(n+2))*A259985(A034856(n+1))` -/
def P9692895993681707808.Spec : Prop :=
  ∀ n, P9692895993681707808.a n = A005777 (n + 1)

end A005777

/-! ## A005777.P8729902707783210579

`A014963(Δ[(10*n)²]+2)*A259985(A034856(n+1))`
-/

namespace A005777.P8729902707783210579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat * A259985 (A034856 (n + 1)).toNat

end

end A005777.P8729902707783210579

namespace A005777

/-- `A014963(Δ[(10*n)²]+2)*A259985(A034856(n+1))` -/
def P8729902707783210579.Spec : Prop :=
  ∀ n, P8729902707783210579.a n = A005777 (n + 1)

end A005777

/-!
# A005778: Rook polynomials.

The programs for A005778, there is no canonical definition to state claims against.
-/

/-! ## A005778.P11797713049797735503

`A259985(∑[n+3])`
-/

namespace A005778.P11797713049797735503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259985 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005778.P11797713049797735503

/-! ## A005778.P17804647926168589632

`record[A259985(A055998(n))-char[1]]`
-/

namespace A005778.P17804647926168589632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259985 (A055998 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005778.P17804647926168589632

/-! ## A005778.P4367867036564540028

`record[A259985(n*char[A055998(n)])]`
-/

namespace A005778.P4367867036564540028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259985 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005778.P4367867036564540028

/-! ## A005778.P16326834673180254544

`record[A259985(n)/A259985(n+3)]`
-/

namespace A005778.P16326834673180254544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259985 n : ℚ) / (A259985 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005778.P16326834673180254544

/-! ## A005778.P13805076423184715033

`record[gcd(A055300(n+2), A259985(n))]`
-/

namespace A005778.P13805076423184715033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A259985 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005778.P13805076423184715033

/-!
# A005779: a(n) = largest integer such that every tournament on n nodes contains a consistent set of n arcs.

The programs for A005779, there is no canonical definition to state claims against.
-/

/-! ## A005779.P9305564284132854000

`lt[ceil(xor(1, n²)/4), A093010(2*n)]`
-/

namespace A005779.P9305564284132854000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n ^ 2) : ℚ) / 4⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093010 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005779.P9305564284132854000

/-! ## A005779.P1197746814662179148

`A107320(A176658(n+1))`
-/

namespace A005779.P1197746814662179148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107320 (A176658 (n + 1)).toNat

end

end A005779.P1197746814662179148

/-! ## A005779.P14241184298789774300

`record[A070939(n)*A183024(n+1)]`
-/

namespace A005779.P14241184298789774300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n * A183024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005779.P14241184298789774300

/-! ## A005779.P3488290153369253371

`record[A070939(n)*A183027(n+1)]`
-/

namespace A005779.P3488290153369253371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n * A183027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005779.P3488290153369253371

/-! ## A005779.P7551559781921555453

`record[A070939(n)*A385970(n+1)]`
-/

namespace A005779.P7551559781921555453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n * A385970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005779.P7551559781921555453

/-!
# A005782: Number of n-gons in cubic curve.

The programs for A005782, there is no canonical definition to state claims against.
-/

/-! ## A005782.P14547390797793804824

`A014453(A018969(n+3))+6*C(3*n, 3)`
-/

namespace A005782.P14547390797793804824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (A018969 (n + 3)).toNat + (6 * Nat.choose (3 * n) 3 : ℤ)

end

end A005782.P14547390797793804824

/-!
# A005783: Number of 3-covers of an unlabeled n-set.

The programs for A005783, the canonical program `A005783.P8533115347605735095` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005783 has offset 0).

The definition of A005783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005783.P8533115347605735095

`ogf((1+x^2+2x^3+x^4+x^6)/(1-3x+x^2+3x^3+x^4-3x^5-6x^6+6x^7+3x^8-x^9-3x^10-x^11+3x^12-x^13))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005783

/-- `ogf((1+x^2+2x^3+x^4+x^6)/(1-3x+x^2+3x^3+x^4-3x^5-6x^6+6x^7+3x^8-x^9-3x^10-x^11+3x^12-x^13))` -/
def P8533115347605735095.Spec : Prop :=
  ∀ n, P8533115347605735095.a n = A005783 n

theorem P8533115347605735095.correct : P8533115347605735095.Spec := by
  intro n
  simp only [A005783]

end A005783

/-! ## A005783.P15220566111685285247

`∑[A050531(n)]`
-/

namespace A005783.P15220566111685285247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005783.P15220566111685285247

namespace A005783

/-- `∑[A050531(n)]` -/
def P15220566111685285247.Spec : Prop :=
  ∀ n, P15220566111685285247.a n = A005783 n

end A005783

/-! ## A005783.P14931961256596987920

`A055609(n+1)-A327728(n+1)`
-/

namespace A005783.P14931961256596987920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) - A327728 (n + 1)

end

end A005783.P14931961256596987920

namespace A005783

/-- `A055609(n+1)-A327728(n+1)` -/
def P14931961256596987920.Spec : Prop :=
  ∀ n, P14931961256596987920.a n = A005783 n

end A005783

/-! ## A005783.P16171909751685213755

`A055485(n+3)-A055194(n+2)`
-/

namespace A005783.P16171909751685213755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055485 (n + 3) - A055194 (n + 2)

end

end A005783.P16171909751685213755

namespace A005783

/-- `A055485(n+3)-A055194(n+2)` -/
def P16171909751685213755.Spec : Prop :=
  ∀ n, P16171909751685213755.a n = A005783 n

end A005783

/-! ## A005783.P216515670134236289

`∑[A037240(n)+A000292(A110654(n))]`
-/

namespace A005783.P216515670134236289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n + A000292 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005783.P216515670134236289

namespace A005783

/-- `∑[A037240(n)+A000292(A110654(n))]` -/
def P216515670134236289.Spec : Prop :=
  ∀ n, P216515670134236289.a n = A005783 n

end A005783

/-! ## A005783.P9774934923381714227

`A055484(n+3)-A002727(n+2)`
-/

namespace A005783.P9774934923381714227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055484 (n + 3) - A002727 (n + 2)

end

end A005783.P9774934923381714227

namespace A005783

/-- `A055484(n+3)-A002727(n+2)` -/
def P9774934923381714227.Spec : Prop :=
  ∀ n, P9774934923381714227.a n = A005783 n

end A005783

/-! ## A005783.P16460694188007990822

`∑[A089353(A167614(n+1))]`
-/

namespace A005783.P16460694188007990822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005783.P16460694188007990822

namespace A005783

/-- `∑[A089353(A167614(n+1))]` -/
def P16460694188007990822.Spec : Prop :=
  ∀ n, P16460694188007990822.a n = A005783 n

end A005783

/-!
# A005784: Number of 4-covers of an unlabeled n-set.

The programs for A005784, there is no canonical definition to state claims against.
-/

/-! ## A005784.P341110078186835431

`A055080(A145018(n+4))`
-/

namespace A005784.P341110078186835431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A145018 (n + 4)).toNat

end

end A005784.P341110078186835431

/-! ## A005784.P9967418816240483347

`A055080(A055999(n)+10)`
-/

namespace A005784.P9967418816240483347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A055999 n + 10).toNat

end

end A005784.P9967418816240483347

/-! ## A005784.P14298202573558812364

`A055080(A167614(n+2)+1)`
-/

namespace A005784.P14298202573558812364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A167614 (n + 2) + 1).toNat

end

end A005784.P14298202573558812364

/-! ## A005784.P6867152247229729784

`A055080(A166136(n+2)-2)`
-/

namespace A005784.P6867152247229729784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A166136 (n + 2) - 2).toNat

end

end A005784.P6867152247229729784

/-! ## A005784.P11523203653225884013

`A055080(A166136(n+1)+1+n)`
-/

namespace A005784.P11523203653225884013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A005784.P11523203653225884013

/-!
# A005785: Number of 5-covers of an unlabeled n-set.

The programs for A005785, there is no canonical definition to state claims against.
-/

/-! ## A005785.P14517469900533207314

`A055080(A167499(n+3))`
-/

namespace A005785.P14517469900533207314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A167499 (n + 3)).toNat

end

end A005785.P14517469900533207314

/-! ## A005785.P10967868118332341234

`A055080(A155212(n)+13)`
-/

namespace A005785.P10967868118332341234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A155212 n + 13).toNat

end

end A005785.P10967868118332341234

/-! ## A005785.P13908344712167989838

`A055080(A056000(n)+15)`
-/

namespace A005785.P13908344712167989838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A056000 n + 15).toNat

end

end A005785.P13908344712167989838

/-! ## A005785.P7693792903642387469

`record[Δ[A028657(A167499(n+1))]]`
-/

namespace A005785.P7693792903642387469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A167499 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005785.P7693792903642387469

/-! ## A005785.P4155774436894036441

`record[Δ[A028657(A055999(n))]]`
-/

namespace A005785.P4155774436894036441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A055999 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005785.P4155774436894036441

/-!
# A005786: Number of 6-covers of an unlabeled n-set.

The programs for A005786, there is no canonical definition to state claims against.
-/

/-! ## A005786.P4184230386646728388

`A055080(A167499(n+4)+1)`
-/

namespace A005786.P4184230386646728388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A167499 (n + 4) + 1).toNat

end

end A005786.P4184230386646728388

/-! ## A005786.P9168704149820289407

`A055080(A000217(n+5)+6)`
-/

namespace A005786.P9168704149820289407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A000217 (n + 5) + 6).toNat

end

end A005786.P9168704149820289407

/-! ## A005786.P4660336897619035750

`A055080(A046691(n+3)+10)`
-/

namespace A005786.P4660336897619035750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A046691 (n + 3) + 10).toNat

end

end A005786.P4660336897619035750

/-! ## A005786.P1994382883135088764

`A055080(eq[5, A002262(n)]+1)`
-/

namespace A005786.P1994382883135088764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005786.P1994382883135088764

/-! ## A005786.P3222909668481515797

`A055080(eq[7, A131818(n+1)])`
-/

namespace A005786.P3222909668481515797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005786.P3222909668481515797

/-!
# A005788: Conductors of elliptic curves.

The programs for A005788, there is no canonical definition to state claims against.
-/

/-! ## A005788.P14163612796155453508

`lt[0, A060564(n+1)]+1`
-/

namespace A005788.P14163612796155453508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005788.P14163612796155453508

/-! ## A005788.P5955366173818321093

`lt[0, A110620(n+1)]+1`
-/

namespace A005788.P5955366173818321093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005788.P5955366173818321093

/-! ## A005788.P9801809731628510913

`A020725(lt[0, A060564(n+1)])`
-/

namespace A005788.P9801809731628510913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A005788.P9801809731628510913

/-! ## A005788.P11923549518573288953

`A020725(lt[0, A110620(n+1)])`
-/

namespace A005788.P11923549518573288953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A005788.P11923549518573288953

/-! ## A005788.P1129234843530461007

`lt[0, A060564(A000007(n)+n)]`
-/

namespace A005788.P1129234843530461007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060564 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005788.P1129234843530461007

/-! ## A005788.P12473020289609557959

`lt[0, A060564(A000038(n)+n)]`
-/

namespace A005788.P12473020289609557959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060564 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005788.P12473020289609557959

/-! ## A005788.P13262587515152452436

`lt[0, A060564(abs(n-A000038(n)))]`
-/

namespace A005788.P13262587515152452436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060564 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005788.P13262587515152452436

/-!
# A005789: 3-dimensional Catalan numbers.

The programs for A005789, the canonical program `A005789.P6008936877867645267` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005789 has offset 0).

The definition of A005789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005789.P6008936877867645267

`(9+20/(1+n)-56/(2+n))*3*a(n-1)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005789

/-- `(9+20/(1+n)-56/(2+n))*3*a(n-1)` -/
def P6008936877867645267.Spec : Prop :=
  ∀ n, P6008936877867645267.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P7706768018439159430

`2*A001700(n+1)*A001764(n+1)/(3*(3*n+1)*(3*n+2))`
-/

namespace A005789.P7706768018439159430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001700 (n + 1) * A001764 (n + 1) : ℚ) / (3 * (3 * n + 1) * (3 * n + 2) : ℚ)

end

end A005789.P7706768018439159430

namespace A005789

/-- `2*A001700(n+1)*A001764(n+1)/(3*(3*n+1)*(3*n+2))` -/
def P7706768018439159430.Spec : Prop :=
  ∀ n, P7706768018439159430.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P13068464607277547202

`2*(3*n)!/(n!*(n+1)!*(n+2)!)`
-/

namespace A005789.P13068464607277547202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (3 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) * Nat.factorial (n + 2) : ℚ)

end

end A005789.P13068464607277547202

namespace A005789

/-- `2*(3*n)!/(n!*(n+1)!*(n+2)!)` -/
def P13068464607277547202.Spec : Prop :=
  ∀ n, P13068464607277547202.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P4154806137879445514

`(9+20/(1+n)-56/(2+n))*3*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005789.P4154806137879445514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (9 + 20 / (1 + n : ℚ) - 56 / (2 + n : ℚ)) * (3 * a (n - 1))

end

end A005789.P4154806137879445514

namespace A005789

/-- `(9+20/(1+n)-56/(2+n))*3*a(n-1)` -/
def P4154806137879445514.Spec : Prop :=
  ∀ n, P4154806137879445514.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P15984252424778113284

`A065077(∑[n]+n)`
-/

namespace A005789.P15984252424778113284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065077 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005789.P15984252424778113284

namespace A005789

/-- `A065077(∑[n]+n)` -/
def P15984252424778113284.Spec : Prop :=
  ∀ n, P15984252424778113284.a n = A005789 n

end A005789

/-! ## A005789.P2932547324343719952

`A000139(n)/2*record[A097331(n)]`
-/

namespace A005789.P2932547324343719952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A005789.P2932547324343719952

namespace A005789

/-- `A000139(n)/2*record[A097331(n)]` -/
def P2932547324343719952.Spec : Prop :=
  ∀ n, P2932547324343719952.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P8570617994803000886

`A000139(n)/2*record[A106566(n)]`
-/

namespace A005789.P8570617994803000886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A005789.P8570617994803000886

namespace A005789

/-- `A000139(n)/2*record[A106566(n)]` -/
def P8570617994803000886.Spec : Prop :=
  ∀ n, P8570617994803000886.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P6037150878401295455

`A000108(n+1)/(n+1)*A001764(n)`
-/

namespace A005789.P6037150878401295455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A005789.P6037150878401295455

namespace A005789

/-- `A000108(n+1)/(n+1)*A001764(n)` -/
def P6037150878401295455.Spec : Prop :=
  ∀ n, P6037150878401295455.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P14141359200691659500

`A120588(n+2)/(n+1)*A001764(n)`
-/

namespace A005789.P14141359200691659500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 2) : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A005789.P14141359200691659500

namespace A005789

/-- `A120588(n+2)/(n+1)*A001764(n)` -/
def P14141359200691659500.Spec : Prop :=
  ∀ n, P14141359200691659500.a n = (A005789 n : ℚ)

end A005789

/-! ## A005789.P1205516968399213671

`A052183(n)/(n+2)*∑[A071724(n)]/(n+1)`
-/

namespace A005789.P1205516968399213671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052183 n : ℚ) / (n + 2 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A005789.P1205516968399213671

namespace A005789

/-- `A052183(n)/(n+2)*∑[A071724(n)]/(n+1)` -/
def P1205516968399213671.Spec : Prop :=
  ∀ n, P1205516968399213671.a n = (A005789 n : ℚ)

end A005789

/-!
# A005790: 4-dimensional Catalan numbers.

The programs for A005790, the canonical program `A005790.P8599713385479806375` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005790 has offset 0).

The definition of A005790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005790.P8599713385479806375

`12*(4*n)!/(n!*(n+1)!*(n+2)!*(n+3)!)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005790

/-- `12*(4*n)!/(n!*(n+1)!*(n+2)!*(n+3)!)` -/
def P8599713385479806375.Spec : Prop :=
  ∀ n, P8599713385479806375.a n = (A005790 n : ℚ)

end A005790

/-! ## A005790.P17121328860095690986

`A060854(∑[n+2]+5)`
-/

namespace A005790.P17121328860095690986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A005790.P17121328860095690986

namespace A005790

/-- `A060854(∑[n+2]+5)` -/
def P17121328860095690986.Spec : Prop :=
  ∀ n, P17121328860095690986.a n = A005790 n

end A005790

/-! ## A005790.P5881899455886427718

`A060854(A141214(n))^ceil(acot(n))`
-/

namespace A005790.P5881899455886427718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060854 (A141214 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A005790.P5881899455886427718

namespace A005790

/-- `A060854(A141214(n))^ceil(acot(n))` -/
def P5881899455886427718.Spec : Prop :=
  ∀ n, P5881899455886427718.a n = (A005790 n : ℚ)

end A005790

/-! ## A005790.P3949624986450584519

`A185284(n)+A060854(A141214(n))`
-/

namespace A005790.P3949624986450584519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A060854 (A141214 n).toNat

end

end A005790.P3949624986450584519

namespace A005790

/-- `A185284(n)+A060854(A141214(n))` -/
def P3949624986450584519.Spec : Prop :=
  ∀ n, P3949624986450584519.a n = A005790 n

end A005790

/-! ## A005790.P10332351501351321843

`A060854(A141214(n))%A003031(n)`
-/

namespace A005790.P10332351501351321843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060854 (A141214 n).toNat) (A003031 n)

end

end A005790.P10332351501351321843

namespace A005790

/-- `A060854(A141214(n))%A003031(n)` -/
def P10332351501351321843.Spec : Prop :=
  ∀ n, P10332351501351321843.a n = A005790 n

end A005790

/-!
# A005791: 5-dimensional Catalan numbers.

The programs for A005791, there is no canonical definition to state claims against.
-/

/-! ## A005791.P2700849538196996702

`A060854(∑[round(sqrt(n²+1))+3]+7)`
-/

namespace A005791.P2700849538196996702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A005791.P2700849538196996702

/-! ## A005791.P16217695344497914185

`A290252(A175164(n))`
-/

namespace A005791.P16217695344497914185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A175164 n).toNat

end

end A005791.P16217695344497914185

/-! ## A005791.P7498347504442126626

`A290252(A175165(n)/2)`
-/

namespace A005791.P7498347504442126626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (SequenceMachineLib.roundAway ((A175165 n : ℚ) / 2)).toNat

end

end A005791.P7498347504442126626

/-! ## A005791.P14102700767621214772

`A290252(4*A173033(n))`
-/

namespace A005791.P14102700767621214772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (4 * A173033 n).toNat

end

end A005791.P14102700767621214772

/-! ## A005791.P13876910808684074905

`A290252(8*A290198(n))`
-/

namespace A005791.P13876910808684074905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (8 * A290198 n).toNat

end

end A005791.P13876910808684074905

/-!
# A005792: Positive numbers that are the sum of 2 squares or 3 times a square.

The programs for A005792, the canonical program `A005792.P17441170092424256089` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005792 has offset 1).

The definition of A005792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005792.P17441170092424256089

`∪[A001983(n+1), A249096(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005792

/-- `∪[A001983(n+1), A249096(n+1)]` -/
def P17441170092424256089.Spec : Prop :=
  ∀ n, (P17441170092424256089.a n : ℤ) = A005792 (n + 1)

theorem P17441170092424256089.correct : P17441170092424256089.Spec := by
  intro n
  simp only [A005792, Nat.add_sub_cancel]

end A005792

/-! ## A005792.P15768882645779433840

`eq[A000161(A058306(n)), A229062(n)]`
-/

namespace A005792.P15768882645779433840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A058306 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005792.P15768882645779433840

namespace A005792

/-- `eq[A000161(A058306(n)), A229062(n)]` -/
def P15768882645779433840.Spec : Prop :=
  ∀ n, (P15768882645779433840.a n : ℤ) = A005792 (n + 1)

end A005792

/-! ## A005792.P1782055061414731837

`eq[A229062(2*n), A229062(A058306(n))]`
-/

namespace A005792.P1782055061414731837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A058306 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005792.P1782055061414731837

namespace A005792

/-- `eq[A229062(2*n), A229062(A058306(n))]` -/
def P1782055061414731837.Spec : Prop :=
  ∀ n, (P1782055061414731837.a n : ℤ) = A005792 (n + 1)

end A005792

/-! ## A005792.P6733696312571719749

`eq[A130731(A014453(n)), A229062(n)]`
-/

namespace A005792.P6733696312571719749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130731 (A014453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005792.P6733696312571719749

namespace A005792

/-- `eq[A130731(A014453(n)), A229062(n)]` -/
def P6733696312571719749.Spec : Prop :=
  ∀ n, (P6733696312571719749.a n : ℤ) = A005792 (n + 1)

end A005792

/-! ## A005792.P10251772290954005766

`eq[A000007(A000925(n)), A010052(3*n)]`
-/

namespace A005792.P10251772290954005766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005792.P10251772290954005766

namespace A005792

/-- `eq[A000007(A000925(n)), A010052(3*n)]` -/
def P10251772290954005766.Spec : Prop :=
  ∀ n, (P10251772290954005766.a n : ℤ) = A005792 (n + 1)

end A005792

/-! ## A005792.P5941797293686757818

`eq[A000007(A004018(n)), A010052(3*n)]`
-/

namespace A005792.P5941797293686757818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005792.P5941797293686757818

namespace A005792

/-- `eq[A000007(A004018(n)), A010052(3*n)]` -/
def P5941797293686757818.Spec : Prop :=
  ∀ n, (P5941797293686757818.a n : ℤ) = A005792 (n + 1)

end A005792

/-!
# A005793: Number of O_1^{2+}(Z)-orbits of Lorentzian modular group.

The programs for A005793, there is no canonical definition to state claims against.
-/

/-! ## A005793.P6277153791510773410

`A233544(A194755(n+1)+A194697(n+1))`
-/

namespace A005793.P6277153791510773410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233544 (A194755 (n + 1) + A194697 (n + 1)).toNat

end

end A005793.P6277153791510773410

/-! ## A005793.P9744732849868527652

`A001221(A085785(n+2)*A153643(n))`
-/

namespace A005793.P9744732849868527652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085785 (n + 2) * A153643 n).toNat

end

end A005793.P9744732849868527652

/-! ## A005793.P11592110691953751133

`A001221(lcm(A085785(n+2), A153643(n)))`
-/

namespace A005793.P11592110691953751133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A085785 (n + 2)) (A153643 n))

end

end A005793.P11592110691953751133

/-! ## A005793.P5955256652034139395

`A338117(n+1)+A076478(A208354(A000265(n+1)))`
-/

namespace A005793.P5955256652034139395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (n + 1) + A076478 (A208354 (A000265 (n + 1)).toNat).toNat

end

end A005793.P5955256652034139395

/-! ## A005793.P5563908171737754665

`A339890(A361781(n)+A221303(n+1))`
-/

namespace A005793.P5563908171737754665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (A361781 n + A221303 (n + 1)).toNat

end

end A005793.P5563908171737754665

/-!
# A005794: Number of SO_1^{2+}(Z) orbits of Lorentzian modular group.

The programs for A005794, there is no canonical definition to state claims against.
-/

/-! ## A005794.P3288415165539671474

`ceil(abs(A256624(n+1))/8)`
-/

namespace A005794.P3288415165539671474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A256624 (n + 1)| : ℚ) / 8⌉

end

end A005794.P3288415165539671474

/-! ## A005794.P12295004558907322479

`A110656(abs(A256624(n+1)))`
-/

namespace A005794.P12295004558907322479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 |A256624 (n + 1)|.toNat

end

end A005794.P12295004558907322479

/-! ## A005794.P8461369474273548683

`A110656(-A256624(n+1))`
-/

namespace A005794.P8461369474273548683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (-A256624 (n + 1)).toNat

end

end A005794.P8461369474273548683

/-! ## A005794.P18420271064327591374

`A110656(lcm(2, A256624(n+1)))`
-/

namespace A005794.P18420271064327591374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lcm 2 (A256624 (n + 1)))

end

end A005794.P18420271064327591374

/-! ## A005794.P7169619348462113289

`A102354(∑[A066638(n+1)]²)`
-/

namespace A005794.P7169619348462113289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A005794.P7169619348462113289

/-!
# A005797: Expansion of Jacobi nome q in terms of parameter m/16.

The programs for A005797, there is no canonical definition to state claims against.
-/

/-! ## A005797.P17848543834782834166

`gcd(A119349(n), A308836(n))*A002639(n)`
-/

namespace A005797.P17848543834782834166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A119349 n) (A308836 n) : ℤ) * A002639 n

end

end A005797.P17848543834782834166

/-!
# A005798: Expansion of (theta_2(q)/theta_3(q))^4/16 in powers of q.

The programs for A005798, there is no canonical definition to state claims against.
-/

/-! ## A005798.P16493242230756806142

`round(-(A128692(n)/16))`
-/

namespace A005798.P16493242230756806142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((A128692 n : ℚ) / 16))

end

end A005798.P16493242230756806142

/-! ## A005798.P90759298713724426

`(A000007(n)-A128692(n))/16`
-/

namespace A005798.P90759298713724426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n - A128692 n : ℚ) / 16

end

end A005798.P90759298713724426

/-! ## A005798.P2276598317042052117

`-(A128692(n)/16*A057427(n))`
-/

namespace A005798.P2276598317042052117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A128692 n : ℚ) / 16 * (A057427 n : ℚ))

end

end A005798.P2276598317042052117

/-! ## A005798.P3435446858804935714

`round(A128692(n)/A128692(gcd(n, n+1)))`
-/

namespace A005798.P3435446858804935714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128692 n : ℚ) / (A128692 (Nat.gcd n (n + 1)) : ℚ))

end

end A005798.P3435446858804935714

/-! ## A005798.P14834331474272193340

`floor(-(A128692(n)/16))*A019428(2*n)`
-/

namespace A005798.P14834331474272193340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A128692 n : ℚ) / 16)⌋ * A019428 (2 * n)

end

end A005798.P14834331474272193340

/-! ## A005798.P16332798273255967184

`A027379(n)+floor(-(A128692(n)/16))-A055998(n)`
-/

namespace A005798.P16332798273255967184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n + (⌊-((A128692 n : ℚ) / 16)⌋ - A055998 n)

end

end A005798.P16332798273255967184

/-!
# A005799: Generalized Euler numbers of type 2^n.

The programs for A005799, there is no canonical definition to state claims against.
-/

/-! ## A005799.P10331206019884533671

`1/2^n*∑{#}[n, C(n, #)*A000364(#)]`
-/

namespace A005799.P10331206019884533671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 ^ n : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000364 k : ℤ) : ℚ)

end

end A005799.P10331206019884533671

/-! ## A005799.P8130643399862997056

`A008301(n²-n)`
-/

namespace A005799.P8130643399862997056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (n ^ 2 - n)

end

end A005799.P8130643399862997056

/-! ## A005799.P3536689888080034662

`A130847(∑[n]+n)`
-/

namespace A005799.P3536689888080034662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130847 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005799.P3536689888080034662

/-! ## A005799.P9816139255307980962

`A210108(A212342(n))`
-/

namespace A005799.P9816139255307980962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210108 (A212342 n).toNat

end

end A005799.P9816139255307980962

/-! ## A005799.P17617214904351797004

`A210108(eq[1, A001497(n)])`
-/

namespace A005799.P17617214904351797004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005799.P17617214904351797004


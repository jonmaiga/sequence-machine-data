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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A094000: Number of n X n (0,1)-matrices with no zero rows or columns and with all rows distinct and all columns distinct, up to permutation of rows.

The programs for A094000, there is no canonical definition to state claims against.
-/

/-! ## A094000.P17261271120996187139

`A318538(n)/n!`
-/

namespace A094000.P17261271120996187139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318538 n : ℚ) / (Nat.factorial n : ℚ)

end

end A094000.P17261271120996187139

/-! ## A094000.P14737269641341176754

`A318538(n)/A000142(n)`
-/

namespace A094000.P14737269641341176754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318538 n : ℚ) / (A000142 n : ℚ)

end

end A094000.P14737269641341176754

/-! ## A094000.P12364825041109056481

`A318538(n)/∏[A028310(n)]`
-/

namespace A094000.P12364825041109056481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318538 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A094000.P12364825041109056481

/-! ## A094000.P15207086164120641316

`A318538(n)/∏[A007318(∑[n]+1)]`
-/

namespace A094000.P15207086164120641316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318538 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A094000.P15207086164120641316

/-!
# A094002: a(n+3) = 3*a(n+2) - 2*a(n+1) + 1 with a(0)=1, a(1)=5.

The programs for A094002, the canonical program `A094002.P6722636410506022236` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094002 has offset 0).

The definition of A094002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094002.P6722636410506022236

`5*2^n-(n+4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094002

/-- `5*2^n-(n+4)` -/
def P6722636410506022236.Spec : Prop :=
  ∀ n, P6722636410506022236.a n = A094002 n

theorem P6722636410506022236.correct : P6722636410506022236.Spec := by
  intro n
  simp only [A094002]

end A094002

/-! ## A094002.P4259135126179889927

`∑[ogf((1+x-x^2)/(1-3x+2x^2))]`
-/

namespace A094002.P4259135126179889927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P4259135126179889927

namespace A094002

/-- `∑[ogf((1+x-x^2)/(1-3x+2x^2))]` -/
def P4259135126179889927.Spec : Prop :=
  ∀ n, P4259135126179889927.a n = A094002 n

end A094002

/-! ## A094002.P5622389299668878402

`ogf((1+x-x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A094002.P5622389299668878402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -4, 5, -2] n

end

end A094002.P5622389299668878402

namespace A094002

/-- `ogf((1+x-x^2)/(1-4x+5x^2-2x^3))` -/
def P5622389299668878402.Spec : Prop :=
  ∀ n, P5622389299668878402.a n = A094002 n

end A094002

/-! ## A094002.P14797428193891389412

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=4`
-/

namespace A094002.P14797428193891389412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P14797428193891389412

namespace A094002

/-- `∑[2*a(n-1)+1]` -/
def P14797428193891389412.Spec : Prop :=
  ∀ n, (P14797428193891389412.a n : ℤ) = A094002 n

end A094002

/-! ## A094002.P15303950766988284729

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A094002.P15303950766988284729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P15303950766988284729

namespace A094002

/-- `∑[∑[2*a(n-1)]]` -/
def P15303950766988284729.Spec : Prop :=
  ∀ n, (P15303950766988284729.a n : ℤ) = A094002 n

end A094002

/-! ## A094002.P1359047978534526438

`floor(2*(a(n-1)+1)+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A094002.P1359047978534526438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1) + n

end

end A094002.P1359047978534526438

namespace A094002

/-- `floor(2*(a(n-1)+1)+n)` -/
def P1359047978534526438.Spec : Prop :=
  ∀ n, (P1359047978534526438.a n : ℤ) = A094002 n

theorem P1359047978534526438.correct : P1359047978534526438.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A094002, Nat.add_sub_cancel, A094002.P1359047978534526438.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A094002, Nat.add_sub_cancel, A094002.P1359047978534526438.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094002

/-! ## A094002.P4743580404726258923

`2*(a(n-1)+n/2+1)` with `a(0)=1`
-/

namespace A094002.P4743580404726258923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + ((n : ℚ) / 2 + 1))

end

end A094002.P4743580404726258923

namespace A094002

/-- `2*(a(n-1)+n/2+1)` -/
def P4743580404726258923.Spec : Prop :=
  ∀ n, P4743580404726258923.a n = (A094002 n : ℚ)

theorem P4743580404726258923.correct : P4743580404726258923.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A094002, Nat.add_sub_cancel, A094002.P4743580404726258923.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A094002, Nat.add_sub_cancel, A094002.P4743580404726258923.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094002

/-! ## A094002.P17634588485073025541

`floor(n-(2*(1-a(n-1))-4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A094002.P17634588485073025541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (2 * (1 - a (n - 1)) - 4)

end

end A094002.P17634588485073025541

namespace A094002

/-- `floor(n-(2*(1-a(n-1))-4))` -/
def P17634588485073025541.Spec : Prop :=
  ∀ n, P17634588485073025541.a n = A094002 n

theorem P17634588485073025541.correct : P17634588485073025541.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A094002, Nat.add_sub_cancel, A094002.P17634588485073025541.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A094002, Nat.add_sub_cancel, A094002.P17634588485073025541.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094002

/-! ## A094002.P18315378693734259430

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=4`
-/

namespace A094002.P18315378693734259430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P18315378693734259430

namespace A094002

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P18315378693734259430.Spec : Prop :=
  ∀ n, (P18315378693734259430.a n : ℤ) = A094002 n

end A094002

/-! ## A094002.P1249073892813712275

`2*(2-((2-n)/2-a(n-1)))` with `a(0)=1`
-/

namespace A094002.P1249073892813712275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ((2 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A094002.P1249073892813712275

namespace A094002

/-- `2*(2-((2-n)/2-a(n-1)))` -/
def P1249073892813712275.Spec : Prop :=
  ∀ n, P1249073892813712275.a n = (A094002 n : ℚ)

theorem P1249073892813712275.correct : P1249073892813712275.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A094002, Nat.add_sub_cancel, A094002.P1249073892813712275.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A094002, Nat.add_sub_cancel, A094002.P1249073892813712275.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094002

/-! ## A094002.P17889828938595536024

`floor(a(n-1)+2+a(n-1)+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A094002.P17889828938595536024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + n)

end

end A094002.P17889828938595536024

namespace A094002

/-- `floor(a(n-1)+2+a(n-1)+n)` -/
def P17889828938595536024.Spec : Prop :=
  ∀ n, (P17889828938595536024.a n : ℤ) = A094002 n

theorem P17889828938595536024.correct : P17889828938595536024.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A094002, Nat.add_sub_cancel, A094002.P17889828938595536024.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A094002, Nat.add_sub_cancel, A094002.P17889828938595536024.a, A094002.P6722636410506022236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094002

/-! ## A094002.P3958941128226024512

`floor(n-(a(n-1)/(1/2-1)-2))` with `a(0)=1`
-/

namespace A094002.P3958941128226024512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - ((a (n - 1) : ℚ) / ((1 : ℚ) / 2 - 1) - 2)⌋

end

end A094002.P3958941128226024512

namespace A094002

/-- `floor(n-(a(n-1)/(1/2-1)-2))` -/
def P3958941128226024512.Spec : Prop :=
  ∀ n, P3958941128226024512.a n = A094002 n

end A094002

/-! ## A094002.P11900443363731661387

`∑[A052549(n)]`
-/

namespace A094002.P11900443363731661387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P11900443363731661387

namespace A094002

/-- `∑[A052549(n)]` -/
def P11900443363731661387.Spec : Prop :=
  ∀ n, P11900443363731661387.a n = A094002 n

end A094002

/-! ## A094002.P17743493930289513773

`A188589(n+1)`
-/

namespace A094002.P17743493930289513773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188589 (n + 1)

end

end A094002.P17743493930289513773

namespace A094002

/-- `A188589(n+1)` -/
def P17743493930289513773.Spec : Prop :=
  ∀ n, P17743493930289513773.a n = A094002 n

end A094002

/-! ## A094002.P5195953764940885357

`∑[A133124(n)+n]`
-/

namespace A094002.P5195953764940885357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133124 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P5195953764940885357

namespace A094002

/-- `∑[A133124(n)+n]` -/
def P5195953764940885357.Spec : Prop :=
  ∀ n, P5195953764940885357.a n = A094002 n

end A094002

/-! ## A094002.P18307499357976673052

`∑[A084215(n+1)-1]`
-/

namespace A094002.P18307499357976673052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P18307499357976673052

namespace A094002

/-- `∑[A084215(n+1)-1]` -/
def P18307499357976673052.Spec : Prop :=
  ∀ n, P18307499357976673052.a n = A094002 n

end A094002

/-! ## A094002.P1939165031822673474

`∑[∑[A333905(2*n+1)]]`
-/

namespace A094002.P1939165031822673474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094002.P1939165031822673474

namespace A094002

/-- `∑[∑[A333905(2*n+1)]]` -/
def P1939165031822673474.Spec : Prop :=
  ∀ n, P1939165031822673474.a n = A094002 n

end A094002

/-! ## A094002.P3012678503463250524

`A208638(n+1)%A051633(n)`
-/

namespace A094002.P3012678503463250524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208638 (n + 1)) (A051633 n)

end

end A094002.P3012678503463250524

namespace A094002

/-- `A208638(n+1)%A051633(n)` -/
def P3012678503463250524.Spec : Prop :=
  ∀ n, P3012678503463250524.a n = A094002 n

end A094002

/-! ## A094002.P4643379737603718300

`A288349(∑[n+1]+n)`
-/

namespace A094002.P4643379737603718300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288349 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A094002.P4643379737603718300

namespace A094002

/-- `A288349(∑[n+1]+n)` -/
def P4643379737603718300.Spec : Prop :=
  ∀ n, P4643379737603718300.a n = A094002 n

end A094002

/-!
# A094003: a(1) = 2, a(n+1) = (a(n)^(n+1) - 1)/(a(n) - 1).

The programs for A094003, there is no canonical definition to state claims against.
-/

/-! ## A094003.P1021769405191353442

`(1-a(n-1)^(n+1))/(1-a(n-1))` with `a(0)=2`
-/

namespace A094003.P1021769405191353442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (1 - a (n - 1) ^ (n + 1)) / (1 - a (n - 1))

end

end A094003.P1021769405191353442

/-!
# A094004: a(n) = (conjectured) length of longest string that can be generated by a starting string of 2's and 3's of length n, using the rule described in the Comments lines.

The programs for A094004, there is no canonical definition to state claims against.
-/

/-! ## A094004.P8734746294925765754

`A217208(n+1)+1+n`
-/

namespace A094004.P8734746294925765754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217208 (n + 1) + 1 + (n : ℤ)

end

end A094004.P8734746294925765754

/-! ## A094004.P13342293722562608039

`record[A217208(A133310(n))+A133310(n)]`
-/

namespace A094004.P13342293722562608039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217208 (A133310 n).toNat + A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094004.P13342293722562608039

/-! ## A094004.P16691168912119474201

`A217208(A077168(n))+n+1`
-/

namespace A094004.P16691168912119474201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217208 (A077168 n).toNat + (n + 1 : ℤ)

end

end A094004.P16691168912119474201

/-!
# A094005: a(n) = sum of lengths of strings that can be generated by any starting string of n 2's and 3's, using the rule described in the Comments lines.

The programs for A094005, there is no canonical definition to state claims against.
-/

/-! ## A094005.P12980665316594275689

`A216813(n+1)+(n+1)*2^(n+1)`
-/

namespace A094005.P12980665316594275689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216813 (n + 1) + ((n + 1) * 2 ^ (n + 1) : ℤ)

end

end A094005.P12980665316594275689

/-!
# A094006: a(1) = a(2) = 1; for n > 1, a(n+1) = largest integer k such that the word a(1)a(2)...a(n-1) is of the form xy^k for words x and y (where y has positive length), i.e., the maximal number of repeating blocks at the end of the sequence so far.

The programs for A094006, there is no canonical definition to state claims against.
-/

/-! ## A094006.P15755682920313821068

`gcd(A123796(A065033(n)), A335380(n))`
-/

namespace A094006.P15755682920313821068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123796 (A065033 n).toNat) (A335380 n)

end

end A094006.P15755682920313821068

/-! ## A094006.P3056132771910026380

`A072411(lcm(A343422(n+1), A349374(n+1)))`
-/

namespace A094006.P3056132771910026380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Int.lcm (A343422 (n + 1)) (A349374 (n + 1)))

end

end A094006.P3056132771910026380

/-! ## A094006.P16186845741336066010

`A287957(or(A191127(n+1), A284122(n+1)))`
-/

namespace A094006.P16186845741336066010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (Int.lor (A191127 (n + 1)) (A284122 (n + 1))).toNat

end

end A094006.P16186845741336066010

/-! ## A094006.P1744331558140091279

`A090167(A090166(3*n+1)%A090185(n+1))`
-/

namespace A094006.P1744331558140091279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090167 (Int.tmod (A090166 (3 * n + 1)) (A090185 (n + 1))).toNat

end

end A094006.P1744331558140091279

/-! ## A094006.P17345899880923677176

`A001511(A278478(2*n+3)+A016922(n))`
-/

namespace A094006.P17345899880923677176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A278478 (2 * n + 3) + A016922 n).toNat

end

end A094006.P17345899880923677176

/-!
# A094008: Primes which are the denominators of convergents of the continued fraction expansion of e.

The programs for A094008, there is no canonical definition to state claims against.
-/

/-! ## A094008.P744385257957692283

`A113874(A094007(n+1)+1)`
-/

namespace A094008.P744385257957692283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113874 (A094007 (n + 1) + 1).toNat

end

end A094008.P744385257957692283

/-! ## A094008.P12807112929849393878

`A007677(A094007(n+1)-1)`
-/

namespace A094008.P12807112929849393878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007677 (A094007 (n + 1) - 1).toNat

end

end A094008.P12807112929849393878

/-!
# A094012: Expansion of x*(1-6*x+10*x^2)/(1-4*x+2*x^2)^2.

The programs for A094012, the canonical program `A094012.P14498792928328992451` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094012 has offset 0).

The definition of A094012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-6x^2+10x^3)/(1-8x+20x^2-16x^3+4x^4))` (program `A094012.P14498792928328992451`, by `A094012.P14498792928328992451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094012.P14498792928328992451

`ogf((x-6x^2+10x^3)/(1-8x+20x^2-16x^3+4x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094012

/-- `ogf((x-6x^2+10x^3)/(1-8x+20x^2-16x^3+4x^4))` -/
def P14498792928328992451.Spec : Prop :=
  ∀ n, P14498792928328992451.a n = A094012 n

theorem P14498792928328992451.correct : P14498792928328992451.Spec := by
  intro n
  simp only [A094012]

end A094012

/-! ## A094012.P16271017587979518171

`n*A006012(floor(n-atan(n)))`
-/

namespace A094012.P16271017587979518171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006012 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A094012.P16271017587979518171

namespace A094012

/-- `n*A006012(floor(n-atan(n)))` -/
def P16271017587979518171.Spec : Prop :=
  ∀ n, P16271017587979518171.a n = A094012 n

end A094012

/-! ## A094012.P8668976523649428060

`n*A062112(A004274(n))`
-/

namespace A094012.P8668976523649428060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062112 (A004274 n).toNat

end

end A094012.P8668976523649428060

namespace A094012

/-- `n*A062112(A004274(n))` -/
def P8668976523649428060.Spec : Prop :=
  ∀ n, P8668976523649428060.a n = A094012 n

end A094012

/-! ## A094012.P14702367211360804431

`n*A006012(A289207(n))`
-/

namespace A094012.P14702367211360804431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006012 (A289207 n).toNat

end

end A094012.P14702367211360804431

namespace A094012

/-- `n*A006012(A289207(n))` -/
def P14702367211360804431.Spec : Prop :=
  ∀ n, P14702367211360804431.a n = A094012 n

end A094012

/-! ## A094012.P18286603353030222728

`n*A006012(A004275(n)-n)`
-/

namespace A094012.P18286603353030222728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006012 (A004275 n - (n : ℤ)).toNat

end

end A094012.P18286603353030222728

namespace A094012

/-- `n*A006012(A004275(n)-n)` -/
def P18286603353030222728.Spec : Prop :=
  ∀ n, P18286603353030222728.a n = A094012 n

end A094012

/-! ## A094012.P6848465888916339507

`n*A062112(A300576(n+1)-1)`
-/

namespace A094012.P6848465888916339507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062112 (A300576 (n + 1) - 1).toNat

end

end A094012.P6848465888916339507

namespace A094012

/-- `n*A062112(A300576(n+1)-1)` -/
def P6848465888916339507.Spec : Prop :=
  ∀ n, P6848465888916339507.a n = A094012 n

end A094012

/-!
# A094013: Expansion of (1-4*x)/(1-4*x-4*x^2).

The programs for A094013, the canonical program `A094013.P8760296042593818597` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094013 has offset 0).

The definition of A094013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-4x-4x^2))` (program `A094013.P8760296042593818597`, by `A094013.P8760296042593818597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094013.P8760296042593818597

`ogf((1-4x)/(1-4x-4x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094013

/-- `ogf((1-4x)/(1-4x-4x^2))` -/
def P8760296042593818597.Spec : Prop :=
  ∀ n, P8760296042593818597.a n = A094013 n

theorem P8760296042593818597.correct : P8760296042593818597.Spec := by
  intro n
  simp only [A094013]

end A094013

/-! ## A094013.P17491634382277338228

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A094013.P17491634382277338228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2)

end

end A094013.P17491634382277338228

namespace A094013

/-- `4*a(n-1)+4*a(n-2)` -/
def P17491634382277338228.Spec : Prop :=
  ∀ n, (P17491634382277338228.a n : ℤ) = A094013 n

end A094013

/-! ## A094013.P15934821555345461435

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A094013.P15934821555345461435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A094013.P15934821555345461435

namespace A094013

/-- `4*(a(n-1)+a(n-2))` -/
def P15934821555345461435.Spec : Prop :=
  ∀ n, (P15934821555345461435.a n : ℤ) = A094013 n

end A094013

/-! ## A094013.P2202721197115488012

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=1, a(1)=0`
-/

namespace A094013.P2202721197115488012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A094013.P2202721197115488012

namespace A094013

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P2202721197115488012.Spec : Prop :=
  ∀ n, P2202721197115488012.a n = (A094013 n : ℚ)

end A094013

/-! ## A094013.P8172248480193650232

`A057087(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A094013.P8172248480193650232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057087 (n - 1) - a (n - 1)

end

end A094013.P8172248480193650232

namespace A094013

/-- `A057087(n-1)-a(n-1)` -/
def P8172248480193650232.Spec : Prop :=
  ∀ n, P8172248480193650232.a n = A094013 n

end A094013

/-! ## A094013.P8087997810255305708

`abs(A000079(n)*A176981(n))`
-/

namespace A094013.P8087997810255305708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A176981 n|

end

end A094013.P8087997810255305708

namespace A094013

/-- `abs(A000079(n)*A176981(n))` -/
def P8087997810255305708.Spec : Prop :=
  ∀ n, P8087997810255305708.a n = A094013 n

end A094013

/-! ## A094013.P6242428406262157499

`abs(Δ[A000225(n)]*A176981(n))`
-/

namespace A094013.P6242428406262157499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A176981 n|

end

end A094013.P6242428406262157499

namespace A094013

/-- `abs(Δ[A000225(n)]*A176981(n))` -/
def P6242428406262157499.Spec : Prop :=
  ∀ n, P6242428406262157499.a n = A094013 n

end A094013

/-! ## A094013.P7109515394348870499

`A117575(2*n+1)*A215936(n+1)`
-/

namespace A094013.P7109515394348870499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n + 1) * A215936 (n + 1)

end

end A094013.P7109515394348870499

namespace A094013

/-- `A117575(2*n+1)*A215936(n+1)` -/
def P7109515394348870499.Spec : Prop :=
  ∀ n, P7109515394348870499.a n = A094013 n

end A094013

/-! ## A094013.P6422533169051181966

`(A001333(n)-A000129(n))*A000079(n)`
-/

namespace A094013.P6422533169051181966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001333 n - A000129 n) * A000079 n

end

end A094013.P6422533169051181966

namespace A094013

/-- `(A001333(n)-A000129(n))*A000079(n)` -/
def P6422533169051181966.Spec : Prop :=
  ∀ n, P6422533169051181966.a n = A094013 n

end A094013

/-! ## A094013.P12653056885701422824

`(A002203(n)-A000129(n+1))*A000079(n)`
-/

namespace A094013.P12653056885701422824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002203 n - A000129 (n + 1)) * A000079 n

end

end A094013.P12653056885701422824

namespace A094013

/-- `(A002203(n)-A000129(n+1))*A000079(n)` -/
def P12653056885701422824.Spec : Prop :=
  ∀ n, P12653056885701422824.a n = A094013 n

end A094013

/-! ## A094013.P5527418502524199759

`(A000129(n+1)-A163271(n+1))*A000079(n)`
-/

namespace A094013.P5527418502524199759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) - A163271 (n + 1)) * A000079 n

end

end A094013.P5527418502524199759

namespace A094013

/-- `(A000129(n+1)-A163271(n+1))*A000079(n)` -/
def P5527418502524199759.Spec : Prop :=
  ∀ n, P5527418502524199759.a n = A094013 n

end A094013

/-! ## A094013.P7120927214066189348

`(A002965(2*n+1)-A002965(2*n))*A011782(n+1)`
-/

namespace A094013.P7120927214066189348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002965 (2 * n + 1) - A002965 (2 * n)) * A011782 (n + 1)

end

end A094013.P7120927214066189348

namespace A094013

/-- `(A002965(2*n+1)-A002965(2*n))*A011782(n+1)` -/
def P7120927214066189348.Spec : Prop :=
  ∀ n, P7120927214066189348.a n = A094013 n

end A094013

/-! ## A094013.P7333785423567186105

`(A002965(2*n+1)-A002965(2*n))*A016116(2*n)`
-/

namespace A094013.P7333785423567186105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002965 (2 * n + 1) - A002965 (2 * n)) * A016116 (2 * n)

end

end A094013.P7333785423567186105

namespace A094013

/-- `(A002965(2*n+1)-A002965(2*n))*A016116(2*n)` -/
def P7333785423567186105.Spec : Prop :=
  ∀ n, P7333785423567186105.a n = A094013 n

end A094013

/-! ## A094013.P17484538740739468966

`A077957(A004275(n))*A119016(A004273(n))`
-/

namespace A094013.P17484538740739468966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A004275 n).toNat * A119016 (A004273 n).toNat

end

end A094013.P17484538740739468966

namespace A094013

/-- `A077957(A004275(n))*A119016(A004273(n))` -/
def P17484538740739468966.Spec : Prop :=
  ∀ n, P17484538740739468966.a n = A094013 n

end A094013

/-! ## A094013.P9327836356535275988

`A057087(n)-A106568(n)`
-/

namespace A094013.P9327836356535275988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n - A106568 n

end

end A094013.P9327836356535275988

namespace A094013

/-- `A057087(n)-A106568(n)` -/
def P9327836356535275988.Spec : Prop :=
  ∀ n, P9327836356535275988.a n = A094013 n

end A094013

/-! ## A094013.P5461455726101959619

`A170931(n)-A057087(n)`
-/

namespace A094013.P5461455726101959619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 n - A057087 n

end

end A094013.P5461455726101959619

namespace A094013

/-- `A170931(n)-A057087(n)` -/
def P5461455726101959619.Spec : Prop :=
  ∀ n, P5461455726101959619.a n = A094013 n

end A094013

/-! ## A094013.P10369444716676108396

`2*A084128(n)-A057087(n)`
-/

namespace A094013.P10369444716676108396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084128 n - A057087 n

end

end A094013.P10369444716676108396

namespace A094013

/-- `2*A084128(n)-A057087(n)` -/
def P10369444716676108396.Spec : Prop :=
  ∀ n, P10369444716676108396.a n = A094013 n

end A094013

/-! ## A094013.P6084007235823223581

`A084128(n)-A106568(n)/2`
-/

namespace A094013.P6084007235823223581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084128 n : ℚ) - (A106568 n : ℚ) / 2

end

end A094013.P6084007235823223581

namespace A094013

/-- `A084128(n)-A106568(n)/2` -/
def P6084007235823223581.Spec : Prop :=
  ∀ n, P6084007235823223581.a n = (A094013 n : ℚ)

end A094013

/-! ## A094013.P2647712479405707951

`A000079(n)*A002203(n)-A057087(n)`
-/

namespace A094013.P2647712479405707951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A002203 n - A057087 n

end

end A094013.P2647712479405707951

namespace A094013

/-- `A000079(n)*A002203(n)-A057087(n)` -/
def P2647712479405707951.Spec : Prop :=
  ∀ n, P2647712479405707951.a n = A094013 n

end A094013

/-! ## A094013.P2599200954137137816

`A057087(n)-A000079(n+1)*A000129(n)`
-/

namespace A094013.P2599200954137137816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n - A000079 (n + 1) * A000129 n

end

end A094013.P2599200954137137816

namespace A094013

/-- `A057087(n)-A000079(n+1)*A000129(n)` -/
def P2599200954137137816.Spec : Prop :=
  ∀ n, P2599200954137137816.a n = A094013 n

end A094013

/-!
# A094014: Expansion of (1-2*x)/(1-8*x^2).

The programs for A094014, the canonical program `A094014.P775050327425440977` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094014 has offset 0).

The definition of A094014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-8x^2))` (program `A094014.P775050327425440977`, by `A094014.P775050327425440977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094014.P775050327425440977

`ogf((1-2x)/(1-8x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094014

/-- `ogf((1-2x)/(1-8x^2))` -/
def P775050327425440977.Spec : Prop :=
  ∀ n, P775050327425440977.a n = A094014 n

theorem P775050327425440977.correct : P775050327425440977.Spec := by
  intro n
  simp only [A094014]

end A094014

/-! ## A094014.P5434449358276131292

`(-2)^n*A016116(n)`
-/

namespace A094014.P5434449358276131292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A016116 n

end

end A094014.P5434449358276131292

namespace A094014

/-- `(-2)^n*A016116(n)` -/
def P5434449358276131292.Spec : Prop :=
  ∀ n, P5434449358276131292.a n = A094014 n

end A094014

/-! ## A094014.P17813050667588675203

`-∏[-((2^n)%6)]`
-/

namespace A094014.P17813050667588675203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 ^ n % 6 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A094014.P17813050667588675203

namespace A094014

/-- `-∏[-((2^n)%6)]` -/
def P17813050667588675203.Spec : Prop :=
  ∀ n, P17813050667588675203.a n = A094014 n

end A094014

/-! ## A094014.P7111549828571701839

`8*a(n-2)` with `a(0)=1, a(1)=-2`
-/

namespace A094014.P7111549828571701839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  8 * a (n - 2)

end

end A094014.P7111549828571701839

namespace A094014

/-- `8*a(n-2)` -/
def P7111549828571701839.Spec : Prop :=
  ∀ n, P7111549828571701839.a n = A094014 n

end A094014

/-! ## A094014.P15382317943505960320

`∏[8/a(n-1)]` with `a(0)=1, a(1)=-2`
-/

namespace A094014.P15382317943505960320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094014.P15382317943505960320

namespace A094014

/-- `∏[8/a(n-1)]` -/
def P15382317943505960320.Spec : Prop :=
  ∀ n, P15382317943505960320.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P7418409934171098088

`2^floor(n/2)*(-2)^n`
-/

namespace A094014.P7418409934171098088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((-2) ^ n : ℚ)

end

end A094014.P7418409934171098088

namespace A094014

/-- `2^floor(n/2)*(-2)^n` -/
def P7418409934171098088.Spec : Prop :=
  ∀ n, P7418409934171098088.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P11360652382624938784

`a(n-2)/(1/2)^3` with `a(0)=1, a(1)=-2`
-/

namespace A094014.P11360652382624938784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A094014.P11360652382624938784

namespace A094014

/-- `a(n-2)/(1/2)^3` -/
def P11360652382624938784.Spec : Prop :=
  ∀ n, P11360652382624938784.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P11868047610957204333

`a(n-2)/(1/3)²-a(n-2)` with `a(0)=1, a(1)=-2`
-/

namespace A094014.P11868047610957204333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3) ^ 2 - a (n - 2)

end

end A094014.P11868047610957204333

namespace A094014

/-- `a(n-2)/(1/3)²-a(n-2)` -/
def P11868047610957204333.Spec : Prop :=
  ∀ n, P11868047610957204333.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P15497706529446272968

`gcd(a(n-1), a(n-1))-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A094014.P15497706529446272968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd (a (n - 1)) (a (n - 1)) : ℤ) - a (n - 1) - a (n - 1) - a (n - 1)

end

end A094014.P15497706529446272968

namespace A094014

/-- `gcd(a(n-1), a(n-1))-a(n-1)-a(n-1)-a(n-1)` -/
def P15497706529446272968.Spec : Prop :=
  ∀ n, P15497706529446272968.a n = A094014 n

end A094014

/-! ## A094014.P3252495387793747288

`∏[2-A168428(n)]`
-/

namespace A094014.P3252495387793747288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094014.P3252495387793747288

namespace A094014

/-- `∏[2-A168428(n)]` -/
def P3252495387793747288.Spec : Prop :=
  ∀ n, P3252495387793747288.a n = A094014 n

end A094014

/-! ## A094014.P15118133196640297364

`∏[2-A000689(2*n)]`
-/

namespace A094014.P15118133196640297364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000689 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094014.P15118133196640297364

namespace A094014

/-- `∏[2-A000689(2*n)]` -/
def P15118133196640297364.Spec : Prop :=
  ∀ n, P15118133196640297364.a n = A094014 n

end A094014

/-! ## A094014.P4630170287937664594

`∏[(2-A000032(2*n+1))%5]`
-/

namespace A094014.P4630170287937664594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A000032 (2 * n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094014.P4630170287937664594

namespace A094014

/-- `∏[(2-A000032(2*n+1))%5]` -/
def P4630170287937664594.Spec : Prop :=
  ∀ n, P4630170287937664594.a n = A094014 n

end A094014

/-! ## A094014.P9929881118785826335

`A152166(A047225(n+1))`
-/

namespace A094014.P9929881118785826335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (A047225 (n + 1)).toNat

end

end A094014.P9929881118785826335

namespace A094014

/-- `A152166(A047225(n+1))` -/
def P9929881118785826335.Spec : Prop :=
  ∀ n, P9929881118785826335.a n = A094014 n

end A094014

/-! ## A094014.P1671792504853246413

`A078029(A032766(3*n))`
-/

namespace A094014.P1671792504853246413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A032766 (3 * n)).toNat

end

end A094014.P1671792504853246413

namespace A094014

/-- `A078029(A032766(3*n))` -/
def P1671792504853246413.Spec : Prop :=
  ∀ n, P1671792504853246413.a n = A094014 n

end A094014

/-! ## A094014.P11768749223603298189

`A094015(n)/A327767(n+1)`
-/

namespace A094014.P11768749223603298189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094015 n : ℚ) / (A327767 (n + 1) : ℚ)

end

end A094014.P11768749223603298189

namespace A094014

/-- `A094015(n)/A327767(n+1)` -/
def P11768749223603298189.Spec : Prop :=
  ∀ n, P11768749223603298189.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P559892327791558706

`A094015(n)/(2-A010685(n))`
-/

namespace A094014.P559892327791558706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094015 n : ℚ) / (2 - A010685 n : ℚ)

end

end A094014.P559892327791558706

namespace A094014

/-- `A094015(n)/(2-A010685(n))` -/
def P559892327791558706.Spec : Prop :=
  ∀ n, P559892327791558706.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P16117439775305464749

`A094015(n)/(2-A000034(n)²)`
-/

namespace A094014.P16117439775305464749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094015 n : ℚ) / (2 - A000034 n ^ 2 : ℚ)

end

end A094014.P16117439775305464749

namespace A094014

/-- `A094015(n)/(2-A000034(n)²)` -/
def P16117439775305464749.Spec : Prop :=
  ∀ n, P16117439775305464749.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P17486199036961075754

`A060546(n+1)*A117575(2*n+1)/2`
-/

namespace A094014.P17486199036961075754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (n + 1) * A117575 (2 * n + 1) : ℚ) / 2

end

end A094014.P17486199036961075754

namespace A094014

/-- `A060546(n+1)*A117575(2*n+1)/2` -/
def P17486199036961075754.Spec : Prop :=
  ∀ n, P17486199036961075754.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P16091080583965613511

`-(∏[-(2*gcd(2, n))]/4)`
-/

namespace A094014.P16091080583965613511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Nat.gcd 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A094014.P16091080583965613511

namespace A094014

/-- `-(∏[-(2*gcd(2, n))]/4)` -/
def P16091080583965613511.Spec : Prop :=
  ∀ n, P16091080583965613511.a n = (A094014 n : ℚ)

end A094014

/-! ## A094014.P8384095530641682133

`-(∏[2*or(n, -2)]/4)`
-/

namespace A094014.P8384095530641682133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A094014.P8384095530641682133

namespace A094014

/-- `-(∏[2*or(n, -2)]/4)` -/
def P8384095530641682133.Spec : Prop :=
  ∀ n, P8384095530641682133.a n = (A094014 n : ℚ)

end A094014

/-!
# A094015: Expansion of (1+4*x)/(1-8*x^2).

The programs for A094015, the canonical program `A094015.P9062174375745411170` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094015 has offset 0).

The definition of A094015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-8x^2))` (program `A094015.P9062174375745411170`, by `A094015.P9062174375745411170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094015.P9062174375745411170

`ogf((1+4x)/(1-8x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094015

/-- `ogf((1+4x)/(1-8x^2))` -/
def P9062174375745411170.Spec : Prop :=
  ∀ n, P9062174375745411170.a n = A094015 n

theorem P9062174375745411170.correct : P9062174375745411170.Spec := by
  intro n
  simp only [A094015]

end A094015

/-! ## A094015.P6118732970039422259

`2*8^floor((n-1)/2)*(3+(-1)^n)`
-/

namespace A094015.P6118732970039422259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (8 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) * (3 + (-1) ^ n : ℚ)

end

end A094015.P6118732970039422259

namespace A094015

/-- `2*8^floor((n-1)/2)*(3+(-1)^n)` -/
def P6118732970039422259.Spec : Prop :=
  ∀ n, P6118732970039422259.a n = (A094015 n : ℚ)

end A094015

/-! ## A094015.P10270168517753943319

`2^A007494(n)`
-/

namespace A094015.P10270168517753943319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007494 n : ℤ)

end

end A094015.P10270168517753943319

namespace A094015

/-- `2^A007494(n)` -/
def P10270168517753943319.Spec : Prop :=
  ∀ n, P10270168517753943319.a n = (A094015 n : ℚ)

end A094015

/-! ## A094015.P11408604778449885636

`record[gcd(2, n%3)^n]`
-/

namespace A094015.P11408604778449885636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n % 3) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094015.P11408604778449885636

namespace A094015

/-- `record[gcd(2, n%3)^n]` -/
def P11408604778449885636.Spec : Prop :=
  ∀ n, (P11408604778449885636.a n : ℤ) = A094015 n

end A094015

/-! ## A094015.P296747256242038756

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A094015.P296747256242038756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094015.P296747256242038756

namespace A094015

/-- `∏[abs(a(n-2))]` -/
def P296747256242038756.Spec : Prop :=
  ∀ n, (P296747256242038756.a n : ℤ) = A094015 n

end A094015

/-! ## A094015.P14676298990899473772

`∏[6-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A094015.P14676298990899473772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094015.P14676298990899473772

namespace A094015

/-- `∏[6-a(n-1)]` -/
def P14676298990899473772.Spec : Prop :=
  ∀ n, P14676298990899473772.a n = A094015 n

end A094015

/-! ## A094015.P17286516136028008561

`record[2^n*(n+1)%3]`
-/

namespace A094015.P17286516136028008561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094015.P17286516136028008561

namespace A094015

/-- `record[2^n*(n+1)%3]` -/
def P17286516136028008561.Spec : Prop :=
  ∀ n, (P17286516136028008561.a n : ℤ) = A094015 n

end A094015

/-! ## A094015.P599241325658579356

`record[(3-gcd(3, 1-n))^n]`
-/

namespace A094015.P599241325658579356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Int.gcd 3 (1 - (n : ℤ)) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094015.P599241325658579356

namespace A094015

/-- `record[(3-gcd(3, 1-n))^n]` -/
def P599241325658579356.Spec : Prop :=
  ∀ n, P599241325658579356.a n = A094015 n

end A094015

/-! ## A094015.P12306073479682149254

`2^∑[3-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A094015.P12306073479682149254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A094015.P12306073479682149254

namespace A094015

/-- `2^∑[3-a(n-1)]` -/
def P12306073479682149254.Spec : Prop :=
  ∀ n, P12306073479682149254.a n = (A094015 n : ℚ)

end A094015

/-! ## A094015.P10104096518102624568

`a(n-2)/(1/2)^3` with `a(0)=1, a(1)=4`
-/

namespace A094015.P10104096518102624568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A094015.P10104096518102624568

namespace A094015

/-- `a(n-2)/(1/2)^3` -/
def P10104096518102624568.Spec : Prop :=
  ∀ n, P10104096518102624568.a n = (A094015 n : ℚ)

end A094015

/-! ## A094015.P11032578083317681763

`record[(2/gcd(2*n+1, n+2))^n]`
-/

namespace A094015.P11032578083317681763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (Nat.gcd (2 * n + 1) (n + 2) : ℚ)) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094015.P11032578083317681763

namespace A094015

/-- `record[(2/gcd(2*n+1, n+2))^n]` -/
def P11032578083317681763.Spec : Prop :=
  ∀ n, P11032578083317681763.a n = (A094015 n : ℚ)

end A094015

/-! ## A094015.P9886125508201335863

`a(n-2)/(1/3)²-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A094015.P9886125508201335863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3) ^ 2 - a (n - 2)

end

end A094015.P9886125508201335863

namespace A094015

/-- `a(n-2)/(1/3)²-a(n-2)` -/
def P9886125508201335863.Spec : Prop :=
  ∀ n, P9886125508201335863.a n = (A094015 n : ℚ)

end A094015

/-! ## A094015.P1506421861535101648

`∏[A382713(n)]`
-/

namespace A094015.P1506421861535101648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094015.P1506421861535101648

namespace A094015

/-- `∏[A382713(n)]` -/
def P1506421861535101648.Spec : Prop :=
  ∀ n, P1506421861535101648.a n = A094015 n

end A094015

/-! ## A094015.P17663266928725398054

`A137529(2*n)`
-/

namespace A094015.P17663266928725398054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137529 (2 * n)

end

end A094015.P17663266928725398054

namespace A094015

/-- `A137529(2*n)` -/
def P17663266928725398054.Spec : Prop :=
  ∀ n, P17663266928725398054.a n = A094015 n

end A094015

/-! ## A094015.P13075141007248114491

`A060546(3*n)`
-/

namespace A094015.P13075141007248114491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (3 * n)

end

end A094015.P13075141007248114491

namespace A094015

/-- `A060546(3*n)` -/
def P13075141007248114491.Spec : Prop :=
  ∀ n, P13075141007248114491.a n = A094015 n

end A094015

/-! ## A094015.P8381990354928764717

`record[abs(A104538(n))]`
-/

namespace A094015.P8381990354928764717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104538 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094015.P8381990354928764717

namespace A094015

/-- `record[abs(A104538(n))]` -/
def P8381990354928764717.Spec : Prop :=
  ∀ n, P8381990354928764717.a n = A094015 n

end A094015

/-! ## A094015.P9229789667092567695

`record[abs(A120580(n))]`
-/

namespace A094015.P9229789667092567695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120580 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094015.P9229789667092567695

namespace A094015

/-- `record[abs(A120580(n))]` -/
def P9229789667092567695.Spec : Prop :=
  ∀ n, P9229789667092567695.a n = A094015 n

end A094015

/-! ## A094015.P15904244538346663563

`∏[dr(A040094(n))]`
-/

namespace A094015.P15904244538346663563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040094 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094015.P15904244538346663563

namespace A094015

/-- `∏[dr(A040094(n))]` -/
def P15904244538346663563.Spec : Prop :=
  ∀ n, (P15904244538346663563.a n : ℤ) = A094015 n

end A094015

/-! ## A094015.P11852478178812317958

`∏[dr(A040769(n))]`
-/

namespace A094015.P11852478178812317958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040769 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094015.P11852478178812317958

namespace A094015

/-- `∏[dr(A040769(n))]` -/
def P11852478178812317958.Spec : Prop :=
  ∀ n, (P11852478178812317958.a n : ℤ) = A094015 n

end A094015

/-! ## A094015.P9847961379531148939

`∏[A164358(2*n)]`
-/

namespace A094015.P9847961379531148939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094015.P9847961379531148939

namespace A094015

/-- `∏[A164358(2*n)]` -/
def P9847961379531148939.Spec : Prop :=
  ∀ n, P9847961379531148939.a n = A094015 n

end A094015

/-!
# A094016: Complement of A092601.

The programs for A094016, there is no canonical definition to state claims against.
-/

/-! ## A094016.P7978458935848134079

`comp[A092601(n+1)-2]+2`
-/

namespace A094016.P7978458935848134079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092601 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A094016.P7978458935848134079

/-! ## A094016.P16626343786693479324

`lt[A247761(A336038(n+1)), n]`
-/

namespace A094016.P16626343786693479324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (A336038 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094016.P16626343786693479324

/-! ## A094016.P15342354796054655622

`lt[A097602(A336038(n+1)), A000788(n)]`
-/

namespace A094016.P15342354796054655622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097602 (A336038 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094016.P15342354796054655622

/-! ## A094016.P16705749670702486618

`lt[A151920(A336038(n+1)), A005574(n+1)]`
-/

namespace A094016.P16705749670702486618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (A336038 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094016.P16705749670702486618

/-! ## A094016.P717808458296891661

`lt[A097602(A336038(n+1)), A090614(n+1)]`
-/

namespace A094016.P717808458296891661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097602 (A336038 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094016.P717808458296891661

/-!
# A094018: Records in A092762.

The programs for A094018, there is no canonical definition to state claims against.
-/

/-! ## A094018.P6426410313664258720

`record[A092762(n+1)]`
-/

namespace A094018.P6426410313664258720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094018.P6426410313664258720

/-!
# A094019: An approximation to Prime(n) and pi(n).

The programs for A094019, there is no canonical definition to state claims against.
-/

/-! ## A094019.P8840595982913087956

`A033810(n*∑[A225852(n+1)+1]+1)`
-/

namespace A094019.P8840595982913087956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225852 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A094019.P8840595982913087956

/-! ## A094019.P9336195276554566527

`∑[A078570(xor(1, A078559(n+1)))]`
-/

namespace A094019.P9336195276554566527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078570 (Int.xor 1 (A078559 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094019.P9336195276554566527

/-! ## A094019.P14696674400880223587

`∑[A254123(A204674(n))]+1`
-/

namespace A094019.P14696674400880223587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (A204674 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094019.P14696674400880223587

/-! ## A094019.P15329329270612761768

`A081315(A001462(A096182(2*n+1)²))`
-/

namespace A094019.P15329329270612761768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (A001462 (A096182 (2 * n + 1) ^ 2).toNat).toNat

end

end A094019.P15329329270612761768

/-! ## A094019.P8182477831309868690

`ceil(log(A098342(n+2)))`
-/

namespace A094019.P8182477831309868690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A098342 (n + 2) : ℝ)⌉

end

end A094019.P8182477831309868690

/-!
# A094020: Least k <= n such that n*bigomega(k) = k*bigomega(n), where bigomega(n) = the number of prime divisors of n (counted with multiplicity) A001222.

The programs for A094020, there is no canonical definition to state claims against.
-/

/-! ## A094020.P7237648114075977871

`gcd(n+1, ∑[n]*A065195(n+1))`
-/

namespace A094020.P7237648114075977871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A065195 (n + 1))

end

end A094020.P7237648114075977871

/-! ## A094020.P11053651518387815386

`(n+1)/A014709(A005822(n))`
-/

namespace A094020.P11053651518387815386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014709 (A005822 n).toNat : ℚ)

end

end A094020.P11053651518387815386

/-! ## A094020.P7677149834128122172

`(n+1)/A281012(A318651(n+1))`
-/

namespace A094020.P7677149834128122172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A281012 (A318651 (n + 1)).toNat : ℚ)

end

end A094020.P7677149834128122172

/-! ## A094020.P17838411770131397081

`(n+1)/A361633(A306719(n+1))`
-/

namespace A094020.P17838411770131397081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A361633 (A306719 (n + 1)).toNat : ℚ)

end

end A094020.P17838411770131397081

/-! ## A094020.P3533491474845758054

`(n+1)/A270641(A105608(n+3))`
-/

namespace A094020.P3533491474845758054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A270641 (A105608 (n + 3)).toNat : ℚ)

end

end A094020.P3533491474845758054

/-!
# A094021: Triangle read by rows: T(n,k) is the number of noncrossing forests with n vertices and k components (1<=k<=n).

The programs for A094021, there is no canonical definition to state claims against.
-/

/-! ## A094021.P14788715465177345371

`A094040(A038722(n+1))`
-/

namespace A094021.P14788715465177345371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (A038722 (n + 1)).toNat

end

end A094021.P14788715465177345371

/-! ## A094021.P8583270849954424745

`A094040(A061579(n)+1)`
-/

namespace A094021.P8583270849954424745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (A061579 n + 1).toNat

end

end A094021.P8583270849954424745

/-! ## A094021.P17061324636790090589

`A094040(∑[A198954(n)]-n)`
-/

namespace A094021.P17061324636790090589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A094021.P17061324636790090589

/-! ## A094021.P8836224037703550524

`A094040(A114327(n)+1+n)`
-/

namespace A094021.P8836224037703550524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (A114327 n + 1 + (n : ℤ)).toNat

end

end A094021.P8836224037703550524

/-! ## A094021.P5803225593937874624

`A094040(A093995(n+1)-n)`
-/

namespace A094021.P5803225593937874624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A094021.P5803225593937874624

/-! ## A094021.P177653819072619402

`A094040(A002024(n+1)²-n)`
-/

namespace A094021.P177653819072619402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A094021.P177653819072619402

/-! ## A094021.P6410190556768951518

`A094040(Δ[A128139(n)]+n+1)`
-/

namespace A094021.P6410190556768951518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094040 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A094021.P6410190556768951518

/-!
# A094022: Expansion of eta(q^2) * eta(q^30) / (eta(q^3) * eta(q^5)) in powers of q.

The programs for A094022, there is no canonical definition to state claims against.
-/

/-! ## A094022.P12458307132064870905

`(-1)^n*A145785(n+1)`
-/

namespace A094022.P12458307132064870905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145785 (n + 1)

end

end A094022.P12458307132064870905

/-! ## A094022.P1622399856458911903

`A145785(n+1)/A033999(n)`
-/

namespace A094022.P1622399856458911903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145785 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A094022.P1622399856458911903

/-! ## A094022.P8455028883559553227

`2*A123632(n+1)-A123630(n+1)`
-/

namespace A094022.P8455028883559553227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123632 (n + 1) - A123630 (n + 1)

end

end A094022.P8455028883559553227

/-! ## A094022.P5509828755739859786

`A123632(n+1)+A123632(n+1)-A094023(n+1)`
-/

namespace A094022.P5509828755739859786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123632 (n + 1) + (A123632 (n + 1) - A094023 (n + 1))

end

end A094022.P5509828755739859786

/-! ## A094022.P13953009411146315912

`A131794(2*(n+1))`
-/

namespace A094022.P13953009411146315912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131794 (2 * (n + 1))

end

end A094022.P13953009411146315912

/-! ## A094022.P91373313895726932

`(1-4/2)*A145726(2*(n+1))`
-/

namespace A094022.P91373313895726932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) * (A145726 (2 * (n + 1)) : ℚ)

end

end A094022.P91373313895726932

/-! ## A094022.P6150544289075208110

`A000007(n+1)-A145726(2*n+2)`
-/

namespace A094022.P6150544289075208110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145726 (2 * n + 2)

end

end A094022.P6150544289075208110

/-! ## A094022.P11966915434729366028

`A143752(2*(n+1))-2*A257632(n+1)`
-/

namespace A094022.P11966915434729366028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * (n + 1)) - 2 * A257632 (n + 1)

end

end A094022.P11966915434729366028

/-! ## A094022.P6420562245262523619

`A143752(2*(n+1))+2*A132967(2*(n+1))`
-/

namespace A094022.P6420562245262523619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * (n + 1)) + 2 * A132967 (2 * (n + 1))

end

end A094022.P6420562245262523619

/-!
# A094023: Expansion of eta(q^6) * eta(q^10) / (eta(q) * eta(q^15)) in powers of q.

The programs for A094023, there is no canonical definition to state claims against.
-/

/-! ## A094023.P17616105090647519077

`abs(A145728(n))`
-/

namespace A094023.P17616105090647519077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145728 n|

end

end A094023.P17616105090647519077

/-! ## A094023.P13445466296188894542

`ceil(A103259(n)/2)`
-/

namespace A094023.P13445466296188894542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103259 n : ℚ) / 2⌉

end

end A094023.P13445466296188894542

/-! ## A094023.P17720849873141347888

`A123630(A028310(n))`
-/

namespace A094023.P17720849873141347888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (A028310 n).toNat

end

end A094023.P17720849873141347888

/-! ## A094023.P15119545843919382181

`A123630(A000007(n)+n)`
-/

namespace A094023.P15119545843919382181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (A000007 n + (n : ℤ)).toNat

end

end A094023.P15119545843919382181

/-! ## A094023.P2543000253397498104

`A033999(n)*A145728(n)`
-/

namespace A094023.P2543000253397498104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145728 n

end

end A094023.P2543000253397498104

/-! ## A094023.P8421982461444635223

`gcd(A000038(n), A145728(n))`
-/

namespace A094023.P8421982461444635223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145728 n)

end

end A094023.P8421982461444635223

/-! ## A094023.P15008610689728517878

`lcm(A020985(n), A145728(n))`
-/

namespace A094023.P15008610689728517878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145728 n)

end

end A094023.P15008610689728517878

/-! ## A094023.P4412401795230246108

`A123630(n+1)/A145786(n+1)*A145728(n)`
-/

namespace A094023.P4412401795230246108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123630 (n + 1) : ℚ) / (A145786 (n + 1) : ℚ) * (A145728 n : ℚ)

end

end A094023.P4412401795230246108

/-! ## A094023.P13629357630251649579

`A145933(2*n)`
-/

namespace A094023.P13629357630251649579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (2 * n)

end

end A094023.P13629357630251649579

/-! ## A094023.P11540570120151868944

`A143752(A028310(2*n))`
-/

namespace A094023.P11540570120151868944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (A028310 (2 * n)).toNat

end

end A094023.P11540570120151868944

/-! ## A094023.P18295273111053281080

`A143752(A028310(n)+n)`
-/

namespace A094023.P18295273111053281080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (A028310 n + (n : ℤ)).toNat

end

end A094023.P18295273111053281080

/-!
# A094024: Alternating 1 with one less than the powers of 2.

The programs for A094024, the canonical program `A094024.P11019212625529605167` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094024 has offset 0).

The definition of A094024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094024.P11019212625529605167

`(1-(-1)^n)*2^floor(n/2)+(-1)^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094024

/-- `(1-(-1)^n)*2^floor(n/2)+(-1)^n` -/
def P11019212625529605167.Spec : Prop :=
  ∀ n, P11019212625529605167.a n = (A094024 n : ℚ)

end A094024

/-! ## A094024.P10180462950209618393

`ogf((1+2x)/(1+x-2x^2-2x^3))`
-/

namespace A094024.P10180462950209618393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1, -2, -2] n

end

end A094024.P10180462950209618393

namespace A094024

/-- `ogf((1+2x)/(1+x-2x^2-2x^3))` -/
def P10180462950209618393.Spec : Prop :=
  ∀ n, P10180462950209618393.a n = A094024 n

end A094024

/-! ## A094024.P14959835896801745412

`abs(∑[-∏[gcd(2, n)-3]])`
-/

namespace A094024.P14959835896801745412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A094024.P14959835896801745412

namespace A094024

/-- `abs(∑[-∏[gcd(2, n)-3]])` -/
def P14959835896801745412.Spec : Prop :=
  ∀ n, P14959835896801745412.a n = A094024 n

end A094024

/-! ## A094024.P5862890668746791024

`floor(a(n-2)+(a(n-2)+1)/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A094024.P5862890668746791024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (a (n - 2) + 1 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A094024.P5862890668746791024

namespace A094024

/-- `floor(a(n-2)+(a(n-2)+1)/a(n-1))` -/
def P5862890668746791024.Spec : Prop :=
  ∀ n, P5862890668746791024.a n = A094024 n

end A094024

/-! ## A094024.P127080410614998

`abs(∑[A152166(n)])`
-/

namespace A094024.P127080410614998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A094024.P127080410614998

namespace A094024

/-- `abs(∑[A152166(n)])` -/
def P127080410614998.Spec : Prop :=
  ∀ n, P127080410614998.a n = A094024 n

end A094024

/-! ## A094024.P6362773086977641363

`A052551(n*and(1, n))`
-/

namespace A094024.P6362773086977641363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n * Nat.land 1 n)

end

end A094024.P6362773086977641363

namespace A094024

/-- `A052551(n*and(1, n))` -/
def P6362773086977641363.Spec : Prop :=
  ∀ n, P6362773086977641363.a n = A094024 n

end A094024

/-! ## A094024.P9158082953512321144

`abs(1-A077957(n+1))`
-/

namespace A094024.P9158082953512321144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077957 (n + 1)|

end

end A094024.P9158082953512321144

namespace A094024

/-- `abs(1-A077957(n+1))` -/
def P9158082953512321144.Spec : Prop :=
  ∀ n, P9158082953512321144.a n = A094024 n

end A094024

/-! ## A094024.P13090371498066616006

`abs(2-A052552(n+1))`
-/

namespace A094024.P13090371498066616006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A052552 (n + 1)|

end

end A094024.P13090371498066616006

namespace A094024

/-- `abs(2-A052552(n+1))` -/
def P13090371498066616006.Spec : Prop :=
  ∀ n, P13090371498066616006.a n = A094024 n

end A094024

/-! ## A094024.P8273132531535817380

`abs(1-A131575(n+2))`
-/

namespace A094024.P8273132531535817380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A131575 (n + 2)|

end

end A094024.P8273132531535817380

namespace A094024

/-- `abs(1-A131575(n+2))` -/
def P8273132531535817380.Spec : Prop :=
  ∀ n, P8273132531535817380.a n = A094024 n

end A094024

/-! ## A094024.P11330293858846202592

`abs(1-2*A131575(n))`
-/

namespace A094024.P11330293858846202592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A131575 n|

end

end A094024.P11330293858846202592

namespace A094024

/-- `abs(1-2*A131575(n))` -/
def P11330293858846202592.Spec : Prop :=
  ∀ n, P11330293858846202592.a n = A094024 n

end A094024

/-! ## A094024.P7541317784426608561

`abs(1-abs(Δ[A077953(n)]))`
-/

namespace A094024.P7541317784426608561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |f1 (n + 1) - f1 n|)|

end

end A094024.P7541317784426608561

namespace A094024

/-- `abs(1-abs(Δ[A077953(n)]))` -/
def P7541317784426608561.Spec : Prop :=
  ∀ n, P7541317784426608561.a n = A094024 n

end A094024

/-! ## A094024.P9400456911307331794

`A052551(A093178(n))`
-/

namespace A094024.P9400456911307331794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A093178 n).toNat

end

end A094024.P9400456911307331794

namespace A094024

/-- `A052551(A093178(n))` -/
def P9400456911307331794.Spec : Prop :=
  ∀ n, P9400456911307331794.a n = A094024 n

end A094024

/-! ## A094024.P17083341578817598480

`A000225(A152271(n))`
-/

namespace A094024.P17083341578817598480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A152271 n).toNat

end

end A094024.P17083341578817598480

namespace A094024

/-- `A000225(A152271(n))` -/
def P17083341578817598480.Spec : Prop :=
  ∀ n, P17083341578817598480.a n = A094024 n

end A094024

/-! ## A094024.P3918084007243069062

`A052551(A124625(n))`
-/

namespace A094024.P3918084007243069062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A124625 n).toNat

end

end A094024.P3918084007243069062

namespace A094024

/-- `A052551(A124625(n))` -/
def P3918084007243069062.Spec : Prop :=
  ∀ n, P3918084007243069062.a n = A094024 n

end A094024

/-! ## A094024.P3996429649511048664

`A323173(A130008(n))`
-/

namespace A094024.P3996429649511048664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323173 (A130008 n).toNat

end

end A094024.P3996429649511048664

namespace A094024

/-- `A323173(A130008(n))` -/
def P3996429649511048664.Spec : Prop :=
  ∀ n, P3996429649511048664.a n = A094024 n

end A094024

/-! ## A094024.P8264196181239742986

`A052551(n*A000035(n))`
-/

namespace A094024.P8264196181239742986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 ((n : ℤ) * A000035 n).toNat

end

end A094024.P8264196181239742986

namespace A094024

/-- `A052551(n*A000035(n))` -/
def P8264196181239742986.Spec : Prop :=
  ∀ n, P8264196181239742986.a n = A094024 n

end A094024

/-! ## A094024.P9726601485118364819

`gcd(A056594(n), A087100(n))`
-/

namespace A094024.P9726601485118364819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A087100 n)

end

end A094024.P9726601485118364819

namespace A094024

/-- `gcd(A056594(n), A087100(n))` -/
def P9726601485118364819.Spec : Prop :=
  ∀ n, (P9726601485118364819.a n : ℤ) = A094024 n

end A094024

/-! ## A094024.P1774814121343317335

`A052551(and(n, A033999(n)))`
-/

namespace A094024.P1774814121343317335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (Int.land (n : ℤ) (A033999 n)).toNat

end

end A094024.P1774814121343317335

namespace A094024

/-- `A052551(and(n, A033999(n)))` -/
def P1774814121343317335.Spec : Prop :=
  ∀ n, P1774814121343317335.a n = A094024 n

end A094024

/-! ## A094024.P17722200548044895452

`A126646(A057979(n+2)-1)`
-/

namespace A094024.P17722200548044895452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A057979 (n + 2) - 1).toNat

end

end A094024.P17722200548044895452

namespace A094024

/-- `A126646(A057979(n+2)-1)` -/
def P17722200548044895452.Spec : Prop :=
  ∀ n, P17722200548044895452.a n = A094024 n

end A094024

/-! ## A094024.P15357144601266033595

`A000225(A063914(n+1)-n)`
-/

namespace A094024.P15357144601266033595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A063914 (n + 1) - (n : ℤ)).toNat

end

end A094024.P15357144601266033595

namespace A094024

/-- `A000225(A063914(n+1)-n)` -/
def P15357144601266033595.Spec : Prop :=
  ∀ n, P15357144601266033595.a n = A094024 n

end A094024

/-!
# A094025: Expansion of (1+3x)/((1-x^2)(1-3x^2)).

The programs for A094025, the canonical program `A094025.P4926854721233051331` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094025 has offset 0).

The definition of A094025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-4x^2+3x^4))` (program `A094025.P4926854721233051331`, by `A094025.P4926854721233051331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094025.P4926854721233051331

`ogf((1+3x)/(1-4x^2+3x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094025

/-- `ogf((1+3x)/(1-4x^2+3x^4))` -/
def P4926854721233051331.Spec : Prop :=
  ∀ n, P4926854721233051331.a n = A094025 n

theorem P4926854721233051331.correct : P4926854721233051331.Spec := by
  intro n
  simp only [A094025]

end A094025

/-! ## A094025.P1832247547136000823

`4*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=12`
-/

namespace A094025.P1832247547136000823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 12] fun n a =>
  4 * a (n - 2) - 3 * a (n - 4)

end

end A094025.P1832247547136000823

namespace A094025

/-- `4*a(n-2)-3*a(n-4)` -/
def P1832247547136000823.Spec : Prop :=
  ∀ n, P1832247547136000823.a n = A094025 n

end A094025

/-! ## A094025.P4182045331693794085

`lcm(3, a(n-1))+log2(gcd(2, n))` with `a(0)=1`
-/

namespace A094025.P4182045331693794085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A094025.P4182045331693794085

namespace A094025

/-- `lcm(3, a(n-1))+log2(gcd(2, n))` -/
def P4182045331693794085.Spec : Prop :=
  ∀ n, P4182045331693794085.a n = (A094025 n : ℝ)

end A094025

/-! ## A094025.P8452498683471941988

`a(n%2)+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P8452498683471941988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n % 2) + 3 * a (n - 2)

end

end A094025.P8452498683471941988

namespace A094025

/-- `a(n%2)+3*a(n-2)` -/
def P8452498683471941988.Spec : Prop :=
  ∀ n, (P8452498683471941988.a n : ℤ) = A094025 n

end A094025

/-! ## A094025.P4363491833501680648

`a(and(1, n))+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P4363491833501680648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (Nat.land 1 n) + 3 * a (n - 2)

end

end A094025.P4363491833501680648

namespace A094025

/-- `a(and(1, n))+3*a(n-2)` -/
def P4363491833501680648.Spec : Prop :=
  ∀ n, (P4363491833501680648.a n : ℤ) = A094025 n

end A094025

/-! ## A094025.P12106480136422970081

`∏[4-a(n-1)]+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P12106480136422970081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A094025.P12106480136422970081

namespace A094025

/-- `∏[4-a(n-1)]+a(n-2)` -/
def P12106480136422970081.Spec : Prop :=
  ∀ n, P12106480136422970081.a n = A094025 n

end A094025

/-! ## A094025.P4428686359333688526

`∑[∏[3/a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A094025.P4428686359333688526
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  3 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ∏ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094025.P4428686359333688526

namespace A094025

/-- `∑[∏[3/a(n-1)]-a(n-1)]` -/
def P4428686359333688526.Spec : Prop :=
  ∀ n, P4428686359333688526.a n = (A094025 n : ℚ)

end A094025

/-! ## A094025.P8069764033670688514

`a(n-2)+3^floor((n+1)/2)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P8069764033670688514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A094025.P8069764033670688514

namespace A094025

/-- `a(n-2)+3^floor((n+1)/2)` -/
def P8069764033670688514.Spec : Prop :=
  ∀ n, P8069764033670688514.a n = (A094025 n : ℚ)

end A094025

/-! ## A094025.P5657520964297807927

`gcd(3, a(n-2))+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P5657520964297807927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.gcd 3 (a (n - 2)) + 3 * a (n - 2)

end

end A094025.P5657520964297807927

namespace A094025

/-- `gcd(3, a(n-2))+3*a(n-2)` -/
def P5657520964297807927.Spec : Prop :=
  ∀ n, (P5657520964297807927.a n : ℤ) = A094025 n

end A094025

/-! ## A094025.P7575570469191553876

`A056449(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P7575570469191553876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A056449 n + a (n - 2)

end

end A094025.P7575570469191553876

namespace A094025

/-- `A056449(n)+a(n-2)` -/
def P7575570469191553876.Spec : Prop :=
  ∀ n, P7575570469191553876.a n = A094025 n

end A094025

/-! ## A094025.P13050115300130438192

`char[2*n]+∑[A254006(n+1)]`
-/

namespace A094025.P13050115300130438192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A094025.P13050115300130438192

namespace A094025

/-- `char[2*n]+∑[A254006(n+1)]` -/
def P13050115300130438192.Spec : Prop :=
  ∀ n, P13050115300130438192.a n = A094025 n

end A094025

/-! ## A094025.P8416359548107668058

`A010684(n)*A052993(n)`
-/

namespace A094025.P8416359548107668058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A052993 n

end

end A094025.P8416359548107668058

namespace A094025

/-- `A010684(n)*A052993(n)` -/
def P8416359548107668058.Spec : Prop :=
  ∀ n, P8416359548107668058.a n = A094025 n

end A094025

/-! ## A094025.P13444973378411984392

`∑[A254006(n+1)+A057077(2*n)]`
-/

namespace A094025.P13444973378411984392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1) + A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094025.P13444973378411984392

namespace A094025

/-- `∑[A254006(n+1)+A057077(2*n)]` -/
def P13444973378411984392.Spec : Prop :=
  ∀ n, P13444973378411984392.a n = A094025 n

end A094025

/-! ## A094025.P12159693971978739025

`∪[A003462(n+1), A024023(n+1)+A003462(n+1)]`
-/

namespace A094025.P12159693971978739025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1) + A003462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094025.P12159693971978739025

namespace A094025

/-- `∪[A003462(n+1), A024023(n+1)+A003462(n+1)]` -/
def P12159693971978739025.Spec : Prop :=
  ∀ n, (P12159693971978739025.a n : ℤ) = A094025 n

end A094025

/-! ## A094025.P15815068450938505314

`∪[A003462(n+1), A103453(n+1)+A003462(n+1)]`
-/

namespace A094025.P15815068450938505314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 (n + 1) + A003462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094025.P15815068450938505314

namespace A094025

/-- `∪[A003462(n+1), A103453(n+1)+A003462(n+1)]` -/
def P15815068450938505314.Spec : Prop :=
  ∀ n, (P15815068450938505314.a n : ℤ) = A094025 n

end A094025

/-! ## A094025.P15008342199809536332

`∑[3*a(n-2)]-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A094025.P15008342199809536332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A094025.P15008342199809536332

namespace A094025

/-- `∑[3*a(n-2)]-a(n-1)` -/
def P15008342199809536332.Spec : Prop :=
  ∀ n, P15008342199809536332.a n = A094025 n

end A094025

/-! ## A094025.P13149444007699754832

`Δ[A048328(n+2)]-1`
-/

namespace A094025.P13149444007699754832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A094025.P13149444007699754832

namespace A094025

/-- `Δ[A048328(n+2)]-1` -/
def P13149444007699754832.Spec : Prop :=
  ∀ n, P13149444007699754832.a n = A094025 n

end A094025

/-! ## A094025.P5683435060116056636

`A164123(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A094025.P5683435060116056636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164123 (n + 1) - a (n - 1)

end

end A094025.P5683435060116056636

namespace A094025

/-- `A164123(n+1)-a(n-1)` -/
def P5683435060116056636.Spec : Prop :=
  ∀ n, P5683435060116056636.a n = A094025 n

end A094025

/-! ## A094025.P4566821089881370927

`A048328(n+1)/A068911(n+1)*A117855(n+2)`
-/

namespace A094025.P4566821089881370927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048328 (n + 1) : ℚ) / (A068911 (n + 1) : ℚ) * (A117855 (n + 2) : ℚ)

end

end A094025.P4566821089881370927

namespace A094025

/-- `A048328(n+1)/A068911(n+1)*A117855(n+2)` -/
def P4566821089881370927.Spec : Prop :=
  ∀ n, P4566821089881370927.a n = (A094025 n : ℚ)

end A094025

/-! ## A094025.P1052990104489672464

`A309758(A117142(n+1))`
-/

namespace A094025.P1052990104489672464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309758 (A117142 (n + 1)).toNat

end

end A094025.P1052990104489672464

namespace A094025

/-- `A309758(A117142(n+1))` -/
def P1052990104489672464.Spec : Prop :=
  ∀ n, P1052990104489672464.a n = A094025 n

end A094025

/-!
# A094026: Expansion of x(1+10x)/((1-x^2)(1-10x^2)).

The programs for A094026, the canonical program `A094026.P7000163558214623276` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094026 has offset 0).

The definition of A094026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+10x^2)/(1-11x^2+10x^4))` (program `A094026.P7000163558214623276`, by `A094026.P7000163558214623276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094026.P7000163558214623276

`ogf((x+10x^2)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094026

/-- `ogf((x+10x^2)/(1-11x^2+10x^4))` -/
def P7000163558214623276.Spec : Prop :=
  ∀ n, P7000163558214623276.a n = A094026 n

theorem P7000163558214623276.correct : P7000163558214623276.Spec := by
  intro n
  simp only [A094026]

end A094026

/-! ## A094026.P14001915206747613465

`lcm(10, a(n-1))+1-char[2*n]` with `a(0)=0`
-/

namespace A094026.P14001915206747613465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 10 (a (n - 1)) + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094026.P14001915206747613465

namespace A094026

/-- `lcm(10, a(n-1))+1-char[2*n]` -/
def P14001915206747613465.Spec : Prop :=
  ∀ n, P14001915206747613465.a n = A094026 n

end A094026

/-! ## A094026.P17161043306626813978

`∑[10*a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A094026.P17161043306626813978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A094026.P17161043306626813978

namespace A094026

/-- `∑[10*a(n-2)]-a(n-1)` -/
def P17161043306626813978.Spec : Prop :=
  ∀ n, P17161043306626813978.a n = A094026 n

end A094026

/-! ## A094026.P4207994787846508448

`floor(A322925(n+1)/2)`
-/

namespace A094026.P4207994787846508448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322925 (n + 1) : ℚ) / 2⌋

end

end A094026.P4207994787846508448

namespace A094026

/-- `floor(A322925(n+1)/2)` -/
def P4207994787846508448.Spec : Prop :=
  ∀ n, P4207994787846508448.a n = A094026 n

end A094026

/-! ## A094026.P5719669631262003143

`A289404(n)-char[2*n]`
-/

namespace A094026.P5719669631262003143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094026.P5719669631262003143

namespace A094026

/-- `A289404(n)-char[2*n]` -/
def P5719669631262003143.Spec : Prop :=
  ∀ n, P5719669631262003143.a n = A094026 n

end A094026

/-! ## A094026.P5313053281337421616

`A094623(n)-a(n-1)` with `a(0)=0`
-/

namespace A094026.P5313053281337421616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094623 n - a (n - 1)

end

end A094026.P5313053281337421616

namespace A094026

/-- `A094623(n)-a(n-1)` -/
def P5313053281337421616.Spec : Prop :=
  ∀ n, P5313053281337421616.a n = A094026 n

end A094026

/-! ## A094026.P5600871347920383011

`A002275(∑[char[2*n]])-char[2*n]`
-/

namespace A094026.P5600871347920383011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094026.P5600871347920383011

namespace A094026

/-- `A002275(∑[char[2*n]])-char[2*n]` -/
def P5600871347920383011.Spec : Prop :=
  ∀ n, P5600871347920383011.a n = A094026 n

end A094026

/-! ## A094026.P5500607860665303346

`xor(A059841(n), A289404(n))`
-/

namespace A094026.P5500607860665303346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A289404 n)

end

end A094026.P5500607860665303346

namespace A094026

/-- `xor(A059841(n), A289404(n))` -/
def P5500607860665303346.Spec : Prop :=
  ∀ n, P5500607860665303346.a n = A094026 n

end A094026

/-! ## A094026.P3980962035147940378

`xor(A266070(n), A285612(n))`
-/

namespace A094026.P3980962035147940378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266070 n) (A285612 n)

end

end A094026.P3980962035147940378

namespace A094026

/-- `xor(A266070(n), A285612(n))` -/
def P3980962035147940378.Spec : Prop :=
  ∀ n, P3980962035147940378.a n = A094026 n

end A094026

/-! ## A094026.P25234317126890897

`A328332(n)%A173712(n+1)`
-/

namespace A094026.P25234317126890897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328332 n) (A173712 (n + 1))

end

end A094026.P25234317126890897

namespace A094026

/-- `A328332(n)%A173712(n+1)` -/
def P25234317126890897.Spec : Prop :=
  ∀ n, P25234317126890897.a n = A094026 n

end A094026

/-! ## A094026.P18160403736073150226

`A027828(A056020(n+1)+1)-1`
-/

namespace A094026.P18160403736073150226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 (A056020 (n + 1) + 1).toNat - 1

end

end A094026.P18160403736073150226

namespace A094026

/-- `A027828(A056020(n+1)+1)-1` -/
def P18160403736073150226.Spec : Prop :=
  ∀ n, P18160403736073150226.a n = A094026 n

end A094026

/-! ## A094026.P5123095445228952977

`A027828(A125758(n+1)+2)-1`
-/

namespace A094026.P5123095445228952977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 (A125758 (n + 1) + 2).toNat - 1

end

end A094026.P5123095445228952977

namespace A094026

/-- `A027828(A125758(n+1)+2)-1` -/
def P5123095445228952977.Spec : Prop :=
  ∀ n, P5123095445228952977.a n = A094026 n

end A094026

/-! ## A094026.P13082875403862494158

`A305753(n+3)-abs(A280193(n+2))`
-/

namespace A094026.P13082875403862494158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305753 (n + 3) - |A280193 (n + 2)|

end

end A094026.P13082875403862494158

namespace A094026

/-- `A305753(n+3)-abs(A280193(n+2))` -/
def P13082875403862494158.Spec : Prop :=
  ∀ n, P13082875403862494158.a n = A094026 n

end A094026

/-! ## A094026.P15443327988670029390

`A000042(A008619(n))-A059841(n)`
-/

namespace A094026.P15443327988670029390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A008619 n).toNat - A059841 n

end

end A094026.P15443327988670029390

namespace A094026

/-- `A000042(A008619(n))-A059841(n)` -/
def P15443327988670029390.Spec : Prop :=
  ∀ n, P15443327988670029390.a n = A094026 n

end A094026

/-! ## A094026.P7800364648344334285

`A000042(A008619(n))-Δ[A080513(n)]`
-/

namespace A094026.P7800364648344334285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A008619 n).toNat - (f1 (n + 1) - f1 n)

end

end A094026.P7800364648344334285

namespace A094026

/-- `A000042(A008619(n))-Δ[A080513(n)]` -/
def P7800364648344334285.Spec : Prop :=
  ∀ n, P7800364648344334285.a n = A094026 n

end A094026

/-! ## A094026.P6298070905342684446

`A000034(n)+A000042(A008619(n))-2`
-/

namespace A094026.P6298070905342684446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A000042 (A008619 n).toNat - 2)

end

end A094026.P6298070905342684446

namespace A094026

/-- `A000034(n)+A000042(A008619(n))-2` -/
def P6298070905342684446.Spec : Prop :=
  ∀ n, P6298070905342684446.a n = A094026 n

end A094026

/-! ## A094026.P6794304207879374081

`A000042(∑[A000035(n+1)])-A000035(n+1)`
-/

namespace A094026.P6794304207879374081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 (n + 1)

end

end A094026.P6794304207879374081

namespace A094026

/-- `A000042(∑[A000035(n+1)])-A000035(n+1)` -/
def P6794304207879374081.Spec : Prop :=
  ∀ n, P6794304207879374081.a n = A094026 n

end A094026

/-! ## A094026.P5589860536759289341

`∪[∑[10^n]-1, ∑[10^n]]`
-/

namespace A094026.P5589860536759289341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A094026.P5589860536759289341

namespace A094026

/-- `∪[∑[10^n]-1, ∑[10^n]]` -/
def P5589860536759289341.Spec : Prop :=
  ∀ n, (P5589860536759289341.a n : ℤ) = A094026 n

end A094026

/-! ## A094026.P15071368405674000834

`A282416(A059841(n)+n)-A059841(n)`
-/

namespace A094026.P15071368405674000834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 (A059841 n + (n : ℤ)).toNat - A059841 n

end

end A094026.P15071368405674000834

namespace A094026

/-- `A282416(A059841(n)+n)-A059841(n)` -/
def P15071368405674000834.Spec : Prop :=
  ∀ n, P15071368405674000834.a n = A094026 n

end A094026

/-!
# A094027: Expansion of x(1+100x)/((1-x^2)(1-100x^2)).

The programs for A094027, the canonical program `A094027.P8621972794637098301` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094027 has offset 0).

The definition of A094027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094027.P8621972794637098301

`2^n*5^(n+1)*((-1)^n/11+1/9)-(-1)^n/2-101/198`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094027

/-- `2^n*5^(n+1)*((-1)^n/11+1/9)-(-1)^n/2-101/198` -/
def P8621972794637098301.Spec : Prop :=
  ∀ n, P8621972794637098301.a n = (A094027 n : ℚ)

end A094027

/-! ## A094027.P360775518101997132

`∑[gcd(10^n-1, n%2)]`
-/

namespace A094027.P360775518101997132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((10 ^ n : ℤ) - 1) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094027.P360775518101997132

namespace A094027

/-- `∑[gcd(10^n-1, n%2)]` -/
def P360775518101997132.Spec : Prop :=
  ∀ n, (P360775518101997132.a n : ℤ) = A094027 n

end A094027

/-! ## A094027.P11187644533549140213

`∑[(10^n-1)^log2(gcd(2, n))]`
-/

namespace A094027.P11187644533549140213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094027.P11187644533549140213

namespace A094027

/-- `∑[(10^n-1)^log2(gcd(2, n))]` -/
def P11187644533549140213.Spec : Prop :=
  ∀ n, P11187644533549140213.a n = (A094027 n : ℝ)

end A094027

/-! ## A094027.P1166922745724056396

`∑[(10^n-1)^and(1, n+1)]`
-/

namespace A094027.P1166922745724056396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094027.P1166922745724056396

namespace A094027

/-- `∑[(10^n-1)^and(1, n+1)]` -/
def P1166922745724056396.Spec : Prop :=
  ∀ n, P1166922745724056396.a n = A094027 n

end A094027

/-! ## A094027.P9013848612818703159

`∑[gcd(A002283(n), A010673(n))]`
-/

namespace A094027.P9013848612818703159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002283 n) (A010673 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094027.P9013848612818703159

namespace A094027

/-- `∑[gcd(A002283(n), A010673(n))]` -/
def P9013848612818703159.Spec : Prop :=
  ∀ n, (P9013848612818703159.a n : ℤ) = A094027 n

end A094027

/-! ## A094027.P10038386117778675711

`∑[and(A002283(n), A062157(n))]`
-/

namespace A094027.P10038386117778675711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002283 n) (A062157 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094027.P10038386117778675711

namespace A094027

/-- `∑[and(A002283(n), A062157(n))]` -/
def P10038386117778675711.Spec : Prop :=
  ∀ n, P10038386117778675711.a n = A094027 n

end A094027

/-!
# A094028: Expansion of 1/((1-x)*(1-100*x)).

The programs for A094028, the canonical program `A094028.P4039679319196803451` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094028 has offset 0).

The definition of A094028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094028.P8008635117770224489

`100*a(n-1)+1` with `a(0)=1`
-/

namespace A094028.P8008635117770224489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  100 * a (n - 1) + 1

end

end A094028.P8008635117770224489

namespace A094028

/-- `100*a(n-1)+1` -/
def P8008635117770224489.Spec : Prop :=
  ∀ n, (P8008635117770224489.a n : ℤ) = A094028 n

end A094028

/-! ## A094028.P3044588599439674322

`(100^(n+1)-1)/99`
-/

namespace A094028.P3044588599439674322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((100 ^ (n + 1) : ℤ) - 1 : ℚ) / 99

end

end A094028.P3044588599439674322

namespace A094028

/-- `(100^(n+1)-1)/99` -/
def P3044588599439674322.Spec : Prop :=
  ∀ n, P3044588599439674322.a n = (A094028 n : ℚ)

end A094028

/-! ## A094028.P4039679319196803451

`A094027(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094028

/-- `A094027(2*n+1)` -/
def P4039679319196803451.Spec : Prop :=
  ∀ n, P4039679319196803451.a n = A094028 n

theorem P4039679319196803451.correct : P4039679319196803451.Spec := by
  intro n
  simp only [A094028]

end A094028

/-! ## A094028.P15558282760891073599

`abs(∑[record[(-10)^n]])`
-/

namespace A094028.P15558282760891073599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-10) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A094028.P15558282760891073599

namespace A094028

/-- `abs(∑[record[(-10)^n]])` -/
def P15558282760891073599.Spec : Prop :=
  ∀ n, P15558282760891073599.a n = A094028 n

end A094028

/-! ## A094028.P7585067451010781520

`or(1, ∑[10^(2*n)])`
-/

namespace A094028.P7585067451010781520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094028.P7585067451010781520

namespace A094028

/-- `or(1, ∑[10^(2*n)])` -/
def P7585067451010781520.Spec : Prop :=
  ∀ n, (P7585067451010781520.a n : ℤ) = A094028 n

end A094028

/-! ## A094028.P16921261779008281001

`and(-3, ∑[10^(2*n)])`
-/

namespace A094028.P16921261779008281001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A094028.P16921261779008281001

namespace A094028

/-- `and(-3, ∑[10^(2*n)])` -/
def P16921261779008281001.Spec : Prop :=
  ∀ n, P16921261779008281001.a n = A094028 n

end A094028

/-! ## A094028.P1112861126787897636

`∑[record[or(1, (-10)^n)]]-n`
-/

namespace A094028.P1112861126787897636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-10) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A094028.P1112861126787897636

namespace A094028

/-- `∑[record[or(1, (-10)^n)]]-n` -/
def P1112861126787897636.Spec : Prop :=
  ∀ n, P1112861126787897636.a n = A094028 n

end A094028

/-! ## A094028.P1911941094006027152

`a(n-1)+(10^n)²` with `a(0)=1`
-/

namespace A094028.P1911941094006027152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 ^ n) ^ 2

end

end A094028.P1911941094006027152

namespace A094028

/-- `a(n-1)+(10^n)²` -/
def P1911941094006027152.Spec : Prop :=
  ∀ n, (P1911941094006027152.a n : ℤ) = A094028 n

end A094028

/-! ## A094028.P5796470759502962005

`floor(∑[10*10*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A094028.P5796470759502962005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094028.P5796470759502962005

namespace A094028

/-- `floor(∑[10*10*a(n-1)])` -/
def P5796470759502962005.Spec : Prop :=
  ∀ n, (P5796470759502962005.a n : ℤ) = A094028 n

end A094028

/-! ## A094028.P16331777639037796085

`9-4*(2-25*a(n-1))` with `a(0)=1`
-/

namespace A094028.P16331777639037796085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - 4 * (2 - 25 * a (n - 1))

end

end A094028.P16331777639037796085

namespace A094028

/-- `9-4*(2-25*a(n-1))` -/
def P16331777639037796085.Spec : Prop :=
  ∀ n, P16331777639037796085.a n = A094028 n

end A094028

/-!
# A094029: Number of n-crossing links with alternating braids of 3 strands.

The programs for A094029, there is no canonical definition to state claims against.
-/

/-! ## A094029.P5537197601499952975

`A056357(n+4)-(A008619(n)+1)`
-/

namespace A094029.P5537197601499952975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 (n + 4) - (A008619 n + 1)

end

end A094029.P5537197601499952975

/-! ## A094029.P12479116901029275862

`A000011(n+4)-(A008619(n)+2)`
-/

namespace A094029.P12479116901029275862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - (A008619 n + 2)

end

end A094029.P12479116901029275862

/-! ## A094029.P14567659940398654337

`A000011(n+4)-(A004526(n)+3)`
-/

namespace A094029.P14567659940398654337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - (A004526 n + 3)

end

end A094029.P14567659940398654337

/-! ## A094029.P17191708660502223115

`A227910(n+4)-A263768(n+4)`
-/

namespace A094029.P17191708660502223115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227910 (n + 4) - A263768 (n + 4)

end

end A094029.P17191708660502223115

/-! ## A094029.P11098269171047290055

`A000011(n+4)-A263997(n+5)`
-/

namespace A094029.P11098269171047290055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - A263997 (n + 5)

end

end A094029.P11098269171047290055

/-!
# A094030: Number of n-crossing knots with alternating braids of 3 strands.

The programs for A094030, there is no canonical definition to state claims against.
-/

/-! ## A094030.P6378345894651970364

`A000035(n+1)*A094029(n+4)-A094032(n+4)`
-/

namespace A094030.P6378345894651970364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A094029 (n + 4) - A094032 (n + 4)

end

end A094030.P6378345894651970364

/-! ## A094030.P315904486342165518

`A094029(n+4)-(A094032(n+4)+A094031(n+4))`
-/

namespace A094030.P315904486342165518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094029 (n + 4) - (A094032 (n + 4) + A094031 (n + 4))

end

end A094030.P315904486342165518

/-! ## A094030.P13703373774313408986

`A056357(n+4)-(A008619(n)+1)-(A094032(n+4)+A094031(n+4))`
-/

namespace A094030.P13703373774313408986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 (n + 4) - (A008619 n + 1) - (A094032 (n + 4) + A094031 (n + 4))

end

end A094030.P13703373774313408986

/-! ## A094030.P1982324596711629912

`A000011(n+4)-(A008619(n)+2)-(A094032(n+4)+A094031(n+4))`
-/

namespace A094030.P1982324596711629912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - (A008619 n + 2) - (A094032 (n + 4) + A094031 (n + 4))

end

end A094030.P1982324596711629912

/-! ## A094030.P16251796310731881663

`A000011(n+4)-(A004526(n)+3)-(A094032(n+4)+A094031(n+4))`
-/

namespace A094030.P16251796310731881663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - (A004526 n + 3) - (A094032 (n + 4) + A094031 (n + 4))

end

end A094030.P16251796310731881663

/-!
# A094031: Number of n-crossing 2 component links with alternating braids of 3 strands.

The programs for A094031, there is no canonical definition to state claims against.
-/

/-! ## A094031.P12107375622973942382

`n%2*A094029(n+4)`
-/

namespace A094031.P12107375622973942382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A094029 (n + 4)

end

end A094031.P12107375622973942382

/-! ## A094031.P12885849825592322952

`and(1, n)*A000943(or(1, n))`
-/

namespace A094031.P12885849825592322952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000943 (Nat.lor 1 n)

end

end A094031.P12885849825592322952

/-! ## A094031.P11940703916354307075

`A000035(n)*A094029(n+4)`
-/

namespace A094031.P11940703916354307075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A094029 (n + 4)

end

end A094031.P11940703916354307075

/-! ## A094031.P1427018024865905638

`∑[A062157(n)]*A094029(n+4)`
-/

namespace A094031.P1427018024865905638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A094029 (n + 4)

end

end A094031.P1427018024865905638

/-! ## A094031.P2347263660976733897

`Δ[A004526(n)]*A094029(n+4)`
-/

namespace A094031.P2347263660976733897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A094029 (n + 4)

end

end A094031.P2347263660976733897

/-!
# A094032: Number of n-crossing 3 component links with alternating braids of 3 strands.

The programs for A094032, there is no canonical definition to state claims against.
-/

/-! ## A094032.P9664094570854117468

`A000035(n+1)*A094029(n+4)-A094030(n+4)`
-/

namespace A094032.P9664094570854117468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A094029 (n + 4) - A094030 (n + 4)

end

end A094032.P9664094570854117468

/-! ## A094032.P13590956907025505761

`A094029(n+4)-(A094031(n+4)+A094030(n+4))`
-/

namespace A094032.P13590956907025505761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094029 (n + 4) - (A094031 (n + 4) + A094030 (n + 4))

end

end A094032.P13590956907025505761

/-! ## A094032.P9331682918668776638

`A056357(n+4)-(A008619(n)+1)-(A094031(n+4)+A094030(n+4))`
-/

namespace A094032.P9331682918668776638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 (n + 4) - (A008619 n + 1) - (A094031 (n + 4) + A094030 (n + 4))

end

end A094032.P9331682918668776638

/-! ## A094032.P1248222252934979191

`A000011(n+4)-(A008619(n)+2)-(A094031(n+4)+A094030(n+4))`
-/

namespace A094032.P1248222252934979191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - (A008619 n + 2) - (A094031 (n + 4) + A094030 (n + 4))

end

end A094032.P1248222252934979191

/-! ## A094032.P1323323561329629610

`A000011(n+4)-(A004526(n)+3)-(A094031(n+4)+A094030(n+4))`
-/

namespace A094032.P1323323561329629610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 4) - (A004526 n + 3) - (A094031 (n + 4) + A094030 (n + 4))

end

end A094032.P1323323561329629610

/-!
# A094033: Number of connected 2-element antichains on a labeled n-set.

The programs for A094033, the canonical program `A094033.P8500141743841796110` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094033 has offset 0).

The definition of A094033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094033.P8956935070936522521

`3*A000392(n)`
-/

namespace A094033.P8956935070936522521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000392 n

end

end A094033.P8956935070936522521

namespace A094033

/-- `3*A000392(n)` -/
def P8956935070936522521.Spec : Prop :=
  ∀ n, P8956935070936522521.a n = A094033 n

end A094033

/-! ## A094033.P8500141743841796110

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094033

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P8500141743841796110.Spec : Prop :=
  ∀ n, P8500141743841796110.a n = A094033 n

theorem P8500141743841796110.correct : P8500141743841796110.Spec := by
  intro n
  simp only [A094033]

end A094033

/-! ## A094033.P14712714190018382612

`∑[ogf(3x^3/(1-5x+6x^2))]`
-/

namespace A094033.P14712714190018382612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 3] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094033.P14712714190018382612

namespace A094033

/-- `∑[ogf(3x^3/(1-5x+6x^2))]` -/
def P14712714190018382612.Spec : Prop :=
  ∀ n, P14712714190018382612.a n = A094033 n

end A094033

/-! ## A094033.P3043417585321833216

`3*(a(n-1)+2^(n-2)-1)` with `a(0)=0, a(1)=0`
-/

namespace A094033.P3043417585321833216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 * (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1)

end

end A094033.P3043417585321833216

namespace A094033

/-- `3*(a(n-1)+2^(n-2)-1)` -/
def P3043417585321833216.Spec : Prop :=
  ∀ n, P3043417585321833216.a n = (A094033 n : ℚ)

end A094033

/-! ## A094033.P11187777852193111361

`3*(ceil(∑[3^(n-2)])-ceil(2^(n-1)))`
-/

namespace A094033.P11187777852193111361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)

end

end A094033.P11187777852193111361

namespace A094033

/-- `3*(ceil(∑[3^(n-2)])-ceil(2^(n-1)))` -/
def P11187777852193111361.Spec : Prop :=
  ∀ n, P11187777852193111361.a n = A094033 n

end A094033

/-! ## A094033.P1984221949447419891

`A094734(n)-ceil(sin(n)²)`
-/

namespace A094033.P1984221949447419891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094734 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A094033.P1984221949447419891

namespace A094033

/-- `A094734(n)-ceil(sin(n)²)` -/
def P1984221949447419891.Spec : Prop :=
  ∀ n, P1984221949447419891.a n = A094033 n

end A094033

/-! ## A094033.P15374778470447904688

`∑{d}[2*n, 3*A056482(#)]`
-/

namespace A094033.P15374778470447904688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 * A056482 d

end

end A094033.P15374778470447904688

namespace A094033

/-- `∑{d}[2*n, 3*A056482(#)]` -/
def P15374778470447904688.Spec : Prop :=
  ∀ n, P15374778470447904688.a n = A094033 n

end A094033

/-! ## A094033.P5219238849571319770

`A094734(round(acot(n)+n))-1`
-/

namespace A094033.P5219238849571319770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094734 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A094033.P5219238849571319770

namespace A094033

/-- `A094734(round(acot(n)+n))-1` -/
def P5219238849571319770.Spec : Prop :=
  ∀ n, P5219238849571319770.a n = A094033 n

end A094033

/-! ## A094033.P3013225169323871355

`floor(A134063(n)-2^(n-1))`
-/

namespace A094033.P3013225169323871355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134063 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A094033.P3013225169323871355

namespace A094033

/-- `floor(A134063(n)-2^(n-1))` -/
def P3013225169323871355.Spec : Prop :=
  ∀ n, P3013225169323871355.a n = A094033 n

end A094033

/-! ## A094033.P10009480450970937065

`A094734(round(sqrt(n²+1)))-1`
-/

namespace A094033.P10009480450970937065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094734 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A094033.P10009480450970937065

namespace A094033

/-- `A094734(round(sqrt(n²+1)))-1` -/
def P10009480450970937065.Spec : Prop :=
  ∀ n, P10009480450970937065.a n = A094033 n

end A094033

/-! ## A094033.P5199302498119234081

`A007051(n)-A083329(n)`
-/

namespace A094033.P5199302498119234081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A083329 n

end

end A094033.P5199302498119234081

namespace A094033

/-- `A007051(n)-A083329(n)` -/
def P5199302498119234081.Spec : Prop :=
  ∀ n, P5199302498119234081.a n = A094033 n

end A094033

/-! ## A094033.P5535463027907728805

`A134063(n)-A011782(n)`
-/

namespace A094033.P5535463027907728805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n - A011782 n

end

end A094033.P5535463027907728805

namespace A094033

/-- `A134063(n)-A011782(n)` -/
def P5535463027907728805.Spec : Prop :=
  ∀ n, P5535463027907728805.a n = A094033 n

end A094033

/-! ## A094033.P16939462787325792181

`A115098(n)-A042950(n)`
-/

namespace A094033.P16939462787325792181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A042950 n

end

end A094033.P16939462787325792181

namespace A094033

/-- `A115098(n)-A042950(n)` -/
def P16939462787325792181.Spec : Prop :=
  ∀ n, P16939462787325792181.a n = A094033 n

end A094033

/-! ## A094033.P11892217620523743556

`A003462(n)-A296953(n)`
-/

namespace A094033.P11892217620523743556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A296953 n

end

end A094033.P11892217620523743556

namespace A094033

/-- `A003462(n)-A296953(n)` -/
def P11892217620523743556.Spec : Prop :=
  ∀ n, P11892217620523743556.a n = A094033 n

end A094033

/-! ## A094033.P8966160456171659241

`A115098(n)-Δ[A003945(n)]`
-/

namespace A094033.P8966160456171659241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - (f1 (n + 1) - f1 n)

end

end A094033.P8966160456171659241

namespace A094033

/-- `A115098(n)-Δ[A003945(n)]` -/
def P8966160456171659241.Spec : Prop :=
  ∀ n, P8966160456171659241.a n = A094033 n

end A094033

/-! ## A094033.P18325757021360062831

`A007051(n)+1-A042950(n)`
-/

namespace A094033.P18325757021360062831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (1 - A042950 n)

end

end A094033.P18325757021360062831

namespace A094033

/-- `A007051(n)+1-A042950(n)` -/
def P18325757021360062831.Spec : Prop :=
  ∀ n, P18325757021360062831.a n = A094033 n

end A094033

/-! ## A094033.P1854574939910394570

`A099754(n)-A054135(n+1)`
-/

namespace A094033.P1854574939910394570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A054135 (n + 1)

end

end A094033.P1854574939910394570

namespace A094033

/-- `A099754(n)-A054135(n+1)` -/
def P1854574939910394570.Spec : Prop :=
  ∀ n, P1854574939910394570.a n = A094033 n

end A094033

/-! ## A094033.P14133349556929167884

`A094374(n)-A131051(n+1)`
-/

namespace A094033.P14133349556929167884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - A131051 (n + 1)

end

end A094033.P14133349556929167884

namespace A094033

/-- `A094374(n)-A131051(n+1)` -/
def P14133349556929167884.Spec : Prop :=
  ∀ n, P14133349556929167884.a n = A094033 n

end A094033

/-! ## A094033.P6553124508617444526

`A007051(n)-A266550(n+2)`
-/

namespace A094033.P6553124508617444526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A266550 (n + 2)

end

end A094033.P6553124508617444526

namespace A094033

/-- `A007051(n)-A266550(n+2)` -/
def P6553124508617444526.Spec : Prop :=
  ∀ n, P6553124508617444526.a n = A094033 n

end A094033

/-! ## A094033.P5172618529118855407

`A094729(n)-A094734(n)`
-/

namespace A094033.P5172618529118855407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094729 n - A094734 n

end

end A094033.P5172618529118855407

namespace A094033

/-- `A094729(n)-A094734(n)` -/
def P5172618529118855407.Spec : Prop :=
  ∀ n, P5172618529118855407.a n = A094033 n

end A094033

/-!
# A094034: Number of connected 3-element antichains on a labeled n-set.

The programs for A094034, there is no canonical definition to state claims against.
-/

/-! ## A094034.P3672646636351671020

`A094735(n)-xor(1, 3^n+3*(1-2^n))`
-/

namespace A094034.P3672646636351671020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094735 n - Int.xor 1 ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ)))

end

end A094034.P3672646636351671020

/-! ## A094034.P13521984747164827113

`A094735(n)-A094729(n)`
-/

namespace A094034.P13521984747164827113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094735 n - A094729 n

end

end A094034.P13521984747164827113

/-! ## A094034.P10280950204497521876

`A058809(n)+A094735(n)-A091344(n)`
-/

namespace A094034.P10280950204497521876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058809 n + (A094735 n - A091344 n)

end

end A094034.P10280950204497521876

/-! ## A094034.P17808035856805150774

`A094735(n)-(A158388(n)+A001117(n))`
-/

namespace A094034.P17808035856805150774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094735 n - (A158388 n + A001117 n)

end

end A094034.P17808035856805150774

/-! ## A094034.P7753485431170487646

`A094735(n)-(A094734(n)+A094033(n))`
-/

namespace A094034.P7753485431170487646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094735 n - (A094734 n + A094033 n)

end

end A094034.P7753485431170487646

/-! ## A094034.P10533730301298351042

`A094735(n)-A199108(n)%A005056(n)`
-/

namespace A094034.P10533730301298351042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094735 n - Int.tmod (A199108 n) (A005056 n)

end

end A094034.P10533730301298351042

/-!
# A094035: Number of connected 4-element antichains on a labeled n-set.

The programs for A094035, there is no canonical definition to state claims against.
-/

/-! ## A094035.P4131654472616155226

`A202385(∏[∏{e}[n, 3*#]])`
-/

namespace A094035.P4131654472616155226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 3 * Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202385 (∏ j ∈ Finset.range (n + 1), f1 j + 31)

end

end A094035.P4131654472616155226

/-! ## A094035.P16349187320536507422

`A199363(A026709(n))`
-/

namespace A094035.P16349187320536507422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A026709 n).toNat

end

end A094035.P16349187320536507422

/-!
# A094036: Number of connected 5-element antichains on a labeled n-set.

The programs for A094036, there is no canonical definition to state claims against.
-/

/-! ## A094036.P14901908006945494825

`A247761(A274843(n²))`
-/

namespace A094036.P14901908006945494825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (A274843 (n ^ 2)).toNat

end

end A094036.P14901908006945494825

/-! ## A094036.P17867283196774254334

`A284689(A184237(n+1))`
-/

namespace A094036.P17867283196774254334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284689 (A184237 (n + 1)).toNat

end

end A094036.P17867283196774254334

/-!
# A094037: Number of connected 6-element antichains on a labeled n-set.

The programs for A094037, there is no canonical definition to state claims against.
-/

/-! ## A094037.P15820741696635800419

`A172310(∑[C(n, 4)]²)`
-/

namespace A094037.P15820741696635800419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A094037.P15820741696635800419

/-! ## A094037.P16420116561810100198

`∑[A320751(∑[2^n])]`
-/

namespace A094037.P16420116561810100198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320751 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094037.P16420116561810100198

/-!
# A094038: Binomial transform of (Pell(-n)+Pell(n))/2.

The programs for A094038, the canonical program `A094038.P16651946249266737320` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094038 has offset 0).

The definition of A094038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094038.P16651946249266737320

`sqrt(2)/8*((2+sqrt(2))^n-(2-sqrt(2))^n+sqrt(2)^n-(-sqrt(2))^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094038

/-- `sqrt(2)/8*((2+sqrt(2))^n-(2-sqrt(2))^n+sqrt(2)^n-(-sqrt(2))^n)` -/
def P16651946249266737320.Spec : Prop :=
  ∀ n, P16651946249266737320.a n = (A094038 n : ℝ)

end A094038

/-! ## A094038.P9963199705126263178

`∑[Δ[A030436(n)]*A062112(n)]`
-/

namespace A094038.P9963199705126263178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A062112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094038.P9963199705126263178

namespace A094038

/-- `∑[Δ[A030436(n)]*A062112(n)]` -/
def P9963199705126263178.Spec : Prop :=
  ∀ n, P9963199705126263178.a n = A094038 n

end A094038

/-! ## A094038.P18115029027590829145

`∑[A062112(n)*A121720(n+1)]`
-/

namespace A094038.P18115029027590829145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 n * A121720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094038.P18115029027590829145

namespace A094038

/-- `∑[A062112(n)*A121720(n+1)]` -/
def P18115029027590829145.Spec : Prop :=
  ∀ n, P18115029027590829145.a n = A094038 n

end A094038

/-! ## A094038.P12482917824980555677

`∑[(A001882(n+2)-A121720(n+4))*A121720(n+1)]`
-/

namespace A094038.P12482917824980555677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001882 (n + 2) - A121720 (n + 4)) * A121720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094038.P12482917824980555677

namespace A094038

/-- `∑[(A001882(n+2)-A121720(n+4))*A121720(n+1)]` -/
def P12482917824980555677.Spec : Prop :=
  ∀ n, P12482917824980555677.a n = A094038 n

end A094038

/-! ## A094038.P10358783213018382363

`(A204089(n+1)-A084154(n+1))/2`
-/

namespace A094038.P10358783213018382363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204089 (n + 1) - A084154 (n + 1) : ℚ) / 2

end

end A094038.P10358783213018382363

namespace A094038

/-- `(A204089(n+1)-A084154(n+1))/2` -/
def P10358783213018382363.Spec : Prop :=
  ∀ n, P10358783213018382363.a n = (A094038 n : ℚ)

end A094038

/-! ## A094038.P7380107875081111207

`∑[A121720(n+1)*A228405(A004526(n*(n+2)))]`
-/

namespace A094038.P7380107875081111207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (n + 1) * A228405 (A004526 (n * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094038.P7380107875081111207

namespace A094038

/-- `∑[A121720(n+1)*A228405(A004526(n*(n+2)))]` -/
def P7380107875081111207.Spec : Prop :=
  ∀ n, P7380107875081111207.a n = A094038 n

end A094038

/-!
# A094039: Binomial transform of (Jacobsthal(n) + 2^n*Jacobsthal(-n))/2.

The programs for A094039, the canonical program `A094039.P6879409196476829351` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094039 has offset 0).

The definition of A094039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094039.P14153094093738890786

`ogf((x-2x^2-x^3)/(1-4x+x^2+6x^3))`
-/

namespace A094039.P14153094093738890786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -1] [1, -4, 1, 6] n

end

end A094039.P14153094093738890786

namespace A094039

/-- `ogf((x-2x^2-x^3)/(1-4x+x^2+6x^3))` -/
def P14153094093738890786.Spec : Prop :=
  ∀ n, P14153094093738890786.a n = A094039 n

end A094039

/-! ## A094039.P6879409196476829351

`A000392(n)+floor(∑[2^n/3])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094039

/-- `A000392(n)+floor(∑[2^n/3])` -/
def P6879409196476829351.Spec : Prop :=
  ∀ n, P6879409196476829351.a n = A094039 n

theorem P6879409196476829351.correct : P6879409196476829351.Spec := by
  intro n
  simp only [A094039]

end A094039

/-! ## A094039.P2432680012703136932

`A000975(n)+A000392(n)`
-/

namespace A094039.P2432680012703136932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + A000392 n

end

end A094039.P2432680012703136932

namespace A094039

/-- `A000975(n)+A000392(n)` -/
def P2432680012703136932.Spec : Prop :=
  ∀ n, P2432680012703136932.a n = A094039 n

end A094039

/-! ## A094039.P15841594525230929368

`A000975(n)+ceil(∑[3^(n-2)])-A011782(n)`
-/

namespace A094039.P15841594525230929368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - A011782 n)

end

end A094039.P15841594525230929368

namespace A094039

/-- `A000975(n)+ceil(∑[3^(n-2)])-A011782(n)` -/
def P15841594525230929368.Spec : Prop :=
  ∀ n, P15841594525230929368.a n = A094039 n

end A094039

/-! ## A094039.P3556886779524717549

`floor(A087211(n)/2)`
-/

namespace A094039.P3556886779524717549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087211 n : ℚ) / 2⌋

end

end A094039.P3556886779524717549

namespace A094039

/-- `floor(A087211(n)/2)` -/
def P3556886779524717549.Spec : Prop :=
  ∀ n, P3556886779524717549.a n = A094039 n

end A094039

/-! ## A094039.P10173360075624416457

`Δ[A087432(n)/2]`
-/

namespace A094039.P10173360075624416457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087432 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094039.P10173360075624416457

namespace A094039

/-- `Δ[A087432(n)/2]` -/
def P10173360075624416457.Spec : Prop :=
  ∀ n, P10173360075624416457.a n = (A094039 n : ℚ)

end A094039

/-! ## A094039.P12334263861130533163

`A085281(n)-A087432(n)`
-/

namespace A094039.P12334263861130533163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n - A087432 n

end

end A094039.P12334263861130533163

namespace A094039

/-- `A085281(n)-A087432(n)` -/
def P12334263861130533163.Spec : Prop :=
  ∀ n, P12334263861130533163.a n = A094039 n

end A094039

/-! ## A094039.P4720065463540910367

`(A093379(n)+A015518(n))/2`
-/

namespace A094039.P4720065463540910367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093379 n + A015518 n : ℚ) / 2

end

end A094039.P4720065463540910367

namespace A094039

/-- `(A093379(n)+A015518(n))/2` -/
def P4720065463540910367.Spec : Prop :=
  ∀ n, P4720065463540910367.a n = (A094039 n : ℚ)

end A094039

/-! ## A094039.P7669510384816657417

`(A140429(n)+A001045(n))/2`
-/

namespace A094039.P7669510384816657417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n + A001045 n : ℚ) / 2

end

end A094039.P7669510384816657417

namespace A094039

/-- `(A140429(n)+A001045(n))/2` -/
def P7669510384816657417.Spec : Prop :=
  ∀ n, P7669510384816657417.a n = (A094039 n : ℚ)

end A094039

/-! ## A094039.P16012686807177925846

`A085281(n)+A093379(n)-A093379(n+1)`
-/

namespace A094039.P16012686807177925846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n + (A093379 n - A093379 (n + 1))

end

end A094039.P16012686807177925846

namespace A094039

/-- `A085281(n)+A093379(n)-A093379(n+1)` -/
def P16012686807177925846.Spec : Prop :=
  ∀ n, P16012686807177925846.a n = A094039 n

end A094039

/-! ## A094039.P3049164094184755980

`round((2^n+3^n)/6)`
-/

namespace A094039.P3049164094184755980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n + 3 ^ n : ℚ) / 6)

end

end A094039.P3049164094184755980

namespace A094039

/-- `round((2^n+3^n)/6)` -/
def P3049164094184755980.Spec : Prop :=
  ∀ n, P3049164094184755980.a n = A094039 n

end A094039

/-! ## A094039.P8373244621297474173

`floor(A001550(n)/6)`
-/

namespace A094039.P8373244621297474173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001550 n : ℚ) / 6⌋

end

end A094039.P8373244621297474173

namespace A094039

/-- `floor(A001550(n)/6)` -/
def P8373244621297474173.Spec : Prop :=
  ∀ n, P8373244621297474173.a n = A094039 n

end A094039

/-! ## A094039.P10533316975318394373

`floor(A173657(n)/6)`
-/

namespace A094039.P10533316975318394373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173657 n : ℚ) / 6⌋

end

end A094039.P10533316975318394373

namespace A094039

/-- `floor(A173657(n)/6)` -/
def P10533316975318394373.Spec : Prop :=
  ∀ n, P10533316975318394373.a n = A094039 n

end A094039

/-! ## A094039.P7414297100150911742

`Δ[Δ[A093379(n)/2]]`
-/

namespace A094039.P7414297100150911742
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093379 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094039.P7414297100150911742

namespace A094039

/-- `Δ[Δ[A093379(n)/2]]` -/
def P7414297100150911742.Spec : Prop :=
  ∀ n, P7414297100150911742.a n = (A094039 n : ℚ)

end A094039

/-! ## A094039.P12522612640935026029

`floor((A005056(n)+2)/6)`
-/

namespace A094039.P12522612640935026029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005056 n + 2 : ℚ) / 6⌋

end

end A094039.P12522612640935026029

namespace A094039

/-- `floor((A005056(n)+2)/6)` -/
def P12522612640935026029.Spec : Prop :=
  ∀ n, P12522612640935026029.a n = A094039 n

end A094039

/-! ## A094039.P8582518612664501712

`round(A001550(n)/6)%A089382(n)`
-/

namespace A094039.P8582518612664501712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001550 n : ℚ) / 6)) (A089382 n)

end

end A094039.P8582518612664501712

namespace A094039

/-- `round(A001550(n)/6)%A089382(n)` -/
def P8582518612664501712.Spec : Prop :=
  ∀ n, P8582518612664501712.a n = A094039 n

end A094039

/-!
# A094040: Triangle read by rows: T(n,k) is the number of noncrossing forests with n vertices and k edges.

The programs for A094040, there is no canonical definition to state claims against.
-/

/-! ## A094040.P5437691485820023086

`A001263(n+1)/A007318(n)*A069269(n)`
-/

namespace A094040.P5437691485820023086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A069269 n : ℚ)

end

end A094040.P5437691485820023086

/-! ## A094040.P9135779530778613064

`A094021(A038722(n+1))`
-/

namespace A094040.P9135779530778613064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A038722 (n + 1)).toNat

end

end A094040.P9135779530778613064

/-! ## A094040.P2492384233874768188

`A094021(A061579(n)+1)`
-/

namespace A094040.P2492384233874768188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A061579 n + 1).toNat

end

end A094040.P2492384233874768188

/-! ## A094040.P12313300071409630262

`A094021(A114327(n)+1+n)`
-/

namespace A094040.P12313300071409630262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A114327 n + 1 + (n : ℤ)).toNat

end

end A094040.P12313300071409630262

/-! ## A094040.P249431341308067456

`A094021(A093995(n+1)-n)`
-/

namespace A094040.P249431341308067456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A094040.P249431341308067456

/-! ## A094040.P2303161837890436942

`A094021(A002024(n+1)²-n)`
-/

namespace A094040.P2303161837890436942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A094040.P2303161837890436942

/-! ## A094040.P7481611286257475990

`A094021(A185869(n+1)+1-A016789(n))`
-/

namespace A094040.P7481611286257475990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A185869 (n + 1) + (1 - A016789 n)).toNat

end

end A094040.P7481611286257475990

/-! ## A094040.P7951813636478997345

`A094021(A185869(n+1)%A016789(n)+1)`
-/

namespace A094040.P7951813636478997345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (Int.tmod (A185869 (n + 1)) (A016789 n) + 1).toNat

end

end A094040.P7951813636478997345

/-!
# A094041: Beatty sequence for e^Pi - Pi^e - i^i.

The programs for A094041, the canonical program `A094041.P11803999244234992070` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094041 has offset 1).

The definition of A094041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094041.P2396461342801020836

`∑[A250445(Δ[A007095(n)])]`
-/

namespace A094041.P2396461342801020836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250445 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094041.P2396461342801020836

namespace A094041

/-- `∑[A250445(Δ[A007095(n)])]` -/
def P2396461342801020836.Spec : Prop :=
  ∀ n, P2396461342801020836.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P10112668551299182235

`∑[A193870(A222127(9^val(n+1, 9)))]`
-/

namespace A094041.P10112668551299182235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (A222127 (9 ^ SequenceMachineLib.valuation (n + 1) 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094041.P10112668551299182235

namespace A094041

/-- `∑[A193870(A222127(9^val(n+1, 9)))]` -/
def P10112668551299182235.Spec : Prop :=
  ∀ n, P10112668551299182235.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P11803999244234992070

`A002264(A002264(A008598(n+1))+n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094041

/-- `A002264(A002264(A008598(n+1))+n+1)` -/
def P11803999244234992070.Spec : Prop :=
  ∀ n, P11803999244234992070.a n = A094041 (n + 1)

theorem P11803999244234992070.correct : P11803999244234992070.Spec := by
  intro n
  simp only [A094041, Nat.add_sub_cancel]

end A094041

/-! ## A094041.P16768755290547407974

`A343609(A008601(n+1))`
-/

namespace A094041.P16768755290547407974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A008601 (n + 1)).toNat

end

end A094041.P16768755290547407974

namespace A094041

/-- `A343609(A008601(n+1))` -/
def P16768755290547407974.Spec : Prop :=
  ∀ n, P16768755290547407974.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P14779762541387924398

`A002264(A002264(A008600(n+1)+n+1))`
-/

namespace A094041.P14779762541387924398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A008600 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A094041.P14779762541387924398

namespace A094041

/-- `A002264(A002264(A008600(n+1)+n+1))` -/
def P14779762541387924398.Spec : Prop :=
  ∀ n, P14779762541387924398.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P14796602885561898834

`∑[A000040(Δ[A008618(4*5*n)])]`
-/

namespace A094041.P14796602885561898834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (4 * (5 * n))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094041.P14796602885561898834

namespace A094041

/-- `∑[A000040(Δ[A008618(4*5*n)])]` -/
def P14796602885561898834.Spec : Prop :=
  ∀ n, P14796602885561898834.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P4234985883679263966

`∑[A052901(∑[A146535(n+1)])]`
-/

namespace A094041.P4234985883679263966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052901 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094041.P4234985883679263966

namespace A094041

/-- `∑[A052901(∑[A146535(n+1)])]` -/
def P4234985883679263966.Spec : Prop :=
  ∀ n, P4234985883679263966.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P11792828861695110023

`floor(log(A125354(n+1)))`
-/

namespace A094041.P11792828861695110023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A125354 (n + 1) : ℝ)⌋

end

end A094041.P11792828861695110023

namespace A094041

/-- `floor(log(A125354(n+1)))` -/
def P11792828861695110023.Spec : Prop :=
  ∀ n, P11792828861695110023.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P553622978797544859

`∑[A325276(A264981(n+1))]`
-/

namespace A094041.P553622978797544859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325276 (A264981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094041.P553622978797544859

namespace A094041

/-- `∑[A325276(A264981(n+1))]` -/
def P553622978797544859.Spec : Prop :=
  ∀ n, P553622978797544859.a n = A094041 (n + 1)

end A094041

/-! ## A094041.P820828585024858439

`A016897(n)-A329988(n+1)`
-/

namespace A094041.P820828585024858439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A329988 (n + 1)

end

end A094041.P820828585024858439

namespace A094041

/-- `A016897(n)-A329988(n+1)` -/
def P820828585024858439.Spec : Prop :=
  ∀ n, P820828585024858439.a n = A094041 (n + 1)

end A094041

/-!
# A094042: Beatty sequence for e^Pi - Pi^e - i^i.

The programs for A094042, the canonical program `A094042.P7355510371815584698` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094042 has offset 1).

The definition of A094042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094042.P7355510371815584698

`A059995(A008601(n+1)-1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094042

/-- `A059995(A008601(n+1)-1)` -/
def P7355510371815584698.Spec : Prop :=
  ∀ n, P7355510371815584698.a n = A094042 (n + 1)

theorem P7355510371815584698.correct : P7355510371815584698.Spec := by
  intro n
  simp only [A094042, Nat.add_sub_cancel]

end A094042

/-! ## A094042.P10012627905062658786

`A059995(A008600(n+1)+n)`
-/

namespace A094042.P10012627905062658786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A008600 (n + 1) + (n : ℤ)).toNat

end

end A094042.P10012627905062658786

namespace A094042

/-- `A059995(A008600(n+1)+n)` -/
def P10012627905062658786.Spec : Prop :=
  ∀ n, P10012627905062658786.a n = A094042 (n + 1)

theorem P10012627905062658786.correct : P10012627905062658786.Spec := by
  intro n
  simp only [A094042, Nat.add_sub_cancel, A094042.P10012627905062658786.a, A094042.P7355510371815584698.a, A008600, A008600.P8081908058967824863.a, A008601, A008601.P146696909524110912.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094042

/-! ## A094042.P11693259481029673267

`A059995(2*A017377(n)-n)`
-/

namespace A094042.P11693259481029673267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A017377 n - (n : ℤ)).toNat

end

end A094042.P11693259481029673267

namespace A094042

/-- `A059995(2*A017377(n)-n)` -/
def P11693259481029673267.Spec : Prop :=
  ∀ n, P11693259481029673267.a n = A094042 (n + 1)

theorem P11693259481029673267.correct : P11693259481029673267.Spec := by
  intro n
  simp only [A094042, Nat.add_sub_cancel, A094042.P11693259481029673267.a, A094042.P7355510371815584698.a, A008601, A008601.P146696909524110912.a, A017377, A017377.P8985772118360569930.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094042

/-! ## A094042.P11210213212478698760

`A059995(A008599(n+1)+2*n+1)`
-/

namespace A094042.P11210213212478698760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A008599 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A094042.P11210213212478698760

namespace A094042

/-- `A059995(A008599(n+1)+2*n+1)` -/
def P11210213212478698760.Spec : Prop :=
  ∀ n, P11210213212478698760.a n = A094042 (n + 1)

theorem P11210213212478698760.correct : P11210213212478698760.Spec := by
  intro n
  simp only [A094042, Nat.add_sub_cancel, A094042.P11210213212478698760.a, A094042.P7355510371815584698.a, A008599, A008599.P9337740256108162749.a, A008601, A008601.P146696909524110912.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094042

/-! ## A094042.P4772997775188801187

`A059995(A017377(n)+A017377(n)-n)`
-/

namespace A094042.P4772997775188801187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A017377 n + (A017377 n - (n : ℤ))).toNat

end

end A094042.P4772997775188801187

namespace A094042

/-- `A059995(A017377(n)+A017377(n)-n)` -/
def P4772997775188801187.Spec : Prop :=
  ∀ n, P4772997775188801187.a n = A094042 (n + 1)

theorem P4772997775188801187.correct : P4772997775188801187.Spec := by
  intro n
  simp only [A094042, Nat.add_sub_cancel, A094042.P4772997775188801187.a, A094042.P7355510371815584698.a, A008601, A008601.P146696909524110912.a, A017377, A017377.P8985772118360569930.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094042

/-! ## A094042.P3690631148481143637

`A059995(A017377(n)-(n-A017377(n)))`
-/

namespace A094042.P3690631148481143637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A017377 n - ((n : ℤ) - A017377 n)).toNat

end

end A094042.P3690631148481143637

namespace A094042

/-- `A059995(A017377(n)-(n-A017377(n)))` -/
def P3690631148481143637.Spec : Prop :=
  ∀ n, P3690631148481143637.a n = A094042 (n + 1)

theorem P3690631148481143637.correct : P3690631148481143637.Spec := by
  intro n
  simp only [A094042, Nat.add_sub_cancel, A094042.P3690631148481143637.a, A094042.P7355510371815584698.a, A008601, A008601.P146696909524110912.a, A017377, A017377.P8985772118360569930.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094042

/-! ## A094042.P7332433501419383943

`A059995(A008592(2*n+1))-A059995(n+1)`
-/

namespace A094042.P7332433501419383943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A008592 (2 * n + 1)).toNat - A059995 (n + 1)

end

end A094042.P7332433501419383943

namespace A094042

/-- `A059995(A008592(2*n+1))-A059995(n+1)` -/
def P7332433501419383943.Spec : Prop :=
  ∀ n, P7332433501419383943.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P9540223945666661483

`A059995(A017329(2*n+1))-A059995(n+1)`
-/

namespace A094042.P9540223945666661483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A017329 (2 * n + 1)).toNat - A059995 (n + 1)

end

end A094042.P9540223945666661483

namespace A094042

/-- `A059995(A017329(2*n+1))-A059995(n+1)` -/
def P9540223945666661483.Spec : Prop :=
  ∀ n, P9540223945666661483.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P2720459163775534826

`ceil(log2(A001075(n+1)))`
-/

namespace A094042.P2720459163775534826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A001075 (n + 1) : ℝ)⌉

end

end A094042.P2720459163775534826

namespace A094042

/-- `ceil(log2(A001075(n+1)))` -/
def P2720459163775534826.Spec : Prop :=
  ∀ n, P2720459163775534826.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P4934037201571758429

`ceil(log2(A087945(n)))+1`
-/

namespace A094042.P4934037201571758429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A087945 n : ℝ)⌉ + 1

end

end A094042.P4934037201571758429

namespace A094042

/-- `ceil(log2(A087945(n)))+1` -/
def P4934037201571758429.Spec : Prop :=
  ∀ n, P4934037201571758429.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P17633585259865272804

`ceil(log2(A242728(n+1)))`
-/

namespace A094042.P17633585259865272804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A242728 (n + 1) : ℝ)⌉

end

end A094042.P17633585259865272804

namespace A094042

/-- `ceil(log2(A242728(n+1)))` -/
def P17633585259865272804.Spec : Prop :=
  ∀ n, P17633585259865272804.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P8017454920167159162

`round(log2(A001571(n+1)))`
-/

namespace A094042.P8017454920167159162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A001571 (n + 1) : ℝ))

end

end A094042.P8017454920167159162

namespace A094042

/-- `round(log2(A001571(n+1)))` -/
def P8017454920167159162.Spec : Prop :=
  ∀ n, P8017454920167159162.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P9167387427023709953

`round(log2(A146983(n+1)))`
-/

namespace A094042.P9167387427023709953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A146983 (n + 1) : ℝ))

end

end A094042.P9167387427023709953

namespace A094042

/-- `round(log2(A146983(n+1)))` -/
def P9167387427023709953.Spec : Prop :=
  ∀ n, P9167387427023709953.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P2862498993992241463

`round(log2(A192378(n+3)))`
-/

namespace A094042.P2862498993992241463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A192378 (n + 3) : ℝ))

end

end A094042.P2862498993992241463

namespace A094042

/-- `round(log2(A192378(n+3)))` -/
def P2862498993992241463.Spec : Prop :=
  ∀ n, P2862498993992241463.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P16612101664550019966

`ceil(log2(A259593(2*n)))`
-/

namespace A094042.P16612101664550019966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A259593 (2 * n) : ℝ)⌉

end

end A094042.P16612101664550019966

namespace A094042

/-- `ceil(log2(A259593(2*n)))` -/
def P16612101664550019966.Spec : Prop :=
  ∀ n, P16612101664550019966.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P13988818098998678334

`ceil(log2(A092184(n+1)+1))`
-/

namespace A094042.P13988818098998678334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A092184 (n + 1) + 1 : ℝ)⌉

end

end A094042.P13988818098998678334

namespace A094042

/-- `ceil(log2(A092184(n+1)+1))` -/
def P13988818098998678334.Spec : Prop :=
  ∀ n, P13988818098998678334.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P15226533514120680295

`ceil(log2(A259592(2*n+1)))`
-/

namespace A094042.P15226533514120680295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A259592 (2 * n + 1) : ℝ)⌉

end

end A094042.P15226533514120680295

namespace A094042

/-- `ceil(log2(A259592(2*n+1)))` -/
def P15226533514120680295.Spec : Prop :=
  ∀ n, P15226533514120680295.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P4082285845209458911

`round(log2(A216241(2*n+1)))`
-/

namespace A094042.P4082285845209458911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A216241 (2 * n + 1) : ℝ))

end

end A094042.P4082285845209458911

namespace A094042

/-- `round(log2(A216241(2*n+1)))` -/
def P4082285845209458911.Spec : Prop :=
  ∀ n, P4082285845209458911.a n = A094042 (n + 1)

end A094042

/-! ## A094042.P1922181021817523475

`floor(log2(A016064(n+1)))`
-/

namespace A094042.P1922181021817523475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A016064 (n + 1)).toNat

end

end A094042.P1922181021817523475

namespace A094042

/-- `floor(log2(A016064(n+1)))` -/
def P1922181021817523475.Spec : Prop :=
  ∀ n, (P1922181021817523475.a n : ℤ) = A094042 (n + 1)

end A094042

/-! ## A094042.P15417387281154320838

`floor(log2(A129743(n+1)))`
-/

namespace A094042.P15417387281154320838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A129743 (n + 1)).toNat

end

end A094042.P15417387281154320838

namespace A094042

/-- `floor(log2(A129743(n+1)))` -/
def P15417387281154320838.Spec : Prop :=
  ∀ n, (P15417387281154320838.a n : ℤ) = A094042 (n + 1)

end A094042

/-!
# A094043: Alternate composite and prime numbers not included earlier such that every partial concatenation is a prime: a(2n) is prime and a(2n-1) is not prime.

The programs for A094043, there is no canonical definition to state claims against.
-/

/-! ## A094043.P1870880701597089461

`A124063(A062092(n)+1)`
-/

namespace A094043.P1870880701597089461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124063 (A062092 n + 1).toNat

end

end A094043.P1870880701597089461

/-! ## A094043.P1906883537059437725

`A358577(or(1, 2^n)-n)-A249714(n+1)`
-/

namespace A094043.P1906883537059437725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (Nat.lor 1 (2 ^ n) - n) - A249714 (n + 1)

end

end A094043.P1906883537059437725

/-!
# A094046: Triangle read by rows: T(n,k) is the number of noncrossing connected graphs on n nodes on a circle, having exactly k four-sided faces, n>=2, 0<=k<=floor(n/2)-1.

The programs for A094046, there is no canonical definition to state claims against.
-/

/-! ## A094046.P16025361485415823023

`A190271(a(n-3))` with `a(0)=1, a(1)=4, a(2)=22`
-/

namespace A094046.P16025361485415823023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 22] fun n a =>
  A190271 (a (n - 3)).toNat

end

end A094046.P16025361485415823023

/-!
# A094047: Number of seating arrangements of n couples around a round table (up to rotations) so that each person sits between two people of the opposite sex and no couple is seated together.

The programs for A094047, the canonical program `A094047.P15152550463374127486` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094047 has offset 1).

The definition of A094047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094047.P15152550463374127486

`n*((n+1)*(a(n-1)+a(n-2))-4*(-1)^(n+1)*(n-2)!)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094047

/-- `n*((n+1)*(a(n-1)+a(n-2))-4*(-1)^(n+1)*(n-2)!)` -/
def P15152550463374127486.Spec : Prop :=
  ∀ n, P15152550463374127486.a n = A094047 (n + 1)

theorem P15152550463374127486.correct : P15152550463374127486.Spec := by
  intro n
  simp only [A094047, Nat.add_sub_cancel]

end A094047

/-! ## A094047.P4932103504766080684

`2*A306496(n+1)`
-/

namespace A094047.P4932103504766080684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306496 (n + 1)

end

end A094047.P4932103504766080684

namespace A094047

/-- `2*A306496(n+1)` -/
def P4932103504766080684.Spec : Prop :=
  ∀ n, P4932103504766080684.a n = A094047 (n + 1)

end A094047

/-! ## A094047.P12923351714901385153

`A059375(n+1)/(2*(n+1))`
-/

namespace A094047.P12923351714901385153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059375 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A094047.P12923351714901385153

namespace A094047

/-- `A059375(n+1)/(2*(n+1))` -/
def P12923351714901385153.Spec : Prop :=
  ∀ n, P12923351714901385153.a n = (A094047 (n + 1) : ℚ)

end A094047

/-! ## A094047.P16923553475828323717

`(A000166(n+1)-A324621(n))*A000142(n)`
-/

namespace A094047.P16923553475828323717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000166 (n + 1) - A324621 n) * A000142 n

end

end A094047.P16923553475828323717

namespace A094047

/-- `(A000166(n+1)-A324621(n))*A000142(n)` -/
def P16923553475828323717.Spec : Prop :=
  ∀ n, P16923553475828323717.a n = A094047 (n + 1)

end A094047

/-! ## A094047.P16578965789613153600

`n!*A335700(n+1)`
-/

namespace A094047.P16578965789613153600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A335700 (n + 1)

end

end A094047.P16578965789613153600

namespace A094047

/-- `n!*A335700(n+1)` -/
def P16578965789613153600.Spec : Prop :=
  ∀ n, P16578965789613153600.a n = A094047 (n + 1)

end A094047

/-!
# A094048: Let p(n) be the n-th prime congruent to 1 mod 4. Then a(n) = the least m for which m^2+1=p(n)*k^2 has a solution.

The programs for A094048, there is no canonical definition to state claims against.
-/

/-! ## A094048.P706606512686748766

`A006702(p?[4*n+1])`
-/

namespace A094048.P706606512686748766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094048.P706606512686748766

/-! ## A094048.P11078554357651161369

`A006702(or(1, p?[4*n-7]-1))`
-/

namespace A094048.P11078554357651161369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A094048.P11078554357651161369

/-! ## A094048.P15817275195603057949

`A006702(xor(1, p?[4*n-7]-1))`
-/

namespace A094048.P15817275195603057949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A094048.P15817275195603057949

/-! ## A094048.P11970266412771399948

`A006702(or(1, p?[a(n-1)+4]))` with `a(0)=1`
-/

namespace A094048.P11970266412771399948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A094048.P11970266412771399948

/-! ## A094048.P11342009736493252296

`A006702(∏{d}[p?[a(n-1)+4], #])` with `a(0)=1`
-/

namespace A094048.P11342009736493252296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A094048.P11342009736493252296

/-!
# A094049: Let p(n) be the n-th prime congruent to 1 mod 4. Then a(n) = the least k for which m^2+1=p(n)*k^2 has a solution.

The programs for A094049, there is no canonical definition to state claims against.
-/

/-! ## A094049.P13546039855739234282

`A006703(p?[4*n+1])`
-/

namespace A094049.P13546039855739234282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094049.P13546039855739234282

/-! ## A094049.P15021137045309532697

`A006703(or(1, p?[4*n-7]-1))`
-/

namespace A094049.P15021137045309532697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A094049.P15021137045309532697

/-! ## A094049.P14597573808486147481

`A006703(xor(1, p?[4*n-7]-1))`
-/

namespace A094049.P14597573808486147481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A094049.P14597573808486147481

/-! ## A094049.P16393993273205945329

`A006703(A002144(n+1))`
-/

namespace A094049.P16393993273205945329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A002144 (n + 1)).toNat

end

end A094049.P16393993273205945329

/-! ## A094049.P6203718696509996819

`A006703(A002313(n+2))`
-/

namespace A094049.P6203718696509996819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A002313 (n + 2)).toNat

end

end A094049.P6203718696509996819

/-!
# A094051: a(n) = phi(phi(p))/2 where p = prime(n).

The programs for A094051, the canonical program `A094051.P17874121840297430644` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094051 has offset 3).

The definition of A094051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094051.P17874121840297430644

`A008330(n+3)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094051

/-- `A008330(n+3)/2` -/
def P17874121840297430644.Spec : Prop :=
  ∀ n, P17874121840297430644.a n = (A094051 (n + 3) : ℚ)

end A094051

/-! ## A094051.P7335917237064915227

`A023022(A000040(n+3)-1)`
-/

namespace A094051.P7335917237064915227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A000040 (n + 3) - 1).toNat

end

end A094051.P7335917237064915227

namespace A094051

/-- `A023022(A000040(n+3)-1)` -/
def P7335917237064915227.Spec : Prop :=
  ∀ n, P7335917237064915227.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P14320805423080667039

`A062570(A005097(n+2))/2`
-/

namespace A094051.P14320805423080667039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (A005097 (n + 2)).toNat : ℚ) / 2

end

end A094051.P14320805423080667039

namespace A094051

/-- `A062570(A005097(n+2))/2` -/
def P14320805423080667039.Spec : Prop :=
  ∀ n, P14320805423080667039.a n = (A094051 (n + 3) : ℚ)

end A094051

/-! ## A094051.P15653333047098774753

`Δ[A333315(n+2)/2]`
-/

namespace A094051.P15653333047098774753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333315 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094051.P15653333047098774753

namespace A094051

/-- `Δ[A333315(n+2)/2]` -/
def P15653333047098774753.Spec : Prop :=
  ∀ n, P15653333047098774753.a n = (A094051 (n + 3) : ℚ)

end A094051

/-! ## A094051.P5043689534638945051

`A000010(p?[2*n+5]-1)/2`
-/

namespace A094051.P5043689534638945051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1) : ℚ) / 2

end

end A094051.P5043689534638945051

namespace A094051

/-- `A000010(p?[2*n+5]-1)/2` -/
def P5043689534638945051.Spec : Prop :=
  ∀ n, P5043689534638945051.a n = (A094051 (n + 3) : ℚ)

end A094051

/-! ## A094051.P17555882967156254113

`A000010(A165972(n+2))/2`
-/

namespace A094051.P17555882967156254113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A165972 (n + 2)).toNat : ℚ) / 2

end

end A094051.P17555882967156254113

namespace A094051

/-- `A000010(A165972(n+2))/2` -/
def P17555882967156254113.Spec : Prop :=
  ∀ n, P17555882967156254113.a n = (A094051 (n + 3) : ℚ)

end A094051

/-! ## A094051.P446495968551172640

`A004526(A008330(n+3))`
-/

namespace A094051.P446495968551172640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008330 (n + 3)).toNat

end

end A094051.P446495968551172640

namespace A094051

/-- `A004526(A008330(n+3))` -/
def P446495968551172640.Spec : Prop :=
  ∀ n, P446495968551172640.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P2197035924404399294

`A055034(A005097(n+2))`
-/

namespace A094051.P2197035924404399294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A005097 (n + 2)).toNat

end

end A094051.P2197035924404399294

namespace A094051

/-- `A055034(A005097(n+2))` -/
def P2197035924404399294.Spec : Prop :=
  ∀ n, P2197035924404399294.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P15981599680700858151

`A055034(A067076(n+2)+1)`
-/

namespace A094051.P15981599680700858151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A067076 (n + 2) + 1).toNat

end

end A094051.P15981599680700858151

namespace A094051

/-- `A055034(A067076(n+2)+1)` -/
def P15981599680700858151.Spec : Prop :=
  ∀ n, P15981599680700858151.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P7069490017477639740

`A023022(p?[2*n+5]-1)`
-/

namespace A094051.P7069490017477639740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A094051.P7069490017477639740

namespace A094051

/-- `A023022(p?[2*n+5]-1)` -/
def P7069490017477639740.Spec : Prop :=
  ∀ n, P7069490017477639740.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P17067989972548581349

`A023022(xor(1, p?[2*n+5]))`
-/

namespace A094051.P17067989972548581349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A094051.P17067989972548581349

namespace A094051

/-- `A023022(xor(1, p?[2*n+5]))` -/
def P17067989972548581349.Spec : Prop :=
  ∀ n, P17067989972548581349.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P4549399341158381046

`A023022(A165972(n+2))`
-/

namespace A094051.P4549399341158381046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A165972 (n + 2)).toNat

end

end A094051.P4549399341158381046

namespace A094051

/-- `A023022(A165972(n+2))` -/
def P4549399341158381046.Spec : Prop :=
  ∀ n, P4549399341158381046.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P2577564763780507196

`A023022(A065091(n+2)-1)`
-/

namespace A094051.P2577564763780507196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A065091 (n + 2) - 1).toNat

end

end A094051.P2577564763780507196

namespace A094051

/-- `A023022(A065091(n+2)-1)` -/
def P2577564763780507196.Spec : Prop :=
  ∀ n, P2577564763780507196.a n = A094051 (n + 3)

end A094051

/-! ## A094051.P3418062107554697836

`A055034(A023022(A065091(n+2)))`
-/

namespace A094051.P3418062107554697836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A023022 (A065091 (n + 2)).toNat).toNat

end

end A094051.P3418062107554697836

namespace A094051

/-- `A055034(A023022(A065091(n+2)))` -/
def P3418062107554697836.Spec : Prop :=
  ∀ n, P3418062107554697836.a n = A094051 (n + 3)

end A094051

/-!
# A094052: Number of walks of length n between two adjacent nodes in the cycle graph C_7.

The programs for A094052, the canonical program `A094052.P17831884556190290762` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094052 has offset 0).

The definition of A094052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094052.P10938125387179903899

`ogf((x-x^2-x^3)/(1-x-4x^2+3x^3+2x^4))`
-/

namespace A094052.P10938125387179903899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -1, -4, 3, 2] n

end

end A094052.P10938125387179903899

namespace A094052

/-- `ogf((x-x^2-x^3)/(1-x-4x^2+3x^3+2x^4))` -/
def P10938125387179903899.Spec : Prop :=
  ∀ n, P10938125387179903899.a n = A094052 n

end A094052

/-! ## A094052.P17074523343503640461

`A377573(n+1)`
-/

namespace A094052.P17074523343503640461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (n + 1)

end

end A094052.P17074523343503640461

namespace A094052

/-- `A377573(n+1)` -/
def P17074523343503640461.Spec : Prop :=
  ∀ n, P17074523343503640461.a n = A094052 n

end A094052

/-! ## A094052.P17831884556190290762

`a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094052

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P17831884556190290762.Spec : Prop :=
  ∀ n, P17831884556190290762.a n = A094052 n

theorem P17831884556190290762.correct : P17831884556190290762.Spec := by
  intro n
  simp only [A094052]

end A094052

/-! ## A094052.P11788187853346889980

`A094659(n+1)/2`
-/

namespace A094052.P11788187853346889980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (n + 1) : ℚ) / 2

end

end A094052.P11788187853346889980

namespace A094052

/-- `A094659(n+1)/2` -/
def P11788187853346889980.Spec : Prop :=
  ∀ n, P11788187853346889980.a n = (A094052 n : ℚ)

end A094052

/-! ## A094052.P975356872808782912

`round(A094659(n-log2(1/2))/2)`
-/

namespace A094052.P975356872808782912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094659 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2)

end

end A094052.P975356872808782912

namespace A094052

/-- `round(A094659(n-log2(1/2))/2)` -/
def P975356872808782912.Spec : Prop :=
  ∀ n, P975356872808782912.a n = A094052 n

end A094052

/-! ## A094052.P14366170707343243073

`floor(A094659(1-A001489(n))/2)`
-/

namespace A094052.P14366170707343243073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094659 (1 - A001489 n).toNat : ℚ) / 2⌋

end

end A094052.P14366170707343243073

namespace A094052

/-- `floor(A094659(1-A001489(n))/2)` -/
def P14366170707343243073.Spec : Prop :=
  ∀ n, P14366170707343243073.a n = A094052 n

end A094052

/-! ## A094052.P1920599940916454559

`Δ[∑[A094659(n)]/2]`
-/

namespace A094052.P1920599940916454559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094659 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094052.P1920599940916454559

namespace A094052

/-- `Δ[∑[A094659(n)]/2]` -/
def P1920599940916454559.Spec : Prop :=
  ∀ n, P1920599940916454559.a n = (A094052 n : ℚ)

end A094052

/-! ## A094052.P16306243443246098580

`A094659(1-A001489(n))/2*A295679(∑[n])`
-/

namespace A094052.P16306243443246098580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (1 - A001489 n).toNat : ℚ) / 2 * (A295679 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A094052.P16306243443246098580

namespace A094052

/-- `A094659(1-A001489(n))/2*A295679(∑[n])` -/
def P16306243443246098580.Spec : Prop :=
  ∀ n, P16306243443246098580.a n = (A094052 n : ℚ)

end A094052

/-!
# A094053: Triangle read by rows: T(n,k) = k*(n-k), 1 <= k <= n.

The programs for A094053, the canonical program `A094053.P13142433605233752903` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094053 has offset 1).

The definition of A094053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094053.P7816071809256138143

`∑[∑[char[∑[n]]]²]%(n+1)`
-/

namespace A094053.P7816071809256138143
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A094053.P7816071809256138143

namespace A094053

/-- `∑[∑[char[∑[n]]]²]%(n+1)` -/
def P7816071809256138143.Spec : Prop :=
  ∀ n, (P7816071809256138143.a n : ℤ) = A094053 (n + 1)

end A094053

/-! ## A094053.P11100651674796139285

`∑[∑[char[∑[n]]]²]-(n+1)²`
-/

namespace A094053.P11100651674796139285
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A094053.P11100651674796139285

namespace A094053

/-- `∑[∑[char[∑[n]]]²]-(n+1)²` -/
def P11100651674796139285.Spec : Prop :=
  ∀ n, P11100651674796139285.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P18434308734781053034

`∑[∑[2*n]%comp[∑[n]]-n]`
-/

namespace A094053.P18434308734781053034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094053.P18434308734781053034

namespace A094053

/-- `∑[∑[2*n]%comp[∑[n]]-n]` -/
def P18434308734781053034.Spec : Prop :=
  ∀ n, P18434308734781053034.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P13142433605233752903

`∑[A114327(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094053

/-- `∑[A114327(n)]` -/
def P13142433605233752903.Spec : Prop :=
  ∀ n, P13142433605233752903.a n = A094053 (n + 1)

theorem P13142433605233752903.correct : P13142433605233752903.Spec := by
  intro n
  simp only [A094053, Nat.add_sub_cancel]

end A094053

/-! ## A094053.P7221401441372698849

`∑[1-A127948(n)]`
-/

namespace A094053.P7221401441372698849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094053.P7221401441372698849

namespace A094053

/-- `∑[1-A127948(n)]` -/
def P7221401441372698849.Spec : Prop :=
  ∀ n, P7221401441372698849.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P12860243758971238975

`∑[A061579(n)-n]`
-/

namespace A094053.P12860243758971238975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094053.P12860243758971238975

namespace A094053

/-- `∑[A061579(n)-n]` -/
def P12860243758971238975.Spec : Prop :=
  ∀ n, P12860243758971238975.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P8409401960220168134

`∑[A038722(n+1)-(n+1)]`
-/

namespace A094053.P8409401960220168134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094053.P8409401960220168134

namespace A094053

/-- `∑[A038722(n+1)-(n+1)]` -/
def P8409401960220168134.Spec : Prop :=
  ∀ n, P8409401960220168134.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P13431464805077194590

`A025581(n)*A128227(n)`
-/

namespace A094053.P13431464805077194590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A128227 n

end

end A094053.P13431464805077194590

namespace A094053

/-- `A025581(n)*A128227(n)` -/
def P13431464805077194590.Spec : Prop :=
  ∀ n, P13431464805077194590.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P13053014722203489894

`A025581(n)*A193738(n)`
-/

namespace A094053.P13053014722203489894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A193738 n

end

end A094053.P13053014722203489894

namespace A094053

/-- `A025581(n)*A193738(n)` -/
def P13053014722203489894.Spec : Prop :=
  ∀ n, P13053014722203489894.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P8338715056815354791

`A002260(n+1)*A025581(n)`
-/

namespace A094053.P8338715056815354791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A025581 n

end

end A094053.P8338715056815354791

namespace A094053

/-- `A002260(n+1)*A025581(n)` -/
def P8338715056815354791.Spec : Prop :=
  ∀ n, P8338715056815354791.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P1701640142135384451

`(A002262(n)+1)*A025581(n)`
-/

namespace A094053.P1701640142135384451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A025581 n

end

end A094053.P1701640142135384451

namespace A094053

/-- `(A002262(n)+1)*A025581(n)` -/
def P1701640142135384451.Spec : Prop :=
  ∀ n, P1701640142135384451.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P7898595605966304247

`A025581(n)*A048151(n+1)`
-/

namespace A094053.P7898595605966304247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A048151 (n + 1)

end

end A094053.P7898595605966304247

namespace A094053

/-- `A025581(n)*A048151(n+1)` -/
def P7898595605966304247.Spec : Prop :=
  ∀ n, P7898595605966304247.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P17088496877622088520

`(A004736(n+1)-1)*A002260(n+1)`
-/

namespace A094053.P17088496877622088520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) * A002260 (n + 1)

end

end A094053.P17088496877622088520

namespace A094053

/-- `(A004736(n+1)-1)*A002260(n+1)` -/
def P17088496877622088520.Spec : Prop :=
  ∀ n, P17088496877622088520.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P8155580273136123698

`A002260(n+1)*A057554(2*(n+1))`
-/

namespace A094053.P8155580273136123698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A057554 (2 * (n + 1))

end

end A094053.P8155580273136123698

namespace A094053

/-- `A002260(n+1)*A057554(2*(n+1))` -/
def P8155580273136123698.Spec : Prop :=
  ∀ n, P8155580273136123698.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P10199486063411695295

`(A002024(n+1)-A002260(n+1))*A002260(n+1)`
-/

namespace A094053.P10199486063411695295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A002260 (n + 1)) * A002260 (n + 1)

end

end A094053.P10199486063411695295

namespace A094053

/-- `(A002024(n+1)-A002260(n+1))*A002260(n+1)` -/
def P10199486063411695295.Spec : Prop :=
  ∀ n, P10199486063411695295.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P12121447916862872

`∑[2-Δ[A215630(n+1)]]`
-/

namespace A094053.P12121447916862872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094053.P12121447916862872

namespace A094053

/-- `∑[2-Δ[A215630(n+1)]]` -/
def P12121447916862872.Spec : Prop :=
  ∀ n, P12121447916862872.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P17844078200293007033

`(n+1-A335262(n+1))/2`
-/

namespace A094053.P17844078200293007033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A335262 (n + 1) : ℚ) / 2

end

end A094053.P17844078200293007033

namespace A094053

/-- `(n+1-A335262(n+1))/2` -/
def P17844078200293007033.Spec : Prop :=
  ∀ n, P17844078200293007033.a n = (A094053 (n + 1) : ℚ)

end A094053

/-! ## A094053.P4724742455151799901

`A023443(A128139(n+1))`
-/

namespace A094053.P4724742455151799901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A128139 (n + 1)).toNat

end

end A094053.P4724742455151799901

namespace A094053

/-- `A023443(A128139(n+1))` -/
def P4724742455151799901.Spec : Prop :=
  ∀ n, P4724742455151799901.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P4245445164008650754

`A002262(n+1)*A004736(n+2)`
-/

namespace A094053.P4245445164008650754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) * A004736 (n + 2)

end

end A094053.P4245445164008650754

namespace A094053

/-- `A002262(n+1)*A004736(n+2)` -/
def P4245445164008650754.Spec : Prop :=
  ∀ n, P4245445164008650754.a n = A094053 (n + 1)

end A094053

/-! ## A094053.P12283332165692066236

`(A002024(n+1)-A002262(n+1))*A002262(n+1)`
-/

namespace A094053.P12283332165692066236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A002262 (n + 1)) * A002262 (n + 1)

end

end A094053.P12283332165692066236

namespace A094053

/-- `(A002024(n+1)-A002262(n+1))*A002262(n+1)` -/
def P12283332165692066236.Spec : Prop :=
  ∀ n, P12283332165692066236.a n = A094053 (n + 1)

end A094053

/-!
# A094054: a(n) = round( (sqrt n)^(sqrt n) ).

The programs for A094054, the canonical program `A094054.P10023981852038633668` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094054 has offset 1).

The definition of A094054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094054.P10023981852038633668

`round(sqrt((n+1)^sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094054

/-- `round(sqrt((n+1)^sqrt(n+1)))` -/
def P10023981852038633668.Spec : Prop :=
  ∀ n, P10023981852038633668.a n = A094054 (n + 1)

theorem P10023981852038633668.correct : P10023981852038633668.Spec := by
  intro n
  simp only [A094054, Nat.add_sub_cancel]

end A094054

/-! ## A094054.P5922719974414745200

`floor(sqrt(A094093(n+1)+A066641(n+1)))`
-/

namespace A094054.P5922719974414745200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A094093 (n + 1) + A066641 (n + 1))

end

end A094054.P5922719974414745200

namespace A094054

/-- `floor(sqrt(A094093(n+1)+A066641(n+1)))` -/
def P5922719974414745200.Spec : Prop :=
  ∀ n, P5922719974414745200.a n = A094054 (n + 1)

end A094054

/-! ## A094054.P11304410584111699967

`round(sqrt(A088177(n+1)+A066641(n+1))+n)-n`
-/

namespace A094054.P11304410584111699967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A088177 (n + 1) + A066641 (n + 1) : ℝ) + (n : ℝ)) - (n : ℤ)

end

end A094054.P11304410584111699967

namespace A094054

/-- `round(sqrt(A088177(n+1)+A066641(n+1))+n)-n` -/
def P11304410584111699967.Spec : Prop :=
  ∀ n, P11304410584111699967.a n = A094054 (n + 1)

end A094054

/-! ## A094054.P6573179621626114383

`∑[∑[A025877(A320448(n+1))]]`
-/

namespace A094054.P6573179621626114383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (A320448 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094054.P6573179621626114383

namespace A094054

/-- `∑[∑[A025877(A320448(n+1))]]` -/
def P6573179621626114383.Spec : Prop :=
  ∀ n, P6573179621626114383.a n = A094054 (n + 1)

end A094054

/-!
# A094056: Number of digits in A002860(n) (number of Latin squares).

The programs for A094056, there is no canonical definition to state claims against.
-/

/-! ## A094056.P9240659590729552640

`∑[a(n-3)+4]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=3, a(5)=3`
-/

namespace A094056.P9240659590729552640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 3, 3] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094056.P9240659590729552640

/-! ## A094056.P17337499036460497544

`ceil(∑[ceil(log2((n+1)^(n-1)+1))]/3)`
-/

namespace A094056.P17337499036460497544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A094056.P17337499036460497544

/-! ## A094056.P16630756163870571430

`A275692(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A094056.P16630756163870571430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A275692 n + a (n - 2)

end

end A094056.P16630756163870571430

/-! ## A094056.P879449636248752079

`floor(∑[log2(A331875(n+1))])+1`
-/

namespace A094056.P879449636248752079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331875 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A094056.P879449636248752079

/-! ## A094056.P7870471627364558439

`∑[A004273(round(abs(1-n)/ϕ))]`
-/

namespace A094056.P7870471627364558439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((|1 - (n : ℤ)| : ℝ) / Real.goldenRatio)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094056.P7870471627364558439

/-!
# A094057: Number of decimal digits of Lucas(2^n).

The programs for A094057, there is no canonical definition to state claims against.
-/

/-! ## A094057.P1977620823109180414

`A386758(2^n)`
-/

namespace A094057.P1977620823109180414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (2 ^ n)

end

end A094057.P1977620823109180414

/-! ## A094057.P8819965079856114182

`A060384(2^n+2)`
-/

namespace A094057.P8819965079856114182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (2 ^ n + 2)

end

end A094057.P8819965079856114182

/-! ## A094057.P12486003340190940464

`gcd(floor(1/(n+1)), A386758(A000079(n)))`
-/

namespace A094057.P12486003340190940464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A386758 (A000079 n).toNat)

end

end A094057.P12486003340190940464

/-! ## A094057.P2409127126761263869

`A386758(A000079(n))%A084380(n)`
-/

namespace A094057.P2409127126761263869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386758 (A000079 n).toNat) (A084380 n)

end

end A094057.P2409127126761263869

/-! ## A094057.P15558611847892254593

`A386758(A000079(n))+A000007(n+4)`
-/

namespace A094057.P15558611847892254593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A000079 n).toNat + A000007 (n + 4)

end

end A094057.P15558611847892254593

/-!
# A094058: Positions of ones in binary expansion of e/4.

The programs for A094058, the canonical program `A094058.P6868808521383902918` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094058 has offset 1).

The definition of A094058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094058.P4514751400514483466

`∪[A293794(n+1), A293795(n+1)]`
-/

namespace A094058.P4514751400514483466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094058.P4514751400514483466

namespace A094058

/-- `∪[A293794(n+1), A293795(n+1)]` -/
def P4514751400514483466.Spec : Prop :=
  ∀ n, (P4514751400514483466.a n : ℤ) = A094058 (n + 1)

end A094058

/-! ## A094058.P6868808521383902918

`lt[0, A004593(n+2)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094058

/-- `lt[0, A004593(n+2)]+1` -/
def P6868808521383902918.Spec : Prop :=
  ∀ n, (P6868808521383902918.a n : ℤ) = A094058 (n + 1)

theorem P6868808521383902918.correct : P6868808521383902918.Spec := by
  intro n
  simp only [A094058, Nat.add_sub_cancel]

end A094058

/-! ## A094058.P3730685424763727874

`record[(n+1)*A004593(n+3)+1]`
-/

namespace A094058.P3730685424763727874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004593 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094058.P3730685424763727874

namespace A094058

/-- `record[(n+1)*A004593(n+3)+1]` -/
def P3730685424763727874.Spec : Prop :=
  ∀ n, P3730685424763727874.a n = A094058 (n + 1)

end A094058

/-! ## A094058.P1275804403622250841

`record[A000027(n+1)*A004593(n+2)]`
-/

namespace A094058.P1275804403622250841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A004593 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094058.P1275804403622250841

namespace A094058

/-- `record[A000027(n+1)*A004593(n+2)]` -/
def P1275804403622250841.Spec : Prop :=
  ∀ n, P1275804403622250841.a n = A094058 (n + 1)

end A094058

/-! ## A094058.P8417523881628115729

`record[A004593(n+2)*A008619(2*n)]`
-/

namespace A094058.P8417523881628115729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094058.P8417523881628115729

namespace A094058

/-- `record[A004593(n+2)*A008619(2*n)]` -/
def P8417523881628115729.Spec : Prop :=
  ∀ n, P8417523881628115729.a n = A094058 (n + 1)

end A094058

/-! ## A094058.P9877765110761462090

`A029579(record[A004593(n+2)*A005843(n)])`
-/

namespace A094058.P9877765110761462090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2) * A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094058.P9877765110761462090

namespace A094058

/-- `A029579(record[A004593(n+2)*A005843(n)])` -/
def P9877765110761462090.Spec : Prop :=
  ∀ n, P9877765110761462090.a n = A094058 (n + 1)

end A094058

/-! ## A094058.P2314612561774305933

`A136044(n+2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A094058.P2314612561774305933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A136044 (n + 2) + a (n - 1)

end

end A094058.P2314612561774305933

namespace A094058

/-- `A136044(n+2)+a(n-1)` -/
def P2314612561774305933.Spec : Prop :=
  ∀ n, P2314612561774305933.a n = A094058 (n + 1)

end A094058

/-!
# A094060: Number of walks of length n on hexagonal grid that start and end at the origin. Intermediate returns to the origin are not permitted.

The programs for A094060, there is no canonical definition to state claims against.
-/

/-! ## A094060.P1344835689433865069

`A028971(A134958(n)-1)`
-/

namespace A094060.P1344835689433865069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (A134958 n - 1).toNat

end

end A094060.P1344835689433865069

/-! ## A094060.P12699450632080011683

`∑{d}[A113980(A166753(n)), gcd(n, #)]`
-/

namespace A094060.P12699450632080011683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113980 (A166753 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd n d

end

end A094060.P12699450632080011683

/-!
# A094061: Number of n-moves paths of a king starting and ending at the origin of an infinite chessboard.

The programs for A094061, there is no canonical definition to state claims against.
-/

/-! ## A094061.P7296431198586896038

`A329074(∑[n+1]+1)`
-/

namespace A094061.P7296431198586896038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329074 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A094061.P7296431198586896038

/-! ## A094061.P15934051475300303267

`A329816(∑[2*n])`
-/

namespace A094061.P15934051475300303267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329816 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094061.P15934051475300303267

/-! ## A094061.P13206055547425352296

`and(-3, A329816(n²+n))`
-/

namespace A094061.P13206055547425352296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A329816 (n ^ 2 + n))

end

end A094061.P13206055547425352296

/-! ## A094061.P2839000141694997150

`lcm(1-n, A329816(A002378(n)))`
-/

namespace A094061.P2839000141694997150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (A329816 (A002378 n).toNat)

end

end A094061.P2839000141694997150

/-! ## A094061.P14992897153708905693

`char[A140263(n)]*A329816(n²+n)`
-/

namespace A094061.P14992897153708905693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A329816 (n ^ 2 + n)

end

end A094061.P14992897153708905693

/-! ## A094061.P5309164356629069364

`gcd(A000038(n), A329816(A002378(n)))`
-/

namespace A094061.P5309164356629069364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A329816 (A002378 n).toNat)

end

end A094061.P5309164356629069364

/-! ## A094061.P1370161971181309028

`A329816(n²)*A329816(A002378(n))`
-/

namespace A094061.P1370161971181309028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329816 (n ^ 2) * A329816 (A002378 n).toNat

end

end A094061.P1370161971181309028

/-! ## A094061.P14335044014476190128

`A329816(A002378(n))+A000038(n+1)`
-/

namespace A094061.P14335044014476190128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329816 (A002378 n).toNat + A000038 (n + 1)

end

end A094061.P14335044014476190128

/-! ## A094061.P16845962819987567445

`A329816(n²+n)+A318995(A059268(n))`
-/

namespace A094061.P16845962819987567445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329816 (n ^ 2 + n) + A318995 (A059268 n).toNat

end

end A094061.P16845962819987567445

/-! ## A094061.P11505128243285163735

`A001222(A076567(n+1))*A329816(A002378(n))`
-/

namespace A094061.P11505128243285163735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076567 (n + 1)).toNat * A329816 (A002378 n).toNat

end

end A094061.P11505128243285163735

/-!
# A094062: a(n) = ceiling((3-sqrt(3))*4^(n-3)) + 1 for n>=2, a(1)=1.

The programs for A094062, the canonical program `A094062.P10718842860640723893` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094062 has offset 1).

The definition of A094062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094062.P15236298078670083803

`record[A101360(n)-A169585(n)]`
-/

namespace A094062.P15236298078670083803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 n - A169585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094062.P15236298078670083803

namespace A094062

/-- `record[A101360(n)-A169585(n)]` -/
def P15236298078670083803.Spec : Prop :=
  ∀ n, P15236298078670083803.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P10718842860640723893

`A101360(n+1)-A000007(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094062

/-- `A101360(n+1)-A000007(n)` -/
def P10718842860640723893.Spec : Prop :=
  ∀ n, P10718842860640723893.a n = A094062 (n + 1)

theorem P10718842860640723893.correct : P10718842860640723893.Spec := by
  intro n
  simp only [A094062, Nat.add_sub_cancel]

end A094062

/-! ## A094062.P4116754959051206365

`A101360(n+1)-A036987(2*n)`
-/

namespace A094062.P4116754959051206365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A036987 (2 * n)

end

end A094062.P4116754959051206365

namespace A094062

/-- `A101360(n+1)-A036987(2*n)` -/
def P4116754959051206365.Spec : Prop :=
  ∀ n, P4116754959051206365.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P7434857181503944698

`A101360(n+1)-A105348(2*n)`
-/

namespace A094062.P7434857181503944698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A105348 (2 * n)

end

end A094062.P7434857181503944698

namespace A094062

/-- `A101360(n+1)-A105348(2*n)` -/
def P7434857181503944698.Spec : Prop :=
  ∀ n, P7434857181503944698.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P3529686821139762682

`A101360(n+1)-A134746(2*n)`
-/

namespace A094062.P3529686821139762682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A134746 (2 * n)

end

end A094062.P3529686821139762682

namespace A094062

/-- `A101360(n+1)-A134746(2*n)` -/
def P3529686821139762682.Spec : Prop :=
  ∀ n, P3529686821139762682.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P7316259573725735021

`A101360(n+1)-A169585(2*n)`
-/

namespace A094062.P7316259573725735021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A169585 (2 * n)

end

end A094062.P7316259573725735021

namespace A094062

/-- `A101360(n+1)-A169585(2*n)` -/
def P7316259573725735021.Spec : Prop :=
  ∀ n, P7316259573725735021.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P9161577705097829475

`A101360(n+1)-A209229(n²+2)`
-/

namespace A094062.P9161577705097829475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A209229 (n ^ 2 + 2)

end

end A094062.P9161577705097829475

namespace A094062

/-- `A101360(n+1)-A209229(n²+2)` -/
def P9161577705097829475.Spec : Prop :=
  ∀ n, P9161577705097829475.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P14825608632090654772

`A101360(n+1)-A049084(2*(n+1))`
-/

namespace A094062.P14825608632090654772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A049084 (2 * (n + 1))

end

end A094062.P14825608632090654772

namespace A094062

/-- `A101360(n+1)-A049084(2*(n+1))` -/
def P14825608632090654772.Spec : Prop :=
  ∀ n, P14825608632090654772.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P18431877101446749233

`A101360(n+1)-A322585(2*n+1)`
-/

namespace A094062.P18431877101446749233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A322585 (2 * n + 1)

end

end A094062.P18431877101446749233

namespace A094062

/-- `A101360(n+1)-A322585(2*n+1)` -/
def P18431877101446749233.Spec : Prop :=
  ∀ n, P18431877101446749233.a n = A094062 (n + 1)

end A094062

/-! ## A094062.P7251353713341852815

`A101360(n+1)/(A000007(2*n)+1)`
-/

namespace A094062.P7251353713341852815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101360 (n + 1) : ℚ) / (A000007 (2 * n) + 1 : ℚ)

end

end A094062.P7251353713341852815

namespace A094062

/-- `A101360(n+1)/(A000007(2*n)+1)` -/
def P7251353713341852815.Spec : Prop :=
  ∀ n, P7251353713341852815.a n = (A094062 (n + 1) : ℚ)

end A094062

/-! ## A094062.P17643460444480494477

`A101360(n+1)-A006093(n+1)%2`
-/

namespace A094062.P17643460444480494477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - Int.tmod (A006093 (n + 1)) 2

end

end A094062.P17643460444480494477

namespace A094062

/-- `A101360(n+1)-A006093(n+1)%2` -/
def P17643460444480494477.Spec : Prop :=
  ∀ n, P17643460444480494477.a n = A094062 (n + 1)

end A094062

/-!
# A094064: Sequences has the properties shown in the Comments lines.

The programs for A094064, the canonical program `A094064.P17439103977011875938` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094064 has offset 0).

The definition of A094064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094064.P6864471585163663186

`A060576(n)+A020703(A028310(n))`
-/

namespace A094064.P6864471585163663186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A020703 (A028310 n).toNat

end

end A094064.P6864471585163663186

namespace A094064

/-- `A060576(n)+A020703(A028310(n))` -/
def P6864471585163663186.Spec : Prop :=
  ∀ n, P6864471585163663186.a n = A094064 n

end A094064

/-! ## A094064.P13800244488635025320

`A060576(n)+A020703(A000007(n)+n)`
-/

namespace A094064.P13800244488635025320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A020703 (A000007 n + (n : ℤ)).toNat

end

end A094064.P13800244488635025320

namespace A094064

/-- `A060576(n)+A020703(A000007(n)+n)` -/
def P13800244488635025320.Spec : Prop :=
  ∀ n, P13800244488635025320.a n = A094064 n

end A094064

/-! ## A094064.P17439103977011875938

`A057427(A004442(n))+A020703(A028310(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094064

/-- `A057427(A004442(n))+A020703(A028310(n))` -/
def P17439103977011875938.Spec : Prop :=
  ∀ n, P17439103977011875938.a n = A094064 n

theorem P17439103977011875938.correct : P17439103977011875938.Spec := by
  intro n
  simp only [A094064]

end A094064

/-! ## A094064.P2851229778973987179

`A057427(A007599(n))+A020703(A028310(n))`
-/

namespace A094064.P2851229778973987179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007599 n).toNat + A020703 (A028310 n).toNat

end

end A094064.P2851229778973987179

namespace A094064

/-- `A057427(A007599(n))+A020703(A028310(n))` -/
def P2851229778973987179.Spec : Prop :=
  ∀ n, P2851229778973987179.a n = A094064 n

end A094064

/-! ## A094064.P15287268515411686225

`A060576(n)+A020703(A065033(2*n))`
-/

namespace A094064.P15287268515411686225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A020703 (A065033 (2 * n)).toNat

end

end A094064.P15287268515411686225

namespace A094064

/-- `A060576(n)+A020703(A065033(2*n))` -/
def P15287268515411686225.Spec : Prop :=
  ∀ n, P15287268515411686225.a n = A094064 n

end A094064

/-! ## A094064.P3449014607199486712

`A060576(n)+A020703(A123108(2*n))`
-/

namespace A094064.P3449014607199486712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A020703 (A123108 (2 * n)).toNat

end

end A094064.P3449014607199486712

namespace A094064

/-- `A060576(n)+A020703(A123108(2*n))` -/
def P3449014607199486712.Spec : Prop :=
  ∀ n, P3449014607199486712.a n = A094064 n

end A094064

/-! ## A094064.P4153460021207581204

`A020703(A123108(2*n))+1-A063524(n)`
-/

namespace A094064.P4153460021207581204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A123108 (2 * n)).toNat + (1 - A063524 n)

end

end A094064.P4153460021207581204

namespace A094064

/-- `A020703(A123108(2*n))+1-A063524(n)` -/
def P4153460021207581204.Spec : Prop :=
  ∀ n, P4153460021207581204.a n = A094064 n

end A094064

/-! ## A094064.P13244221117721716307

`A057427(A008611(n))+A020703(A123108(2*n))`
-/

namespace A094064.P13244221117721716307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008611 n).toNat + A020703 (A123108 (2 * n)).toNat

end

end A094064.P13244221117721716307

namespace A094064

/-- `A057427(A008611(n))+A020703(A123108(2*n))` -/
def P13244221117721716307.Spec : Prop :=
  ∀ n, P13244221117721716307.a n = A094064 n

end A094064

/-! ## A094064.P15974723698770458996

`A023532(p?[2*n+1])+A020703(A123108(2*n))`
-/

namespace A094064.P15974723698770458996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A020703 (A123108 (2 * n)).toNat

end

end A094064.P15974723698770458996

namespace A094064

/-- `A023532(p?[2*n+1])+A020703(A123108(2*n))` -/
def P15974723698770458996.Spec : Prop :=
  ∀ n, P15974723698770458996.a n = A094064 n

end A094064

/-!
# A094065: Asymptotic form for prime.

The programs for A094065, there is no canonical definition to state claims against.
-/

/-! ## A094065.P18300583729810297166

`A259361(∑[A325459(A017029(n))])`
-/

namespace A094065.P18300583729810297166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A017029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094065.P18300583729810297166

/-! ## A094065.P11200352307329864927

`A277903(∑[∑[A084626(n)]])`
-/

namespace A094065.P11200352307329864927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084626 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094065.P11200352307329864927

/-! ## A094065.P16461774634286595218

`A016825(n)-A035100(A333147(3*n+2))`
-/

namespace A094065.P16461774634286595218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A035100 (A333147 (3 * n + 2)).toNat

end

end A094065.P16461774634286595218

/-! ## A094065.P10960361955216477389

`ceil(log2(A348802(n+1)))`
-/

namespace A094065.P10960361955216477389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A348802 (n + 1) : ℝ)⌉

end

end A094065.P10960361955216477389

/-! ## A094065.P3493386639054073845

`round(log(A339040(2*n+1)))`
-/

namespace A094065.P3493386639054073845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A339040 (2 * n + 1) : ℝ))

end

end A094065.P3493386639054073845

/-!
# A094068: Lessers of twin prime pairs whose greater has a prime prime index.

The programs for A094068, the canonical program `A094068.P5395445372690592856` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094068 has offset 1).

The definition of A094068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094068.P5395445372690592856

`∩[A001359(n+1), A006450(n+1)-2]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A094068

/-- `∩[A001359(n+1), A006450(n+1)-2]` -/
def P5395445372690592856.Spec : Prop :=
  ∀ n, (P5395445372690592856.a n : ℤ) = A094068 (n + 1)

theorem P5395445372690592856.correct : P5395445372690592856.Spec := by
  intro n
  simp only [A094068, Nat.add_sub_cancel]

end A094068

/-! ## A094068.P4787820951071834016

`∩[A001359(n+1), A055003(n+1)]`
-/

namespace A094068.P4787820951071834016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P4787820951071834016

namespace A094068

/-- `∩[A001359(n+1), A055003(n+1)]` -/
def P4787820951071834016.Spec : Prop :=
  ∀ n, (P4787820951071834016.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P11828134796703078631

`∩[A001359(n+1), A175248(n+1)]`
-/

namespace A094068.P11828134796703078631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P11828134796703078631

namespace A094068

/-- `∩[A001359(n+1), A175248(n+1)]` -/
def P11828134796703078631.Spec : Prop :=
  ∀ n, (P11828134796703078631.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P17091171758868756680

`∩[A001359(n+1), A175247(n+1)-2]`
-/

namespace A094068.P17091171758868756680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P17091171758868756680

namespace A094068

/-- `∩[A001359(n+1), A175247(n+1)-2]` -/
def P17091171758868756680.Spec : Prop :=
  ∀ n, (P17091171758868756680.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P13709132314329757500

`∩[A001359(n+1), A302592(n+1)-2]`
-/

namespace A094068.P13709132314329757500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P13709132314329757500

namespace A094068

/-- `∩[A001359(n+1), A302592(n+1)-2]` -/
def P13709132314329757500.Spec : Prop :=
  ∀ n, (P13709132314329757500.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P2916538774461499397

`∩[A001359(n+1), A302596(n+1)-2]`
-/

namespace A094068.P2916538774461499397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P2916538774461499397

namespace A094068

/-- `∩[A001359(n+1), A302596(n+1)-2]` -/
def P2916538774461499397.Spec : Prop :=
  ∀ n, (P2916538774461499397.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P2609741572893200378

`∩[A054799(n+1), A055003(n+1)]`
-/

namespace A094068.P2609741572893200378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P2609741572893200378

namespace A094068

/-- `∩[A054799(n+1), A055003(n+1)]` -/
def P2609741572893200378.Spec : Prop :=
  ∀ n, (P2609741572893200378.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P11400233691565615080

`∩[A054799(n+1), A175248(n+1)]`
-/

namespace A094068.P11400233691565615080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P11400233691565615080

namespace A094068

/-- `∩[A054799(n+1), A175248(n+1)]` -/
def P11400233691565615080.Spec : Prop :=
  ∀ n, (P11400233691565615080.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P11506157116328138816

`∩[A055003(n+1), A181747(n+1)]`
-/

namespace A094068.P11506157116328138816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P11506157116328138816

namespace A094068

/-- `∩[A055003(n+1), A181747(n+1)]` -/
def P11506157116328138816.Spec : Prop :=
  ∀ n, (P11506157116328138816.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P10496644133704587531

`∩[A006450(n+1)-2, A054799(n+1)]`
-/

namespace A094068.P10496644133704587531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P10496644133704587531

namespace A094068

/-- `∩[A006450(n+1)-2, A054799(n+1)]` -/
def P10496644133704587531.Spec : Prop :=
  ∀ n, (P10496644133704587531.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P9977282726594762246

`∩[A006450(n+1)-2, A124588(n+1)]`
-/

namespace A094068.P9977282726594762246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P9977282726594762246

namespace A094068

/-- `∩[A006450(n+1)-2, A124588(n+1)]` -/
def P9977282726594762246.Spec : Prop :=
  ∀ n, (P9977282726594762246.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P9784341144635752961

`∩[A054799(n+1), A175247(n+1)-2]`
-/

namespace A094068.P9784341144635752961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P9784341144635752961

namespace A094068

/-- `∩[A054799(n+1), A175247(n+1)-2]` -/
def P9784341144635752961.Spec : Prop :=
  ∀ n, (P9784341144635752961.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P6784880951093037714

`∩[A006450(n+1)-2, A238528(n+1)]`
-/

namespace A094068.P6784880951093037714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P6784880951093037714

namespace A094068

/-- `∩[A006450(n+1)-2, A238528(n+1)]` -/
def P6784880951093037714.Spec : Prop :=
  ∀ n, (P6784880951093037714.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P329225299894759022

`∩[A054799(n+1), A302592(n+1)-2]`
-/

namespace A094068.P329225299894759022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P329225299894759022

namespace A094068

/-- `∩[A054799(n+1), A302592(n+1)-2]` -/
def P329225299894759022.Spec : Prop :=
  ∀ n, (P329225299894759022.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P4487923794374640732

`∩[A054799(n+1), A302596(n+1)-2]`
-/

namespace A094068.P4487923794374640732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P4487923794374640732

namespace A094068

/-- `∩[A054799(n+1), A302596(n+1)-2]` -/
def P4487923794374640732.Spec : Prop :=
  ∀ n, (P4487923794374640732.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P11352900706860440102

`∩[A055003(n+1), A063700(n+1)]`
-/

namespace A094068.P11352900706860440102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P11352900706860440102

namespace A094068

/-- `∩[A055003(n+1), A063700(n+1)]` -/
def P11352900706860440102.Spec : Prop :=
  ∀ n, (P11352900706860440102.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P2482331140717254012

`∩[A063700(n+1), A175248(n+1)]`
-/

namespace A094068.P2482331140717254012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P2482331140717254012

namespace A094068

/-- `∩[A063700(n+1), A175248(n+1)]` -/
def P2482331140717254012.Spec : Prop :=
  ∀ n, (P2482331140717254012.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P16402630070440121273

`∩[A006450(n+1)-2, A063700(n+1)]`
-/

namespace A094068.P16402630070440121273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P16402630070440121273

namespace A094068

/-- `∩[A006450(n+1)-2, A063700(n+1)]` -/
def P16402630070440121273.Spec : Prop :=
  ∀ n, (P16402630070440121273.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P6688226628309869173

`∩[A063700(n+1), A175247(n+1)-2]`
-/

namespace A094068.P6688226628309869173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P6688226628309869173

namespace A094068

/-- `∩[A063700(n+1), A175247(n+1)-2]` -/
def P6688226628309869173.Spec : Prop :=
  ∀ n, (P6688226628309869173.a n : ℤ) = A094068 (n + 1)

end A094068

/-! ## A094068.P10997545585145105720

`∩[A063700(n+1), A302592(n+1)-2]`
-/

namespace A094068.P10997545585145105720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094068.P10997545585145105720

namespace A094068

/-- `∩[A063700(n+1), A302592(n+1)-2]` -/
def P10997545585145105720.Spec : Prop :=
  ∀ n, (P10997545585145105720.a n : ℤ) = A094068 (n + 1)

end A094068

/-!
# A094069: Prime(p)-4 for primes p such that prime(p) - 4 is prime.

The programs for A094069, the canonical program `A094069.P10196989370020764207` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094069 has offset 1).

The definition of A094069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094069.P16461680486091533515

`∩[A029710(n+1), A055003(n+1)]`
-/

namespace A094069.P16461680486091533515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094069.P16461680486091533515

namespace A094069

/-- `∩[A029710(n+1), A055003(n+1)]` -/
def P16461680486091533515.Spec : Prop :=
  ∀ n, (P16461680486091533515.a n : ℤ) = A094069 (n + 1)

end A094069

/-! ## A094069.P2478338047078913058

`∩[A029710(n+1), A175248(n+1)]`
-/

namespace A094069.P2478338047078913058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094069.P2478338047078913058

namespace A094069

/-- `∩[A029710(n+1), A175248(n+1)]` -/
def P2478338047078913058.Spec : Prop :=
  ∀ n, (P2478338047078913058.a n : ℤ) = A094069 (n + 1)

end A094069

/-! ## A094069.P10196989370020764207

`p?[A006450(n+1)-4]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094069

/-- `p?[A006450(n+1)-4]` -/
def P10196989370020764207.Spec : Prop :=
  ∀ n, P10196989370020764207.a n = A094069 (n + 1)

theorem P10196989370020764207.correct : P10196989370020764207.Spec := by
  intro n
  simp only [A094069, Nat.add_sub_cancel]

end A094069

/-! ## A094069.P18071590873594898641

`p?[∑[A073131(n+1)]-1]`
-/

namespace A094069.P18071590873594898641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P18071590873594898641

namespace A094069

/-- `p?[∑[A073131(n+1)]-1]` -/
def P18071590873594898641.Spec : Prop :=
  ∀ n, P18071590873594898641.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P3681303506676356461

`p?[A262021(n+1)-3+n]`
-/

namespace A094069.P3681303506676356461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P3681303506676356461

namespace A094069

/-- `p?[A262021(n+1)-3+n]` -/
def P3681303506676356461.Spec : Prop :=
  ∀ n, P3681303506676356461.a n = A094069 (n + 1)

theorem P3681303506676356461.correct : P3681303506676356461.Spec := by
  intro n
  simp only [A094069, Nat.add_sub_cancel, A094069.P3681303506676356461.f1, A094069.P3681303506676356461.a, A094069.P10196989370020764207.f1, A094069.P10196989370020764207.a, A006450, A006450.P16445646407241112379.a, A262021, A262021.P16382475691803801981.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094069

/-! ## A094069.P6235993066352073832

`p?[A064988(A008578(n+1))-4]`
-/

namespace A094069.P6235993066352073832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A008578 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P6235993066352073832

namespace A094069

/-- `p?[A064988(A008578(n+1))-4]` -/
def P6235993066352073832.Spec : Prop :=
  ∀ n, P6235993066352073832.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P5327903572044166241

`p?[A064988(A065091(n+1))-4]`
-/

namespace A094069.P5327903572044166241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A065091 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P5327903572044166241

namespace A094069

/-- `p?[A064988(A065091(n+1))-4]` -/
def P5327903572044166241.Spec : Prop :=
  ∀ n, P5327903572044166241.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P993294006564874656

`p?[A156037(A156037(n+1)+1)-3]`
-/

namespace A094069.P993294006564874656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A156037 (n + 1) + 1).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P993294006564874656

namespace A094069

/-- `p?[A156037(A156037(n+1)+1)-3]` -/
def P993294006564874656.Spec : Prop :=
  ∀ n, P993294006564874656.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P1242679295109091066

`p?[A361707(p?[2*n+1])]`
-/

namespace A094069.P1242679295109091066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361707 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P1242679295109091066

namespace A094069

/-- `p?[A361707(p?[2*n+1])]` -/
def P1242679295109091066.Spec : Prop :=
  ∀ n, P1242679295109091066.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P11715502452425616299

`p?[A361707(A000040(n+1))]`
-/

namespace A094069.P11715502452425616299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361707 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P11715502452425616299

namespace A094069

/-- `p?[A361707(A000040(n+1))]` -/
def P11715502452425616299.Spec : Prop :=
  ∀ n, P11715502452425616299.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P2339400647643660267

`p?[A040976(p?[A005408(n)])-2]`
-/

namespace A094069.P2339400647643660267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P2339400647643660267

namespace A094069

/-- `p?[A040976(p?[A005408(n)])-2]` -/
def P2339400647643660267.Spec : Prop :=
  ∀ n, P2339400647643660267.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P9679877038236448913

`p?[A040976(p?[A057717(n)])-2]`
-/

namespace A094069.P9679877038236448913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P9679877038236448913

namespace A094069

/-- `p?[A040976(p?[A057717(n)])-2]` -/
def P9679877038236448913.Spec : Prop :=
  ∀ n, P9679877038236448913.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P5486471283638905383

`p?[A040976(p?[A352844(n)])-2]`
-/

namespace A094069.P5486471283638905383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P5486471283638905383

namespace A094069

/-- `p?[A040976(p?[A352844(n)])-2]` -/
def P5486471283638905383.Spec : Prop :=
  ∀ n, P5486471283638905383.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P14615358790802668915

`p?[A172367(A172367(n+1)+2)]`
-/

namespace A094069.P14615358790802668915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (A172367 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P14615358790802668915

namespace A094069

/-- `p?[A172367(A172367(n+1)+2)]` -/
def P14615358790802668915.Spec : Prop :=
  ∀ n, P14615358790802668915.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P9191716650120017634

`p?[A086801(A008578(n+2))-1]`
-/

namespace A094069.P9191716650120017634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (A008578 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P9191716650120017634

namespace A094069

/-- `p?[A086801(A008578(n+2))-1]` -/
def P9191716650120017634.Spec : Prop :=
  ∀ n, P9191716650120017634.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P9575476795175616069

`p?[A000040(eq[1, A328847(n)])-4]`
-/

namespace A094069.P9575476795175616069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P9575476795175616069

namespace A094069

/-- `p?[A000040(eq[1, A328847(n)])-4]` -/
def P9575476795175616069.Spec : Prop :=
  ∀ n, P9575476795175616069.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P12395322214514767992

`p?[A000040(eq[3, A226602(n)])-4]`
-/

namespace A094069.P12395322214514767992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P12395322214514767992

namespace A094069

/-- `p?[A000040(eq[3, A226602(n)])-4]` -/
def P12395322214514767992.Spec : Prop :=
  ∀ n, P12395322214514767992.a n = A094069 (n + 1)

end A094069

/-! ## A094069.P3974064194702612631

`p?[A006093(A006093(n+1)+1)-3]`
-/

namespace A094069.P3974064194702612631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (n + 1) + 1).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P3974064194702612631

namespace A094069

/-- `p?[A006093(A006093(n+1)+1)-3]` -/
def P3974064194702612631.Spec : Prop :=
  ∀ n, P3974064194702612631.a n = A094069 (n + 1)

theorem P3974064194702612631.correct : P3974064194702612631.Spec := by
  intro n
  simp only [A094069, Nat.add_sub_cancel, A094069.P3974064194702612631.f1, A094069.P3974064194702612631.a, A094069.P10196989370020764207.f1, A094069.P10196989370020764207.a, A006093, A006093.P2906174024863549003.a, A006450, A006450.P16445646407241112379.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094069

/-! ## A094069.P5168563236948619461

`p?[A000040(n+1)-A305800(n+1)²]`
-/

namespace A094069.P5168563236948619461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A305800 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094069.P5168563236948619461

namespace A094069

/-- `p?[A000040(n+1)-A305800(n+1)²]` -/
def P5168563236948619461.Spec : Prop :=
  ∀ n, P5168563236948619461.a n = A094069 (n + 1)

end A094069

/-!
# A094070: a(n) = A000085(n) * A000110(n).

The programs for A094070, there is no canonical definition to state claims against.
-/

/-! ## A094070.P11740323484683924267

`record[A095149(n)*A099020(n)]`
-/

namespace A094070.P11740323484683924267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n * A099020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094070.P11740323484683924267

/-! ## A094070.P17476564311533896866

`record[A099020(n)*A108087(n)]`
-/

namespace A094070.P17476564311533896866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n * A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094070.P17476564311533896866

/-! ## A094070.P15947812109162101681

`record[A099020(n)*A186020(n)]`
-/

namespace A094070.P15947812109162101681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n * A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094070.P15947812109162101681

/-! ## A094070.P14093031387122742701

`record[A099020(n)*A212431(n)]`
-/

namespace A094070.P14093031387122742701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n * A212431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094070.P14093031387122742701

/-! ## A094070.P9229644335560564856

`A000085(n+1)*A000110(n+1)`
-/

namespace A094070.P9229644335560564856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) * A000110 (n + 1)

end

end A094070.P9229644335560564856

/-!
# A094071: Coefficients arising in combinatorial field theory.

The programs for A094071, there is no canonical definition to state claims against.
-/

/-! ## A094071.P8216623326392223277

`record[A275422(n)]*A190865(n+1)`
-/

namespace A094071.P8216623326392223277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A190865 (n + 1)

end

end A094071.P8216623326392223277

/-! ## A094071.P5076877137902119004

`A000110(n+1)*A190865(n+1)`
-/

namespace A094071.P5076877137902119004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A190865 (n + 1)

end

end A094071.P5076877137902119004

/-! ## A094071.P4782891846194170989

`Δ[A005001(n+1)]*A190865(n+1)`
-/

namespace A094071.P4782891846194170989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A190865 (n + 1)

end

end A094071.P4782891846194170989

/-!
# A094072: Coefficients arising in combinatorial field theory.

The programs for A094072, there is no canonical definition to state claims against.
-/

/-! ## A094072.P4382733712149712453

`record[A123081(n)*A143398(n)]`
-/

namespace A094072.P4382733712149712453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 n * A143398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094072.P4382733712149712453

/-! ## A094072.P16429120545948873891

`record[A143398(n)*A346520(n)]`
-/

namespace A094072.P16429120545948873891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 n * A346520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094072.P16429120545948873891

/-! ## A094072.P13604984140191809790

`record[A143398(n)]*record[A343254(n)]`
-/

namespace A094072.P13604984140191809790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A094072.P13604984140191809790

/-! ## A094072.P10230189760183713155

`A000110(n+1)*A000248(n+1)`
-/

namespace A094072.P10230189760183713155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A000248 (n + 1)

end

end A094072.P10230189760183713155

/-!
# A094073: Coefficients arising in combinatorial field theory.

The programs for A094073, there is no canonical definition to state claims against.
-/

/-! ## A094073.P6249980638965957784

`A000110(2*(n+1))*A009233(n+1)`
-/

namespace A094073.P6249980638965957784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * (n + 1)) * A009233 (n + 1)

end

end A094073.P6249980638965957784

/-!
# A094074: Coefficients arising in combinatorial field theory.

The programs for A094074, there is no canonical definition to state claims against.
-/

/-! ## A094074.P14657083964854825870

`record[A005425(n)*A055634(n)]`
-/

namespace A094074.P14657083964854825870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n * A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094074.P14657083964854825870

/-! ## A094074.P18237315798807034340

`record[A005425(n)*A123023(n)]`
-/

namespace A094074.P18237315798807034340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n * A123023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094074.P18237315798807034340

/-! ## A094074.P8364284919661595913

`A001147(n)*A005425(2*n)`
-/

namespace A094074.P8364284919661595913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A005425 (2 * n)

end

end A094074.P8364284919661595913

/-! ## A094074.P5751977148367973384

`record[∑[A238803(n)]*A055634(n)]`
-/

namespace A094074.P5751977148367973384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094074.P5751977148367973384

/-! ## A094074.P8266786309627564819

`A005425(2*n)*A055634(2*n)`
-/

namespace A094074.P8266786309627564819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (2 * n) * A055634 (2 * n)

end

end A094074.P8266786309627564819

/-!
# A094075: Denominator of I(n)=integral_{x=0 to 1/n}(x^2-1)^3 dx.

The programs for A094075, the canonical program `A094075.P5392033714614851963` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094075 has offset 1).

The definition of A094075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094075.P5392033714614851963

`105*(n+1)^7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094075

/-- `105*(n+1)^7` -/
def P5392033714614851963.Spec : Prop :=
  ∀ n, (P5392033714614851963.a n : ℤ) = A094075 (n + 1)

theorem P5392033714614851963.correct : P5392033714614851963.Spec := by
  intro n
  simp only [A094075, Nat.add_sub_cancel]

end A094075

/-!
# A094076: Smallest k such that prime(n) + 2^k is prime, or -1 if no such prime exists.

The programs for A094076, there is no canonical definition to state claims against.
-/

/-! ## A094076.P320560721975505351

`A067760(A102781(n+1))-A000007(n)`
-/

namespace A094076.P320560721975505351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A102781 (n + 1)).toNat - A000007 n

end

end A094076.P320560721975505351

/-! ## A094076.P1945139789589424713

`A067760(A130290(n+1))-A000007(n)`
-/

namespace A094076.P1945139789589424713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A130290 (n + 1)).toNat - A000007 n

end

end A094076.P1945139789589424713

/-! ## A094076.P12546851986794554279

`A057427(n)*A067760(A102781(n+1))`
-/

namespace A094076.P12546851986794554279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A067760 (A102781 (n + 1)).toNat

end

end A094076.P12546851986794554279

/-! ## A094076.P14233764744664662894

`A057427(n)*A067760(A130290(n+1))`
-/

namespace A094076.P14233764744664662894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A067760 (A130290 (n + 1)).toNat

end

end A094076.P14233764744664662894

/-! ## A094076.P3998382710441712868

`A067760(A102781(n+1))-∏{d}[n, A001222(#)]`
-/

namespace A094076.P3998382710441712868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A102781 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A094076.P3998382710441712868

/-! ## A094076.P12174353538616756930

`A067760(A102781(n+1))-val(A000040(n+1), 2)`
-/

namespace A094076.P12174353538616756930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A102781 (n + 1)).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A094076.P12174353538616756930

/-! ## A094076.P1678311994605229224

`A067760(A130290(n+1))-val(A000040(n+1), 2)`
-/

namespace A094076.P1678311994605229224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A130290 (n + 1)).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A094076.P1678311994605229224

/-! ## A094076.P5149830490847481367

`A000045(2-C(2, n+1))*A067760(A102781(n+1))`
-/

namespace A094076.P5149830490847481367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - Nat.choose 2 (n + 1)) * A067760 (A102781 (n + 1)).toNat

end

end A094076.P5149830490847481367

/-! ## A094076.P15714693382100505395

`A008683(2*A000040(n+1))*A067760(A102781(n+1))`
-/

namespace A094076.P15714693382100505395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A067760 (A102781 (n + 1)).toNat

end

end A094076.P15714693382100505395

/-! ## A094076.P12379356141268771170

`xor(A000007(2*n), A067760(A102781(n+1)))`
-/

namespace A094076.P12379356141268771170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A067760 (A102781 (n + 1)).toNat)

end

end A094076.P12379356141268771170

/-! ## A094076.P12630816581269389196

`xor(A000007(2*n), A067760(A130290(n+1)))`
-/

namespace A094076.P12630816581269389196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A067760 (A130290 (n + 1)).toNat)

end

end A094076.P12630816581269389196

/-! ## A094076.P734920339812019458

`A067760(A130290(n+1))-A008683((n+1)²)`
-/

namespace A094076.P734920339812019458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A130290 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A094076.P734920339812019458

/-! ## A094076.P15402052694763621308

`A067760(A102781(n+1))+A008683(2*(n+1)²)`
-/

namespace A094076.P15402052694763621308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A102781 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A094076.P15402052694763621308

/-! ## A094076.P4641878993512918879

`and(A067760(A130290(n+1)), A198277(n))`
-/

namespace A094076.P4641878993512918879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067760 (A130290 (n + 1)).toNat) (A198277 n)

end

end A094076.P4641878993512918879

/-!
# A094077: a(1)=1 and, for n>1, a(n)=a(n-1)+n if n is even and a(n)=smallest positive integer which has not yet appeared in the sequence if n is odd.

The programs for A094077, there is no canonical definition to state claims against.
-/

/-! ## A094077.P15913720898388901234

`A188375(n+1)-C(xor(1, n), n)`
-/

namespace A094077.P15913720898388901234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1) - (Nat.choose (Nat.xor 1 n) n : ℤ)

end

end A094077.P15913720898388901234

/-! ## A094077.P6029578277017859291

`A003152(or(1, n)+1)%lcm(2, n+2)`
-/

namespace A094077.P6029578277017859291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003152 (Nat.lor 1 n + 1)) (Nat.lcm 2 (n + 2) : ℤ)

end

end A094077.P6029578277017859291

/-! ## A094077.P7182805056858305719

`A187968(n+1)-∑[n*(-1)^n]`
-/

namespace A094077.P7182805056858305719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094077.P7182805056858305719

/-! ## A094077.P3602958068499543344

`A001951(∑[and(1, n+1)])+(n+1)*and(1, n)`
-/

namespace A094077.P3602958068499543344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n + 1) * Nat.land 1 n : ℤ)

end

end A094077.P3602958068499543344

/-! ## A094077.P7253074440299760984

`A194976(A057029(n+1))`
-/

namespace A094077.P7253074440299760984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A057029 (n + 1)).toNat

end

end A094077.P7253074440299760984

/-! ## A094077.P7999178694949103953

`A188375(n+1)-A193356(n+1)`
-/

namespace A094077.P7999178694949103953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1) - A193356 (n + 1)

end

end A094077.P7999178694949103953

/-! ## A094077.P1490721915513322485

`A130472(2*(A187968(n+1)-A130472(n)))`
-/

namespace A094077.P1490721915513322485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (2 * (A187968 (n + 1) - A130472 n)).toNat

end

end A094077.P1490721915513322485

/-! ## A094077.P15277500400954192023

`A194921(A213399(n))`
-/

namespace A094077.P15277500400954192023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A213399 n).toNat

end

end A094077.P15277500400954192023

/-!
# A094079: Least hypotenuse of primitive Pythagorean triangle whose legs differ by A058529(n).

The programs for A094079, there is no canonical definition to state claims against.
-/

/-! ## A094079.P8781480080043601284

`A094142(n+1)-A094140(n+1)`
-/

namespace A094079.P8781480080043601284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094142 (n + 1) - A094140 (n + 1)

end

end A094079.P8781480080043601284

/-! ## A094079.P433371434325242444

`A094142(A000027(n+1))+A001489(A094140(n+1))`
-/

namespace A094079.P433371434325242444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094142 (A000027 (n + 1)).toNat + A001489 (A094140 (n + 1)).toNat

end

end A094079.P433371434325242444

/-! ## A094079.P1282862863459568525

`2*A094142(n+1)-A094080(n+1)`
-/

namespace A094079.P1282862863459568525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094142 (n + 1) - A094080 (n + 1)

end

end A094079.P1282862863459568525

/-! ## A094079.P14084435069898983538

`A094080(n+1)-2*A094140(n+1)`
-/

namespace A094079.P14084435069898983538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094080 (n + 1) - 2 * A094140 (n + 1)

end

end A094079.P14084435069898983538

/-! ## A094079.P9913214391969824972

`A094080(n+1)-A005843(A094140(n+1))`
-/

namespace A094079.P9913214391969824972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094080 (n + 1) - A005843 (A094140 (n + 1)).toNat

end

end A094079.P9913214391969824972

/-! ## A094079.P16046160966160520637

`A005843(A094142(n+1))-A094080(n+1)`
-/

namespace A094079.P16046160966160520637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A094142 (n + 1)).toNat - A094080 (n + 1)

end

end A094079.P16046160966160520637

/-!
# A094080: a(n)=sqrt(2*h^2 - d^2) where h=A094079 and d=A058529(n).

The programs for A094080, there is no canonical definition to state claims against.
-/

/-! ## A094080.P4831182438468268783

`A094142(n+1)+A094140(n+1)`
-/

namespace A094080.P4831182438468268783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094142 (n + 1) + A094140 (n + 1)

end

end A094080.P4831182438468268783

/-! ## A094080.P12845143667165275748

`A094079(n+1)+2*A094140(n+1)`
-/

namespace A094080.P12845143667165275748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094079 (n + 1) + 2 * A094140 (n + 1)

end

end A094080.P12845143667165275748

/-! ## A094080.P11363602169542341400

`2*A094142(n+1)-A094079(n+1)`
-/

namespace A094080.P11363602169542341400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094142 (n + 1) - A094079 (n + 1)

end

end A094080.P11363602169542341400

/-! ## A094080.P9359712341843614034

`A094079(n+1)+A005843(A094140(n+1))`
-/

namespace A094080.P9359712341843614034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094079 (n + 1) + A005843 (A094140 (n + 1)).toNat

end

end A094080.P9359712341843614034

/-! ## A094080.P15846840999192618905

`A005843(A094142(n+1))-A094079(n+1)`
-/

namespace A094080.P15846840999192618905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A094142 (n + 1)).toNat - A094079 (n + 1)

end

end A094080.P15846840999192618905

/-!
# A094081: Smallest integral ladder whose ends slide over the respective distances 1 and m=2*n+1 while slipping down along horizontal ground and vertical wall against which it leans.

The programs for A094081, the canonical program `A094081.P2338224348162489139` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094081 has offset 0).

The definition of A094081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094081.P2338224348162489139

`(2*n²+2*n+1)*(16*n²+16*n+5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094081

/-- `(2*n²+2*n+1)*(16*n²+16*n+5)` -/
def P2338224348162489139.Spec : Prop :=
  ∀ n, (P2338224348162489139.a n : ℤ) = A094081 n

theorem P2338224348162489139.correct : P2338224348162489139.Spec := by
  intro n
  simp only [A094081]

end A094081

/-! ## A094081.P3115238728915986911

`A267682(2*n+1)²+A054552(n+1)²`
-/

namespace A094081.P3115238728915986911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 (2 * n + 1) ^ 2 + A054552 (n + 1) ^ 2

end

end A094081.P3115238728915986911

namespace A094081

/-- `A267682(2*n+1)²+A054552(n+1)²` -/
def P3115238728915986911.Spec : Prop :=
  ∀ n, P3115238728915986911.a n = A094081 n

end A094081

/-! ## A094081.P5975405980508167563

`A002522(2*n+1)*A053755(2*n+1)/2`
-/

namespace A094081.P5975405980508167563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (2 * n + 1) * A053755 (2 * n + 1) : ℚ) / 2

end

end A094081.P5975405980508167563

namespace A094081

/-- `A002522(2*n+1)*A053755(2*n+1)/2` -/
def P5975405980508167563.Spec : Prop :=
  ∀ n, P5975405980508167563.a n = (A094081 n : ℚ)

theorem P5975405980508167563.correct : P5975405980508167563.Spec := by
  intro n
  simp only [A094081, Nat.add_sub_cancel, A094081.P5975405980508167563.a, A094081.P2338224348162489139.a, A002522, A002522.P3778392011853271743.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094081

/-! ## A094081.P17671529815692156151

`A053755(2*n+1)*A081346(2*n+1)/2`
-/

namespace A094081.P17671529815692156151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053755 (2 * n + 1) * A081346 (2 * n + 1) : ℚ) / 2

end

end A094081.P17671529815692156151

namespace A094081

/-- `A053755(2*n+1)*A081346(2*n+1)/2` -/
def P17671529815692156151.Spec : Prop :=
  ∀ n, P17671529815692156151.a n = (A094081 n : ℚ)

end A094081

/-! ## A094081.P7648882333276757435

`A174114(2*n+1)²+A174114(2*(n+1))²`
-/

namespace A094081.P7648882333276757435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (2 * n + 1) ^ 2 + A174114 (2 * (n + 1)) ^ 2

end

end A094081.P7648882333276757435

namespace A094081

/-- `A174114(2*n+1)²+A174114(2*(n+1))²` -/
def P7648882333276757435.Spec : Prop :=
  ∀ n, P7648882333276757435.a n = A094081 n

end A094081

/-! ## A094081.P12483606791383518533

`A139273((n+1)²+n²)`
-/

namespace A094081.P12483606791383518533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 ((n + 1) ^ 2 + n ^ 2)

end

end A094081.P12483606791383518533

namespace A094081

/-- `A139273((n+1)²+n²)` -/
def P12483606791383518533.Spec : Prop :=
  ∀ n, P12483606791383518533.a n = A094081 n

theorem P12483606791383518533.correct : P12483606791383518533.Spec := by
  intro n
  simp only [A094081, Nat.add_sub_cancel, A094081.P12483606791383518533.a, A094081.P2338224348162489139.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094081

/-! ## A094081.P17891527263200046822

`A139595(Δ[n²]²)`
-/

namespace A094081.P17891527263200046822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139595 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A094081.P17891527263200046822

namespace A094081

/-- `A139595(Δ[n²]²)` -/
def P17891527263200046822.Spec : Prop :=
  ∀ n, P17891527263200046822.a n = A094081 n

end A094081

/-! ## A094081.P7274863853540713099

`A274681(A069894(n))`
-/

namespace A094081.P7274863853540713099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274681 (A069894 n).toNat

end

end A094081.P7274863853540713099

namespace A094081

/-- `A274681(A069894(n))` -/
def P7274863853540713099.Spec : Prop :=
  ∀ n, P7274863853540713099.a n = A094081 n

end A094081

/-! ## A094081.P7028026001008732347

`A001107(A002522(2*n+1))/2`
-/

namespace A094081.P7028026001008732347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001107 (A002522 (2 * n + 1)).toNat : ℚ) / 2

end

end A094081.P7028026001008732347

namespace A094081

/-- `A001107(A002522(2*n+1))/2` -/
def P7028026001008732347.Spec : Prop :=
  ∀ n, P7028026001008732347.a n = (A094081 n : ℚ)

end A094081

/-! ## A094081.P2646201123184016723

`A274681(A074377(2*n)+n+2)`
-/

namespace A094081.P2646201123184016723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274681 (A074377 (2 * n) + (n + 2 : ℤ)).toNat

end

end A094081.P2646201123184016723

namespace A094081

/-- `A274681(A074377(2*n)+n+2)` -/
def P2646201123184016723.Spec : Prop :=
  ∀ n, P2646201123184016723.a n = A094081 n

end A094081

/-!
# A094083: Numerators of ratio of sides of n-th triple of rectangles of unit area sum around a triangle.

The programs for A094083, there is no canonical definition to state claims against.
-/

/-! ## A094083.P17480550149537048429

`A380910(n)²`
-/

namespace A094083.P17480550149537048429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 n ^ 2

end

end A094083.P17480550149537048429

/-! ## A094083.P6425279865042461791

`A004730(abs(1-n))²`
-/

namespace A094083.P6425279865042461791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |1 - (n : ℤ)|.toNat ^ 2

end

end A094083.P6425279865042461791

/-! ## A094083.P6692379274157094781

`(lcm(2, A036069(n))/2)²`
-/

namespace A094083.P6692379274157094781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (A036069 n) : ℚ) / 2) ^ 2

end

end A094083.P6692379274157094781

/-! ## A094083.P2420951537216809379

`A380910(A028310(n))^2`
-/

namespace A094083.P2420951537216809379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (A028310 n).toNat ^ 2

end

end A094083.P2420951537216809379

/-! ## A094083.P15073326524206686899

`A004730(abs(A023443(n)))^2`
-/

namespace A094083.P15073326524206686899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |A023443 n|.toNat ^ 2

end

end A094083.P15073326524206686899

/-!
# A094084: Denominators associated with A094083.

The programs for A094084, there is no canonical definition to state claims against.
-/

/-! ## A094084.P14895581154933704380

`A004731(n+1)²*A010684(n)`
-/

namespace A094084.P14895581154933704380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (n + 1) ^ 2 * A010684 n

end

end A094084.P14895581154933704380

/-! ## A094084.P9038384721160661304

`(A010673(n)+1)*A004731(n+1)²`
-/

namespace A094084.P9038384721160661304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n + 1) * A004731 (n + 1) ^ 2

end

end A094084.P9038384721160661304

/-! ## A094084.P17441367530628731459

`A004731(n+1)²*A010873(2*n+1)`
-/

namespace A094084.P17441367530628731459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (n + 1) ^ 2 * A010873 (2 * n + 1)

end

end A094084.P17441367530628731459

/-! ## A094084.P16888140505770498648

`A004731(n+1)²*A141459(A020639(n+1))`
-/

namespace A094084.P16888140505770498648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (n + 1) ^ 2 * A141459 (A020639 (n + 1)).toNat

end

end A094084.P16888140505770498648

/-!
# A094085: Denominator of (3*2^(n-1) - 1)*integral_{x=0 to 1/(4^n)}1-sqrt x dx.

The programs for A094085, the canonical program `A094085.P17125833030516716515` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094085 has offset 1).

The definition of A094085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094085.P17125833030516716515

`8*a(n-1)` with `a(0)=3, a(1)=96`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094085

/-- `8*a(n-1)` -/
def P17125833030516716515.Spec : Prop :=
  ∀ n, (P17125833030516716515.a n : ℤ) = A094085 (n + 1)

theorem P17125833030516716515.correct : P17125833030516716515.Spec := by
  intro n
  simp only [A094085, Nat.add_sub_cancel]

end A094085

/-! ## A094085.P5819863838180542505

`abs(∏[-a(n-1)])` with `a(0)=3, a(1)=32, a(2)=8`
-/

namespace A094085.P5819863838180542505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 32, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A094085.P5819863838180542505

namespace A094085

/-- `abs(∏[-a(n-1)])` -/
def P5819863838180542505.Spec : Prop :=
  ∀ n, P5819863838180542505.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P10739919917141632142

`3*record[((n-3)%3)^n]`
-/

namespace A094085.P10739919917141632142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 3) 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094085.P10739919917141632142

namespace A094085

/-- `3*record[((n-3)%3)^n]` -/
def P10739919917141632142.Spec : Prop :=
  ∀ n, P10739919917141632142.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P7548825442648293146

`lcm(2*a(floor(n/2)), 4*8^n)` with `a(0)=3`
-/

namespace A094085.P7548825442648293146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm (2 * a ⌊(n : ℚ) / 2⌋.toNat) (4 * 8 ^ n)

end

end A094085.P7548825442648293146

namespace A094085

/-- `lcm(2*a(floor(n/2)), 4*8^n)` -/
def P7548825442648293146.Spec : Prop :=
  ∀ n, (P7548825442648293146.a n : ℤ) = A094085 (n + 1)

end A094085

/-! ## A094085.P7104513756955309613

`3*A132479(3*n)`
-/

namespace A094085.P7104513756955309613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A132479 (3 * n)

end

end A094085.P7104513756955309613

namespace A094085

/-- `3*A132479(3*n)` -/
def P7104513756955309613.Spec : Prop :=
  ∀ n, P7104513756955309613.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P9710643258870596741

`3*A146541(3*n)`
-/

namespace A094085.P9710643258870596741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A146541 (3 * n)

end

end A094085.P9710643258870596741

namespace A094085

/-- `3*A146541(3*n)` -/
def P9710643258870596741.Spec : Prop :=
  ∀ n, P9710643258870596741.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P17012635145171786766

`A112033(A008458(n))`
-/

namespace A094085.P17012635145171786766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112033 (A008458 n).toNat

end

end A094085.P17012635145171786766

namespace A094085

/-- `A112033(A008458(n))` -/
def P17012635145171786766.Spec : Prop :=
  ∀ n, P17012635145171786766.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P3770040954684675938

`A206917(A130773(n+1))`
-/

namespace A094085.P3770040954684675938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (A130773 (n + 1)).toNat

end

end A094085.P3770040954684675938

namespace A094085

/-- `A206917(A130773(n+1))` -/
def P3770040954684675938.Spec : Prop :=
  ∀ n, P3770040954684675938.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P17963325901454752709

`A206917(A140139(n+2))`
-/

namespace A094085.P17963325901454752709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (A140139 (n + 2)).toNat

end

end A094085.P17963325901454752709

namespace A094085

/-- `A206917(A140139(n+2))` -/
def P17963325901454752709.Spec : Prop :=
  ∀ n, P17963325901454752709.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P9536179883416314710

`A146541(n)*A164346(n)`
-/

namespace A094085.P9536179883416314710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146541 n * A164346 n

end

end A094085.P9536179883416314710

namespace A094085

/-- `A146541(n)*A164346(n)` -/
def P9536179883416314710.Spec : Prop :=
  ∀ n, P9536179883416314710.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P9902681388029564019

`A151821(n+1)*A151821(n+1)*A007283(n)`
-/

namespace A094085.P9902681388029564019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) * A151821 (n + 1) * A007283 n

end

end A094085.P9902681388029564019

namespace A094085

/-- `A151821(n+1)*A151821(n+1)*A007283(n)` -/
def P9902681388029564019.Spec : Prop :=
  ∀ n, P9902681388029564019.a n = A094085 (n + 1)

end A094085

/-! ## A094085.P1395906384876315135

`A003945(n+1)*A151821(n+1)*A151821(n+1)`
-/

namespace A094085.P1395906384876315135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) * A151821 (n + 1) * A151821 (n + 1)

end

end A094085.P1395906384876315135

namespace A094085

/-- `A003945(n+1)*A151821(n+1)*A151821(n+1)` -/
def P1395906384876315135.Spec : Prop :=
  ∀ n, P1395906384876315135.a n = A094085 (n + 1)

end A094085

/-!
# A094088: E.g.f. 1/(2-cosh(x)) (even coefficients).

The programs for A094088, there is no canonical definition to state claims against.
-/

/-! ## A094088.P3967372354820867958

`A336012(2*n)`
-/

namespace A094088.P3967372354820867958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336012 (2 * n)

end

end A094088.P3967372354820867958

/-! ## A094088.P15080206409131923129

`A375381(2*n)`
-/

namespace A094088.P15080206409131923129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375381 (2 * n)

end

end A094088.P15080206409131923129

/-! ## A094088.P1646457507512108717

`or(1, A336012(A004277(n)))`
-/

namespace A094088.P1646457507512108717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A336012 (A004277 n).toNat)

end

end A094088.P1646457507512108717

/-! ## A094088.P17379241650556201196

`or(1, A336012(A005843(n)))`
-/

namespace A094088.P17379241650556201196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A336012 (A005843 n).toNat)

end

end A094088.P17379241650556201196

/-! ## A094088.P3878785603150059356

`A327034(2*n)/(A062157(n)²+1)`
-/

namespace A094088.P3878785603150059356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327034 (2 * n) : ℚ) / (A062157 n ^ 2 + 1 : ℚ)

end

end A094088.P3878785603150059356

/-!
# A094089: E.g.f.: exp(-1)*Sum((1+2*x)^binomial(n,2)/n!, n=0..infinity).

The programs for A094089, there is no canonical definition to state claims against.
-/

/-! ## A094089.P10859586559803036419

`∑[A284955(n!²)]-n`
-/

namespace A094089.P10859586559803036419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284955 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A094089.P10859586559803036419

/-!
# A094091: a(1) = 0; for n>0, a(n) = smaller of 0 and 1 such that we avoid the property that, for some i and j in the range S = 2 <= i < j <= n/2, a(i) ... a(2i) is a subsequence of a(j) ... a(2j).

The programs for A094091, there is no canonical definition to state claims against.
-/

/-! ## A094091.P6110476760646095710

`A073743(n+4)%2`
-/

namespace A094091.P6110476760646095710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073743 (n + 4 + 1)) 2

end

end A094091.P6110476760646095710

/-! ## A094091.P14288447024317206317

`and(4, A231880(n))/4`
-/

namespace A094091.P14288447024317206317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A231880 n) : ℚ) / 4

end

end A094091.P14288447024317206317

/-! ## A094091.P3960458046431653216

`dr(A001744(n+1))%2`
-/

namespace A094091.P3960458046431653216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001744 (n + 1)) % 2

end

end A094091.P3960458046431653216

/-! ## A094091.P12894516777292031828

`char[A288427(n+5)-3]`
-/

namespace A094091.P12894516777292031828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288427 (n + 5) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A094091.P12894516777292031828

/-! ## A094091.P17213778566702120089

`char[A165597(2*(n+2))+n]`
-/

namespace A094091.P17213778566702120089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (2 * (n + 2)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A094091.P17213778566702120089

/-!
# A094092: a(n) = floor(sqrt(n)^sqrt(n)).

The programs for A094092, there is no canonical definition to state claims against.
-/

/-! ## A094092.P7528460712985573946

`A094093(n+1)-Δ[A028391(n)]`
-/

namespace A094092.P7528460712985573946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (n + 1) - (f1 (n + 1) - f1 n)

end

end A094092.P7528460712985573946

/-! ## A094092.P17129458022079696314

`A094093(n+1)-A049240(n+1)`
-/

namespace A094092.P17129458022079696314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (n + 1) - A049240 (n + 1)

end

end A094092.P17129458022079696314

/-! ## A094092.P16638280423328401141

`A094093(n+1)+A057428(A277707(n+1))`
-/

namespace A094092.P16638280423328401141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (n + 1) + A057428 (A277707 (n + 1)).toNat

end

end A094092.P16638280423328401141

/-! ## A094092.P13880641300426497369

`A094093(n+1)-A060576(A007913(n+1))`
-/

namespace A094092.P13880641300426497369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (n + 1) - A060576 (A007913 (n + 1)).toNat

end

end A094092.P13880641300426497369

/-! ## A094092.P7954936527121706551

`floor(sqrt((n+1)^sqrt(n+1)))`
-/

namespace A094092.P7954936527121706551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℝ) ^ (Real.sqrt (n + 1 : ℝ)))⌋

end

end A094092.P7954936527121706551

/-! ## A094092.P572894742466965899

`ceil(sqrt((n+1)^sqrt(n+1)))-A068717(n+1)²`
-/

namespace A094092.P572894742466965899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) ^ (Real.sqrt (n + 1 : ℝ)))⌉ - A068717 (n + 1) ^ 2

end

end A094092.P572894742466965899

/-! ## A094092.P14518930279947569756

`A094093(n+1)-A000035(A007445(n+1))`
-/

namespace A094092.P14518930279947569756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (n + 1) - A000035 (A007445 (n + 1)).toNat

end

end A094092.P14518930279947569756

/-!
# A094093: a(n) = ceiling((sqrt n)^(sqrt n)).

The programs for A094093, there is no canonical definition to state claims against.
-/

/-! ## A094093.P15969216980055212316

`A094092(n+1)+Δ[A028391(n)]`
-/

namespace A094093.P15969216980055212316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094092 (n + 1) + (f1 (n + 1) - f1 n)

end

end A094093.P15969216980055212316

/-! ## A094093.P6616882601030786149

`A094092(n+1)+A049240(n+1)`
-/

namespace A094093.P6616882601030786149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094092 (n + 1) + A049240 (n + 1)

end

end A094093.P6616882601030786149

/-! ## A094093.P10342229065332288838

`ceil(sqrt((n+1)^sqrt(n+1)))`
-/

namespace A094093.P10342229065332288838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) ^ (Real.sqrt (n + 1 : ℝ)))⌉

end

end A094093.P10342229065332288838

/-! ## A094093.P6369170918697376310

`floor(A049240(n+1)+sqrt(A066641(n+1)))`
-/

namespace A094093.P6369170918697376310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049240 (n + 1) : ℝ) + Real.sqrt (A066641 (n + 1) : ℝ)⌋

end

end A094093.P6369170918697376310

/-! ## A094093.P17612664270025252774

`A094092(n+1)+A000035(A007445(n+1))`
-/

namespace A094093.P17612664270025252774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094092 (n + 1) + A000035 (A007445 (n + 1)).toNat

end

end A094093.P17612664270025252774

/-!
# A094094: Define x[1]...x[n] by the equations Sum_{j=1..n} x[j]^i = i, i=1..n; a(n) = n! * Sum_{j=1..n} x[j]^(n+1).

The programs for A094094, there is no canonical definition to state claims against.
-/

/-! ## A094094.P3129832458815397151

`A293116(n+2)+A000142(n+2)`
-/

namespace A094094.P3129832458815397151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293116 (n + 2) + A000142 (n + 2)

end

end A094094.P3129832458815397151

/-! ## A094094.P13869788555132267065

`A334561((n+1)²+(n+2)²)`
-/

namespace A094094.P13869788555132267065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A094094.P13869788555132267065

/-! ## A094094.P6128599565841728814

`record[A334561(∑[A008624(n)])]`
-/

namespace A094094.P6128599565841728814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094094.P6128599565841728814

/-! ## A094094.P11057024435398374449

`record[A293530(2*n²)]`
-/

namespace A094094.P11057024435398374449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293530 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094094.P11057024435398374449

/-! ## A094094.P14797819284763370072

`A293530(2*(n+2)²)`
-/

namespace A094094.P14797819284763370072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293530 (2 * (n + 2) ^ 2)

end

end A094094.P14797819284763370072

/-!
# A094096: Min{m: n = Sum((m mod (1+k*L(n)!))*2^(k-1): 1<=k<=L(n))}, where L(n) = length of binary representation of n, cf. A070939, A000142.

The programs for A094096, there is no canonical definition to state claims against.
-/

/-! ## A094096.P17474247799295225701

`A110353(A133444(n*A139351(n)))`
-/

namespace A094096.P17474247799295225701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110353 (A133444 ((n : ℤ) * A139351 n).toNat).toNat

end

end A094096.P17474247799295225701

/-!
# A094098: Number of divisor chains of length n in which the first term is a divisor of n(n+1)/2 ("cyclic" divisor chains).

The programs for A094098, there is no canonical definition to state claims against.
-/

/-! ## A094098.P10594613240303399821

`A179751(C(n%or(1, n), ceil(n/2)))`
-/

namespace A094098.P10594613240303399821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (Nat.choose (n % Nat.lor 1 n) ⌈(n : ℚ) / 2⌉.toNat)

end

end A094098.P10594613240303399821

/-! ## A094098.P17005731204514998311

`∑[n+1]%(n+2)-A011697(2^n)`
-/

namespace A094098.P17005731204514998311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ) - A011697 (2 ^ n)

end

end A094098.P17005731204514998311

/-! ## A094098.P12803110595995620549

`A179751(A126869(n))`
-/

namespace A094098.P12803110595995620549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (A126869 n).toNat

end

end A094098.P12803110595995620549

/-! ## A094098.P9686364462281308879

`A179751(A116382(∑[n]))`
-/

namespace A094098.P9686364462281308879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (A116382 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A094098.P9686364462281308879

/-! ## A094098.P10919848689137030210

`A000120(C(A000593(n+1), lcm(2, n+2)/2))`
-/

namespace A094098.P10919848689137030210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A000593 (n + 1)).toNat (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat)

end

end A094098.P10919848689137030210

/-!
# A094099: Number of divisor chains of length 2n+1 which are both cyclic and anchored.

The programs for A094099, there is no canonical definition to state claims against.
-/

/-! ## A094099.P15736119056574955287

`A094097(2*n+1)`
-/

namespace A094099.P15736119056574955287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094097 (2 * n + 1)

end

end A094099.P15736119056574955287

/-! ## A094099.P6149178020453299224

`gcd(floor(1/(n+1)), A094097((n+1)²-n²))`
-/

namespace A094099.P6149178020453299224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A094097 ((n + 1) ^ 2 - n ^ 2))

end

end A094099.P6149178020453299224


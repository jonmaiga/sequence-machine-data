import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
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
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A381700: a(n) is the smallest multiple k*n that contains all the distinct digits of n, where k > 0 must have at least one digit > 1.

The programs for A381700, there is no canonical definition to state claims against.
-/

/-! ## A381700.P16635023336858176075

`(n+1)*A381946(n+1)`
-/

namespace A381700.P16635023336858176075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A381946 (n + 1)

end

end A381700.P16635023336858176075

/-!
# A381704: Fibonacci numbers having a Fibonacci number of 1's in their binary representation.

The programs for A381704, there is no canonical definition to state claims against.
-/

/-! ## A381704.P2139150391522162199

`record[A035517(A241089(n))]`
-/

namespace A381704.P2139150391522162199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (A241089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381704.P2139150391522162199

/-! ## A381704.P14327767150045260770

`record[A000045(floor(A273784(n+1)/2))]`
-/

namespace A381704.P14327767150045260770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(A273784 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381704.P14327767150045260770

/-! ## A381704.P5557862014527911212

`record[A000045(n)%A379046(3*n+4)]`
-/

namespace A381704.P5557862014527911212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A379046 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381704.P5557862014527911212

/-! ## A381704.P10040123402832984573

`A132636(lt[A079440(n), A056239(n+1)])`
-/

namespace A381704.P10040123402832984573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132636 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381704.P10040123402832984573

/-! ## A381704.P17938341533263708163

`A000045(lt[A324743(n), A259086(n+1)])`
-/

namespace A381704.P17938341533263708163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381704.P17938341533263708163

/-!
# A381705: Length of iteration sequence of shortest unimodal Collatz (3x+1)/2 sequence that begins with exactly n increases and ends with continuous decreases until reaching 1.

The programs for A381705, the canonical program `A381705.P4111808280753758285` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381705 has offset 1).

The definition of A381705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381705.P4111808280753758285

`n+1+3^n+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381705

/-- `n+1+3^n+1` -/
def P4111808280753758285.Spec : Prop :=
  ∀ n, (P4111808280753758285.a n : ℤ) = A381705 (n + 1)

theorem P4111808280753758285.correct : P4111808280753758285.Spec := by
  intro n
  simp only [A381705, Nat.add_sub_cancel]

end A381705

/-! ## A381705.P8263246219007029411

`∑[ogf((3-9x+4x^2)/(1-4x+3x^2))]`
-/

namespace A381705.P8263246219007029411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, 4] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381705.P8263246219007029411

namespace A381705

/-- `∑[ogf((3-9x+4x^2)/(1-4x+3x^2))]` -/
def P8263246219007029411.Spec : Prop :=
  ∀ n, P8263246219007029411.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P12485460390780165749

`ogf((3-9x+4x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A381705.P12485460390780165749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, 4] [1, -5, 7, -3] n

end

end A381705.P12485460390780165749

namespace A381705

/-- `ogf((3-9x+4x^2)/(1-5x+7x^2-3x^3))` -/
def P12485460390780165749.Spec : Prop :=
  ∀ n, P12485460390780165749.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P8145633491568717290

`∑[3*a(n-1)-2]` with `a(0)=3, a(1)=3`
-/

namespace A381705.P8145633491568717290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  3 * f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381705.P8145633491568717290

namespace A381705

/-- `∑[3*a(n-1)-2]` -/
def P8145633491568717290.Spec : Prop :=
  ∀ n, P8145633491568717290.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P13020674683316488147

`Δ[3*a(n-1)-n²]` with `a(0)=2`
-/

namespace A381705.P13020674683316488147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381705.P13020674683316488147

namespace A381705

/-- `Δ[3*a(n-1)-n²]` -/
def P13020674683316488147.Spec : Prop :=
  ∀ n, P13020674683316488147.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P4931850194344886320

`record[3*a(n-2)-(n+1)]` with `a(0)=3, a(1)=0`
-/

namespace A381705.P4931850194344886320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  3 * f1 (n - 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381705.P4931850194344886320

namespace A381705

/-- `record[3*a(n-2)-(n+1)]` -/
def P4931850194344886320.Spec : Prop :=
  ∀ n, P4931850194344886320.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P7394979727167407712

`abs(2*n+1-3*a(n-1))` with `a(0)=3`
-/

namespace A381705.P7394979727167407712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |(2 * n + 1 : ℤ) - 3 * a (n - 1)|

end

end A381705.P7394979727167407712

namespace A381705

/-- `abs(2*n+1-3*a(n-1))` -/
def P7394979727167407712.Spec : Prop :=
  ∀ n, P7394979727167407712.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P7704160168139923729

`floor(3*a(n-1)-(2*n+1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A381705.P7704160168139923729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - (2 * n + 1 : ℤ)

end

end A381705.P7704160168139923729

namespace A381705

/-- `floor(3*a(n-1)-(2*n+1))` -/
def P7704160168139923729.Spec : Prop :=
  ∀ n, P7704160168139923729.a n = A381705 (n + 1)

theorem P7704160168139923729.correct : P7704160168139923729.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381705, Nat.add_sub_cancel, A381705.P7704160168139923729.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381705, Nat.add_sub_cancel, A381705.P7704160168139923729.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381705

/-! ## A381705.P9122856281739810223

`floor(3*a(n-1)-1-2*n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A381705.P9122856281739810223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - 1 - (2 * n : ℤ)

end

end A381705.P9122856281739810223

namespace A381705

/-- `floor(3*a(n-1)-1-2*n)` -/
def P9122856281739810223.Spec : Prop :=
  ∀ n, P9122856281739810223.a n = A381705 (n + 1)

theorem P9122856281739810223.correct : P9122856281739810223.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381705, Nat.add_sub_cancel, A381705.P9122856281739810223.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381705, Nat.add_sub_cancel, A381705.P9122856281739810223.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381705

/-! ## A381705.P3437719160698912242

`ceil(3*a(n-1)-(2*n+1))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A381705.P3437719160698912242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - (2 * n + 1 : ℤ)

end

end A381705.P3437719160698912242

namespace A381705

/-- `ceil(3*a(n-1)-(2*n+1))` -/
def P3437719160698912242.Spec : Prop :=
  ∀ n, P3437719160698912242.a n = A381705 (n + 1)

theorem P3437719160698912242.correct : P3437719160698912242.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381705, Nat.add_sub_cancel, A381705.P3437719160698912242.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381705, Nat.add_sub_cancel, A381705.P3437719160698912242.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381705

/-! ## A381705.P5836874004187215278

`round(3*a(n-1)-(2*n+1))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A381705.P5836874004187215278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - (2 * n + 1 : ℤ)

end

end A381705.P5836874004187215278

namespace A381705

/-- `round(3*a(n-1)-(2*n+1))` -/
def P5836874004187215278.Spec : Prop :=
  ∀ n, P5836874004187215278.a n = A381705 (n + 1)

theorem P5836874004187215278.correct : P5836874004187215278.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381705, Nat.add_sub_cancel, A381705.P5836874004187215278.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381705, Nat.add_sub_cancel, A381705.P5836874004187215278.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381705

/-! ## A381705.P10440708835192314043

`3*(a(n-1)-(2*n+1)/3)` with `a(0)=3`
-/

namespace A381705.P10440708835192314043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  3 * (a (n - 1) - (2 * n + 1 : ℚ) / 3)

end

end A381705.P10440708835192314043

namespace A381705

/-- `3*(a(n-1)-(2*n+1)/3)` -/
def P10440708835192314043.Spec : Prop :=
  ∀ n, P10440708835192314043.a n = (A381705 (n + 1) : ℚ)

theorem P10440708835192314043.correct : P10440708835192314043.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381705, Nat.add_sub_cancel, A381705.P10440708835192314043.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381705, Nat.add_sub_cancel, A381705.P10440708835192314043.a, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381705

/-! ## A381705.P4668295286338233531

`∑[a(n-1)+a(n-1)+a(n-1)-2]` with `a(0)=3, a(1)=3`
-/

namespace A381705.P4668295286338233531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381705.P4668295286338233531

namespace A381705

/-- `∑[a(n-1)+a(n-1)+a(n-1)-2]` -/
def P4668295286338233531.Spec : Prop :=
  ∀ n, P4668295286338233531.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P18209689318106083942

`∑[a(n-1)-(2-a(n-1)-a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A381705.P18209689318106083942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381705.P18209689318106083942

namespace A381705

/-- `∑[a(n-1)-(2-a(n-1)-a(n-1))]` -/
def P18209689318106083942.Spec : Prop :=
  ∀ n, P18209689318106083942.a n = A381705 (n + 1)

end A381705

/-! ## A381705.P13894059865035002450

`(A176805(n+1)+2)/3`
-/

namespace A381705.P13894059865035002450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176805 (n + 1) + 2 : ℚ) / 3

end

end A381705.P13894059865035002450

namespace A381705

/-- `(A176805(n+1)+2)/3` -/
def P13894059865035002450.Spec : Prop :=
  ∀ n, P13894059865035002450.a n = (A381705 (n + 1) : ℚ)

theorem P13894059865035002450.correct : P13894059865035002450.Spec := by
  intro n
  simp only [A381705, Nat.add_sub_cancel, A381705.P13894059865035002450.a, A381705.P4111808280753758285.a, A176805, A176805.P17224655801162528754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381705

/-! ## A381705.P7771711188795362584

`A005051(n)%A133648(n+1)`
-/

namespace A381705.P7771711188795362584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005051 n) (A133648 (n + 1))

end

end A381705.P7771711188795362584

namespace A381705

/-- `A005051(n)%A133648(n+1)` -/
def P7771711188795362584.Spec : Prop :=
  ∀ n, P7771711188795362584.a n = A381705 (n + 1)

end A381705

/-!
# A381708: a(n) is the smallest nonnegative integer k such that sigma_k(n) > sigma_k(j) for all 1 <= j < n.

The programs for A381708, there is no canonical definition to state claims against.
-/

/-! ## A381708.P9350631757357437682

`val(A124758(A198259(3*n+1)), A030057(n+1))`
-/

namespace A381708.P9350631757357437682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124758 (A198259 (3 * n + 1)).toNat).toNat (A030057 (n + 1)).toNat

end

end A381708.P9350631757357437682

/-! ## A381708.P13153068013243860796

`A009993(∑{e}[A002532(n)+2, #])`
-/

namespace A381708.P13153068013243860796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A381708.P13153068013243860796

/-! ## A381708.P9964856053277723645

`A222084(A000127(n+1))%A289439(n+2)`
-/

namespace A381708.P9964856053277723645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222084 (A000127 (n + 1)).toNat) (A289439 (n + 2))

end

end A381708.P9964856053277723645

/-! ## A381708.P1306079010761744027

`A039953(A003714(2*(n+2)))%A000010(n+1)`
-/

namespace A381708.P1306079010761744027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039953 (A003714 (2 * (n + 2))).toNat) (A000010 (n + 1))

end

end A381708.P1306079010761744027

/-! ## A381708.P7840140142616407685

`and(A001222(A000682(n+1)), A076565(3*n+5))`
-/

namespace A381708.P7840140142616407685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A000682 (n + 1)).toNat) (A076565 (3 * n + 5))

end

end A381708.P7840140142616407685

/-!
# A381710: a(n) is the number of distinct solution sets to the quadratic equations u*x^2 + v*x + w = 0 with integer coefficients u, v, w, abs(u) + abs(v) + abs(w) <= n having a negative discriminant.

The programs for A381710, there is no canonical definition to state claims against.
-/

/-! ## A381710.P17122046844359444407

`A379597(n+1)-A381711(n+1)`
-/

namespace A381710.P17122046844359444407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379597 (n + 1) - A381711 (n + 1)

end

end A381710.P17122046844359444407

/-!
# A381711: a(n) = A379597(n) - A381710(n).

The programs for A381711, there is no canonical definition to state claims against.
-/

/-! ## A381711.P2663790452822314897

`A379597(n+1)-A381710(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381711.P2663790452822314897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379597 (n + 1) - A381710 (n + 1)

end

end A381711.P2663790452822314897

/-! ## A381711.P14552562998761308894

`∑[∑[A169891(A293606(n))]]`
-/

namespace A381711.P14552562998761308894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169891 (A293606 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381711.P14552562998761308894

/-! ## A381711.P5237994657576282790

`∑[record[A009191(A229335(n+1))]]`
-/

namespace A381711.P5237994657576282790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A229335 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381711.P5237994657576282790

/-! ## A381711.P12447738194524602915

`∑[record[A010554(A324696(n+1))]]`
-/

namespace A381711.P12447738194524602915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A324696 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381711.P12447738194524602915

/-! ## A381711.P15539405608773253942

`∑[∑[A032741(A199676(n+4))+1]]`
-/

namespace A381711.P15539405608773253942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A199676 (n + 4)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381711.P15539405608773253942

/-!
# A381713: a(n) = J_9(n)/J_3(n), where J_k is the k-th Jordan totient function.

The programs for A381713, the canonical program `A381713.P7553467801404850531` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381713 has offset 1).

The definition of A381713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381713.P7553467801404850531

`A069094(n+1)/A059376(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A381713

/-- `A069094(n+1)/A059376(n+1)` -/
def P7553467801404850531.Spec : Prop :=
  ∀ n, P7553467801404850531.a n = (A381713 (n + 1) : ℚ)

end A381713

/-! ## A381713.P16269144870417860508

`A160953(n+1)/A160889(n+1)`
-/

namespace A381713.P16269144870417860508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160953 (n + 1) : ℚ) / (A160889 (n + 1) : ℚ)

end

end A381713.P16269144870417860508

namespace A381713

/-- `A160953(n+1)/A160889(n+1)` -/
def P16269144870417860508.Spec : Prop :=
  ∀ n, P16269144870417860508.a n = (A381713 (n + 1) : ℚ)

end A381713

/-!
# A381717: Number of integer partitions of n that cannot be partitioned into constant multisets with distinct block-sums.

The programs for A381717, there is no canonical definition to state claims against.
-/

/-! ## A381717.P6966298592279832965

`A000041(n)-A382427(n)`
-/

namespace A381717.P6966298592279832965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A382427 n

end

end A381717.P6966298592279832965

/-! ## A381717.P10143219919538676157

`A213598(n)-A382427(n)`
-/

namespace A381717.P10143219919538676157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A382427 n

end

end A381717.P10143219919538676157

/-! ## A381717.P14494489319990876921

`A330643(n)-A382427(n)`
-/

namespace A381717.P14494489319990876921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A382427 n

end

end A381717.P14494489319990876921

/-! ## A381717.P10550816150558443945

`∑[A002865(n)]-A382427(n)`
-/

namespace A381717.P10550816150558443945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382427 n

end

end A381717.P10550816150558443945

/-! ## A381717.P11493342119088216916

`A119620(2*n)-A382427(n)`
-/

namespace A381717.P11493342119088216916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A382427 n

end

end A381717.P11493342119088216916

/-!
# A381718: Number of normal multiset partitions of weight n into sets with distinct sums.

The programs for A381718, there is no canonical definition to state claims against.
-/

/-! ## A381718.P16555519549555434191

`A113227(n)+val(A038119(3*n+4), 5)`
-/

namespace A381718.P16555519549555434191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113227 n + (SequenceMachineLib.valuation (A038119 (3 * n + 4)).toNat 5 : ℤ)

end

end A381718.P16555519549555434191

/-! ## A381718.P16145766526979074480

`A113227(n)+A011731(A182857(n))`
-/

namespace A381718.P16145766526979074480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113227 n + A011731 (A182857 n).toNat

end

end A381718.P16145766526979074480

/-! ## A381718.P263753389800690178

`A269035(A051249(n))+A061552(n)`
-/

namespace A381718.P263753389800690178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A051249 n).toNat + A061552 n

end

end A381718.P263753389800690178

/-!
# A381719: Numbers whose prime indices cannot be partitioned into sets with a common sum.

The programs for A381719, there is no canonical definition to state claims against.
-/

/-! ## A381719.P2315491975248372068

`∩[A079298(n+1), A376250(n+1)]`
-/

namespace A381719.P2315491975248372068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381719.P2315491975248372068

/-! ## A381719.P7432468062165168263

`∩[A089017(n+1), A376250(n+1)]`
-/

namespace A381719.P7432468062165168263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381719.P7432468062165168263

/-! ## A381719.P13631681068549245221

`∩[A121518(n+1), A376250(n+1)]`
-/

namespace A381719.P13631681068549245221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381719.P13631681068549245221

/-! ## A381719.P3743192932545352329

`∩[A376250(n+1), A393168(n+1)]`
-/

namespace A381719.P3743192932545352329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381719.P3743192932545352329

/-!
# A381720: Integers whose Hamming weight is a cube.

The programs for A381720, there is no canonical definition to state claims against.
-/

/-! ## A381720.P11024906692520220637

`∪[A023690(n+1), A131577(n)]`
-/

namespace A381720.P11024906692520220637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381720.P11024906692520220637

/-! ## A381720.P4894209442157184210

`record[n*A359774(A000120(n)+1)]`
-/

namespace A381720.P4894209442157184210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A359774 (A000120 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381720.P4894209442157184210

/-! ## A381720.P5688944177000040180

`record[A158780(n)-A185246(3*n)]`
-/

namespace A381720.P5688944177000040180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n - A185246 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381720.P5688944177000040180

/-! ## A381720.P14490169767840930328

`record[round(2^round((n-3)/2))-A089457(n+1)]`
-/

namespace A381720.P14490169767840930328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ)) - A089457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381720.P14490169767840930328

/-! ## A381720.P12265524442020448021

`2*a(n-1)-A219071(3*n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A381720.P12265524442020448021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 8, 16, 32] fun n a =>
  2 * a (n - 1) - A219071 (3 * n)

end

end A381720.P12265524442020448021

/-!
# A381721: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A381721, the canonical program `A381721.P9195889644798697899` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381721 has offset 0).

The definition of A381721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381721.P9195889644798697899

`2*A000032(n)²+4*A000032(n)+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A381721

/-- `2*A000032(n)²+4*A000032(n)+1` -/
def P9195889644798697899.Spec : Prop :=
  ∀ n, P9195889644798697899.a n = A381721 n

theorem P9195889644798697899.correct : P9195889644798697899.Spec := by
  intro n
  simp only [A381721]

end A381721

/-! ## A381721.P5166114087018402941

`A380823(n)+A000032(n)`
-/

namespace A381721.P5166114087018402941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380823 n + A000032 n

end

end A381721.P5166114087018402941

namespace A381721

/-- `A380823(n)+A000032(n)` -/
def P5166114087018402941.Spec : Prop :=
  ∀ n, P5166114087018402941.a n = A381721 n

theorem P5166114087018402941.correct : P5166114087018402941.Spec := by
  intro n
  simp only [A381721, Nat.add_sub_cancel, A381721.P5166114087018402941.a, A381721.P9195889644798697899.a, A000032, A000032.P8352177345629330861.a, A380823, A380823.P15923719920850826478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381721

/-! ## A381721.P14484381957670563189

`A386201(n)+A380821(n)`
-/

namespace A381721.P14484381957670563189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n + A380821 n

end

end A381721.P14484381957670563189

namespace A381721

/-- `A386201(n)+A380821(n)` -/
def P14484381957670563189.Spec : Prop :=
  ∀ n, P14484381957670563189.a n = A381721 n

theorem P14484381957670563189.correct : P14484381957670563189.Spec := by
  intro n
  simp only [A381721, Nat.add_sub_cancel, A381721.P14484381957670563189.a, A381721.P9195889644798697899.a, A000032, A000032.P8352177345629330861.a, A380821, A380821.P10996316985306517664.a, A386201, A386201.P11856909807172330877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381721

/-! ## A381721.P11386135237191184013

`A380823(n)+A329723(n+2)`
-/

namespace A381721.P11386135237191184013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380823 n + A329723 (n + 2)

end

end A381721.P11386135237191184013

namespace A381721

/-- `A380823(n)+A329723(n+2)` -/
def P11386135237191184013.Spec : Prop :=
  ∀ n, P11386135237191184013.a n = A381721 n

end A381721

/-! ## A381721.P9038726429938973797

`A380823(n)+A127218(2*n)`
-/

namespace A381721.P9038726429938973797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380823 n + A127218 (2 * n)

end

end A381721.P9038726429938973797

namespace A381721

/-- `A380823(n)+A127218(2*n)` -/
def P9038726429938973797.Spec : Prop :=
  ∀ n, P9038726429938973797.a n = A381721 n

end A381721

/-! ## A381721.P5538451521594760791

`A386201(n)+A386201(n)-A383039(n)`
-/

namespace A381721.P5538451521594760791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n + (A386201 n - A383039 n)

end

end A381721.P5538451521594760791

namespace A381721

/-- `A386201(n)+A386201(n)-A383039(n)` -/
def P5538451521594760791.Spec : Prop :=
  ∀ n, P5538451521594760791.a n = A381721 n

end A381721

/-! ## A381721.P5499044415041877857

`A000032(n)+A380824(n)/A000032(n)`
-/

namespace A381721.P5499044415041877857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) + (A380824 n : ℚ) / (A000032 n : ℚ)

end

end A381721.P5499044415041877857

namespace A381721

/-- `A000032(n)+A380824(n)/A000032(n)` -/
def P5499044415041877857.Spec : Prop :=
  ∀ n, P5499044415041877857.a n = (A381721 n : ℚ)

end A381721

/-! ## A381721.P14890583898663717458

`A380823(n)+A380824(n)/A380823(n)`
-/

namespace A381721.P14890583898663717458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380823 n : ℚ) + (A380824 n : ℚ) / (A380823 n : ℚ)

end

end A381721.P14890583898663717458

namespace A381721

/-- `A380823(n)+A380824(n)/A380823(n)` -/
def P14890583898663717458.Spec : Prop :=
  ∀ n, P14890583898663717458.a n = (A381721 n : ℚ)

theorem P14890583898663717458.correct : P14890583898663717458.Spec := by
  intro n
  simp only [A381721, Nat.add_sub_cancel, A381721.P14890583898663717458.a, A381721.P9195889644798697899.a, A000032, A000032.P8352177345629330861.a, A380823, A380823.P15923719920850826478.a, A380824, A380824.P12530804268031175926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381721

/-!
# A381724: a(n) = pos(M(n)), where M(n) is the n X n matrix with every term = 4, and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A381724, there is no canonical definition to state claims against.
-/

/-! ## A381724.P1390179439188354667

`lcm(4, ∏[4*(n+1)]/2)`
-/

namespace A381724.P1390179439188354667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2))

end

end A381724.P1390179439188354667

/-! ## A381724.P1154593314387309226

`record[4*n*a(n-1)]` with `a(0)=4, a(1)=2`
-/

namespace A381724.P1154593314387309226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  4 * (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381724.P1154593314387309226

/-! ## A381724.P5389962404782813131

`4*(n+1)*a(n-1)` with `a(0)=4, a(1)=16`
-/

namespace A381724.P5389962404782813131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 16] fun n a =>
  4 * ((n + 1) * a (n - 1))

end

end A381724.P5389962404782813131

/-! ## A381724.P4165546034305227113

`∏[gcd(4*(n+1), (n+2)!²)]`
-/

namespace A381724.P4165546034305227113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * (n + 1)) (Nat.factorial (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A381724.P4165546034305227113

/-! ## A381724.P10698718708413112645

`2^(2*n+1)*lcm(2, (n+1)!)`
-/

namespace A381724.P10698718708413112645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n + 1) * Nat.lcm 2 (Nat.factorial (n + 1))

end

end A381724.P10698718708413112645

/-!
# A381725: Numbers k such that 5^k - 4^k is a semiprime.

The programs for A381725, there is no canonical definition to state claims against.
-/

/-! ## A381725.P14640126030316770288

`A151800(2*A357177(n+1)+1)`
-/

namespace A381725.P14640126030316770288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A357177 (n + 1) + 1).toNat

end

end A381725.P14640126030316770288

/-! ## A381725.P877091265357894172

`A379681(A003173(n+1))+A335465(n)`
-/

namespace A381725.P877091265357894172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379681 (A003173 (n + 1)).toNat + A335465 n

end

end A381725.P877091265357894172

/-!
# A381728: Number of minimum dominating sets in the n-Mycielski graph.

The programs for A381728, there is no canonical definition to state claims against.
-/

/-! ## A381728.P8114441980261125603

`A303066(n+1)+A280457(n)`
-/

namespace A381728.P8114441980261125603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303066 (n + 1) + A280457 n

end

end A381728.P8114441980261125603

/-!
# A381729: Number of minimum connected dominating sets in the n-Lucas cube graph.

The programs for A381729, there is no canonical definition to state claims against.
-/

/-! ## A381729.P7305250164278306312

`A134264(A263778(n)+3)`
-/

namespace A381729.P7305250164278306312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134264 (A263778 n + 3).toNat

end

end A381729.P7305250164278306312

/-! ## A381729.P10243553440721617673

`A344678(A337165(n)+A014574(n+1))`
-/

namespace A381729.P10243553440721617673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344678 (A337165 n + A014574 (n + 1)).toNat

end

end A381729.P10243553440721617673

/-!
# A381730: Number of minimum connected dominating sets in the n X n grid graph.

The programs for A381730, there is no canonical definition to state claims against.
-/

/-! ## A381730.P14081462403423903152

`A381474((n+1)²+n²)`
-/

namespace A381730.P14081462403423903152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381474 ((n + 1) ^ 2 + n ^ 2)

end

end A381730.P14081462403423903152

/-! ## A381730.P9643584114860960810

`A032548(n+1)*A381474(A001844(n))`
-/

namespace A381730.P9643584114860960810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (n + 1) * A381474 (A001844 n).toNat

end

end A381730.P9643584114860960810

/-!
# A381731: a(n) is the least number k with squarefree neighbors such that the number of non-unitary divisors of k (A048105) is equal to n, or 0 if no such k exists.

The programs for A381731, there is no canonical definition to state claims against.
-/

/-! ## A381731.P13646603090118075871

`A000005(A001043(n+1)*A361775(n))`
-/

namespace A381731.P13646603090118075871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001043 (n + 1) * A361775 n).toNat

end

end A381731.P13646603090118075871

/-! ## A381731.P17829438119007305840

`A076259(A113676(n+1))+A032917(n+1)`
-/

namespace A381731.P17829438119007305840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A113676 (n + 1)).toNat + A032917 (n + 1)

end

end A381731.P17829438119007305840

/-! ## A381731.P12491262216937492292

`A372787(A001168(n)*A233564(3*n+2))`
-/

namespace A381731.P12491262216937492292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A001168 n * A233564 (3 * n + 2)).toNat

end

end A381731.P12491262216937492292

/-!
# A381733: Number of divisors d of n such that 2^omega(n + d) = tau(n + d), where omega = A001221 and tau = A000005.

The programs for A381733, there is no canonical definition to state claims against.
-/

/-! ## A381733.P2479293162383488281

`gcd(A056239(A159270(n+2)), A185396(n+3))`
-/

namespace A381733.P2479293162383488281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (A159270 (n + 2)).toNat) (A185396 (n + 3))

end

end A381733.P2479293162383488281

/-!
# A381735: Third center column of elementary triangular automaton rule 190, starting from a lone 1 cell.

The programs for A381735, there is no canonical definition to state claims against.
-/

/-! ## A381735.P12262541292825045696

`A091247(A235042(n)*A326149(3*n+4))`
-/

namespace A381735.P12262541292825045696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A235042 n * A326149 (3 * n + 4)).toNat

end

end A381735.P12262541292825045696

/-! ## A381735.P6579222166529417046

`A286055(A135771(n+1)+A051885(n))`
-/

namespace A381735.P6579222166529417046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (A135771 (n + 1) + A051885 n).toNat

end

end A381735.P6579222166529417046

/-! ## A381735.P13617667548989527434

`C(A000994(A181011(3*n+5)), A362451(n+1))`
-/

namespace A381735.P13617667548989527434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000994 (A181011 (3 * n + 5)).toNat).toNat (A362451 (n + 1)).toNat

end

end A381735.P13617667548989527434

/-! ## A381735.P6287130790485855717

`A288226(A138394(n+1))`
-/

namespace A381735.P6287130790485855717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (A138394 (n + 1)).toNat

end

end A381735.P6287130790485855717

/-!
# A381736: Integers k = p*q*r, where p < q < r are distinct primes and p*q > r.

The programs for A381736, there is no canonical definition to state claims against.
-/

/-! ## A381736.P15629635806364554070

`filter[A066681(n+1), A354926(#)]`
-/

namespace A381736.P15629635806364554070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381736.P15629635806364554070

/-! ## A381736.P1173095626804442750

`filter[A379872(n+1), A066829(#)]`
-/

namespace A381736.P1173095626804442750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A381736.P1173095626804442750

/-! ## A381736.P16573241523601903267

`filter[A289691(n+1), A354926(#)]`
-/

namespace A381736.P16573241523601903267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381736.P16573241523601903267

/-! ## A381736.P412011440085468744

`filter[A379872(n+1), A354353(#)]`
-/

namespace A381736.P412011440085468744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A381736.P412011440085468744

/-! ## A381736.P1194138936989626876

`filter[A379872(n+1), A354926(#)]`
-/

namespace A381736.P1194138936989626876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381736.P1194138936989626876

/-! ## A381736.P17705425629763148056

`filter[A379872(n+1), A354996(#)]`
-/

namespace A381736.P17705425629763148056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A381736.P17705425629763148056

/-! ## A381736.P16482728886559696181

`filter[A379872(n+1), A358753(#)]`
-/

namespace A381736.P16482728886559696181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A381736.P16482728886559696181

/-! ## A381736.P4691599517126069302

`filter[A379872(n+1), A359158(#)]`
-/

namespace A381736.P4691599517126069302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A381736.P4691599517126069302

/-! ## A381736.P2885922510408520383

`filter[A379872(n+1), A359372(#)]`
-/

namespace A381736.P2885922510408520383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A381736.P2885922510408520383

/-! ## A381736.P14616509421622234388

`filter[A379872(n+1), A374130(#)]`
-/

namespace A381736.P14616509421622234388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A381736.P14616509421622234388

/-! ## A381736.P10710767573001477001

`filter[A379872(n+1), A374466(#)]`
-/

namespace A381736.P10710767573001477001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A381736.P10710767573001477001

/-! ## A381736.P2350234011939860015

`filter[A379872(n+2), A008966(#)]`
-/

namespace A381736.P2350234011939860015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381736.P2350234011939860015

/-! ## A381736.P3177487489342461309

`filter[A379872(n+2), A212793(#)]`
-/

namespace A381736.P3177487489342461309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A381736.P3177487489342461309

/-! ## A381736.P7911467215593009429

`filter[A379872(n+2), A354819(#)]`
-/

namespace A381736.P7911467215593009429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A381736.P7911467215593009429

/-! ## A381736.P998219330239576730

`filter[A379872(n+2), A355823(#)]`
-/

namespace A381736.P998219330239576730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A381736.P998219330239576730

/-! ## A381736.P16410725679314178363

`filter[A379872(n+2), A355825(#)]`
-/

namespace A381736.P16410725679314178363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A381736.P16410725679314178363

/-! ## A381736.P10353592237766998463

`filter[A379872(n+2), A359471(#)]`
-/

namespace A381736.P10353592237766998463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A381736.P10353592237766998463

/-! ## A381736.P9590544224471185182

`filter[A164596(n+1), A354926(#)]`
-/

namespace A381736.P9590544224471185182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381736.P9590544224471185182

/-! ## A381736.P15324266525236162288

`filter[A164596(n+1), A358753(#)]`
-/

namespace A381736.P15324266525236162288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A381736.P15324266525236162288

/-! ## A381736.P8303084903882766382

`filter[A379872(n+1), A099104(#)]`
-/

namespace A381736.P8303084903882766382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A381736.P8303084903882766382

/-!
# A381737: Orders k of Hermite polynomials whose maximal coefficient in absolute value appears twice.

The programs for A381737, there is no canonical definition to state claims against.
-/

/-! ## A381737.P11844489709554500793

`xor(1, (n+3)*or(3, 2*n))`
-/

namespace A381737.P11844489709554500793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 3) * Nat.lor 3 (2 * n))

end

end A381737.P11844489709554500793

/-! ## A381737.P18358636340643492717

`4*(n+2)*∑[char[2*n]]+n`
-/

namespace A381737.P18358636340643492717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)) + n

end

end A381737.P18358636340643492717

/-! ## A381737.P13217514612939629290

`A165157(record[xor(5, n)])`
-/

namespace A381737.P13217514612939629290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A381737.P13217514612939629290

/-! ## A381737.P18019646543663425924

`A034856(record[xor(2, n)]+1)`
-/

namespace A381737.P18019646543663425924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A381737.P18019646543663425924

/-! ## A381737.P8460826928741277353

`A034856(∑[(-1)^n+2])`
-/

namespace A381737.P8460826928741277353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381737.P8460826928741277353

/-! ## A381737.P4014393733422396357

`A007401(A014494(n+1))`
-/

namespace A381737.P4014393733422396357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A014494 (n + 1)).toNat

end

end A381737.P4014393733422396357

/-! ## A381737.P2901100991855792482

`A101881(A047406(n+1))`
-/

namespace A381737.P2901100991855792482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (A047406 (n + 1)).toNat

end

end A381737.P2901100991855792482

/-! ## A381737.P18269480560145455031

`A165157(A047550(n+1))`
-/

namespace A381737.P18269480560145455031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (A047550 (n + 1)).toNat

end

end A381737.P18269480560145455031

/-! ## A381737.P5151483274681972892

`A035254(A193867(n+2))`
-/

namespace A381737.P5151483274681972892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035254 (A193867 (n + 2)).toNat

end

end A381737.P5151483274681972892

/-! ## A381737.P9161386079609051244

`A054254(A338062(n+2))`
-/

namespace A381737.P9161386079609051244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 (A338062 (n + 2)).toNat

end

end A381737.P9161386079609051244

/-!
# A381738: 

The programs for A381738, there is no canonical definition to state claims against.
-/

/-! ## A381738.P14195870153787531491

`sqrt(A063734(n+1))`
-/

namespace A381738.P14195870153787531491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063734 (n + 1) : ℝ)

end

end A381738.P14195870153787531491

/-! ## A381738.P9110606768661650090

`sqrt(∩[n², A156903(n+1)])`
-/

namespace A381738.P9110606768661650090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A381738.P9110606768661650090

/-! ## A381738.P11361149550265375379

`sqrt(∩[A363169(n+1), n²])`
-/

namespace A381738.P11361149550265375379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A381738.P11361149550265375379

/-! ## A381738.P12487410573068877700

`A065475(lt[A377879(n+1), 1])`
-/

namespace A381738.P12487410573068877700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A381738.P12487410573068877700

/-! ## A381738.P535158694061119685

`lt[2, ∑{d}[n², 1/#]]`
-/

namespace A381738.P535158694061119685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 1 / (d : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A381738.P535158694061119685

/-! ## A381738.P11890391544533101368

`A334166(n+1)+A007814(A228058(n+1))`
-/

namespace A381738.P11890391544533101368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334166 (n + 1) + A007814 (A228058 (n + 1)).toNat

end

end A381738.P11890391544533101368

/-! ## A381738.P1454567784775698541

`A334166(n+1)%A003071(A091214(3*n+4))`
-/

namespace A381738.P1454567784775698541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334166 (n + 1)) (A003071 (A091214 (3 * n + 4)).toNat)

end

end A381738.P1454567784775698541

/-! ## A381738.P14482788270549284996

`A334166(n+1)+A000007(round((n²+2)/4))`
-/

namespace A381738.P14482788270549284996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334166 (n + 1) + A000007 (SequenceMachineLib.roundAway ((n ^ 2 + 2 : ℚ) / 4)).toNat

end

end A381738.P14482788270549284996

/-! ## A381738.P5326871830758625470

`A050320(A104272(3*n+4))*A334166(n+1)`
-/

namespace A381738.P5326871830758625470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A104272 (3 * n + 4)).toNat * A334166 (n + 1)

end

end A381738.P5326871830758625470

/-! ## A381738.P2632958153773608354

`A334166(n+1)%A041192(n)`
-/

namespace A381738.P2632958153773608354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334166 (n + 1)) (A041192 n)

end

end A381738.P2632958153773608354

/-! ## A381738.P2612010857494592204

`A335462(A055377(n+4))+A334166(n+1)`
-/

namespace A381738.P2612010857494592204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A055377 (n + 4)).toNat + A334166 (n + 1)

end

end A381738.P2612010857494592204

/-! ## A381738.P7065994715644204929

`A057427(A143032(n+1))*A334166(n+1)`
-/

namespace A381738.P7065994715644204929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A143032 (n + 1)).toNat * A334166 (n + 1)

end

end A381738.P7065994715644204929

/-! ## A381738.P11325597474179909196

`and(A198694(n), A334166(n+1))`
-/

namespace A381738.P11325597474179909196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198694 n) (A334166 (n + 1))

end

end A381738.P11325597474179909196

/-! ## A381738.P2299376605108533097

`eq[1, A294936((n+1)²)]+1`
-/

namespace A381738.P2299376605108533097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381738.P2299376605108533097

/-! ## A381738.P16271783490956391371

`A334166(A003557(A064549(n+1)))`
-/

namespace A381738.P16271783490956391371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334166 (A003557 (A064549 (n + 1)).toNat).toNat

end

end A381738.P16271783490956391371

/-!
# A381740: Squarefree numbers k such that k^2 is abundant.

The programs for A381740, the canonical program `A381740.P15547761009824729862` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381740 has offset 1).

The definition of A381740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381740.P15547761009824729862

`filter[A363171(n+1), A008966(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A381740

/-- `filter[A363171(n+1), A008966(#)]` -/
def P15547761009824729862.Spec : Prop :=
  ∀ n, P15547761009824729862.a n = A381740 (n + 1)

theorem P15547761009824729862.correct : P15547761009824729862.Spec := by
  intro n
  simp only [A381740, Nat.add_sub_cancel]

end A381740

/-! ## A381740.P1111995108844554786

`filter[A363171(n+1), A354819(#)]`
-/

namespace A381740.P1111995108844554786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A381740.P1111995108844554786

namespace A381740

/-- `filter[A363171(n+1), A354819(#)]` -/
def P1111995108844554786.Spec : Prop :=
  ∀ n, P1111995108844554786.a n = A381740 (n + 1)

end A381740

/-! ## A381740.P14384124505128700179

`∩[A005117(n+1), A363171(n+1)]`
-/

namespace A381740.P14384124505128700179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P14384124505128700179

namespace A381740

/-- `∩[A005117(n+1), A363171(n+1)]` -/
def P14384124505128700179.Spec : Prop :=
  ∀ n, (P14384124505128700179.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P6193630873877901179

`∩[A068919(n+1), A363171(n+1)]`
-/

namespace A381740.P6193630873877901179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P6193630873877901179

namespace A381740

/-- `∩[A068919(n+1), A363171(n+1)]` -/
def P6193630873877901179.Spec : Prop :=
  ∀ n, (P6193630873877901179.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P14438119707346475071

`∩[A000469(n+1), A363171(n+1)]`
-/

namespace A381740.P14438119707346475071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P14438119707346475071

namespace A381740

/-- `∩[A000469(n+1), A363171(n+1)]` -/
def P14438119707346475071.Spec : Prop :=
  ∀ n, (P14438119707346475071.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P4556515077127479118

`∩[A120944(n+1), A363171(n+1)]`
-/

namespace A381740.P4556515077127479118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P4556515077127479118

namespace A381740

/-- `∩[A120944(n+1), A363171(n+1)]` -/
def P4556515077127479118.Spec : Prop :=
  ∀ n, (P4556515077127479118.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P8034846297750359808

`∩[A087249(n+1), A363171(n+1)]`
-/

namespace A381740.P8034846297750359808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P8034846297750359808

namespace A381740

/-- `∩[A087249(n+1), A363171(n+1)]` -/
def P8034846297750359808.Spec : Prop :=
  ∀ n, (P8034846297750359808.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P15775827873530610879

`∩[A144338(n+1), A363171(n+1)]`
-/

namespace A381740.P15775827873530610879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P15775827873530610879

namespace A381740

/-- `∩[A144338(n+1), A363171(n+1)]` -/
def P15775827873530610879.Spec : Prop :=
  ∀ n, (P15775827873530610879.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P3658603450096843433

`∩[A167207(n+1), A363171(n+1)]`
-/

namespace A381740.P3658603450096843433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P3658603450096843433

namespace A381740

/-- `∩[A167207(n+1), A363171(n+1)]` -/
def P3658603450096843433.Spec : Prop :=
  ∀ n, (P3658603450096843433.a n : ℤ) = A381740 (n + 1)

end A381740

/-! ## A381740.P18064738080333504149

`∩[A303554(n+1), A363171(n+1)]`
-/

namespace A381740.P18064738080333504149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381740.P18064738080333504149

namespace A381740

/-- `∩[A303554(n+1), A363171(n+1)]` -/
def P18064738080333504149.Spec : Prop :=
  ∀ n, (P18064738080333504149.a n : ℤ) = A381740 (n + 1)

end A381740

/-!
# A381741: Squarefree numbers k such that k^2 is abundant, and d^2 is nonabundant for any proper divisor d of k.

The programs for A381741, there is no canonical definition to state claims against.
-/

/-! ## A381741.P15616875846527997801

`∩[A363172(n+1), A381740(n+1)]`
-/

namespace A381741.P15616875846527997801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381741.P15616875846527997801

/-! ## A381741.P11844061509107915723

`∩[A381739(n+1), A381740(n+1)]`
-/

namespace A381741.P11844061509107915723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381741.P11844061509107915723

/-! ## A381741.P9149716236542574390

`filter[A363172(n+1), A008966(#)]`
-/

namespace A381741.P9149716236542574390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381741.P9149716236542574390

/-! ## A381741.P17373896571990847617

`filter[A381739(n+1), A008966(#)]`
-/

namespace A381741.P17373896571990847617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381741.P17373896571990847617

/-! ## A381741.P9232515311875770971

`filter[A363172(n+1), A354353(#)]`
-/

namespace A381741.P9232515311875770971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A381741.P9232515311875770971

/-! ## A381741.P10084845953231889718

`filter[A363172(n+1), A354819(#)]`
-/

namespace A381741.P10084845953231889718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A381741.P10084845953231889718

/-! ## A381741.P11566839407845173665

`filter[A381739(n+1), A354353(#)]`
-/

namespace A381741.P11566839407845173665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A381741.P11566839407845173665

/-! ## A381741.P2003691112295503894

`filter[A381739(n+1), A354819(#)]`
-/

namespace A381741.P2003691112295503894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A381741.P2003691112295503894

/-! ## A381741.P4690633293035954823

`∩[A005117(n+1), A363172(n+1)]`
-/

namespace A381741.P4690633293035954823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381741.P4690633293035954823

/-! ## A381741.P16302880935818848136

`filter[A363172(n+1), A323154(#)]`
-/

namespace A381741.P16302880935818848136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A381741.P16302880935818848136

/-! ## A381741.P15687869415879902357

`filter[A381739(n+1), A323154(#)]`
-/

namespace A381741.P15687869415879902357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A381741.P15687869415879902357

/-! ## A381741.P3602629205290745379

`filter[A363172(n+1), A353559(#)]`
-/

namespace A381741.P3602629205290745379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A381741.P3602629205290745379

/-! ## A381741.P12483544714751610144

`filter[A381739(n+1), A353559(#)]`
-/

namespace A381741.P12483544714751610144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A381741.P12483544714751610144

/-!
# A381743: The number of divisors d of n such that d*n is abundant.

The programs for A381743, there is no canonical definition to state claims against.
-/

/-! ## A381743.P9535958098706060622

`A327807(n+2)%A141073(A381178(3*n+2))`
-/

namespace A381743.P9535958098706060622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327807 (n + 2)) (A141073 (A381178 (3 * n + 2)).toNat)

end

end A381743.P9535958098706060622

/-!
# A381747: a(n) is the number of solutions to tau(x) + tau(n-x) = tau(n) where 1 <= x <= floor(n/2).

The programs for A381747, there is no canonical definition to state claims against.
-/

/-! ## A381747.P7077201961227495676

`A302045(or(1, A286740(n+2)))`
-/

namespace A381747.P7077201961227495676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (Int.lor 1 (A286740 (n + 2))).toNat

end

end A381747.P7077201961227495676

/-! ## A381747.P1160539133523127286

`A083893(A216848(n+1)+A168081(n))`
-/

namespace A381747.P1160539133523127286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A216848 (n + 1) + A168081 n).toNat

end

end A381747.P1160539133523127286

/-! ## A381747.P8901440216326109287

`xor(A286470(n+1), A286470(A276075(n+4)))`
-/

namespace A381747.P8901440216326109287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286470 (n + 1)) (A286470 (A276075 (n + 4)).toNat)

end

end A381747.P8901440216326109287

/-! ## A381747.P6380186699733547786

`A109822(A336322(n+1))%A204018(2*n+1)`
-/

namespace A381747.P6380186699733547786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109822 (A336322 (n + 1)).toNat) (A204018 (2 * n + 1))

end

end A381747.P6380186699733547786

/-! ## A381747.P4318209897885631254

`A151548(2*n+1)%A175685(A340604(n+1))`
-/

namespace A381747.P4318209897885631254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151548 (2 * n + 1)) (A175685 (A340604 (n + 1)).toNat)

end

end A381747.P4318209897885631254

/-!
# A381748: a(n) is the number of primes (counted with multiplicity) in row n of A051599.

The programs for A381748, there is no canonical definition to state claims against.
-/

/-! ## A381748.P3855683909887408828

`A001227(or(A002587(n), A074400(n+1)))`
-/

namespace A381748.P3855683909887408828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.lor (A002587 n) (A074400 (n + 1))).toNat

end

end A381748.P3855683909887408828

/-! ## A381748.P9875137069190353864

`A378443(A272919(3*n+1)+n+1)`
-/

namespace A381748.P9875137069190353864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378443 (A272919 (3 * n + 1) + (n + 1 : ℤ)).toNat

end

end A381748.P9875137069190353864

/-! ## A381748.P2138796689529813224

`A008904(A008904(2*n+1)^(val(n+1, 2)+1))`
-/

namespace A381748.P2138796689529813224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A008904 (2 * n + 1) ^ (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A381748.P2138796689529813224

/-! ## A381748.P17315400747634409668

`A000005(or(A013916(n+1), A130556(n+1)))`
-/

namespace A381748.P17315400747634409668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A013916 (n + 1)) (A130556 (n + 1))).toNat

end

end A381748.P17315400747634409668

/-! ## A381748.P17936414150331426262

`A008904(A008904(2*n+1)^A001511(n+1))`
-/

namespace A381748.P17936414150331426262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (SequenceMachineLib.roundAway ((A008904 (2 * n + 1) : ℚ) ^ (A001511 (n + 1) : ℤ))).toNat

end

end A381748.P17936414150331426262

/-!
# A381754: Numbers k such that k and 3*k have the same number of zeros in their binary expansions.

The programs for A381754, there is no canonical definition to state claims against.
-/

/-! ## A381754.P7511932808289414664

`eq[A008585(n), A381935(n)]`
-/

namespace A381754.P7511932808289414664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381754.P7511932808289414664

/-! ## A381754.P16956621256111198573

`lt[A381935(n), A250120(n)]`
-/

namespace A381754.P16956621256111198573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381754.P16956621256111198573

/-! ## A381754.P11220702705932866381

`eq[A157532(n+1), A381934(n)]`
-/

namespace A381754.P11220702705932866381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381754.P11220702705932866381

/-! ## A381754.P5029479806279837883

`eq[A023416(3*n), A023416(n)]`
-/

namespace A381754.P5029479806279837883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381754.P5029479806279837883

/-! ## A381754.P14919672993176663589

`eq[A080791(3*n), A080791(n)]`
-/

namespace A381754.P14919672993176663589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381754.P14919672993176663589

/-!
# A381759: Number of words of length 2n+1 with one 0 entry and two entries of each of 1..n so that there are exactly k numbers between two equal k's and so that the first element does not exceed the last.

The programs for A381759, there is no canonical definition to state claims against.
-/

/-! ## A381759.P443571972268599001

`A381760(n+1)+A176127(n+1)`
-/

namespace A381759.P443571972268599001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381760 (n + 1) + A176127 (n + 1)

end

end A381759.P443571972268599001

/-! ## A381759.P17149183491782915831

`A378117(A036774(n)+A006330(n))`
-/

namespace A381759.P17149183491782915831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378117 (A036774 n + A006330 n).toNat

end

end A381759.P17149183491782915831

/-! ## A381759.P7448623089606245653

`A361404(∑[n])+A185204(A000664(n))`
-/

namespace A381759.P7448623089606245653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j) + A185204 (A000664 n).toNat

end

end A381759.P7448623089606245653

/-!
# A381760: Number of words of length 2n+1 with one 0 entry and two entries of each of 1..n so that there are exactly k numbers between two equal k's and so that the first element is not 0 and also does not exceed the last.

The programs for A381760, there is no canonical definition to state claims against.
-/

/-! ## A381760.P17159625715872050533

`A381759(n+1)-A176127(n+1)`
-/

namespace A381760.P17159625715872050533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381759 (n + 1) - A176127 (n + 1)

end

end A381760.P17159625715872050533

/-! ## A381760.P12632269973292828963

`A381759(n+1)-(A014552(n+1)+A014552(n+1))`
-/

namespace A381760.P12632269973292828963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381759 (n + 1) - (A014552 (n + 1) + A014552 (n + 1))

end

end A381760.P12632269973292828963

/-! ## A381760.P13670595574785558699

`A171727(A199137(n))`
-/

namespace A381760.P13670595574785558699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A199137 n).toNat

end

end A381760.P13670595574785558699

/-!
# A381762: Numbers k such that S(k) sets a new record, where S(k) denotes the sum of the reciprocals of odd elements in the Collatz sequence which starts at k.

The programs for A381762, there is no canonical definition to state claims against.
-/

/-! ## A381762.P13991397921295810308

`A127789(floor(sqrt(n))!+n)`
-/

namespace A381762.P13991397921295810308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127789 (Nat.factorial (Nat.sqrt n) + n)

end

end A381762.P13991397921295810308

/-! ## A381762.P4243920078692790467

`A127789(comp[∑[2*(n+2)]]+1)`
-/

namespace A381762.P4243920078692790467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127789 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A381762.P4243920078692790467

/-! ## A381762.P17196443488135774753

`record[gcd(val(n+1, 5), A127789(n+1))]`
-/

namespace A381762.P17196443488135774753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 5 : ℤ) (A127789 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381762.P17196443488135774753

/-!
# A381764: Nearest integer not equal to n with the same Hamming weight (number of 1 bits) as n.

The programs for A381764, the canonical program `A381764.P13450440544322488554` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381764 has offset 1).

The definition of A381764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381764.P13450440544322488554

`Δ[ceil(xor(n, n+1)/4)]+xor(1, n)+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381764

/-- `Δ[ceil(xor(n, n+1)/4)]+xor(1, n)+1` -/
def P13450440544322488554.Spec : Prop :=
  ∀ n, P13450440544322488554.a n = A381764 (n + 1)

theorem P13450440544322488554.correct : P13450440544322488554.Spec := by
  intro n
  simp only [A381764, Nat.add_sub_cancel]

end A381764

/-! ## A381764.P11686833055045171678

`Δ[A330569(n+1)]+1+n`
-/

namespace A381764.P11686833055045171678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A381764.P11686833055045171678

namespace A381764

/-- `Δ[A330569(n+1)]+1+n` -/
def P11686833055045171678.Spec : Prop :=
  ∀ n, P11686833055045171678.a n = A381764 (n + 1)

end A381764

/-! ## A381764.P10541175686380902756

`Δ[floor(A006519(n+1)/2)]+n+1`
-/

namespace A381764.P10541175686380902756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006519 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A381764.P10541175686380902756

namespace A381764

/-- `Δ[floor(A006519(n+1)/2)]+n+1` -/
def P10541175686380902756.Spec : Prop :=
  ∀ n, P10541175686380902756.a n = A381764 (n + 1)

end A381764

/-! ## A381764.P17059221016858843039

`Δ[A330569(n+1)+A000217(n)]`
-/

namespace A381764.P17059221016858843039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330569 (n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381764.P17059221016858843039

namespace A381764

/-- `Δ[A330569(n+1)+A000217(n)]` -/
def P17059221016858843039.Spec : Prop :=
  ∀ n, P17059221016858843039.a n = A381764 (n + 1)

end A381764

/-! ## A381764.P7282210653529276020

`xor(A038712(n+1), A182187(n))`
-/

namespace A381764.P7282210653529276020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (n + 1)) (A182187 n)

end

end A381764.P7282210653529276020

namespace A381764

/-- `xor(A038712(n+1), A182187(n))` -/
def P7282210653529276020.Spec : Prop :=
  ∀ n, P7282210653529276020.a n = A381764 (n + 1)

end A381764

/-! ## A381764.P164812016159852436

`Δ[or(n+1, A353847(n))]+n`
-/

namespace A381764.P164812016159852436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A353847 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A381764.P164812016159852436

namespace A381764

/-- `Δ[or(n+1, A353847(n))]+n` -/
def P164812016159852436.Spec : Prop :=
  ∀ n, P164812016159852436.a n = A381764 (n + 1)

end A381764

/-!
# A381767: a(n) = ceiling(n^(n/(n-1))) with a(1)=1.

The programs for A381767, the canonical program `A381767.P3604151667592441987` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381767 has offset 1).

The definition of A381767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381767.P3604151667592441987

`ceil(root(n+1, ratio[acot(2*n)]))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381767

/-- `ceil(root(n+1, ratio[acot(2*n)]))` -/
def P3604151667592441987.Spec : Prop :=
  ∀ n, P3604151667592441987.a n = A381767 (n + 1)

theorem P3604151667592441987.correct : P3604151667592441987.Spec := by
  intro n
  simp only [A381767, Nat.add_sub_cancel]

end A381767

/-! ## A381767.P7278097861634502517

`ceil((n+1)^ratio[n+1]^ratio[n+1])`
-/

namespace A381767.P7278097861634502517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ (((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ) ^ ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ))⌉

end

end A381767.P7278097861634502517

namespace A381767

/-- `ceil((n+1)^ratio[n+1]^ratio[n+1])` -/
def P7278097861634502517.Spec : Prop :=
  ∀ n, P7278097861634502517.a n = A381767 (n + 1)

end A381767

/-! ## A381767.P5994217818518637542

`lt[A097609(n), A317929(A226748(n))]`
-/

namespace A381767.P5994217818518637542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317929 (A226748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381767.P5994217818518637542

namespace A381767

/-- `lt[A097609(n), A317929(A226748(n))]` -/
def P5994217818518637542.Spec : Prop :=
  ∀ n, (P5994217818518637542.a n : ℤ) = A381767 (n + 1)

end A381767

/-! ## A381767.P10544781819221776485

`lt[A107809(n+1), A103391(A062307(2*n+3))]`
-/

namespace A381767.P10544781819221776485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A062307 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381767.P10544781819221776485

namespace A381767

/-- `lt[A107809(n+1), A103391(A062307(2*n+3))]` -/
def P10544781819221776485.Spec : Prop :=
  ∀ n, (P10544781819221776485.a n : ℤ) = A381767 (n + 1)

end A381767

/-! ## A381767.P6323187532739489619

`lt[A369008(A119870(n+3)), A216194(n+1)]`
-/

namespace A381767.P6323187532739489619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369008 (A119870 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381767.P6323187532739489619

namespace A381767

/-- `lt[A369008(A119870(n+3)), A216194(n+1)]` -/
def P6323187532739489619.Spec : Prop :=
  ∀ n, (P6323187532739489619.a n : ℤ) = A381767 (n + 1)

end A381767

/-!
# A381768: a(n) is the least positive number k for which A381763(k) = n.

The programs for A381768, there is no canonical definition to state claims against.
-/

/-! ## A381768.P351879893298501387

`A350073(9*A373873(n)+1)`
-/

namespace A381768.P351879893298501387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (9 * A373873 n + 1).toNat

end

end A381768.P351879893298501387

/-!
# A381769: a(n) is the area of the largest rectangle that can be formed from n sticks whose lengths are 1, 2, ..., n.

The programs for A381769, there is no canonical definition to state claims against.
-/

/-! ## A381769.P10779616219738531831

`A341993(n+1)*A366386(A075834(n))`
-/

namespace A381769.P10779616219738531831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341993 (n + 1) * A366386 (A075834 n).toNat

end

end A381769.P10779616219738531831

/-!
# A381771: For any n > 0, a(n) is the least positive multiple of n whose factorial base expansion has digits in nonincreasing order; a(0) = 0.

The programs for A381771, there is no canonical definition to state claims against.
-/

/-! ## A381771.P7048307033739175774

`A381770(n)*n`
-/

namespace A381771.P7048307033739175774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381770 n * (n : ℤ)

end

end A381771.P7048307033739175774

/-! ## A381771.P9952184274085807473

`n*A334184(A051049(n))`
-/

namespace A381771.P9952184274085807473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A334184 (A051049 n).toNat

end

end A381771.P9952184274085807473

/-!
# A381772: Expansion of ( (1/x) * Series_Reversion( x/((1+x) * C(x))^2 ) )^(1/2), where C(x) is the g.f. of A000108.

The programs for A381772, there is no canonical definition to state claims against.
-/

/-! ## A381772.P15310413316706901281

`A274052(n)-a(n-1)` with `a(0)=1`
-/

namespace A381772.P15310413316706901281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274052 n - a (n - 1)

end

end A381772.P15310413316706901281

/-!
# A381773: Expansion of ( (1/x) * Series_Reversion( x/((1+x) * C(x))^3 ) )^(1/3), where C(x) is the g.f. of A000108.

The programs for A381773, there is no canonical definition to state claims against.
-/

/-! ## A381773.P16211816928228885461

`A263647(A294511(n)+A037093(n))`
-/

namespace A381773.P16211816928228885461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263647 (A294511 n + A037093 n).toNat

end

end A381773.P16211816928228885461

/-!
# A381774: Expansion of ( (1/x) * Series_Reversion( x/((1+x) * C(x))^4 ) )^(1/4), where C(x) is the g.f. of A000108.

The programs for A381774, there is no canonical definition to state claims against.
-/

/-! ## A381774.P1944381766411513389

`A049809(A000302(n))+n`
-/

namespace A381774.P1944381766411513389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049809 (A000302 n).toNat + (n : ℤ)

end

end A381774.P1944381766411513389

/-!
# A381777: Self-convolution of A001190.

The programs for A381777, there is no canonical definition to state claims against.
-/

/-! ## A381777.P4512006093191304227

`round(A057577(n)/26)`
-/

namespace A381777.P4512006093191304227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057577 n : ℚ) / 26)

end

end A381777.P4512006093191304227

/-! ## A381777.P16804813897222049468

`A084359(A149030(n))`
-/

namespace A381777.P16804813897222049468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A149030 n).toNat

end

end A381777.P16804813897222049468

/-! ## A381777.P6105380225226964428

`A084359(A149032(n))`
-/

namespace A381777.P6105380225226964428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A149032 n).toNat

end

end A381777.P6105380225226964428

/-! ## A381777.P1693090630050812664

`A084359(A149033(n))`
-/

namespace A381777.P1693090630050812664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A149033 n).toNat

end

end A381777.P1693090630050812664

/-! ## A381777.P10474849143310864559

`A084359(A149202(n))`
-/

namespace A381777.P10474849143310864559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A149202 n).toNat

end

end A381777.P10474849143310864559

/-!
# A381778: G.f. A(x) satisfies A(x) = (1 + x*A(x)) * C(x*A(x)^2), where C(x) is the g.f. of A000108.

The programs for A381778, there is no canonical definition to state claims against.
-/

/-! ## A381778.P510980363698745743

`A080405(lcm(2, A227917(n+1)))`
-/

namespace A381778.P510980363698745743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (Int.lcm 2 (A227917 (n + 1)))

end

end A381778.P510980363698745743

/-!
# A381779: G.f. A(x) satisfies A(x) = (1 + x*A(x)) * C(x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381779, there is no canonical definition to state claims against.
-/

/-! ## A381779.P165236971574089628

`A070046(A178944(n+1)^2)`
-/

namespace A381779.P165236971574089628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (A178944 (n + 1) ^ 2).toNat

end

end A381779.P165236971574089628

/-!
# A381780: G.f. A(x) satisfies A(x) = (1 + x*A(x)^2) * C(x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381780, there is no canonical definition to state claims against.
-/

/-! ## A381780.P12279307748631679112

`A057364(A060174(n))+1`
-/

namespace A381780.P12279307748631679112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A060174 n).toNat + 1

end

end A381780.P12279307748631679112

/-!
# A381782: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3) * C(x), where C(x) is the g.f. of A000108.

The programs for A381782, there is no canonical definition to state claims against.
-/

/-! ## A381782.P5024157941713138715

`A059759(A000085(n))+A004187(n)`
-/

namespace A381782.P5024157941713138715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059759 (A000085 n).toNat + A004187 n

end

end A381782.P5024157941713138715

/-! ## A381782.P10964521078879595058

`A243168(A128500(n))+A205571(n+1)`
-/

namespace A381782.P10964521078879595058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243168 (A128500 n).toNat + A205571 (n + 1)

end

end A381782.P10964521078879595058

/-!
# A381783: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3) * C(x*A(x)), where C(x) is the g.f. of A000108.

The programs for A381783, there is no canonical definition to state claims against.
-/

/-! ## A381783.P18326288393063732216

`A332577(∑[n²+n+1])`
-/

namespace A381783.P18326288393063732216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381783.P18326288393063732216

/-!
# A381784: G.f. A(x) satisfies A(x) = (1 + x*A(x)^4) * C(x*A(x)^2), where C(x) is the g.f. of A000108.

The programs for A381784, there is no canonical definition to state claims against.
-/

/-! ## A381784.P14314035734770771801

`A258037(∑[A002296(n)])`
-/

namespace A381784.P14314035734770771801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381784.P14314035734770771801

/-!
# A381785: G.f. A(x) satisfies A(x) = (1 + x) * C(x*A(x)^2), where C(x) is the g.f. of A000108.

The programs for A381785, there is no canonical definition to state claims against.
-/

/-! ## A381785.P3804354929441762144

`A381938(n)-a(n-1)` with `a(0)=1`
-/

namespace A381785.P3804354929441762144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381938 n - a (n - 1)

end

end A381785.P3804354929441762144

/-!
# A381786: G.f. A(x) satisfies A(x) = (1 + x) * C(x*A(x)^3), where C(x) is the g.f. of A000108.

The programs for A381786, there is no canonical definition to state claims against.
-/

/-! ## A381786.P507395633490623254

`A156351(A047855(n)+n)`
-/

namespace A381786.P507395633490623254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A047855 n + (n : ℤ)).toNat

end

end A381786.P507395633490623254

/-!
# A381787: G.f. A(x) satisfies A(x) = (1 + x) * C(x*A(x)), where C(x) is the g.f. of A000108.

The programs for A381787, there is no canonical definition to state claims against.
-/

/-! ## A381787.P16166501770486341315

`A323903(A357825(n))+A001563(n)`
-/

namespace A381787.P16166501770486341315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (A357825 n).toNat + A001563 n

end

end A381787.P16166501770486341315

/-! ## A381787.P13668997659566001652

`A151898(A278282(n+1)+A125730(n))`
-/

namespace A381787.P13668997659566001652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A278282 (n + 1) + A125730 n).toNat

end

end A381787.P13668997659566001652

/-!
# A381790: a(n) = 3*2^n + 2*n - 2.

The programs for A381790, the canonical program `A381790.P16872906337044102897` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381790 has offset 0).

The definition of A381790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+2*n-2` (program `A381790.P16872906337044102897`, by `A381790.P16872906337044102897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381790.P16872906337044102897

`3*2^n+2*n-2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381790

/-- `3*2^n+2*n-2` -/
def P16872906337044102897.Spec : Prop :=
  ∀ n, P16872906337044102897.a n = A381790 n

theorem P16872906337044102897.correct : P16872906337044102897.Spec := by
  intro n
  simp only [A381790]

end A381790

/-! ## A381790.P16815634455378112108

`∑[ogf((1+2x-5x^2)/(1-3x+2x^2))]`
-/

namespace A381790.P16815634455378112108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -5] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381790.P16815634455378112108

namespace A381790

/-- `∑[ogf((1+2x-5x^2)/(1-3x+2x^2))]` -/
def P16815634455378112108.Spec : Prop :=
  ∀ n, P16815634455378112108.a n = A381790 n

end A381790

/-! ## A381790.P774543450454997875

`ogf((1+2x-5x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A381790.P774543450454997875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -5] [1, -4, 5, -2] n

end

end A381790.P774543450454997875

namespace A381790

/-- `ogf((1+2x-5x^2)/(1-4x+5x^2-2x^3))` -/
def P774543450454997875.Spec : Prop :=
  ∀ n, P774543450454997875.a n = A381790 n

end A381790

/-! ## A381790.P3934779164440785908

`∑[2*(a(n-1)-1)]` with `a(0)=1, a(1)=5`
-/

namespace A381790.P3934779164440785908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381790.P3934779164440785908

namespace A381790

/-- `∑[2*(a(n-1)-1)]` -/
def P3934779164440785908.Spec : Prop :=
  ∀ n, P3934779164440785908.a n = A381790 n

end A381790

/-! ## A381790.P14194616457619881570

`2*(a(n-1)+3-n)` with `a(0)=1`
-/

namespace A381790.P14194616457619881570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (3 - (n : ℤ)))

end

end A381790.P14194616457619881570

namespace A381790

/-- `2*(a(n-1)+3-n)` -/
def P14194616457619881570.Spec : Prop :=
  ∀ n, P14194616457619881570.a n = A381790 n

theorem P14194616457619881570.correct : P14194616457619881570.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381790, Nat.add_sub_cancel, A381790.P14194616457619881570.a, A381790.P16872906337044102897.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381790, Nat.add_sub_cancel, A381790.P14194616457619881570.a, A381790.P16872906337044102897.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381790

/-! ## A381790.P4895034277003061816

`2*(3-(n-a(n-1)))` with `a(0)=1`
-/

namespace A381790.P4895034277003061816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - ((n : ℤ) - a (n - 1)))

end

end A381790.P4895034277003061816

namespace A381790

/-- `2*(3-(n-a(n-1)))` -/
def P4895034277003061816.Spec : Prop :=
  ∀ n, P4895034277003061816.a n = A381790 n

theorem P4895034277003061816.correct : P4895034277003061816.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A381790, Nat.add_sub_cancel, A381790.P4895034277003061816.a, A381790.P16872906337044102897.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A381790, Nat.add_sub_cancel, A381790.P4895034277003061816.a, A381790.P16872906337044102897.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A381790

/-! ## A381790.P151335113809885984

`∑[a(n-1)+a(n-1)-2]` with `a(0)=1, a(1)=5`
-/

namespace A381790.P151335113809885984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381790.P151335113809885984

namespace A381790

/-- `∑[a(n-1)+a(n-1)-2]` -/
def P151335113809885984.Spec : Prop :=
  ∀ n, P151335113809885984.a n = A381790 n

end A381790

/-! ## A381790.P13939253332673003387

`∑[a(n-1)-(2-a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A381790.P13939253332673003387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381790.P13939253332673003387

namespace A381790

/-- `∑[a(n-1)-(2-a(n-1))]` -/
def P13939253332673003387.Spec : Prop :=
  ∀ n, P13939253332673003387.a n = A381790 n

end A381790

/-!
# A381791: a(n) = 2*(4 + 17*2^(n-1)).

The programs for A381791, the canonical program `A381791.P11675514674717285752` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381791 has offset 0).

The definition of A381791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(4+17*2^(n-1))` (program `A381791.P5511982356487483628`, by `A381791.P5511982356487483628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381791.P5511982356487483628

`2*(4+17*2^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381791.P5511982356487483628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (4 + 17 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A381791.P5511982356487483628

namespace A381791

/-- `2*(4+17*2^(n-1))` -/
def P5511982356487483628.Spec : Prop :=
  ∀ n, P5511982356487483628.a n = (A381791 n : ℚ)

theorem P5511982356487483628.correct : P5511982356487483628.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P5511982356487483628.a, A381791.P11675514674717285752.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P5511982356487483628.a, A381791.P11675514674717285752.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A381791

/-! ## A381791.P11675514674717285752

`3*a(n-1)-2*a(n-2)` with `a(0)=25, a(1)=42`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A381791

/-- `3*a(n-1)-2*a(n-2)` -/
def P11675514674717285752.Spec : Prop :=
  ∀ n, P11675514674717285752.a n = A381791 n

theorem P11675514674717285752.correct : P11675514674717285752.Spec := by
  intro n
  simp only [A381791]

end A381791

/-! ## A381791.P4089687754257647460

`A110287(n)+8`
-/

namespace A381791.P4089687754257647460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110287 n + 8

end

end A381791.P4089687754257647460

namespace A381791

/-- `A110287(n)+8` -/
def P4089687754257647460.Spec : Prop :=
  ∀ n, P4089687754257647460.a n = A381791 n

theorem P4089687754257647460.correct : P4089687754257647460.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P4089687754257647460.a, A381791.P11675514674717285752.a, A110287, A110287.P14797459151793831721.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P4089687754257647460.a, A381791.P11675514674717285752.a, A110287, A110287.P14797459151793831721.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P9938576213934149971

`A198275(n)+9`
-/

namespace A381791.P9938576213934149971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198275 n + 9

end

end A381791.P9938576213934149971

namespace A381791

/-- `A198275(n)+9` -/
def P9938576213934149971.Spec : Prop :=
  ∀ n, P9938576213934149971.a n = A381791 n

theorem P9938576213934149971.correct : P9938576213934149971.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P9938576213934149971.a, A381791.P11675514674717285752.a, A198275, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P9938576213934149971.a, A381791.P11675514674717285752.a, A198275, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P5919302401503174887

`A175161(n+1)+2^n`
-/

namespace A381791.P5919302401503174887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175161 (n + 1) + (2 ^ n : ℤ)

end

end A381791.P5919302401503174887

namespace A381791

/-- `A175161(n+1)+2^n` -/
def P5919302401503174887.Spec : Prop :=
  ∀ n, P5919302401503174887.a n = A381791 n

theorem P5919302401503174887.correct : P5919302401503174887.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P5919302401503174887.a, A381791.P11675514674717285752.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P5919302401503174887.a, A381791.P11675514674717285752.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P7152041412271465739

`A305060(n)-A052548(n)`
-/

namespace A381791.P7152041412271465739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305060 n - A052548 n

end

end A381791.P7152041412271465739

namespace A381791

/-- `A305060(n)-A052548(n)` -/
def P7152041412271465739.Spec : Prop :=
  ∀ n, P7152041412271465739.a n = A381791 n

theorem P7152041412271465739.correct : P7152041412271465739.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P7152041412271465739.a, A381791.P11675514674717285752.a, A052548, A052548.P18180923888402085992.a, A305060, A305060.P11071758838076518638.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P7152041412271465739.a, A381791.P11675514674717285752.a, A052548, A052548.P18180923888402085992.a, A305060, A305060.P11071758838076518638.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P15859239421103843194

`or(A000079(n)+8, A000079(n+4))`
-/

namespace A381791.P15859239421103843194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n + 8) (A000079 (n + 4))

end

end A381791.P15859239421103843194

namespace A381791

/-- `or(A000079(n)+8, A000079(n+4))` -/
def P15859239421103843194.Spec : Prop :=
  ∀ n, P15859239421103843194.a n = A381791 n

end A381791

/-! ## A381791.P4240035329730651409

`A028399(n+3)+A175161(n)+A140504(n)`
-/

namespace A381791.P4240035329730651409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 3) + (A175161 n + A140504 n)

end

end A381791.P4240035329730651409

namespace A381791

/-- `A028399(n+3)+A175161(n)+A140504(n)` -/
def P4240035329730651409.Spec : Prop :=
  ∀ n, P4240035329730651409.a n = A381791 n

theorem P4240035329730651409.correct : P4240035329730651409.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P4240035329730651409.a, A381791.P11675514674717285752.a, A028399, A028399.P13231387857369289055.a, A140504, A140504.P8641820625195625758.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P4240035329730651409.a, A381791.P11675514674717285752.a, A028399, A028399.P13231387857369289055.a, A140504, A140504.P8641820625195625758.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P5778160620080060382

`A000051(n+1)+A175161(n+1)-A000051(n)`
-/

namespace A381791.P5778160620080060382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A175161 (n + 1) - A000051 n)

end

end A381791.P5778160620080060382

namespace A381791

/-- `A000051(n+1)+A175161(n+1)-A000051(n)` -/
def P5778160620080060382.Spec : Prop :=
  ∀ n, P5778160620080060382.a n = A381791 n

theorem P5778160620080060382.correct : P5778160620080060382.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P5778160620080060382.a, A381791.P11675514674717285752.a, A000051, A000051.P14067217022188782580.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P5778160620080060382.a, A381791.P11675514674717285752.a, A000051, A000051.P14067217022188782580.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P6817791779208856270

`A000918(n+1)+A175161(n+1)-A000918(n)`
-/

namespace A381791.P6817791779208856270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) + (A175161 (n + 1) - A000918 n)

end

end A381791.P6817791779208856270

namespace A381791

/-- `A000918(n+1)+A175161(n+1)-A000918(n)` -/
def P6817791779208856270.Spec : Prop :=
  ∀ n, P6817791779208856270.a n = A381791 n

theorem P6817791779208856270.correct : P6817791779208856270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P6817791779208856270.a, A381791.P11675514674717285752.a, A000918, A000918.P14329454465793069288.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P6817791779208856270.a, A381791.P11675514674717285752.a, A000918, A000918.P14329454465793069288.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P9278794009015472079

`A036563(n+1)+A175161(n+1)-A036563(n)`
-/

namespace A381791.P9278794009015472079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 1) + (A175161 (n + 1) - A036563 n)

end

end A381791.P9278794009015472079

namespace A381791

/-- `A036563(n+1)+A175161(n+1)-A036563(n)` -/
def P9278794009015472079.Spec : Prop :=
  ∀ n, P9278794009015472079.a n = A381791 n

theorem P9278794009015472079.correct : P9278794009015472079.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P9278794009015472079.a, A381791.P11675514674717285752.a, A036563, A036563.P16747850807333830855.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P9278794009015472079.a, A381791.P11675514674717285752.a, A036563, A036563.P16747850807333830855.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P11738096716843595470

`A052548(n+1)+A175161(n+1)-A052548(n)`
-/

namespace A381791.P11738096716843595470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (n + 1) + (A175161 (n + 1) - A052548 n)

end

end A381791.P11738096716843595470

namespace A381791

/-- `A052548(n+1)+A175161(n+1)-A052548(n)` -/
def P11738096716843595470.Spec : Prop :=
  ∀ n, P11738096716843595470.a n = A381791 n

theorem P11738096716843595470.correct : P11738096716843595470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P11738096716843595470.a, A381791.P11675514674717285752.a, A052548, A052548.P18180923888402085992.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P11738096716843595470.a, A381791.P11675514674717285752.a, A052548, A052548.P18180923888402085992.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P9861374278832720383

`A140504(n+1)+A175161(n+1)-A140504(n)`
-/

namespace A381791.P9861374278832720383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 (n + 1) + (A175161 (n + 1) - A140504 n)

end

end A381791.P9861374278832720383

namespace A381791

/-- `A140504(n+1)+A175161(n+1)-A140504(n)` -/
def P9861374278832720383.Spec : Prop :=
  ∀ n, P9861374278832720383.a n = A381791 n

theorem P9861374278832720383.correct : P9861374278832720383.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P9861374278832720383.a, A381791.P11675514674717285752.a, A140504, A140504.P8641820625195625758.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P9861374278832720383.a, A381791.P11675514674717285752.a, A140504, A140504.P8641820625195625758.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P14316831527820686687

`A153972(n+1)+A175161(n+1)-A153972(n)`
-/

namespace A381791.P14316831527820686687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 (n + 1) + (A175161 (n + 1) - A153972 n)

end

end A381791.P14316831527820686687

namespace A381791

/-- `A153972(n+1)+A175161(n+1)-A153972(n)` -/
def P14316831527820686687.Spec : Prop :=
  ∀ n, P14316831527820686687.a n = A381791 n

theorem P14316831527820686687.correct : P14316831527820686687.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P14316831527820686687.a, A381791.P11675514674717285752.a, A153972, A153972.P197572763491864962.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P14316831527820686687.a, A381791.P11675514674717285752.a, A153972, A153972.P197572763491864962.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-! ## A381791.P18290945342793280390

`4*(a(n-1)-4)/2` with `a(0)=25`
-/

namespace A381791.P18290945342793280390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [25] fun n a =>
  4 * (a (n - 1) - 4) / 2

end

end A381791.P18290945342793280390

namespace A381791

/-- `4*(a(n-1)-4)/2` -/
def P18290945342793280390.Spec : Prop :=
  ∀ n, P18290945342793280390.a n = (A381791 n : ℚ)

end A381791

/-! ## A381791.P5487234955380452451

`or(2^n+8, Δ[A000918(n+4)])`
-/

namespace A381791.P5487234955380452451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n + 8 : ℤ) (f1 (n + 1) - f1 n)

end

end A381791.P5487234955380452451

namespace A381791

/-- `or(2^n+8, Δ[A000918(n+4)])` -/
def P5487234955380452451.Spec : Prop :=
  ∀ n, P5487234955380452451.a n = A381791 n

end A381791

/-! ## A381791.P18429943063368906800

`A305061(n)-A153973(n+1)`
-/

namespace A381791.P18429943063368906800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305061 n - A153973 (n + 1)

end

end A381791.P18429943063368906800

namespace A381791

/-- `A305061(n)-A153973(n+1)` -/
def P18429943063368906800.Spec : Prop :=
  ∀ n, P18429943063368906800.a n = A381791 n

end A381791

/-! ## A381791.P3209480620241837363

`or(Δ[A000918(n+4)], A242475(n))`
-/

namespace A381791.P3209480620241837363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A242475 n)

end

end A381791.P3209480620241837363

namespace A381791

/-- `or(Δ[A000918(n+4)], A242475(n))` -/
def P3209480620241837363.Spec : Prop :=
  ∀ n, P3209480620241837363.a n = A381791 n

end A381791

/-! ## A381791.P10751459576349851248

`A175162(n+1)+A000079(n)-A175161(n+1)`
-/

namespace A381791.P10751459576349851248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175162 (n + 1) + (A000079 n - A175161 (n + 1))

end

end A381791.P10751459576349851248

namespace A381791

/-- `A175162(n+1)+A000079(n)-A175161(n+1)` -/
def P10751459576349851248.Spec : Prop :=
  ∀ n, P10751459576349851248.a n = A381791 n

theorem P10751459576349851248.correct : P10751459576349851248.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381791, Nat.add_sub_cancel, A381791.P10751459576349851248.a, A381791.P11675514674717285752.a, A000079, A000079.P10855139691139572931.a, A175161, A175161.P2150735603067975038.a, A175162, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381791, Nat.add_sub_cancel, A381791.P10751459576349851248.a, A381791.P11675514674717285752.a, A000079, A000079.P10855139691139572931.a, A175161, A175161.P2150735603067975038.a, A175162, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A381791

/-!
# A381792: Numbers k such that k + prime(k) is prime and k + semiprime(k) is semiprime.

The programs for A381792, there is no canonical definition to state claims against.
-/

/-! ## A381792.P14644381999699284652

`∩[A064402(n+1), A100915(n+1)]`
-/

namespace A381792.P14644381999699284652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381792.P14644381999699284652

/-!
# A381793: Smallest k>1 such that 10*k^(5*2^n)+1 is prime.

The programs for A381793, there is no canonical definition to state claims against.
-/

/-! ## A381793.P4399595111775817926

`A089319(A020714(n))`
-/

namespace A381793.P4399595111775817926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089319 (A020714 n).toNat

end

end A381793.P4399595111775817926

/-! ## A381793.P16730982507559506036

`A089319(A146523(n+1))`
-/

namespace A381793.P16730982507559506036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089319 (A146523 (n + 1)).toNat

end

end A381793.P16730982507559506036

/-! ## A381793.P897059769691215853

`A089319(5*A000079(n))`
-/

namespace A381793.P897059769691215853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089319 (5 * A000079 n).toNat

end

end A381793.P897059769691215853

/-! ## A381793.P11291264305256540815

`A089319(A147675(2*(n+1)))`
-/

namespace A381793.P11291264305256540815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089319 (A147675 (2 * (n + 1))).toNat

end

end A381793.P11291264305256540815

/-!
# A381794: Number of connected dominating sets in the n-trapezohedral graph.

The programs for A381794, the canonical program `A381794.P7718667864799923666` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381794 has offset 1).

The definition of A381794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381794.P7718667864799923666

`4^(n+1)-A000032(2*(n+1))+2*(2^(n+1)-1)*A000032(n+1)+1+4*(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A381794

/-- `4^(n+1)-A000032(2*(n+1))+2*(2^(n+1)-1)*A000032(n+1)+1+4*(n+1)` -/
def P7718667864799923666.Spec : Prop :=
  ∀ n, P7718667864799923666.a n = A381794 (n + 1)

theorem P7718667864799923666.correct : P7718667864799923666.Spec := by
  intro n
  simp only [A381794, Nat.add_sub_cancel]

end A381794

/-!
# A381798: Number of residues r such that p^m is congruent to r (mod n), where prime p | n and m >= 0.

The programs for A381798, there is no canonical definition to state claims against.
-/

/-! ## A381798.P3372742610608378064

`A381800(n+1)-A382138(n+1)`
-/

namespace A381798.P3372742610608378064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - A382138 (n + 1)

end

end A381798.P3372742610608378064

/-! ## A381798.P9585045834295136222

`A361373(n+1)+A380870(n+1)+1`
-/

namespace A381798.P9585045834295136222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361373 (n + 1) + (A380870 (n + 1) + 1)

end

end A381798.P9585045834295136222

/-! ## A381798.P11271047983739659968

`A180466(A177194(n+1))+floor(∏{e}[n+1, 6/7+#])%(n+1)`
-/

namespace A381798.P11271047983739659968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (A177194 (n + 1)).toNat + Int.tmod ⌊∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌋ (n + 1 : ℤ)

end

end A381798.P11271047983739659968

/-! ## A381798.P13255714002023351315

`A083895(A182988(n))+A000005(n+1)`
-/

namespace A381798.P13255714002023351315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A182988 n).toNat + A000005 (n + 1)

end

end A381798.P13255714002023351315

/-! ## A381798.P9008687021844812900

`A086016(A301554(n))+A000005(n+1)`
-/

namespace A381798.P9008687021844812900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A301554 n).toNat + A000005 (n + 1)

end

end A381798.P9008687021844812900

/-!
# A381799: Irregular triangle read by rows, where row n is a list of residues of powers of prime factors of n (mod n).

The programs for A381799, there is no canonical definition to state claims against.
-/

/-! ## A381799.P11181843847062739110

`A381801(record[A143974(2*n+5)])`
-/

namespace A381799.P11181843847062739110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A381799.P11181843847062739110

/-! ## A381799.P14768221372287540669

`A265918(A047151(n+1))`
-/

namespace A381799.P14768221372287540669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265918 (A047151 (n + 1)).toNat

end

end A381799.P14768221372287540669

/-! ## A381799.P3781837881976608097

`(n+1)%A006530(A037223(n))`
-/

namespace A381799.P3781837881976608097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (A037223 n).toNat)

end

end A381799.P3781837881976608097

/-! ## A381799.P10170562826222202656

`A000027(n+1)%A191372(A016116(n))`
-/

namespace A381799.P10170562826222202656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A191372 (A016116 n).toNat)

end

end A381799.P10170562826222202656

/-! ## A381799.P16608340902855793682

`A381801(n+1)+A023532(A014382(n+1))`
-/

namespace A381799.P16608340902855793682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381801 (n + 1) + A023532 (A014382 (n + 1)).toNat

end

end A381799.P16608340902855793682


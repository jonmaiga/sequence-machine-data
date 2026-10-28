import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C008
import Seq.B001.C000
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C018

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A019827: Decimal expansion of sin(Pi/10) (angle of 18 degrees).

The programs for A019827, there is no canonical definition to state claims against.
-/

/-! ## A019827.P11146431707708783089

`9-A187798(n)`
-/

namespace A019827.P11146431707708783089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A187798 n

end

end A019827.P11146431707708783089

/-! ## A019827.P11227165524205584081

`A239798(n+1)`
-/

namespace A019827.P11227165524205584081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 (n + 1 + 1)

end

end A019827.P11227165524205584081

/-! ## A019827.P16314446192371444259

`A296182(n+1)+a(n-1)%-1` with `a(0)=3`
-/

namespace A019827.P16314446192371444259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A296182 (n + 1 + 1) + Int.tmod (a (n - 1)) (-1)

end

end A019827.P16314446192371444259

/-! ## A019827.P12892190522460599550

`A296182(a(n-1)+n+1-dr(a(n-1)))` with `a(0)=3`
-/

namespace A019827.P12892190522460599550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A296182 ((a (n - 1) + (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (a (n - 1)) : ℤ)).toNat + 1)

end

end A019827.P12892190522460599550

/-! ## A019827.P12278564058313392241

`A244593(n+1)+A000038(n)`
-/

namespace A019827.P12278564058313392241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244593 (n + 1 + 2) + A000038 n

end

end A019827.P12278564058313392241

/-! ## A019827.P4731478637719799200

`A040020(n)+A296182(n+1)-10`
-/

namespace A019827.P4731478637719799200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n + (A296182 (n + 1 + 1) - 10)

end

end A019827.P4731478637719799200

/-!
# A019839: Expansion of 1/((1-5x)(1-6x)(1-10x)).

The programs for A019839, the canonical program `A019839.P13373449803310149527` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019839 has offset 0).

The definition of A019839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019839.P13373449803310149527

`5*5^n-9*6^n+5*10^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019839

/-- `5*5^n-9*6^n+5*10^n` -/
def P13373449803310149527.Spec : Prop :=
  ∀ n, P13373449803310149527.a n = A019839 n

theorem P13373449803310149527.correct : P13373449803310149527.Spec := by
  intro n
  simp only [A019839]

end A019839

/-! ## A019839.P14666100446792398143

`(A020346(n)+A019783(n))/2`
-/

namespace A019839.P14666100446792398143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020346 n + A019783 n : ℚ) / 2

end

end A019839.P14666100446792398143

namespace A019839

/-- `(A020346(n)+A019783(n))/2` -/
def P14666100446792398143.Spec : Prop :=
  ∀ n, P14666100446792398143.a n = (A019839 n : ℚ)

end A019839

/-! ## A019839.P330901081130418779

`ceil(5*a(n-1)+A000079(n)*A005059(n+1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A019839.P330901081130418779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A000079 n * A005059 (n + 1)

end

end A019839.P330901081130418779

namespace A019839

/-- `ceil(5*a(n-1)+A000079(n)*A005059(n+1))` -/
def P330901081130418779.Spec : Prop :=
  ∀ n, P330901081130418779.a n = A019839 n

end A019839

/-! ## A019839.P15850234274258469919

`Δ[A016246(n)-A016237(n)]`
-/

namespace A019839.P15850234274258469919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016246 n - A016237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019839.P15850234274258469919

namespace A019839

/-- `Δ[A016246(n)-A016237(n)]` -/
def P15850234274258469919.Spec : Prop :=
  ∀ n, P15850234274258469919.a n = A019839 n

end A019839

/-! ## A019839.P7021800424437719804

`A016173(n+1)%A016164(n+1)`
-/

namespace A019839.P7021800424437719804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016173 (n + 1)) (A016164 (n + 1))

end

end A019839.P7021800424437719804

namespace A019839

/-- `A016173(n+1)%A016164(n+1)` -/
def P7021800424437719804.Spec : Prop :=
  ∀ n, P7021800424437719804.a n = A019839 n

end A019839

/-!
# A019854: Expansion of 1/((1-5x)(1-6x)(1-11x)).

The programs for A019854, the canonical program `A019854.P2247731442989983321` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019854 has offset 0).

The definition of A019854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019854.P2247731442989983321

`17*a(n-1)-66*a(n-2)+5^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019854

/-- `17*a(n-1)-66*a(n-2)+5^n` -/
def P2247731442989983321.Spec : Prop :=
  ∀ n, P2247731442989983321.a n = A019854 n

theorem P2247731442989983321.correct : P2247731442989983321.Spec := by
  intro n
  simp only [A019854]

end A019854

/-! ## A019854.P2756986808820818431

`25*5^n/6-36*6^n/5+121*11^n/30`
-/

namespace A019854.P2756986808820818431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 6 - (36 * 6 ^ n : ℚ) / 5 + (121 * 11 ^ n : ℚ) / 30

end

end A019854.P2756986808820818431

namespace A019854

/-- `25*5^n/6-36*6^n/5+121*11^n/30` -/
def P2756986808820818431.Spec : Prop :=
  ∀ n, P2756986808820818431.a n = (A019854 n : ℚ)

theorem P2756986808820818431.correct : P2756986808820818431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019854, Nat.add_sub_cancel, A019854.P2756986808820818431.a, A019854.P2247731442989983321.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019854, Nat.add_sub_cancel, A019854.P2756986808820818431.a, A019854.P2247731442989983321.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019854

/-! ## A019854.P8843928407807899873

`(A020593(n)+A019783(n))/2`
-/

namespace A019854.P8843928407807899873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020593 n + A019783 n : ℚ) / 2

end

end A019854.P8843928407807899873

namespace A019854

/-- `(A020593(n)+A019783(n))/2` -/
def P8843928407807899873.Spec : Prop :=
  ∀ n, P8843928407807899873.a n = (A019854 n : ℚ)

end A019854

/-! ## A019854.P18117700829469456578

`(A019783(n)+2*A016259(n)-A016243(n))/2`
-/

namespace A019854.P18117700829469456578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019783 n + (2 * A016259 n - A016243 n) : ℚ) / 2

end

end A019854.P18117700829469456578

namespace A019854

/-- `(A019783(n)+2*A016259(n)-A016243(n))/2` -/
def P18117700829469456578.Spec : Prop :=
  ∀ n, P18117700829469456578.a n = (A019854 n : ℚ)

end A019854

/-! ## A019854.P16158818569023203027

`Δ[A016247(n)-A016238(n)]`
-/

namespace A019854.P16158818569023203027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016247 n - A016238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019854.P16158818569023203027

namespace A019854

/-- `Δ[A016247(n)-A016238(n)]` -/
def P16158818569023203027.Spec : Prop :=
  ∀ n, P16158818569023203027.a n = A019854 n

end A019854

/-! ## A019854.P16207819623522047503

`(A019783(n)+A020579(n)+A020977(n)-A020606(n))/2`
-/

namespace A019854.P16207819623522047503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019783 n + (A020579 n + (A020977 n - A020606 n)) : ℚ) / 2

end

end A019854.P16207819623522047503

namespace A019854

/-- `(A019783(n)+A020579(n)+A020977(n)-A020606(n))/2` -/
def P16207819623522047503.Spec : Prop :=
  ∀ n, P16207819623522047503.a n = (A019854 n : ℚ)

end A019854

/-!
# A019863: Decimal expansion of sin(3*Pi/10) (sine of 54 degrees, or cosine of 36 degrees).

The programs for A019863, there is no canonical definition to state claims against.
-/

/-! ## A019863.P13018568361349732987

`9-A187426(n)`
-/

namespace A019863.P13018568361349732987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A187426 (n + 1)

end

end A019863.P13018568361349732987

/-! ## A019863.P14918755459422785148

`A296182(n+1)`
-/

namespace A019863.P14918755459422785148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296182 (n + 1 + 1)

end

end A019863.P14918755459422785148

/-!
# A019869: Expansion of 1/((1-5*x)*(1-6*x)*(1-12*x)).

The programs for A019869, the canonical program `A019869.P1250964608027387155` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019869 has offset 0).

The definition of A019869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019869.P1250964608027387155

`18*a(n-1)-72*a(n-2)+5^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019869

/-- `18*a(n-1)-72*a(n-2)+5^n` -/
def P1250964608027387155.Spec : Prop :=
  ∀ n, P1250964608027387155.a n = A019869 n

theorem P1250964608027387155.correct : P1250964608027387155.Spec := by
  intro n
  simp only [A019869]

end A019869

/-! ## A019869.P14230507828374258295

`25*5^n/7-6*6^n+24*12^n/7`
-/

namespace A019869.P14230507828374258295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 7 - (6 * 6 ^ n : ℚ) + (24 * 12 ^ n : ℚ) / 7

end

end A019869.P14230507828374258295

namespace A019869

/-- `25*5^n/7-6*6^n+24*12^n/7` -/
def P14230507828374258295.Spec : Prop :=
  ∀ n, P14230507828374258295.a n = (A019869 n : ℚ)

theorem P14230507828374258295.correct : P14230507828374258295.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019869, Nat.add_sub_cancel, A019869.P14230507828374258295.a, A019869.P1250964608027387155.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019869, Nat.add_sub_cancel, A019869.P14230507828374258295.a, A019869.P1250964608027387155.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019869

/-! ## A019869.P3469241358964176818

`Δ[A016248(n)-A016239(n)]`
-/

namespace A019869.P3469241358964176818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016248 n - A016239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019869.P3469241358964176818

namespace A019869

/-- `Δ[A016248(n)-A016239(n)]` -/
def P3469241358964176818.Spec : Prop :=
  ∀ n, P3469241358964176818.a n = A019869 n

end A019869


import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C023
import Seq.Opaque.C001
import Seq.Opaque.C018
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A016633: Expansion of g.f. 1/((1-2*x)*(1-11*x)*(1-12*x)).

The programs for A016633, the canonical program `A016633.P4625797840156236992` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016633 has offset 0).

The definition of A016633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016633.P4625797840156236992

`23*a(n-1)-132*a(n-2)+2^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016633

/-- `23*a(n-1)-132*a(n-2)+2^n` -/
def P4625797840156236992.Spec : Prop :=
  ∀ n, P4625797840156236992.a n = A016633 n

theorem P4625797840156236992.correct : P4625797840156236992.Spec := by
  intro n
  simp only [A016633]

end A016633

/-! ## A016633.P2755843804550772655

`A016136(n+1)-A016135(n+1)`
-/

namespace A016633.P2755843804550772655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016136 (n + 1) - A016135 (n + 1)

end

end A016633.P2755843804550772655

namespace A016633

/-- `A016136(n+1)-A016135(n+1)` -/
def P2755843804550772655.Spec : Prop :=
  ∀ n, P2755843804550772655.a n = A016633 n

end A016633

/-! ## A016633.P857050380458421140

`(648*12^n+2^(n+1)-5*11^(n+2))/45`
-/

namespace A016633.P857050380458421140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((648 * 12 ^ n + 2 ^ (n + 1) : ℤ) - (5 * 11 ^ (n + 2) : ℤ) : ℚ) / 45

end

end A016633.P857050380458421140

namespace A016633

/-- `(648*12^n+2^(n+1)-5*11^(n+2))/45` -/
def P857050380458421140.Spec : Prop :=
  ∀ n, P857050380458421140.a n = (A016633 n : ℚ)

theorem P857050380458421140.correct : P857050380458421140.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016633, Nat.add_sub_cancel, A016633.P857050380458421140.a, A016633.P4625797840156236992.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016633, Nat.add_sub_cancel, A016633.P857050380458421140.a, A016633.P4625797840156236992.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016633

/-! ## A016633.P9915652166086759198

`A139740(n+1)/9+12*a(n-1)` with `a(0)=1`
-/

namespace A016633.P9915652166086759198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139740 (n + 1) : ℚ) / 9 + 12 * a (n - 1)

end

end A016633.P9915652166086759198

namespace A016633

/-- `A139740(n+1)/9+12*a(n-1)` -/
def P9915652166086759198.Spec : Prop :=
  ∀ n, P9915652166086759198.a n = (A016633 n : ℚ)

end A016633

/-! ## A016633.P13650417921574777268

`Δ[A016207(n)-A016206(n)]`
-/

namespace A016633.P13650417921574777268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016207 n - A016206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016633.P13650417921574777268

namespace A016633

/-- `Δ[A016207(n)-A016206(n)]` -/
def P13650417921574777268.Spec : Prop :=
  ∀ n, P13650417921574777268.a n = A016633 n

end A016633

/-! ## A016633.P15923501898497252864

`2*A016326(n)-A016325(n)`
-/

namespace A016633.P15923501898497252864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016326 n - A016325 n

end

end A016633.P15923501898497252864

namespace A016633

/-- `2*A016326(n)-A016325(n)` -/
def P15923501898497252864.Spec : Prop :=
  ∀ n, P15923501898497252864.a n = A016633 n

end A016633

/-! ## A016633.P8896317070316518754

`A016206(n)+A021334(n)-A016207(n)`
-/

namespace A016633.P8896317070316518754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016206 n + (A021334 n - A016207 n)

end

end A016633.P8896317070316518754

namespace A016633

/-- `A016206(n)+A021334(n)-A016207(n)` -/
def P8896317070316518754.Spec : Prop :=
  ∀ n, P8896317070316518754.a n = A016633 n

end A016633

/-! ## A016633.P3783540311883416952

`2*A021324(n)-A021314(n)+A016206(n)-A016207(n)`
-/

namespace A016633.P3783540311883416952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021324 n - A021314 n + (A016206 n - A016207 n)

end

end A016633.P3783540311883416952

namespace A016633

/-- `2*A021324(n)-A021314(n)+A016206(n)-A016207(n)` -/
def P3783540311883416952.Spec : Prop :=
  ∀ n, P3783540311883416952.a n = A016633 n

end A016633

/-!
# A016639: Decimal expansion of log(16) = 4*log(2).

The programs for A016639, there is no canonical definition to state claims against.
-/

/-! ## A016639.P5353718427758021029

`A303658(round(acot(n)+n)-ceil(sin(n)²))`
-/

namespace A016639.P5353718427758021029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303658 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A016639.P5353718427758021029

/-! ## A016639.P13054611858390357088

`A303658(round(acot(n)+n)+floor(acot(n))-1)`
-/

namespace A016639.P13054611858390357088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303658 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A016639.P13054611858390357088

/-!
# A016655: Decimal expansion of log(32) = 5*log(2).

The programs for A016655, there is no canonical definition to state claims against.
-/

/-! ## A016655.P6559456280307157002

`9-A385647(n)`
-/

namespace A016655.P6559456280307157002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A385647 n

end

end A016655.P6559456280307157002


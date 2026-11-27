import Prog.A095.A0957
import Proof.Lib.Integral

/-- A095752: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A095752.anchor (n : ℕ) :
    (A095752 (n + 1) : ℚ) = (1 : ℚ) / 9 * (-1 + (10 ^ (n + 1) : ℤ) : ℚ) * (4 * (n + 1) + 3 : ℚ) := by
  have hr : ∀ m, A095752.P6157830035546302502.a (m + 4) = (22 : ℚ) * A095752.P6157830035546302502.a (m + 3) + (-141 : ℚ) * A095752.P6157830035546302502.a (m + 2) + (220 : ℚ) * A095752.P6157830035546302502.a (m + 1) + (-100 : ℚ) * A095752.P6157830035546302502.a m := by
    intro m
    simp only [A095752.P6157830035546302502.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A095752.P6157830035546302502.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨7, by norm_num [A095752.P6157830035546302502.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨121, by norm_num [A095752.P6157830035546302502.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1665, by norm_num [A095752.P6157830035546302502.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨21109, by norm_num [A095752.P6157830035546302502.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨22 * z3 + -141 * z2 + 220 * z1 + -100 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A095752.P6157830035546302502.a n = (1 : ℚ) / 9 * (-1 + (10 ^ (n + 1) : ℤ) : ℚ) * (4 * (n + 1) + 3 : ℚ) := by simp only [A095752.P6157830035546302502.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A095752, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

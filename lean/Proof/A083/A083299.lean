import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083299: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083299.anchor (n : ℕ) :
    (A083299 n : ℚ) = ((4 * 6 ^ n : ℤ) + (-4) ^ n : ℚ) / 5 := by
  have hr : ∀ m, A083299.P11977226873257043906.a (m + 2) = (2 : ℚ) * A083299.P11977226873257043906.a (m + 1) + (24 : ℚ) * A083299.P11977226873257043906.a m := by
    intro m
    simp only [A083299.P11977226873257043906.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083299.P11977226873257043906.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083299.P11977226873257043906.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A083299.P11977226873257043906.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z1 + 24 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083299.P11977226873257043906.a n = ((4 * 6 ^ n : ℤ) + (-4) ^ n : ℚ) / 5 := by simp only [A083299.P11977226873257043906.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083299, hz, SequenceProof.roundAway_intCast]

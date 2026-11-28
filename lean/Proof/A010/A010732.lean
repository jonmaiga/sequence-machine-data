import Prog.A010.A0107
import Proof.Lib.Integral

/-- A010732: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A010732.anchor (n : ℕ) :
    (A010732 n : ℚ) = (17 - (-1) ^ n : ℚ) / 2 := by
  have hr : ∀ m, A010732.P1998988425843513169.a (m + 2) = (1 : ℚ) * A010732.P1998988425843513169.a m := by
    intro m
    simp only [A010732.P1998988425843513169.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A010732.P1998988425843513169.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨8, by norm_num [A010732.P1998988425843513169.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A010732.P1998988425843513169.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z0, ?_⟩
        rw [hr, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A010732.P1998988425843513169.a n = (17 - (-1) ^ n : ℚ) / 2 := by simp only [A010732.P1998988425843513169.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A010732, hz, SequenceProof.roundAway_intCast]

import Prog.A072.A0722
import Proof.Lib.Integral

/-- A072260: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A072260.anchor (n : ℕ) :
    (A072260 n : ℚ) = (((6 * n + 19) * 4 ^ n : ℤ) - 1 : ℚ) / 3 := by
  have hr : ∀ m, A072260.P2800007278029826161.a (m + 3) = (9 : ℚ) * A072260.P2800007278029826161.a (m + 2) + (-24 : ℚ) * A072260.P2800007278029826161.a (m + 1) + (16 : ℚ) * A072260.P2800007278029826161.a m := by
    intro m
    simp only [A072260.P2800007278029826161.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A072260.P2800007278029826161.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨6, by norm_num [A072260.P2800007278029826161.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨33, by norm_num [A072260.P2800007278029826161.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨165, by norm_num [A072260.P2800007278029826161.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨9 * z2 + -24 * z1 + 16 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A072260.P2800007278029826161.a n = (((6 * n + 19) * 4 ^ n : ℤ) - 1 : ℚ) / 3 := by simp only [A072260.P2800007278029826161.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A072260, hz, SequenceProof.roundAway_intCast]

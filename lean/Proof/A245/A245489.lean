import Prog.A245.A2454
import Proof.Lib.Integral

/-- A245489: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A245489.anchor (n : ℕ) :
    (A245489 n : ℚ) = ((1 ^ n : ℤ) + (-2) ^ n + (4 ^ n : ℤ) : ℚ) / 3 := by
  have hr : ∀ m, A245489.P4575508004519155592.a (m + 3) = (3 : ℚ) * A245489.P4575508004519155592.a (m + 2) + (6 : ℚ) * A245489.P4575508004519155592.a (m + 1) + (-8 : ℚ) * A245489.P4575508004519155592.a m := by
    intro m
    simp only [A245489.P4575508004519155592.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A245489.P4575508004519155592.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A245489.P4575508004519155592.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A245489.P4575508004519155592.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A245489.P4575508004519155592.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + 6 * z1 + -8 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A245489.P4575508004519155592.a n = ((1 ^ n : ℤ) + (-2) ^ n + (4 ^ n : ℤ) : ℚ) / 3 := by simp only [A245489.P4575508004519155592.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A245489, hz, SequenceProof.roundAway_intCast]

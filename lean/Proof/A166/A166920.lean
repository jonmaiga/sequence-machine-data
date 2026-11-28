import Prog.A166.A1669
import Proof.Lib.Integral

/-- A166920: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A166920.anchor (n : ℕ) :
    (A166920 n : ℚ) = (2 ^ n : ℚ) - (1 + (-1) ^ n : ℚ) / 2 := by
  have hr : ∀ m, A166920.P5916192828448118755.a (m + 3) = (2 : ℚ) * A166920.P5916192828448118755.a (m + 2) + (1 : ℚ) * A166920.P5916192828448118755.a (m + 1) + (-2 : ℚ) * A166920.P5916192828448118755.a m := by
    intro m
    simp only [A166920.P5916192828448118755.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A166920.P5916192828448118755.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A166920.P5916192828448118755.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A166920.P5916192828448118755.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A166920.P5916192828448118755.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z2 + 1 * z1 + -2 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A166920.P5916192828448118755.a n = (2 ^ n : ℚ) - (1 + (-1) ^ n : ℚ) / 2 := by simp only [A166920.P5916192828448118755.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A166920, hz, SequenceProof.roundAway_intCast]

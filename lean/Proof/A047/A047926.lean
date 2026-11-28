import Prog.A047.A0479
import Proof.Lib.Integral

/-- A047926: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A047926.anchor (n : ℕ) :
    (A047926 n : ℚ) = (3 ^ (n + 1) + 2 * n + 1 : ℚ) / 4 := by
  have hr : ∀ m, A047926.P8331763504239172225.a (m + 3) = (5 : ℚ) * A047926.P8331763504239172225.a (m + 2) + (-7 : ℚ) * A047926.P8331763504239172225.a (m + 1) + (3 : ℚ) * A047926.P8331763504239172225.a m := by
    intro m
    simp only [A047926.P8331763504239172225.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A047926.P8331763504239172225.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A047926.P8331763504239172225.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A047926.P8331763504239172225.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A047926.P8331763504239172225.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z2 + -7 * z1 + 3 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A047926.P8331763504239172225.a n = (3 ^ (n + 1) + 2 * n + 1 : ℚ) / 4 := by simp only [A047926.P8331763504239172225.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A047926, hz, SequenceProof.roundAway_intCast]

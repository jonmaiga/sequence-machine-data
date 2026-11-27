import Prog.A086.A0869
import Proof.Lib.Integral

/-- A086952: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A086952.anchor (n : ℕ) :
    (A086952 n : ℚ) = (n ^ 2 * 4 ^ n : ℚ) / 4 := by
  have hr : ∀ m, A086952.P12511397300879814166.a (m + 3) = (12 : ℚ) * A086952.P12511397300879814166.a (m + 2) + (-48 : ℚ) * A086952.P12511397300879814166.a (m + 1) + (64 : ℚ) * A086952.P12511397300879814166.a m := by
    intro m
    simp only [A086952.P12511397300879814166.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A086952.P12511397300879814166.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A086952.P12511397300879814166.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A086952.P12511397300879814166.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A086952.P12511397300879814166.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨12 * z2 + -48 * z1 + 64 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A086952.P12511397300879814166.a n = (n ^ 2 * 4 ^ n : ℚ) / 4 := by simp only [A086952.P12511397300879814166.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A086952, hz, SequenceProof.roundAway_intCast]

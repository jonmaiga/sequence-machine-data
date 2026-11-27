import Prog.A178.A1785
import Proof.Lib.Integral

/-- A178511: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A178511.anchor (n : ℕ) :
    (A178511 (n + 1) : ℚ) = (1 : ℚ) / 119 * ((100 ^ (n + 1) : ℤ) - (-19) ^ (n + 1) : ℚ) := by
  have hr : ∀ m, A178511.P5882585623886558827.a (m + 2) = (81 : ℚ) * A178511.P5882585623886558827.a (m + 1) + (1900 : ℚ) * A178511.P5882585623886558827.a m := by
    intro m
    simp only [A178511.P5882585623886558827.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A178511.P5882585623886558827.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A178511.P5882585623886558827.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨81, by norm_num [A178511.P5882585623886558827.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨81 * z1 + 1900 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A178511.P5882585623886558827.a n = (1 : ℚ) / 119 * ((100 ^ (n + 1) : ℤ) - (-19) ^ (n + 1) : ℚ) := by simp only [A178511.P5882585623886558827.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A178511, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

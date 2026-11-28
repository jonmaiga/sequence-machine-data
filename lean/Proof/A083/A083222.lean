import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083222: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083222.anchor (n : ℕ) :
    (A083222 n : ℚ) = ((4 * 5 ^ n : ℤ) + (-5) ^ n : ℚ) / 5 := by
  have hr : ∀ m, A083222.P13674719079561544464.a (m + 2) = (25 : ℚ) * A083222.P13674719079561544464.a m := by
    intro m
    simp only [A083222.P13674719079561544464.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083222.P13674719079561544464.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083222.P13674719079561544464.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A083222.P13674719079561544464.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨25 * z0, ?_⟩
        rw [hr, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083222.P13674719079561544464.a n = ((4 * 5 ^ n : ℤ) + (-5) ^ n : ℚ) / 5 := by simp only [A083222.P13674719079561544464.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083222, hz, SequenceProof.roundAway_intCast]

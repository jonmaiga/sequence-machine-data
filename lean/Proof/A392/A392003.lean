import Prog.A392.A3920
import Proof.Lib.Integral

/-- A392003: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A392003.anchor (n : ℕ) :
    (A392003 (n + 1) : ℚ) = ((7 * 2 ^ (n + 1) : ℤ) - 9 + 5 * (-1) ^ (n + 1) : ℚ) / 6 := by
  have hr : ∀ m, A392003.P18270984355386008728.a (m + 3) = (2 : ℚ) * A392003.P18270984355386008728.a (m + 2) + (1 : ℚ) * A392003.P18270984355386008728.a (m + 1) + (-2 : ℚ) * A392003.P18270984355386008728.a m := by
    intro m
    simp only [A392003.P18270984355386008728.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A392003.P18270984355386008728.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A392003.P18270984355386008728.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A392003.P18270984355386008728.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A392003.P18270984355386008728.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z2 + 1 * z1 + -2 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A392003.P18270984355386008728.a n = ((7 * 2 ^ (n + 1) : ℤ) - 9 + 5 * (-1) ^ (n + 1) : ℚ) / 6 := by simp only [A392003.P18270984355386008728.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A392003, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

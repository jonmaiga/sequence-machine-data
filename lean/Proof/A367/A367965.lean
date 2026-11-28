import Prog.A367.A3679
import Proof.Lib.Integral

/-- A367965: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A367965.anchor (n : ℕ) :
    (A367965 n : ℚ) = (1 : ℚ) / 8 * ((4 * n ^ 2 + 6 * n : ℤ) + (-1) ^ n * ((2 * n * (n + 1) : ℤ) - 1) + 1 : ℚ) := by
  have hr : ∀ m, A367965.P4231374435710970210.a (m + 6) = (3 : ℚ) * A367965.P4231374435710970210.a (m + 4) + (-3 : ℚ) * A367965.P4231374435710970210.a (m + 2) + (1 : ℚ) * A367965.P4231374435710970210.a m := by
    intro m
    simp only [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A367965.P4231374435710970210.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z4 + -3 * z2 + 1 * z0, ?_⟩
        rw [hr, h4, h2, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A367965.P4231374435710970210.a n = (1 : ℚ) / 8 * ((4 * n ^ 2 + 6 * n : ℤ) + (-1) ^ n * ((2 * n * (n + 1) : ℤ) - 1) + 1 : ℚ) := by simp only [A367965.P4231374435710970210.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A367965, hz, SequenceProof.roundAway_intCast]

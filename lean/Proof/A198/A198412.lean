import Prog.A198.A1984
import Proof.Lib.Integral

/-- A198412: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A198412.anchor (n : ℕ) :
    (A198412 n : ℚ) = ((3 ^ (6 * n) : ℤ) - (2 ^ (6 * n) : ℤ) : ℚ) / 35 := by
  have hr : ∀ m, A198412.P14494272115542389600.a (m + 2) = (793 : ℚ) * A198412.P14494272115542389600.a (m + 1) + (-46656 : ℚ) * A198412.P14494272115542389600.a m := by
    intro m
    simp only [A198412.P14494272115542389600.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A198412.P14494272115542389600.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A198412.P14494272115542389600.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨19, by norm_num [A198412.P14494272115542389600.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨793 * z1 + -46656 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A198412.P14494272115542389600.a n = ((3 ^ (6 * n) : ℤ) - (2 ^ (6 * n) : ℤ) : ℚ) / 35 := by simp only [A198412.P14494272115542389600.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A198412, hz, SequenceProof.roundAway_intCast]

import Prog.A114.A1142
import Proof.Lib.Integral

/-- A114241: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A114241.anchor (n : ℕ) :
    (A114241 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (11 * n ^ 2 + 29 * n + 20) : ℚ) / 120 := by
  have hr : ∀ m, A114241.P4888421832462924666.a (m + 6) = (6 : ℚ) * A114241.P4888421832462924666.a (m + 5) + (-15 : ℚ) * A114241.P4888421832462924666.a (m + 4) + (20 : ℚ) * A114241.P4888421832462924666.a (m + 3) + (-15 : ℚ) * A114241.P4888421832462924666.a (m + 2) + (6 : ℚ) * A114241.P4888421832462924666.a (m + 1) + (-1 : ℚ) * A114241.P4888421832462924666.a m := by
    intro m
    simp only [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A114241.P4888421832462924666.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12, by norm_num [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨61, by norm_num [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨206, by norm_num [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨546, by norm_num [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1232, by norm_num [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z5 + -15 * z4 + 20 * z3 + -15 * z2 + 6 * z1 + -1 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A114241.P4888421832462924666.a n = ((n + 1) * (n + 2) * (n + 3) * (11 * n ^ 2 + 29 * n + 20) : ℚ) / 120 := by simp only [A114241.P4888421832462924666.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A114241, hz, SequenceProof.roundAway_intCast]

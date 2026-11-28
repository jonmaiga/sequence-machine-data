import Prog.A172.A1722
import Proof.Lib.Integral

/-- A172241: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A172241.anchor (n : ℕ) :
    (A172241 (n + 1) : ℚ) = (1 : ℚ) / 18 * ((8 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) - 9 : ℚ) := by
  have hr : ∀ m, A172241.P4273626215171040764.a (m + 3) = (8 : ℚ) * A172241.P4273626215171040764.a (m + 2) + (1 : ℚ) * A172241.P4273626215171040764.a (m + 1) + (-8 : ℚ) * A172241.P4273626215171040764.a m := by
    intro m
    simp only [A172241.P4273626215171040764.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A172241.P4273626215171040764.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A172241.P4273626215171040764.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A172241.P4273626215171040764.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨28, by norm_num [A172241.P4273626215171040764.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨8 * z2 + 1 * z1 + -8 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A172241.P4273626215171040764.a n = (1 : ℚ) / 18 * ((8 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) - 9 : ℚ) := by simp only [A172241.P4273626215171040764.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A172241, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

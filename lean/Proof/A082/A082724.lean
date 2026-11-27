import Prog.A082.A0827
import Proof.Lib.Integral

/-- A082724: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A082724.anchor (n : ℕ) :
    (A082724 n : ℚ) = (3 * 11 ^ n + 3 ^ n : ℚ) / 4 := by
  have hr : ∀ m, A082724.P12991483431964346056.a (m + 2) = (14 : ℚ) * A082724.P12991483431964346056.a (m + 1) + (-33 : ℚ) * A082724.P12991483431964346056.a m := by
    intro m
    simp only [A082724.P12991483431964346056.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A082724.P12991483431964346056.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A082724.P12991483431964346056.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A082724.P12991483431964346056.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨14 * z1 + -33 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A082724.P12991483431964346056.a n = (3 * 11 ^ n + 3 ^ n : ℚ) / 4 := by simp only [A082724.P12991483431964346056.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A082724, hz, SequenceProof.roundAway_intCast]

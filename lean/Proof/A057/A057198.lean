import Prog.A057.A0571
import Proof.Lib.Integral

/-- A057198: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A057198.anchor (n : ℕ) :
    (A057198 (n + 1) : ℚ) = (5 * 3 ^ n + 1 : ℚ) / 2 := by
  have hr : ∀ m, A057198.P11857436187259644358.a (m + 2) = (4 : ℚ) * A057198.P11857436187259644358.a (m + 1) + (-3 : ℚ) * A057198.P11857436187259644358.a m := by
    intro m
    simp only [A057198.P11857436187259644358.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A057198.P11857436187259644358.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A057198.P11857436187259644358.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A057198.P11857436187259644358.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z1 + -3 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A057198.P11857436187259644358.a n = (5 * 3 ^ n + 1 : ℚ) / 2 := by simp only [A057198.P11857436187259644358.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A057198, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

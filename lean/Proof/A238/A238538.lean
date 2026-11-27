import Prog.A238.A2385
import Proof.Lib.Integral

/-- A238538: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A238538.anchor (n : ℕ) :
    (A238538 (n + 1) : ℚ) = ((2 ^ (n + 1) + 1 : ℤ) * ((2 ^ (3 * (n + 1)) : ℤ) - 1) : ℚ) / ((2 + 1 : ℤ) * ((2 ^ 3 : ℤ) - 1) : ℚ) := by
  have hr : ∀ m, A238538.P5297384092344421343.a (m + 4) = (27 : ℚ) * A238538.P5297384092344421343.a (m + 3) + (-202 : ℚ) * A238538.P5297384092344421343.a (m + 2) + (432 : ℚ) * A238538.P5297384092344421343.a (m + 1) + (-256 : ℚ) * A238538.P5297384092344421343.a m := by
    intro m
    simp only [A238538.P5297384092344421343.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A238538.P5297384092344421343.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A238538.P5297384092344421343.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A238538.P5297384092344421343.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨219, by norm_num [A238538.P5297384092344421343.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3315, by norm_num [A238538.P5297384092344421343.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨27 * z3 + -202 * z2 + 432 * z1 + -256 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A238538.P5297384092344421343.a n = ((2 ^ (n + 1) + 1 : ℤ) * ((2 ^ (3 * (n + 1)) : ℤ) - 1) : ℚ) / ((2 + 1 : ℤ) * ((2 ^ 3 : ℤ) - 1) : ℚ) := by simp only [A238538.P5297384092344421343.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A238538, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

import Prog.A171.A1715
import Proof.Lib.Integral

/-- A171507: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A171507.anchor (n : ℕ) :
    (A171507 n : ℚ) = ((5 * 2 ^ (n + 1) : ℤ) - 9 - (-1) ^ n : ℚ) / 6 - (2 * n : ℚ) := by
  have hr : ∀ m, A171507.P7929847407598138493.a (m + 4) = (3 : ℚ) * A171507.P7929847407598138493.a (m + 3) + (-1 : ℚ) * A171507.P7929847407598138493.a (m + 2) + (-3 : ℚ) * A171507.P7929847407598138493.a (m + 1) + (2 : ℚ) * A171507.P7929847407598138493.a m := by
    intro m
    simp only [A171507.P7929847407598138493.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A171507.P7929847407598138493.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A171507.P7929847407598138493.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A171507.P7929847407598138493.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A171507.P7929847407598138493.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A171507.P7929847407598138493.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z3 + -1 * z2 + -3 * z1 + 2 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A171507.P7929847407598138493.a n = ((5 * 2 ^ (n + 1) : ℤ) - 9 - (-1) ^ n : ℚ) / 6 - (2 * n : ℚ) := by simp only [A171507.P7929847407598138493.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A171507, hz, SequenceProof.roundAway_intCast]

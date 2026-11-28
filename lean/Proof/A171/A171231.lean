import Prog.A171.A1712
import Proof.Lib.Integral

/-- A171231: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A171231.anchor (n : ℕ) :
    (A171231 n : ℚ) = ((10 * 2 ^ n + 3 : ℤ) - (-1) ^ n : ℚ) / 6 := by
  have hr : ∀ m, A171231.P13288203214170429472.a (m + 3) = (2 : ℚ) * A171231.P13288203214170429472.a (m + 2) + (1 : ℚ) * A171231.P13288203214170429472.a (m + 1) + (-2 : ℚ) * A171231.P13288203214170429472.a m := by
    intro m
    simp only [A171231.P13288203214170429472.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A171231.P13288203214170429472.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A171231.P13288203214170429472.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A171231.P13288203214170429472.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A171231.P13288203214170429472.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z2 + 1 * z1 + -2 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A171231.P13288203214170429472.a n = ((10 * 2 ^ n + 3 : ℤ) - (-1) ^ n : ℚ) / 6 := by simp only [A171231.P13288203214170429472.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A171231, hz, SequenceProof.roundAway_intCast]

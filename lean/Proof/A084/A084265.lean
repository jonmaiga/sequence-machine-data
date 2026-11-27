import Prog.A084.A0842
import Proof.Lib.Integral

/-- A084265: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A084265.anchor (n : ℕ) :
    (A084265 n : ℚ) = ((n ^ 2 + 3 * n + 1 : ℤ) + (-1) ^ n : ℚ) / 2 := by
  have hr : ∀ m, A084265.P9959253151178684130.a (m + 4) = (2 : ℚ) * A084265.P9959253151178684130.a (m + 3) + (-2 : ℚ) * A084265.P9959253151178684130.a (m + 1) + (1 : ℚ) * A084265.P9959253151178684130.a m := by
    intro m
    simp only [A084265.P9959253151178684130.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A084265.P9959253151178684130.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A084265.P9959253151178684130.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A084265.P9959253151178684130.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A084265.P9959253151178684130.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A084265.P9959253151178684130.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A084265.P9959253151178684130.a n = ((n ^ 2 + 3 * n + 1 : ℤ) + (-1) ^ n : ℚ) / 2 := by simp only [A084265.P9959253151178684130.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A084265, hz, SequenceProof.roundAway_intCast]

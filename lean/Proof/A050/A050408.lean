import Prog.A050.A0504
import Proof.Lib.Integral

/-- A050408: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A050408.anchor (n : ℕ) :
    (A050408 n : ℚ) = ((117 * n ^ 2 : ℤ) - (99 * n : ℤ) + 2 : ℚ) / 2 := by
  have hr : ∀ m, A050408.P9847007229613266895.a (m + 3) = (3 : ℚ) * A050408.P9847007229613266895.a (m + 2) + (-3 : ℚ) * A050408.P9847007229613266895.a (m + 1) + (1 : ℚ) * A050408.P9847007229613266895.a m := by
    intro m
    simp only [A050408.P9847007229613266895.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A050408.P9847007229613266895.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A050408.P9847007229613266895.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A050408.P9847007229613266895.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨136, by norm_num [A050408.P9847007229613266895.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A050408.P9847007229613266895.a n = ((117 * n ^ 2 : ℤ) - (99 * n : ℤ) + 2 : ℚ) / 2 := by simp only [A050408.P9847007229613266895.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A050408, hz, SequenceProof.roundAway_intCast]

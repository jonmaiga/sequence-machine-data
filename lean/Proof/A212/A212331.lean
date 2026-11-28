import Prog.A212.A2123
import Proof.Lib.Integral

/-- A212331: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A212331.anchor (n : ℕ) :
    (A212331 n : ℚ) = (5 * n * (n + 5) : ℚ) / 2 := by
  have hr : ∀ m, A212331.P7536679952514749485.a (m + 3) = (3 : ℚ) * A212331.P7536679952514749485.a (m + 2) + (-3 : ℚ) * A212331.P7536679952514749485.a (m + 1) + (1 : ℚ) * A212331.P7536679952514749485.a m := by
    intro m
    simp only [A212331.P7536679952514749485.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A212331.P7536679952514749485.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A212331.P7536679952514749485.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A212331.P7536679952514749485.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨35, by norm_num [A212331.P7536679952514749485.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A212331.P7536679952514749485.a n = (5 * n * (n + 5) : ℚ) / 2 := by simp only [A212331.P7536679952514749485.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A212331, hz, SequenceProof.roundAway_intCast]

import Prog.A330.A3303
import Proof.Lib.Integral

/-- A330357: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A330357.anchor (n : ℕ) :
    (A330357 n : ℚ) = ((2 * n ^ 2 + 9 : ℤ) - (-1) ^ n : ℚ) / 4 := by
  have hr : ∀ m, A330357.P3059809268298630540.a (m + 4) = (2 : ℚ) * A330357.P3059809268298630540.a (m + 3) + (-2 : ℚ) * A330357.P3059809268298630540.a (m + 1) + (1 : ℚ) * A330357.P3059809268298630540.a m := by
    intro m
    simp only [A330357.P3059809268298630540.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A330357.P3059809268298630540.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A330357.P3059809268298630540.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A330357.P3059809268298630540.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A330357.P3059809268298630540.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A330357.P3059809268298630540.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A330357.P3059809268298630540.a n = ((2 * n ^ 2 + 9 : ℤ) - (-1) ^ n : ℚ) / 4 := by simp only [A330357.P3059809268298630540.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A330357, hz, SequenceProof.roundAway_intCast]

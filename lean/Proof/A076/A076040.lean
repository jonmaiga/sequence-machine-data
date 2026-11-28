import Prog.A076.A0760
import Proof.Lib.Integral

/-- A076040: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A076040.anchor (n : ℕ) :
    (A076040 n : ℚ) = ((-1) ^ n * ((3 ^ n : ℤ) - 1) : ℚ) / 2 := by
  have hr : ∀ m, A076040.P7572109197111867255.a (m + 2) = (-4 : ℚ) * A076040.P7572109197111867255.a (m + 1) + (-3 : ℚ) * A076040.P7572109197111867255.a m := by
    intro m
    simp only [A076040.P7572109197111867255.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A076040.P7572109197111867255.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A076040.P7572109197111867255.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-1, by norm_num [A076040.P7572109197111867255.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-4 * z1 + -3 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A076040.P7572109197111867255.a n = ((-1) ^ n * ((3 ^ n : ℤ) - 1) : ℚ) / 2 := by simp only [A076040.P7572109197111867255.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A076040, hz, SequenceProof.roundAway_intCast]

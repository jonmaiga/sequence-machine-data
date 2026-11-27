import Prog.A325.A3256
import Proof.Lib.Integral

/-- A325656: the name formula, an integer: it satisfies a linear recurrence of order 7 with integer coefficients. -/
theorem A325656.anchor (n : ℕ) :
    (A325656 n : ℚ) = (1 : ℚ) / 24 * (n : ℚ) * (((4 * n + 3) * (2 * n ^ 2 + 1) : ℤ) - 3 * (-1) ^ n : ℚ) := by
  have hr : ∀ m, A325656.P6301097294521202368.a (m + 7) = (3 : ℚ) * A325656.P6301097294521202368.a (m + 6) + (-1 : ℚ) * A325656.P6301097294521202368.a (m + 5) + (-5 : ℚ) * A325656.P6301097294521202368.a (m + 4) + (5 : ℚ) * A325656.P6301097294521202368.a (m + 3) + (1 : ℚ) * A325656.P6301097294521202368.a (m + 2) + (-3 : ℚ) * A325656.P6301097294521202368.a (m + 1) + (1 : ℚ) * A325656.P6301097294521202368.a m := by
    intro m
    simp only [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A325656.P6301097294521202368.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 7 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨36, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨104, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨245, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨492, by norm_num [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z6 + -1 * z5 + -5 * z4 + 5 * z3 + 1 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A325656.P6301097294521202368.a n = (1 : ℚ) / 24 * (n : ℚ) * (((4 * n + 3) * (2 * n ^ 2 + 1) : ℤ) - 3 * (-1) ^ n : ℚ) := by simp only [A325656.P6301097294521202368.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A325656, hz, SequenceProof.roundAway_intCast]

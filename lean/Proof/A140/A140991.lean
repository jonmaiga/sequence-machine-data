import Prog.A140.A1409
import Proof.Lib.Integral

/-- A140991: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A140991.anchor (n : ℕ) :
    (A140991 n : ℚ) = (1 : ℚ) / 9 * ((7 * 2 ^ n : ℤ) + (-1) ^ n * (3 * n + 2 : ℤ) : ℚ) - (((n : ℤ) - 1) ^ 2 : ℚ) := by
  have hr : ∀ m, A140991.P842563066363022933.a (m + 6) = (3 : ℚ) * A140991.P842563066363022933.a (m + 5) + (-6 : ℚ) * A140991.P842563066363022933.a (m + 3) + (3 : ℚ) * A140991.P842563066363022933.a (m + 2) + (3 : ℚ) * A140991.P842563066363022933.a (m + 1) + (-2 : ℚ) * A140991.P842563066363022933.a m := by
    intro m
    simp only [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A140991.P842563066363022933.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7, by norm_num [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z5 + -6 * z3 + 3 * z2 + 3 * z1 + -2 * z0, ?_⟩
        rw [hr, h5, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A140991.P842563066363022933.a n = (1 : ℚ) / 9 * ((7 * 2 ^ n : ℤ) + (-1) ^ n * (3 * n + 2 : ℤ) : ℚ) - (((n : ℤ) - 1) ^ 2 : ℚ) := by simp only [A140991.P842563066363022933.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A140991, hz, SequenceProof.roundAway_intCast]

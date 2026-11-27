import Prog.A350.A3506
import Proof.Lib.Integral

/-- A350689: the name formula, an integer: it satisfies a linear recurrence of order 10 with integer coefficients. -/
theorem A350689.anchor (n : ℕ) :
    (A350689 n : ℚ) = ((n : ℤ) * (1 - (-1) ^ n - 2 * (3 + (-1) ^ n) * (n ^ 2 : ℤ) + (2 * n ^ 4 : ℤ)) : ℚ) / 384 := by
  have hr : ∀ m, A350689.P4856709123126009942.a (m + 10) = (2 : ℚ) * A350689.P4856709123126009942.a (m + 9) + (3 : ℚ) * A350689.P4856709123126009942.a (m + 8) + (-8 : ℚ) * A350689.P4856709123126009942.a (m + 7) + (-2 : ℚ) * A350689.P4856709123126009942.a (m + 6) + (12 : ℚ) * A350689.P4856709123126009942.a (m + 5) + (-2 : ℚ) * A350689.P4856709123126009942.a (m + 4) + (-8 : ℚ) * A350689.P4856709123126009942.a (m + 3) + (3 : ℚ) * A350689.P4856709123126009942.a (m + 2) + (2 : ℚ) * A350689.P4856709123126009942.a (m + 1) + (-1 : ℚ) * A350689.P4856709123126009942.a m := by
    intro m
    simp only [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A350689.P4856709123126009942.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 10 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨36, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨84, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨160, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨300, by norm_num [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z9, h9⟩ := ih (m + 9) (by omega)
        obtain ⟨z8, h8⟩ := ih (m + 8) (by omega)
        obtain ⟨z7, h7⟩ := ih (m + 7) (by omega)
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z9 + 3 * z8 + -8 * z7 + -2 * z6 + 12 * z5 + -2 * z4 + -8 * z3 + 3 * z2 + 2 * z1 + -1 * z0, ?_⟩
        rw [hr, h9, h8, h7, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A350689.P4856709123126009942.a n = ((n : ℤ) * (1 - (-1) ^ n - 2 * (3 + (-1) ^ n) * (n ^ 2 : ℤ) + (2 * n ^ 4 : ℤ)) : ℚ) / 384 := by simp only [A350689.P4856709123126009942.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A350689, hz, SequenceProof.roundAway_intCast]

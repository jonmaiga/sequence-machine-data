import Prog.A161.A1617
import Proof.Lib.Integral

/-- A161704: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A161704.anchor (n : ℕ) :
    (A161704 n : ℚ) = ((3 * n ^ 5 : ℤ) - (35 * n ^ 4 : ℤ) + (145 * n ^ 3 : ℤ) - (235 * n ^ 2 : ℤ) + (152 * n : ℤ) + 30 : ℚ) / 30 := by
  have hr : ∀ m, A161704.P6978379818699083152.a (m + 6) = (6 : ℚ) * A161704.P6978379818699083152.a (m + 5) + (-15 : ℚ) * A161704.P6978379818699083152.a (m + 4) + (20 : ℚ) * A161704.P6978379818699083152.a (m + 3) + (-15 : ℚ) * A161704.P6978379818699083152.a (m + 2) + (6 : ℚ) * A161704.P6978379818699083152.a (m + 1) + (-1 : ℚ) * A161704.P6978379818699083152.a m := by
    intro m
    simp only [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A161704.P6978379818699083152.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨18, by norm_num [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨6 * z5 + -15 * z4 + 20 * z3 + -15 * z2 + 6 * z1 + -1 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A161704.P6978379818699083152.a n = ((3 * n ^ 5 : ℤ) - (35 * n ^ 4 : ℤ) + (145 * n ^ 3 : ℤ) - (235 * n ^ 2 : ℤ) + (152 * n : ℤ) + 30 : ℚ) / 30 := by simp only [A161704.P6978379818699083152.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A161704, hz, SequenceProof.roundAway_intCast]

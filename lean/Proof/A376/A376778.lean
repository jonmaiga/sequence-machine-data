import Prog.A376.A3767
import Proof.Lib.Integral

/-- A376778: the name formula, an integer: it satisfies a linear recurrence of order 7 with integer coefficients. -/
theorem A376778.anchor (n : ℕ) :
    (A376778 n : ℚ) = (((32 * n ^ 4 + 80 * n ^ 3 + 40 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3) * (2 * n + 1 : ℤ) * (n : ℤ) : ℚ) / 15 := by
  have hr : ∀ m, A376778.P5136028725953365497.a (m + 7) = (7 : ℚ) * A376778.P5136028725953365497.a (m + 6) + (-21 : ℚ) * A376778.P5136028725953365497.a (m + 5) + (35 : ℚ) * A376778.P5136028725953365497.a (m + 4) + (-35 : ℚ) * A376778.P5136028725953365497.a (m + 3) + (21 : ℚ) * A376778.P5136028725953365497.a (m + 2) + (-7 : ℚ) * A376778.P5136028725953365497.a (m + 1) + (1 : ℚ) * A376778.P5136028725953365497.a m := by
    intro m
    simp only [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A376778.P5136028725953365497.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 7 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨27, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨850, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7077, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨33300, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨113311, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨312390, by norm_num [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z6 + -21 * z5 + 35 * z4 + -35 * z3 + 21 * z2 + -7 * z1 + 1 * z0, ?_⟩
        rw [hr, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A376778.P5136028725953365497.a n = (((32 * n ^ 4 + 80 * n ^ 3 + 40 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3) * (2 * n + 1 : ℤ) * (n : ℤ) : ℚ) / 15 := by simp only [A376778.P5136028725953365497.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A376778, hz, SequenceProof.roundAway_intCast]

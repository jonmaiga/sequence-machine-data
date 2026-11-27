import Prog.A137.A1372
import Proof.Lib.Integral

/-- A137215: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A137215.anchor (n : ℕ) :
    (A137215 n : ℚ) = (3 * 10 ^ n : ℚ) + ((n ^ 2 + 1 : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by
  have hr : ∀ m, A137215.P6600586707185906340.a (m + 6) = (33 : ℚ) * A137215.P6600586707185906340.a (m + 5) + (-393 : ℚ) * A137215.P6600586707185906340.a (m + 4) + (1991 : ℚ) * A137215.P6600586707185906340.a (m + 3) + (-3930 : ℚ) * A137215.P6600586707185906340.a (m + 2) + (3300 : ℚ) * A137215.P6600586707185906340.a (m + 1) + (-1000 : ℚ) * A137215.P6600586707185906340.a m := by
    intro m
    simp only [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A137215.P6600586707185906340.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨32, by norm_num [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨355, by norm_num [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4110, by norm_num [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨48887, by norm_num [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨588886, by norm_num [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨33 * z5 + -393 * z4 + 1991 * z3 + -3930 * z2 + 3300 * z1 + -1000 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A137215.P6600586707185906340.a n = (3 * 10 ^ n : ℚ) + ((n ^ 2 + 1 : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by simp only [A137215.P6600586707185906340.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A137215, hz, SequenceProof.roundAway_intCast]

import Prog.A161.A1617
import Proof.Lib.Integral

/-- A161712: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A161712.anchor (n : ℕ) :
    (A161712 n : ℚ) = ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 3 : ℚ) / 3 := by
  have hr : ∀ m, A161712.P16461811427372505341.a (m + 4) = (4 : ℚ) * A161712.P16461811427372505341.a (m + 3) + (-6 : ℚ) * A161712.P16461811427372505341.a (m + 2) + (4 : ℚ) * A161712.P16461811427372505341.a (m + 1) + (-1 : ℚ) * A161712.P16461811427372505341.a m := by
    intro m
    simp only [A161712.P16461811427372505341.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A161712.P16461811427372505341.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A161712.P16461811427372505341.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A161712.P16461811427372505341.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A161712.P16461811427372505341.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨27, by norm_num [A161712.P16461811427372505341.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z3 + -6 * z2 + 4 * z1 + -1 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A161712.P16461811427372505341.a n = ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 3 : ℚ) / 3 := by simp only [A161712.P16461811427372505341.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A161712, hz, SequenceProof.roundAway_intCast]

import Prog.A264.A2648
import Proof.Lib.Integral

/-- A264891: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A264891.anchor (n : ℕ) :
    (A264891 n : ℚ) = ((n : ℤ) * ((5 * n : ℤ) - 3) * ((25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 6) : ℚ) / 8 := by
  have hr : ∀ m, A264891.P14472380218226351815.a (m + 5) = (5 : ℚ) * A264891.P14472380218226351815.a (m + 4) + (-10 : ℚ) * A264891.P14472380218226351815.a (m + 3) + (10 : ℚ) * A264891.P14472380218226351815.a (m + 2) + (-5 : ℚ) * A264891.P14472380218226351815.a (m + 1) + (1 : ℚ) * A264891.P14472380218226351815.a m := by
    intro m
    simp only [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A264891.P14472380218226351815.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨112, by norm_num [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨783, by norm_num [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2839, by norm_num [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z4 + -10 * z3 + 10 * z2 + -5 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A264891.P14472380218226351815.a n = ((n : ℤ) * ((5 * n : ℤ) - 3) * ((25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 6) : ℚ) / 8 := by simp only [A264891.P14472380218226351815.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A264891, hz, SequenceProof.roundAway_intCast]

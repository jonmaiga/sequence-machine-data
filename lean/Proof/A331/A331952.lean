import Prog.A331.A3319
import Proof.Lib.Integral

/-- A331952: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A331952.anchor (n : ℕ) :
    (A331952 n : ℚ) = (-7 + (-1) ^ (1 + n) + (6 * n ^ 2 : ℤ) : ℚ) / 8 := by
  have hr : ∀ m, A331952.P18342230885712170531.a (m + 4) = (2 : ℚ) * A331952.P18342230885712170531.a (m + 3) + (-2 : ℚ) * A331952.P18342230885712170531.a (m + 1) + (1 : ℚ) * A331952.P18342230885712170531.a m := by
    intro m
    simp only [A331952.P18342230885712170531.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A331952.P18342230885712170531.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨-1, by norm_num [A331952.P18342230885712170531.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A331952.P18342230885712170531.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A331952.P18342230885712170531.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A331952.P18342230885712170531.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A331952.P18342230885712170531.a n = (-7 + (-1) ^ (1 + n) + (6 * n ^ 2 : ℤ) : ℚ) / 8 := by simp only [A331952.P18342230885712170531.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A331952, hz, SequenceProof.roundAway_intCast]

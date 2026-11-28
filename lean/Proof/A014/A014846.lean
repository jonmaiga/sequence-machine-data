import Prog.A014.A0148
import Proof.Lib.Integral

/-- A014846: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A014846.anchor (n : ℕ) :
    (A014846 (n + 1) : ℚ) = (2 ^ n : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2 := by
  have hr : ∀ m, A014846.P11792114727721091064.a (m + 4) = (5 : ℚ) * A014846.P11792114727721091064.a (m + 3) + (-9 : ℚ) * A014846.P11792114727721091064.a (m + 2) + (7 : ℚ) * A014846.P11792114727721091064.a (m + 1) + (-2 : ℚ) * A014846.P11792114727721091064.a m := by
    intro m
    simp only [A014846.P11792114727721091064.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A014846.P11792114727721091064.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A014846.P11792114727721091064.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-1, by norm_num [A014846.P11792114727721091064.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-2, by norm_num [A014846.P11792114727721091064.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨-2, by norm_num [A014846.P11792114727721091064.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z3 + -9 * z2 + 7 * z1 + -2 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A014846.P11792114727721091064.a n = (2 ^ n : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2 := by simp only [A014846.P11792114727721091064.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A014846, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

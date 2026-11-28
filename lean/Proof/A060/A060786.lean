import Prog.A060.A0607
import Proof.Lib.Integral

/-- A060786: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A060786.anchor (n : ℕ) :
    (A060786 (n + 2) : ℚ) = ((9 * n : ℤ) * ((5 * (n + 2) : ℤ) - 13) * ((5 * (n + 2) ^ 2 : ℤ) - (19 * (n + 2) : ℤ) + 16) : ℚ) / 2 := by
  have hr : ∀ m, A060786.P615738276904748471.a (m + 5) = (5 : ℚ) * A060786.P615738276904748471.a (m + 4) + (-10 : ℚ) * A060786.P615738276904748471.a (m + 3) + (10 : ℚ) * A060786.P615738276904748471.a (m + 2) + (-5 : ℚ) * A060786.P615738276904748471.a (m + 1) + (1 : ℚ) * A060786.P615738276904748471.a m := by
    intro m
    simp only [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A060786.P615738276904748471.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨36, by norm_num [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1260, by norm_num [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7452, by norm_num [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨25092, by norm_num [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]⟩
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
  have e : A060786.P615738276904748471.a n = ((9 * n : ℤ) * ((5 * (n + 2) : ℤ) - 13) * ((5 * (n + 2) ^ 2 : ℤ) - (19 * (n + 2) : ℤ) + 16) : ℚ) / 2 := by simp only [A060786.P615738276904748471.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A060786, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

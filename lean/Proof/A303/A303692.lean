import Prog.A303.A3036
import Proof.Lib.Integral

/-- A303692: the name formula, an integer: it satisfies a linear recurrence of order 7 with integer coefficients. -/
theorem A303692.anchor (n : ℕ) :
    (A303692 (n + 1) : ℚ) = (((n + 1) ^ 2 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) : ℚ) / 4 := by
  have hr : ∀ m, A303692.P17737598551911637940.a (m + 7) = (1 : ℚ) * A303692.P17737598551911637940.a (m + 6) + (3 : ℚ) * A303692.P17737598551911637940.a (m + 5) + (-3 : ℚ) * A303692.P17737598551911637940.a (m + 4) + (-3 : ℚ) * A303692.P17737598551911637940.a (m + 3) + (3 : ℚ) * A303692.P17737598551911637940.a (m + 2) + (1 : ℚ) * A303692.P17737598551911637940.a (m + 1) + (-1 : ℚ) * A303692.P17737598551911637940.a m := by
    intro m
    simp only [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A303692.P17737598551911637940.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 7 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨50, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨72, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨147, by norm_num [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z6, h6⟩ := ih (m + 6) (by omega)
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z6 + 3 * z5 + -3 * z4 + -3 * z3 + 3 * z2 + 1 * z1 + -1 * z0, ?_⟩
        rw [hr, h6, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A303692.P17737598551911637940.a n = (((n + 1) ^ 2 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) : ℚ) / 4 := by simp only [A303692.P17737598551911637940.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A303692, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

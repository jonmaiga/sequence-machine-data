import Prog.A081.A0819
import Proof.Lib.Integral

/-- A081909: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A081909.anchor (n : ℕ) :
    (A081909 n : ℚ) = ((3 ^ n : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 18) : ℚ) / 18 := by
  have hr : ∀ m, A081909.P1023333283249393415.a (m + 3) = (9 : ℚ) * A081909.P1023333283249393415.a (m + 2) + (-27 : ℚ) * A081909.P1023333283249393415.a (m + 1) + (27 : ℚ) * A081909.P1023333283249393415.a m := by
    intro m
    simp only [A081909.P1023333283249393415.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A081909.P1023333283249393415.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A081909.P1023333283249393415.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A081909.P1023333283249393415.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A081909.P1023333283249393415.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨9 * z2 + -27 * z1 + 27 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A081909.P1023333283249393415.a n = ((3 ^ n : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 18) : ℚ) / 18 := by simp only [A081909.P1023333283249393415.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A081909, hz, SequenceProof.roundAway_intCast]

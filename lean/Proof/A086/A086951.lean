import Prog.A086.A0869
import Proof.Lib.Integral

/-- A086951: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A086951.anchor (n : ℕ) :
    (A086951 n : ℚ) = ((n * 3 ^ n : ℤ) * ((4 * n : ℤ) - 1) : ℚ) / 9 := by
  have hr : ∀ m, A086951.P11705349399248716507.a (m + 3) = (9 : ℚ) * A086951.P11705349399248716507.a (m + 2) + (-27 : ℚ) * A086951.P11705349399248716507.a (m + 1) + (27 : ℚ) * A086951.P11705349399248716507.a m := by
    intro m
    simp only [A086951.P11705349399248716507.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A086951.P11705349399248716507.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A086951.P11705349399248716507.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A086951.P11705349399248716507.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨14, by norm_num [A086951.P11705349399248716507.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨9 * z2 + -27 * z1 + 27 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A086951.P11705349399248716507.a n = ((n * 3 ^ n : ℤ) * ((4 * n : ℤ) - 1) : ℚ) / 9 := by simp only [A086951.P11705349399248716507.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A086951, hz, SequenceProof.roundAway_intCast]

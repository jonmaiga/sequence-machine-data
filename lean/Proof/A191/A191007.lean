import Prog.A191.A1910
import Proof.Lib.Integral

/-- A191007: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A191007.anchor (n : ℕ) :
    (A191007 n : ℚ) = (n * 2 ^ (n + 1) : ℚ) + ((2 ^ (n + 3) : ℤ) + (-1) ^ n : ℚ) / 3 := by
  have hr : ∀ m, A191007.P5159278918191630885.a (m + 3) = (3 : ℚ) * A191007.P5159278918191630885.a (m + 2) + (-4 : ℚ) * A191007.P5159278918191630885.a m := by
    intro m
    simp only [A191007.P5159278918191630885.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A191007.P5159278918191630885.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A191007.P5159278918191630885.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A191007.P5159278918191630885.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨27, by norm_num [A191007.P5159278918191630885.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -4 * z0, ?_⟩
        rw [hr, h2, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A191007.P5159278918191630885.a n = (n * 2 ^ (n + 1) : ℚ) + ((2 ^ (n + 3) : ℤ) + (-1) ^ n : ℚ) / 3 := by simp only [A191007.P5159278918191630885.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A191007, hz, SequenceProof.roundAway_intCast]

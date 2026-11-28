import Prog.A133.A1338
import Proof.Lib.Integral

/-- A133853: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A133853.anchor (n : ℕ) :
    (A133853 n : ℚ) = ((64 ^ n : ℤ) - 1 : ℚ) / 63 := by
  have hr : ∀ m, A133853.P11055336459851744303.a (m + 2) = (65 : ℚ) * A133853.P11055336459851744303.a (m + 1) + (-64 : ℚ) * A133853.P11055336459851744303.a m := by
    intro m
    simp only [A133853.P11055336459851744303.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A133853.P11055336459851744303.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A133853.P11055336459851744303.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A133853.P11055336459851744303.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨65 * z1 + -64 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A133853.P11055336459851744303.a n = ((64 ^ n : ℤ) - 1 : ℚ) / 63 := by simp only [A133853.P11055336459851744303.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A133853, hz, SequenceProof.roundAway_intCast]

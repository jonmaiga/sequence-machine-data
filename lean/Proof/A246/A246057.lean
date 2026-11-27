import Prog.A246.A2460
import Proof.Lib.Integral

/-- A246057: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A246057.anchor (n : ℕ) :
    (A246057 n : ℚ) = ((5 * 10 ^ n : ℤ) - 2 : ℚ) / 3 := by
  have hr : ∀ m, A246057.P16563114375445679463.a (m + 2) = (11 : ℚ) * A246057.P16563114375445679463.a (m + 1) + (-10 : ℚ) * A246057.P16563114375445679463.a m := by
    intro m
    simp only [A246057.P16563114375445679463.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A246057.P16563114375445679463.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A246057.P16563114375445679463.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A246057.P16563114375445679463.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨11 * z1 + -10 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A246057.P16563114375445679463.a n = ((5 * 10 ^ n : ℤ) - 2 : ℚ) / 3 := by simp only [A246057.P16563114375445679463.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A246057, hz, SequenceProof.roundAway_intCast]

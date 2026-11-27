import Prog.A317.A3172
import Proof.Lib.Integral

/-- A317298: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A317298.anchor (n : ℕ) :
    (A317298 n : ℚ) = (1 : ℚ) / 2 * (1 + (-1) ^ n + (2 * n : ℤ) + (4 * n ^ 2 : ℤ) : ℚ) := by
  have hr : ∀ m, A317298.P10098368527757205453.a (m + 4) = (2 : ℚ) * A317298.P10098368527757205453.a (m + 3) + (-2 : ℚ) * A317298.P10098368527757205453.a (m + 1) + (1 : ℚ) * A317298.P10098368527757205453.a m := by
    intro m
    simp only [A317298.P10098368527757205453.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A317298.P10098368527757205453.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A317298.P10098368527757205453.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A317298.P10098368527757205453.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨11, by norm_num [A317298.P10098368527757205453.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨21, by norm_num [A317298.P10098368527757205453.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z3 + -2 * z1 + 1 * z0, ?_⟩
        rw [hr, h3, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A317298.P10098368527757205453.a n = (1 : ℚ) / 2 * (1 + (-1) ^ n + (2 * n : ℤ) + (4 * n ^ 2 : ℤ) : ℚ) := by simp only [A317298.P10098368527757205453.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A317298, hz, SequenceProof.roundAway_intCast]

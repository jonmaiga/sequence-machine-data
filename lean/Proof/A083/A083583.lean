import Prog.A083.A0835
import Proof.Lib.Integral

/-- A083583: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083583.anchor (n : ℕ) :
    (A083583 n : ℚ) = ((8 * 3 ^ n : ℤ) - (5 * 0 ^ n : ℤ) : ℚ) / 3 := by
  have hr : ∀ m, A083583.P11148789208856141051.a (m + 2) = (3 : ℚ) * A083583.P11148789208856141051.a (m + 1) := by
    intro m
    simp only [A083583.P11148789208856141051.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083583.P11148789208856141051.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083583.P11148789208856141051.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A083583.P11148789208856141051.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        refine ⟨3 * z1, ?_⟩
        rw [hr, h1]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083583.P11148789208856141051.a n = ((8 * 3 ^ n : ℤ) - (5 * 0 ^ n : ℤ) : ℚ) / 3 := by simp only [A083583.P11148789208856141051.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083583, hz, SequenceProof.roundAway_intCast]

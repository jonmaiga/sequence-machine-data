import Prog.A083.A0834
import Proof.Lib.Integral

/-- A083426: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083426.anchor (n : ℕ) :
    (A083426 n : ℚ) = (4 * 7 ^ n + 2 ^ n : ℚ) / 5 := by
  have hr : ∀ m, A083426.P14747487426713307230.a (m + 2) = (9 : ℚ) * A083426.P14747487426713307230.a (m + 1) + (-14 : ℚ) * A083426.P14747487426713307230.a m := by
    intro m
    simp only [A083426.P14747487426713307230.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083426.P14747487426713307230.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083426.P14747487426713307230.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A083426.P14747487426713307230.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨9 * z1 + -14 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083426.P14747487426713307230.a n = (4 * 7 ^ n + 2 ^ n : ℚ) / 5 := by simp only [A083426.P14747487426713307230.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083426, hz, SequenceProof.roundAway_intCast]

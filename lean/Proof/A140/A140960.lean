import Prog.A140.A1409
import Proof.Lib.Integral

/-- A140960: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A140960.anchor (n : ℕ) :
    (A140960 n : ℚ) = (2 * (-1) ^ n - (2 ^ (n + 1) : ℤ) + (3 * n * 2 ^ n : ℤ) : ℚ) / 9 := by
  have hr : ∀ m, A140960.P6738574950949947955.a (m + 3) = (3 : ℚ) * A140960.P6738574950949947955.a (m + 2) + (-4 : ℚ) * A140960.P6738574950949947955.a m := by
    intro m
    simp only [A140960.P6738574950949947955.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A140960.P6738574950949947955.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A140960.P6738574950949947955.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A140960.P6738574950949947955.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A140960.P6738574950949947955.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -4 * z0, ?_⟩
        rw [hr, h2, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A140960.P6738574950949947955.a n = (2 * (-1) ^ n - (2 ^ (n + 1) : ℤ) + (3 * n * 2 ^ n : ℤ) : ℚ) / 9 := by simp only [A140960.P6738574950949947955.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A140960, hz, SequenceProof.roundAway_intCast]

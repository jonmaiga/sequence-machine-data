import Prog.A365.A3656
import Proof.Lib.Integral

/-- A365645: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A365645.anchor (n : ℕ) :
    (A365645 n : ℚ) = ((n * (1 + n) : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 18 := by
  have hr : ∀ m, A365645.P7865394903837248973.a (m + 6) = (33 : ℚ) * A365645.P7865394903837248973.a (m + 5) + (-393 : ℚ) * A365645.P7865394903837248973.a (m + 4) + (1991 : ℚ) * A365645.P7865394903837248973.a (m + 3) + (-3930 : ℚ) * A365645.P7865394903837248973.a (m + 2) + (3300 : ℚ) * A365645.P7865394903837248973.a (m + 1) + (-1000 : ℚ) * A365645.P7865394903837248973.a m := by
    intro m
    simp only [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A365645.P7865394903837248973.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨33, by norm_num [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨666, by norm_num [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨11110, by norm_num [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨166665, by norm_num [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z5, h5⟩ := ih (m + 5) (by omega)
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨33 * z5 + -393 * z4 + 1991 * z3 + -3930 * z2 + 3300 * z1 + -1000 * z0, ?_⟩
        rw [hr, h5, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A365645.P7865394903837248973.a n = ((n * (1 + n) : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 18 := by simp only [A365645.P7865394903837248973.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A365645, hz, SequenceProof.roundAway_intCast]

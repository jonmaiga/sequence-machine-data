import Prog.A180.A1808
import Proof.Lib.Integral

/-- A180845: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A180845.anchor (n : ℕ) :
    (A180845 n : ℚ) = ((16 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 13 := by
  have hr : ∀ m, A180845.P7116731583293214989.a (m + 2) = (19 : ℚ) * A180845.P7116731583293214989.a (m + 1) + (-48 : ℚ) * A180845.P7116731583293214989.a m := by
    intro m
    simp only [A180845.P7116731583293214989.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A180845.P7116731583293214989.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A180845.P7116731583293214989.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A180845.P7116731583293214989.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨19 * z1 + -48 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A180845.P7116731583293214989.a n = ((16 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 13 := by simp only [A180845.P7116731583293214989.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A180845, hz, SequenceProof.roundAway_intCast]

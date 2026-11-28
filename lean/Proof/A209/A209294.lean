import Prog.A209.A2092
import Proof.Lib.Integral

/-- A209294: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A209294.anchor (n : ℕ) :
    (A209294 (n + 1) : ℚ) = ((7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 4 : ℚ) / 2 := by
  have hr : ∀ m, A209294.P8077105105682155843.a (m + 3) = (3 : ℚ) * A209294.P8077105105682155843.a (m + 2) + (-3 : ℚ) * A209294.P8077105105682155843.a (m + 1) + (1 : ℚ) * A209294.P8077105105682155843.a m := by
    intro m
    simp only [A209294.P8077105105682155843.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A209294.P8077105105682155843.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨2, by norm_num [A209294.P8077105105682155843.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨9, by norm_num [A209294.P8077105105682155843.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨23, by norm_num [A209294.P8077105105682155843.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A209294.P8077105105682155843.a n = ((7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 4 : ℚ) / 2 := by simp only [A209294.P8077105105682155843.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A209294, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

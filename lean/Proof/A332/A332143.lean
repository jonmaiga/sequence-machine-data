import Prog.A332.A3321
import Proof.Lib.Integral

/-- A332143: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A332143.anchor (n : ℕ) :
    (A332143 n : ℚ) = (4 * ((10 ^ (2 * n + 1) : ℤ) - 1) : ℚ) / 9 - (10 ^ n : ℚ) := by
  have hr : ∀ m, A332143.P9109603186592243600.a (m + 3) = (111 : ℚ) * A332143.P9109603186592243600.a (m + 2) + (-1110 : ℚ) * A332143.P9109603186592243600.a (m + 1) + (1000 : ℚ) * A332143.P9109603186592243600.a m := by
    intro m
    simp only [A332143.P9109603186592243600.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A332143.P9109603186592243600.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A332143.P9109603186592243600.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨434, by norm_num [A332143.P9109603186592243600.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨44344, by norm_num [A332143.P9109603186592243600.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A332143.P9109603186592243600.a n = (4 * ((10 ^ (2 * n + 1) : ℤ) - 1) : ℚ) / 9 - (10 ^ n : ℚ) := by simp only [A332143.P9109603186592243600.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A332143, hz, SequenceProof.roundAway_intCast]

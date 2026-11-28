import Prog.A396.A3966
import Proof.Lib.Integral

/-- A396652: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A396652.anchor (n : ℕ) :
    (A396652 n : ℚ) = (((2 * n : ℤ) - 3 - (-1) ^ n) * ((6 * n + 1 : ℤ) - (-1) ^ n) : ℚ) / 8 := by
  have hr : ∀ m, A396652.P16126139125024960913.a (m + 5) = (1 : ℚ) * A396652.P16126139125024960913.a (m + 4) + (2 : ℚ) * A396652.P16126139125024960913.a (m + 3) + (-2 : ℚ) * A396652.P16126139125024960913.a (m + 2) + (-1 : ℚ) * A396652.P16126139125024960913.a (m + 1) + (1 : ℚ) * A396652.P16126139125024960913.a m := by
    intro m
    simp only [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A396652.P16126139125024960913.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨0, by norm_num [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12, by norm_num [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z4 + 2 * z3 + -2 * z2 + -1 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A396652.P16126139125024960913.a n = (((2 * n : ℤ) - 3 - (-1) ^ n) * ((6 * n + 1 : ℤ) - (-1) ^ n) : ℚ) / 8 := by simp only [A396652.P16126139125024960913.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A396652, hz, SequenceProof.roundAway_intCast]

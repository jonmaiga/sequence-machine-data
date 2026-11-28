import Prog.A341.A3414
import Proof.Lib.Integral

/-- A341463: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A341463.anchor (n : ℕ) :
    (A341463 n : ℚ) = ((-1) ^ (n + 1) * (3 ^ n + 1 : ℤ) : ℚ) / 2 := by
  have hr : ∀ m, A341463.P4018950542329110226.a (m + 2) = (-4 : ℚ) * A341463.P4018950542329110226.a (m + 1) + (-3 : ℚ) * A341463.P4018950542329110226.a m := by
    intro m
    simp only [A341463.P4018950542329110226.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A341463.P4018950542329110226.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨-1, by norm_num [A341463.P4018950542329110226.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨2, by norm_num [A341463.P4018950542329110226.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-4 * z1 + -3 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A341463.P4018950542329110226.a n = ((-1) ^ (n + 1) * (3 ^ n + 1 : ℤ) : ℚ) / 2 := by simp only [A341463.P4018950542329110226.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A341463, hz, SequenceProof.roundAway_intCast]

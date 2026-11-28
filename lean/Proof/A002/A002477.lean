import Prog.A002.A0024
import Proof.Lib.Integral

/-- A002477: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A002477.anchor (n : ℕ) :
    (A002477 (n + 1) : ℚ) = (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2 := by
  have hr : ∀ m, A002477.P10075369365096777681.a (m + 3) = (111 : ℚ) * A002477.P10075369365096777681.a (m + 2) + (-1110 : ℚ) * A002477.P10075369365096777681.a (m + 1) + (1000 : ℚ) * A002477.P10075369365096777681.a m := by
    intro m
    simp only [A002477.P10075369365096777681.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A002477.P10075369365096777681.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A002477.P10075369365096777681.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨121, by norm_num [A002477.P10075369365096777681.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12321, by norm_num [A002477.P10075369365096777681.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨111 * z2 + -1110 * z1 + 1000 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A002477.P10075369365096777681.a n = (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2 := by simp only [A002477.P10075369365096777681.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A002477, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

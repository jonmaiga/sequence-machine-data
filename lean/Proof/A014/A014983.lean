import Prog.A014.A0149
import Proof.Lib.Integral

/-- A014983: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A014983.anchor (n : ℕ) :
    (A014983 n : ℚ) = (1 - (-3) ^ n : ℚ) / 4 := by
  have hr : ∀ m, A014983.P2520798701644474411.a (m + 2) = (-2 : ℚ) * A014983.P2520798701644474411.a (m + 1) + (3 : ℚ) * A014983.P2520798701644474411.a m := by
    intro m
    simp only [A014983.P2520798701644474411.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A014983.P2520798701644474411.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A014983.P2520798701644474411.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A014983.P2520798701644474411.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-2 * z1 + 3 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A014983.P2520798701644474411.a n = (1 - (-3) ^ n : ℚ) / 4 := by simp only [A014983.P2520798701644474411.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A014983, hz, SequenceProof.roundAway_intCast]

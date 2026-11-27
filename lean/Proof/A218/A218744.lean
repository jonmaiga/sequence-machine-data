import Prog.A218.A2187
import Proof.Lib.Integral

/-- A218744: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A218744.anchor (n : ℕ) :
    (A218744 n : ℚ) = ((41 ^ n : ℤ) - 1 : ℚ) / 40 := by
  have hr : ∀ m, A218744.P7886951758616319221.a (m + 2) = (42 : ℚ) * A218744.P7886951758616319221.a (m + 1) + (-41 : ℚ) * A218744.P7886951758616319221.a m := by
    intro m
    simp only [A218744.P7886951758616319221.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A218744.P7886951758616319221.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A218744.P7886951758616319221.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A218744.P7886951758616319221.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨42 * z1 + -41 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A218744.P7886951758616319221.a n = ((41 ^ n : ℤ) - 1 : ℚ) / 40 := by simp only [A218744.P7886951758616319221.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A218744, hz, SequenceProof.roundAway_intCast]

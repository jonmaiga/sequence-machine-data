import Prog.A083.A0835
import Proof.Lib.Integral

/-- A083581: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083581.anchor (n : ℕ) :
    (A083581 n : ℚ) = (8 : ℚ) / 3 - (5 * (-2) ^ n : ℚ) / 3 := by
  have hr : ∀ m, A083581.P5729764270312681845.a (m + 2) = (-1 : ℚ) * A083581.P5729764270312681845.a (m + 1) + (2 : ℚ) * A083581.P5729764270312681845.a m := by
    intro m
    simp only [A083581.P5729764270312681845.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083581.P5729764270312681845.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083581.P5729764270312681845.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A083581.P5729764270312681845.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨-1 * z1 + 2 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083581.P5729764270312681845.a n = (8 : ℚ) / 3 - (5 * (-2) ^ n : ℚ) / 3 := by simp only [A083581.P5729764270312681845.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083581, hz, SequenceProof.roundAway_intCast]

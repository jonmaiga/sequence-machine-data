import Prog.A350.A3500
import Proof.Lib.Integral

/-- A350054: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A350054.anchor (n : ℕ) :
    (A350054 (n + 1) : ℚ) = ((4 ^ (3 * (n + 1) + 2) : ℤ) - 7 : ℚ) / 9 := by
  have hr : ∀ m, A350054.P17117288642133000498.a (m + 2) = (65 : ℚ) * A350054.P17117288642133000498.a (m + 1) + (-64 : ℚ) * A350054.P17117288642133000498.a m := by
    intro m
    simp only [A350054.P17117288642133000498.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A350054.P17117288642133000498.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨113, by norm_num [A350054.P17117288642133000498.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨7281, by norm_num [A350054.P17117288642133000498.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨65 * z1 + -64 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A350054.P17117288642133000498.a n = ((4 ^ (3 * (n + 1) + 2) : ℤ) - 7 : ℚ) / 9 := by simp only [A350054.P17117288642133000498.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A350054, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

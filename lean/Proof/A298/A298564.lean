import Prog.A298.A2985
import Proof.Lib.Integral

/-- A298564: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A298564.anchor (n : ℕ) :
    (A298564 n : ℚ) = (3 ^ (n + 2) + 11 : ℚ) / 2 - (5 * 2 ^ (n + 1) : ℚ) + (2 * n : ℚ) := by
  have hr : ∀ m, A298564.P17143947217949679530.a (m + 4) = (7 : ℚ) * A298564.P17143947217949679530.a (m + 3) + (-17 : ℚ) * A298564.P17143947217949679530.a (m + 2) + (17 : ℚ) * A298564.P17143947217949679530.a (m + 1) + (-6 : ℚ) * A298564.P17143947217949679530.a m := by
    intro m
    simp only [A298564.P17143947217949679530.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A298564.P17143947217949679530.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A298564.P17143947217949679530.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A298564.P17143947217949679530.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨10, by norm_num [A298564.P17143947217949679530.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨53, by norm_num [A298564.P17143947217949679530.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨7 * z3 + -17 * z2 + 17 * z1 + -6 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A298564.P17143947217949679530.a n = (3 ^ (n + 2) + 11 : ℚ) / 2 - (5 * 2 ^ (n + 1) : ℚ) + (2 * n : ℚ) := by simp only [A298564.P17143947217949679530.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A298564, hz, SequenceProof.roundAway_intCast]

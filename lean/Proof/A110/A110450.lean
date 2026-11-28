import Prog.A110.A1104
import Proof.Lib.Integral

/-- A110450: the name formula, an integer: it satisfies a linear recurrence of order 5 with integer coefficients. -/
theorem A110450.anchor (n : ℕ) :
    (A110450 n : ℚ) = (n * (n + 1) * (n ^ 2 + n + 1) : ℚ) / 2 := by
  have hr : ∀ m, A110450.P14746507914283905776.a (m + 5) = (5 : ℚ) * A110450.P14746507914283905776.a (m + 4) + (-10 : ℚ) * A110450.P14746507914283905776.a (m + 3) + (10 : ℚ) * A110450.P14746507914283905776.a (m + 2) + (-5 : ℚ) * A110450.P14746507914283905776.a (m + 1) + (1 : ℚ) * A110450.P14746507914283905776.a m := by
    intro m
    simp only [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A110450.P14746507914283905776.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 5 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨21, by norm_num [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨78, by norm_num [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨210, by norm_num [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z4 + -10 * z3 + 10 * z2 + -5 * z1 + 1 * z0, ?_⟩
        rw [hr, h4, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A110450.P14746507914283905776.a n = (n * (n + 1) * (n ^ 2 + n + 1) : ℚ) / 2 := by simp only [A110450.P14746507914283905776.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A110450, hz, SequenceProof.roundAway_intCast]

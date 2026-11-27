import Prog.A083.A0833
import Proof.Lib.Integral

/-- A083300: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083300.anchor (n : ℕ) :
    (A083300 n : ℚ) = ((4 * 7 ^ n : ℤ) + (-3) ^ n : ℚ) / 5 := by
  have hr : ∀ m, A083300.P9994174123840336200.a (m + 2) = (4 : ℚ) * A083300.P9994174123840336200.a (m + 1) + (21 : ℚ) * A083300.P9994174123840336200.a m := by
    intro m
    simp only [A083300.P9994174123840336200.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083300.P9994174123840336200.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083300.P9994174123840336200.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨5, by norm_num [A083300.P9994174123840336200.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨4 * z1 + 21 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083300.P9994174123840336200.a n = ((4 * 7 ^ n : ℤ) + (-3) ^ n : ℚ) / 5 := by simp only [A083300.P9994174123840336200.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083300, hz, SequenceProof.roundAway_intCast]

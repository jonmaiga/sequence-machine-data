import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083231: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A083231.anchor (n : ℕ) :
    (A083231 n : ℚ) = ((3 * 5 ^ n : ℤ) + (-3) ^ n : ℚ) / 4 := by
  have hr : ∀ m, A083231.P16244384588450000514.a (m + 2) = (2 : ℚ) * A083231.P16244384588450000514.a (m + 1) + (15 : ℚ) * A083231.P16244384588450000514.a m := by
    intro m
    simp only [A083231.P16244384588450000514.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A083231.P16244384588450000514.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A083231.P16244384588450000514.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨3, by norm_num [A083231.P16244384588450000514.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨2 * z1 + 15 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A083231.P16244384588450000514.a n = ((3 * 5 ^ n : ℤ) + (-3) ^ n : ℚ) / 4 := by simp only [A083231.P16244384588450000514.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083231, hz, SequenceProof.roundAway_intCast]

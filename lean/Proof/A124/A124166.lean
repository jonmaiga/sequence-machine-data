import Prog.A124.A1241
import Proof.Lib.Integral

/-- A124166: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A124166.anchor (n : ℕ) :
    (A124166 n : ℚ) = (100 * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by
  have hr : ∀ m, A124166.P5919805217378581684.a (m + 2) = (11 : ℚ) * A124166.P5919805217378581684.a (m + 1) + (-10 : ℚ) * A124166.P5919805217378581684.a m := by
    intro m
    simp only [A124166.P5919805217378581684.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A124166.P5919805217378581684.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A124166.P5919805217378581684.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨100, by norm_num [A124166.P5919805217378581684.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨11 * z1 + -10 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A124166.P5919805217378581684.a n = (100 * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by simp only [A124166.P5919805217378581684.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A124166, hz, SequenceProof.roundAway_intCast]

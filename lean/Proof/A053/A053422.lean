import Prog.A053.A0534
import Proof.Lib.Integral

/-- A053422: the name formula, an integer: it satisfies a linear recurrence of order 4 with integer coefficients. -/
theorem A053422.anchor (n : ℕ) :
    (A053422 n : ℚ) = ((n : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by
  have hr : ∀ m, A053422.P12642862900879258668.a (m + 4) = (22 : ℚ) * A053422.P12642862900879258668.a (m + 3) + (-141 : ℚ) * A053422.P12642862900879258668.a (m + 2) + (220 : ℚ) * A053422.P12642862900879258668.a (m + 1) + (-100 : ℚ) * A053422.P12642862900879258668.a m := by
    intro m
    simp only [A053422.P12642862900879258668.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A053422.P12642862900879258668.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 4 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A053422.P12642862900879258668.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A053422.P12642862900879258668.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨22, by norm_num [A053422.P12642862900879258668.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨333, by norm_num [A053422.P12642862900879258668.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z3, h3⟩ := ih (m + 3) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨22 * z3 + -141 * z2 + 220 * z1 + -100 * z0, ?_⟩
        rw [hr, h3, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A053422.P12642862900879258668.a n = ((n : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 9 := by simp only [A053422.P12642862900879258668.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A053422, hz, SequenceProof.roundAway_intCast]

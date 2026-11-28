import Prog.A082.A0824
import Proof.Lib.Integral

/-- A082412: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A082412.anchor (n : ℕ) :
    (A082412 n : ℚ) = (2 * 8 ^ n + 2 ^ n : ℚ) / 3 := by
  have hr : ∀ m, A082412.P13990870367733430583.a (m + 2) = (10 : ℚ) * A082412.P13990870367733430583.a (m + 1) + (-16 : ℚ) * A082412.P13990870367733430583.a m := by
    intro m
    simp only [A082412.P13990870367733430583.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A082412.P13990870367733430583.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A082412.P13990870367733430583.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A082412.P13990870367733430583.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨10 * z1 + -16 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A082412.P13990870367733430583.a n = (2 * 8 ^ n + 2 ^ n : ℚ) / 3 := by simp only [A082412.P13990870367733430583.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A082412, hz, SequenceProof.roundAway_intCast]

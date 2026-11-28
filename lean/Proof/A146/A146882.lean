import Prog.A146.A1468
import Proof.Lib.Integral

/-- A146882: the name formula, an integer: it satisfies a linear recurrence of order 2 with integer coefficients. -/
theorem A146882.anchor (n : ℕ) :
    (A146882 n : ℚ) = (5 * ((4 ^ (n + 1) : ℤ) - 1) : ℚ) / 3 := by
  have hr : ∀ m, A146882.P13489786538087814931.a (m + 2) = (5 : ℚ) * A146882.P13489786538087814931.a (m + 1) + (-4 : ℚ) * A146882.P13489786538087814931.a m := by
    intro m
    simp only [A146882.P13489786538087814931.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A146882.P13489786538087814931.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 2 with h | h
      · interval_cases n
        · exact ⟨5, by norm_num [A146882.P13489786538087814931.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨25, by norm_num [A146882.P13489786538087814931.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨5 * z1 + -4 * z0, ?_⟩
        rw [hr, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A146882.P13489786538087814931.a n = (5 * ((4 ^ (n + 1) : ℤ) - 1) : ℚ) / 3 := by simp only [A146882.P13489786538087814931.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A146882, hz, SequenceProof.roundAway_intCast]

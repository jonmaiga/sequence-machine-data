import Prog.A168.A1684
import Proof.Lib.Integral

/-- A168414: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A168414.anchor (n : ℕ) :
    (A168414 (n + 1) : ℚ) = ((18 * (n + 1) : ℤ) - 9 * (-1) ^ (n + 1) - 3 : ℚ) / 4 := by
  have hr : ∀ m, A168414.P8513643334810281557.a (m + 3) = (1 : ℚ) * A168414.P8513643334810281557.a (m + 2) + (1 : ℚ) * A168414.P8513643334810281557.a (m + 1) + (-1 : ℚ) * A168414.P8513643334810281557.a m := by
    intro m
    simp only [A168414.P8513643334810281557.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A168414.P8513643334810281557.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨6, by norm_num [A168414.P8513643334810281557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨6, by norm_num [A168414.P8513643334810281557.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨15, by norm_num [A168414.P8513643334810281557.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨1 * z2 + 1 * z1 + -1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A168414.P8513643334810281557.a n = ((18 * (n + 1) : ℤ) - 9 * (-1) ^ (n + 1) - 3 : ℚ) / 4 := by simp only [A168414.P8513643334810281557.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A168414, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

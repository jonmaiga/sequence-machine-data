import Prog.A297.A2976
import Proof.Lib.Integral

/-- A297675: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A297675.anchor (n : ℕ) :
    (A297675 (n + 2) : ℚ) = (3 * (((n + 2) ^ 2 + (n + 2) : ℤ) - 4) : ℚ) / 2 := by
  have hr : ∀ m, A297675.P10950361260694676330.a (m + 3) = (3 : ℚ) * A297675.P10950361260694676330.a (m + 2) + (-3 : ℚ) * A297675.P10950361260694676330.a (m + 1) + (1 : ℚ) * A297675.P10950361260694676330.a m := by
    intro m
    simp only [A297675.P10950361260694676330.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A297675.P10950361260694676330.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨3, by norm_num [A297675.P10950361260694676330.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨12, by norm_num [A297675.P10950361260694676330.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨24, by norm_num [A297675.P10950361260694676330.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A297675.P10950361260694676330.a n = (3 * (((n + 2) ^ 2 + (n + 2) : ℤ) - 4) : ℚ) / 2 := by simp only [A297675.P10950361260694676330.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A297675, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

import Prog.A093.A0934
import Proof.Lib.Integral

/-- A093485: the name formula, an integer: it satisfies a linear recurrence of order 3 with integer coefficients. -/
theorem A093485.anchor (n : ℕ) :
    (A093485 n : ℚ) = (27 * n ^ 2 + 9 * n + 2 : ℚ) / 2 := by
  have hr : ∀ m, A093485.P17735267866048767445.a (m + 3) = (3 : ℚ) * A093485.P17735267866048767445.a (m + 2) + (-3 : ℚ) * A093485.P17735267866048767445.a (m + 1) + (1 : ℚ) * A093485.P17735267866048767445.a m := by
    intro m
    simp only [A093485.P17735267866048767445.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A093485.P17735267866048767445.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 3 with h | h
      · interval_cases n
        · exact ⟨1, by norm_num [A093485.P17735267866048767445.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨19, by norm_num [A093485.P17735267866048767445.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨64, by norm_num [A093485.P17735267866048767445.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z1, h1⟩ := ih (m + 1) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z2 + -3 * z1 + 1 * z0, ?_⟩
        rw [hr, h2, h1, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A093485.P17735267866048767445.a n = (27 * n ^ 2 + 9 * n + 2 : ℚ) / 2 := by simp only [A093485.P17735267866048767445.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A093485, hz, SequenceProof.roundAway_intCast]

import Prog.A129.A1293
import Proof.Lib.Integral

/-- A129370: the name formula, an integer: it satisfies a linear recurrence of order 6 with integer coefficients. -/
theorem A129370.anchor (n : ℕ) :
    (A129370 n : ℚ) = (n ^ 2 : ℚ) - (((n : ℤ) - 1) ^ 2 * (1 - (-1) ^ n) : ℚ) / 8 := by
  have hr : ∀ m, A129370.P8103910057229498911.a (m + 6) = (3 : ℚ) * A129370.P8103910057229498911.a (m + 4) + (-3 : ℚ) * A129370.P8103910057229498911.a (m + 2) + (1 : ℚ) * A129370.P8103910057229498911.a m := by
    intro m
    simp only [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]
    push_cast
    ring
  have hz : ∀ n, ∃ z : ℤ, A129370.P8103910057229498911.a n = (z : ℚ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      rcases Nat.lt_or_ge n 6 with h | h
      · interval_cases n
        · exact ⟨0, by norm_num [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨1, by norm_num [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨4, by norm_num [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨8, by norm_num [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨16, by norm_num [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]⟩
        · exact ⟨21, by norm_num [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]⟩
      · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' h
        obtain ⟨z4, h4⟩ := ih (m + 4) (by omega)
        obtain ⟨z2, h2⟩ := ih (m + 2) (by omega)
        obtain ⟨z0, h0⟩ := ih m (by omega)
        refine ⟨3 * z4 + -3 * z2 + 1 * z0, ?_⟩
        rw [hr, h4, h2, h0]
        push_cast
        ring
  obtain ⟨z, hz⟩ := hz n
  have e : A129370.P8103910057229498911.a n = (n ^ 2 : ℚ) - (((n : ℤ) - 1) ^ 2 * (1 - (-1) ^ n) : ℚ) / 8 := by simp only [A129370.P8103910057229498911.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A129370, hz, SequenceProof.roundAway_intCast]

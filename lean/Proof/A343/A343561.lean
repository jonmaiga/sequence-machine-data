import Prog.A343.A3435
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A343561: the name formula, an integer: its integer powers have nonnegative exponents (from n = 3 on). -/
theorem A343561.anchor (n : ℕ) :
    (A343561 n : ℚ) = (n ^ 2 + 15 * n + 32 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) := by
  have hz : ∃ z : ℤ, A343561.P3669670158909436423.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨4, by norm_num [A343561.P3669670158909436423.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨12, by norm_num [A343561.P3669670158909436423.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨33, by norm_num [A343561.P3669670158909436423.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A343561.P3669670158909436423.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A343561.P3669670158909436423.a n = (n ^ 2 + 15 * n + 32 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) := by simp only [A343561.P3669670158909436423.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A343561, hz, SequenceProof.roundAway_intCast]

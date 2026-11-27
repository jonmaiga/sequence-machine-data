import Prog.A272.A2729
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A272913: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A272913.anchor (n : ℕ) :
    (A272913 n : ℚ) = 3 * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * ((n : ℤ) - 1 : ℚ) * (n ^ 3 : ℚ) * (Nat.choose (2 * n) n ^ 2 : ℚ) := by
  have hz : ∃ z : ℤ, A272913.P171651785507283709.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [A272913.P171651785507283709.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A272913.P171651785507283709.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A272913.P171651785507283709.a n = 3 * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * ((n : ℤ) - 1 : ℚ) * (n ^ 3 : ℚ) * (Nat.choose (2 * n) n ^ 2 : ℚ) := by simp only [A272913.P171651785507283709.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A272913, hz, SequenceProof.roundAway_intCast]

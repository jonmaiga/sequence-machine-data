import Prog.A086.A0866
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A086603: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A086603.anchor (n : ℕ) :
    (A086603 n : ℚ) = (n ^ 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, A086603.P8911297367271073449.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [A086603.P8911297367271073449.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A086603.P8911297367271073449.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A086603.P8911297367271073449.a n = (n ^ 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by simp only [A086603.P8911297367271073449.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A086603, hz, SequenceProof.roundAway_intCast]

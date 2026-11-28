import Prog.A055.A0557
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A055787: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A055787.anchor (n : ℕ) :
    (A055787 n : ℚ) = (2 : ℚ) ^ ((4 * n : ℤ) - 1 : ℤ) - (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n) n : ℚ) := by
  have hz : ∃ z : ℤ, A055787.P8606163969950535828.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [A055787.P8606163969950535828.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A055787.P8606163969950535828.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A055787.P8606163969950535828.a n = (2 : ℚ) ^ ((4 * n : ℤ) - 1 : ℤ) - (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n) n : ℚ) := by simp only [A055787.P8606163969950535828.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A055787, hz, SequenceProof.roundAway_intCast]

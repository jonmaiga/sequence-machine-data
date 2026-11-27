import Prog.A083.A0836
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A083697: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A083697.anchor (n : ℕ) :
    (A083697 n : ℚ) = (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * (A000045 (2 ^ n) : ℚ) := by
  have hz : ∃ z : ℤ, A083697.P5603520656838925954.a n = (z : ℚ) := by
    simp only [A083697.P5603520656838925954.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A083697.P5603520656838925954.a n = (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * (A000045 (2 ^ n) : ℚ) := by simp only [A083697.P5603520656838925954.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A083697, hz, SequenceProof.roundAway_intCast]

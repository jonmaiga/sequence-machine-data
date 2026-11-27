import Prog.A329.A3293
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A329361: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A329361.anchor (n : ℕ) :
    (A329361 n : ℚ) = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) * (A000002 (k + 1) : ℚ) := by
  have hz : ∃ z : ℤ, A329361.P7126210413719691840.a n = (z : ℚ) := by
    simp only [A329361.P7126210413719691840.f1, A329361.P7126210413719691840.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A329361.P7126210413719691840.a n = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) * (A000002 (k + 1) : ℚ) := by simp only [A329361.P7126210413719691840.f1, A329361.P7126210413719691840.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A329361, hz, SequenceProof.roundAway_intCast]

import Prog.A168.A1681
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A000.A000005

/-- A168138: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A168138.anchor (n : ℕ) :
    (A168138 (n + 1) : ℚ) = (A000045 (n + 2) : ℚ) ^ (A000005 (n + 1) : ℤ) := by
  have hz : ∃ z : ℤ, A168138.P8220877735913659820.a n = (z : ℚ) := by
    simp only [A168138.P8220877735913659820.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000005]; positivity) | (rw [A000005.anchor _ (by omega)]; positivity) | (rename_i h; rw [A000005.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A000005.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A168138.P8220877735913659820.a n = (A000045 (n + 2) : ℚ) ^ (A000005 (n + 1) : ℤ) := by simp only [A168138.P8220877735913659820.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A168138, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

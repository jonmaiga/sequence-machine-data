import Prog.A318.A3181
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A318164: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A318164.anchor (n : ℕ) :
    (A318164 (n + 1) : ℚ) = (A000225 (n + 1) : ℚ) ^ (A000217 n : ℤ) := by
  have hz : ∃ z : ℤ, A318164.P4071855543052429236.a n = (z : ℚ) := by
    simp only [A318164.P4071855543052429236.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000217]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A318164.P4071855543052429236.a n = (A000225 (n + 1) : ℚ) ^ (A000217 n : ℤ) := by simp only [A318164.P4071855543052429236.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A318164, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

import Prog.A339.A3396
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A339688: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A339688.anchor (n : ℕ) :
    (A339688 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (8 : ℚ) ^ ((d : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, A339688.P9944499641036360778.a n = (z : ℚ) := by
    simp only [A339688.P9944499641036360778.f1, A339688.P9944499641036360778.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A339688.P9944499641036360778.a n = ∑ d ∈ Nat.divisors ((n + 1)), (8 : ℚ) ^ ((d : ℤ) - 1 : ℤ) := by simp only [A339688.P9944499641036360778.f1, A339688.P9944499641036360778.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A339688, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

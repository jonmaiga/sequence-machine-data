import Prog.A062.A0628
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A062805: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A062805.anchor (n : ℕ) :
    (A062805 n : ℚ) = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (k + 1 : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A062805.P11570257814676792295.a n = (z : ℚ) := by
    simp only [A062805.P11570257814676792295.f1, A062805.P11570257814676792295.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A062805.P11570257814676792295.a n = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (k + 1 : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) := by simp only [A062805.P11570257814676792295.f1, A062805.P11570257814676792295.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A062805, hz, SequenceProof.roundAway_intCast]

import Prog.A351.A3513
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A351340: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A351340.anchor (n : ℕ) :
    (A351340 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (n ^ k : ℚ) * (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A351340.P14963709140002345879.a n = (z : ℚ) := by
    simp only [A351340.P14963709140002345879.f1, A351340.P14963709140002345879.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A351340.P14963709140002345879.a n = ∑ k ∈ Finset.range (n + 1), (n ^ k : ℚ) * (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by simp only [A351340.P14963709140002345879.f1, A351340.P14963709140002345879.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A351340, hz, SequenceProof.roundAway_intCast]

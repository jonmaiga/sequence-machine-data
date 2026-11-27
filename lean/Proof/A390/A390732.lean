import Prog.A390.A3907
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A390732: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A390732.anchor (n : ℕ) :
    (A390732 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) (2 * ((n : ℤ) - (k : ℤ))).toNat : ℚ) := by
  have hz : ∃ z : ℤ, A390732.P166385436958136055.a n = (z : ℚ) := by
    simp only [A390732.P166385436958136055.f1, A390732.P166385436958136055.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A390732.P166385436958136055.a n = ∑ k ∈ Finset.range (n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) (2 * ((n : ℤ) - (k : ℤ))).toNat : ℚ) := by simp only [A390732.P166385436958136055.f1, A390732.P166385436958136055.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A390732, hz, SequenceProof.roundAway_intCast]

import Prog.A196.A1967
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A196794: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A196794.anchor (n : ℕ) :
    (A196794 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k * 2 ^ k : ℚ) * (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A196794.P16756351322128412184.a n = (z : ℚ) := by
    simp only [A196794.P16756351322128412184.f1, A196794.P16756351322128412184.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A196794.P16756351322128412184.a n = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k * 2 ^ k : ℚ) * (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by simp only [A196794.P16756351322128412184.f1, A196794.P16756351322128412184.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A196794, hz, SequenceProof.roundAway_intCast]

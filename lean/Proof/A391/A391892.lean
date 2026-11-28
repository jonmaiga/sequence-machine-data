import Prog.A391.A3918
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A391892: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A391892.anchor (n : ℕ) :
    (A391892 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat : ℚ) := by
  have hz : ∃ z : ℤ, A391892.P18211754786694965539.a n = (z : ℚ) := by
    simp only [A391892.P18211754786694965539.f1, A391892.P18211754786694965539.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A391892.P18211754786694965539.a n = ∑ k ∈ Finset.range (n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat : ℚ) := by simp only [A391892.P18211754786694965539.f1, A391892.P18211754786694965539.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A391892, hz, SequenceProof.roundAway_intCast]

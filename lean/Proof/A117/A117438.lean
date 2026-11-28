import Prog.A117.A1174
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A117438: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A117438.anchor (n : ℕ) :
    (A117438 n : ℚ) = (Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n) : ℚ) * (-4 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A117438.P7688385600784362764.a n = (z : ℚ) := by
    simp only [A117438.P7688385600784362764.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A117438.P7688385600784362764.a n = (Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n) : ℚ) * (-4 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by simp only [A117438.P7688385600784362764.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A117438, hz, SequenceProof.roundAway_intCast]

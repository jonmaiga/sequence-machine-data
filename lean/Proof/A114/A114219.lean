import Prog.A114.A1142
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A114219: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A114219.anchor (n : ℕ) :
    (A114219 n : ℚ) = (SequenceMachineLib.triCol n : ℚ) - ((SequenceMachineLib.triCol n : ℤ) - 1 : ℚ) * (0 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A114219.P16477603646240172316.a n = (z : ℚ) := by
    simp only [A114219.P16477603646240172316.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A114219.P16477603646240172316.a n = (SequenceMachineLib.triCol n : ℚ) - ((SequenceMachineLib.triCol n : ℤ) - 1 : ℚ) * (0 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by simp only [A114219.P16477603646240172316.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A114219, hz, SequenceProof.roundAway_intCast]

import Prog.A143.A1430
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A143088: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A143088.anchor (n : ℕ) :
    (A143088 n : ℚ) = ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) - 1) := by
  have hz : ∃ z : ℤ, A143088.P16386320517501294381.a n = (z : ℚ) := by
    simp only [A143088.P16386320517501294381.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A143088.P16386320517501294381.a n = ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) - 1) := by simp only [A143088.P16386320517501294381.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A143088, hz, SequenceProof.roundAway_intCast]

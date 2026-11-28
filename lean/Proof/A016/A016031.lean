import Prog.A016.A0160
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A016031: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A016031.anchor (n : ℕ) :
    (A016031 (n + 1) : ℚ) = (2 : ℚ) ^ ((2 ^ n : ℤ) - (n + 1 : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A016031.P3105703537309694969.a n = (z : ℚ) := by
    simp only [A016031.P3105703537309694969.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A016031.P3105703537309694969.a n = (2 : ℚ) ^ ((2 ^ n : ℤ) - (n + 1 : ℤ) : ℤ) := by simp only [A016031.P3105703537309694969.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A016031, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

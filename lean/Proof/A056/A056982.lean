import Prog.A056.A0569
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A056982: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A056982.anchor (n : ℕ) :
    (A056982 n : ℚ) = (4 : ℚ) ^ (A005187 n : ℤ) := by
  have hz : ∃ z : ℤ, A056982.P17508739079274575033.a n = (z : ℚ) := by
    simp only [A056982.P17508739079274575033.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A005187]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A056982.P17508739079274575033.a n = (4 : ℚ) ^ (A005187 n : ℤ) := by simp only [A056982.P17508739079274575033.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A056982, hz, SequenceProof.roundAway_intCast]

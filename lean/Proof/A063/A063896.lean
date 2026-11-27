import Prog.A063.A0638
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A063896: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A063896.anchor (n : ℕ) :
    (A063896 n : ℚ) = (2 : ℚ) ^ (A000045 n : ℤ) - 1 := by
  have hz : ∃ z : ℤ, A063896.P3317555825366484470.a n = (z : ℚ) := by
    simp only [A063896.P3317555825366484470.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000045]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A063896.P3317555825366484470.a n = (2 : ℚ) ^ (A000045 n : ℤ) - 1 := by simp only [A063896.P3317555825366484470.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A063896, hz, SequenceProof.roundAway_intCast]

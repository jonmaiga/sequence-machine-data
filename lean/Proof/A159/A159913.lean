import Prog.A159.A1599
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A000.A000120

/-- A159913: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A159913.anchor (n : ℕ) :
    (A159913 n : ℚ) = (2 : ℚ) ^ (A000120 n + 1 : ℤ) - 1 := by
  have hz : ∃ z : ℤ, A159913.P2549347708974065170.a n = (z : ℚ) := by
    simp only [A159913.P2549347708974065170.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000120]; positivity) | (rw [A000120.anchor _ (by omega)]; positivity) | (rename_i h; rw [A000120.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A000120.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A159913.P2549347708974065170.a n = (2 : ℚ) ^ (A000120 n + 1 : ℤ) - 1 := by simp only [A159913.P2549347708974065170.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A159913, hz, SequenceProof.roundAway_intCast]

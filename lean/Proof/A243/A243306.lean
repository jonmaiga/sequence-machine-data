import Prog.A243.A2433
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A000.A000010

/-- A243306: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A243306.anchor (n : ℕ) :
    (A243306 (n + 1) : ℚ) = (2 : ℚ) ^ (A000010 (n + 1) : ℤ) - (A000010 (n + 1) : ℚ) := by
  have hz : ∃ z : ℤ, A243306.P10080852622170874839.a n = (z : ℚ) := by
    simp only [A243306.P10080852622170874839.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000010]; positivity) | (rw [A000010.anchor _ (by omega)]; positivity) | (rename_i h; rw [A000010.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A000010.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A243306.P10080852622170874839.a n = (2 : ℚ) ^ (A000010 (n + 1) : ℤ) - (A000010 (n + 1) : ℚ) := by simp only [A243306.P10080852622170874839.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A243306, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

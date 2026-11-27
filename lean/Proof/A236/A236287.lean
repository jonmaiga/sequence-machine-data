import Prog.A236.A2362
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A000.A000005

/-- A236287: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A236287.anchor (n : ℕ) :
    (A236287 (n + 1) : ℚ) = (A000203 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) := by
  have hz : ∃ z : ℤ, A236287.P8329458404916216592.a n = (z : ℚ) := by
    simp only [A236287.P8329458404916216592.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000005]; positivity) | (rw [A000005.anchor _ (by omega)]; positivity) | (rename_i h; rw [A000005.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A000005.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A236287.P8329458404916216592.a n = (A000203 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) := by simp only [A236287.P8329458404916216592.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A236287, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

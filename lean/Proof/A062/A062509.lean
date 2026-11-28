import Prog.A062.A0625
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A001.A001221

/-- A062509: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A062509.anchor (n : ℕ) :
    (A062509 (n + 1) : ℚ) = (n + 1 : ℚ) ^ (A001221 (n + 1) : ℤ) := by
  have hz : ∃ z : ℤ, A062509.P8957158235387894213.a n = (z : ℚ) := by
    simp only [A062509.P8957158235387894213.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A001221]; positivity) | (rw [A001221.anchor _ (by omega)]; positivity) | (rename_i h; rw [A001221.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A001221.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A062509.P8957158235387894213.a n = (n + 1 : ℚ) ^ (A001221 (n + 1) : ℤ) := by simp only [A062509.P8957158235387894213.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A062509, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

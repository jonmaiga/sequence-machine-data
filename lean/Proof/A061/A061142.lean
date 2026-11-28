import Prog.A061.A0611
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A061142: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A061142.anchor (n : ℕ) :
    (A061142 (n + 1) : ℚ) = (2 : ℚ) ^ (A001222 (n + 1) : ℤ) := by
  have hz : ∃ z : ℤ, A061142.P11536751681473563595.a n = (z : ℚ) := by
    simp only [A061142.P11536751681473563595.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A001222]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A061142.P11536751681473563595.a n = (2 : ℚ) ^ (A001222 (n + 1) : ℤ) := by simp only [A061142.P11536751681473563595.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A061142, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

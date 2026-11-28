import Prog.A369.A3691
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A369119: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A369119.anchor (n : ℕ) :
    (A369119 n : ℚ) = (n + 1 : ℚ) ^ (A010051 (n + 1) : ℤ) * (Nat.factorial n : ℚ) := by
  have hz : ∃ z : ℤ, A369119.P11770962019808965455.a n = (z : ℚ) := by
    simp only [A369119.P11770962019808965455.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A010051]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A369119.P11770962019808965455.a n = (n + 1 : ℚ) ^ (A010051 (n + 1) : ℤ) * (Nat.factorial n : ℚ) := by simp only [A369119.P11770962019808965455.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A369119, hz, SequenceProof.roundAway_intCast]

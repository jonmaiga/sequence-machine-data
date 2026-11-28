import Prog.A342.A3429
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A342906: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A342906.anchor (n : ℕ) :
    (A342906 (n + 1) : ℚ) = (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ) - (A000108 (n + 1) : ℚ) := by
  have hz : ∃ z : ℤ, A342906.P11093243095052920222.a n = (z : ℚ) := by
    simp only [A342906.P11093243095052920222.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A342906.P11093243095052920222.a n = (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ) - (A000108 (n + 1) : ℚ) := by simp only [A342906.P11093243095052920222.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A342906, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

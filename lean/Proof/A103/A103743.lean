import Prog.A103.A1037
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A103743: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A103743.anchor (n : ℕ) :
    (A103743 n : ℚ) = (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) - (2 ^ n : ℚ) - 1 := by
  have hz : ∃ z : ℤ, A103743.P1218966639035620035.a n = (z : ℚ) := by
    simp only [A103743.P1218966639035620035.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A103743.P1218966639035620035.a n = (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) - (2 ^ n : ℚ) - 1 := by simp only [A103743.P1218966639035620035.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A103743, hz, SequenceProof.roundAway_intCast]

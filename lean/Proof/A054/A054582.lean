import Prog.A054.A0545
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A054582: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A054582.anchor (n : ℕ) :
    (A054582 n : ℚ) = (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (2 * SequenceMachineLib.triCol n + 1 : ℚ) := by
  have hz : ∃ z : ℤ, A054582.P3952513214376415732.a n = (z : ℚ) := by
    simp only [A054582.P3952513214376415732.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A054582.P3952513214376415732.a n = (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (2 * SequenceMachineLib.triCol n + 1 : ℚ) := by simp only [A054582.P3952513214376415732.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A054582, hz, SequenceProof.roundAway_intCast]

import Prog.A217.A2176
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A217629: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A217629.anchor (n : ℕ) :
    (A217629 n : ℚ) = (Nat.factorial (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A217629.P13508526125650444563.a n = (z : ℚ) := by
    simp only [A217629.P13508526125650444563.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A217629.P13508526125650444563.a n = (Nat.factorial (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by simp only [A217629.P13508526125650444563.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A217629, hz, SequenceProof.roundAway_intCast]

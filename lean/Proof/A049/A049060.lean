import Prog.A049.A0490
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A001.A001221

/-- A049060: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A049060.anchor (n : ℕ) :
    (A049060 (n + 1) : ℚ) = (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (∑ d ∈ Nat.divisors ((n + 1)), (d : ℚ) * (-1 : ℚ) ^ (A001221 d : ℤ)) := by
  have hz : ∃ z : ℤ, A049060.P17267096114750742739.a n = (z : ℚ) := by
    simp only [A049060.P17267096114750742739.f1, A049060.P17267096114750742739.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A001221]; positivity) | (rw [A001221.anchor _ (by omega)]; positivity) | (rename_i h; rw [A001221.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A001221.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A049060.P17267096114750742739.a n = (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (∑ d ∈ Nat.divisors ((n + 1)), (d : ℚ) * (-1 : ℚ) ^ (A001221 d : ℤ)) := by simp only [A049060.P17267096114750742739.f1, A049060.P17267096114750742739.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A049060, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

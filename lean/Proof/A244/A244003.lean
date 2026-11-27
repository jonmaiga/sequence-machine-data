import Prog.A244.A2440
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A244003: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A244003.anchor (n : ℕ) :
    (A244003 n : ℚ) = ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ (A000045 (SequenceMachineLib.triCol n) : ℤ) := by
  have hz : ∃ z : ℤ, A244003.P13341564105965204994.a n = (z : ℚ) := by
    simp only [A244003.P13341564105965204994.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000045]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A244003.P13341564105965204994.a n = ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ (A000045 (SequenceMachineLib.triCol n) : ℤ) := by simp only [A244003.P13341564105965204994.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A244003, hz, SequenceProof.roundAway_intCast]

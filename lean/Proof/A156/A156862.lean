import Prog.A156.A1568
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A156862: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A156862.anchor (n : ℕ) :
    (A156862 n : ℚ) = ((2 ^ SequenceMachineLib.triCol n : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1) : ℤ) : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℚ) := by
  have hz : ∃ z : ℤ, A156862.P8684102993972009155.a n = (z : ℚ) := by
    simp only [A156862.P8684102993972009155.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A156862.P8684102993972009155.a n = ((2 ^ SequenceMachineLib.triCol n : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1) : ℤ) : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℚ) := by simp only [A156862.P8684102993972009155.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A156862, hz, SequenceProof.roundAway_intCast]

import Prog.A141.A1410
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A141074: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A141074.anchor (n : ℕ) :
    (A141074 n : ℚ) = ((n ^ (n + 1) : ℤ) - ((n + 1) ^ n : ℤ) + 1 : ℚ) - (-1 : ℚ) ^ (A000040 (n + 1) : ℤ) - ((-1) ^ (n + 1) : ℚ) := by
  have hz : ∃ z : ℤ, A141074.P14961284055100534606.a n = (z : ℚ) := by
    simp only [A141074.P14961284055100534606.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000040]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A141074.P14961284055100534606.a n = ((n ^ (n + 1) : ℤ) - ((n + 1) ^ n : ℤ) + 1 : ℚ) - (-1 : ℚ) ^ (A000040 (n + 1) : ℤ) - ((-1) ^ (n + 1) : ℚ) := by simp only [A141074.P14961284055100534606.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A141074, hz, SequenceProof.roundAway_intCast]

import Prog.A135.A1354
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A007.A007814

/-- A135481: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A135481.anchor (n : ℕ) :
    (A135481 n : ℚ) = (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1 := by
  have hz : ∃ z : ℤ, A135481.P16709624487943681434.a n = (z : ℚ) := by
    simp only [A135481.P16709624487943681434.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A007814]; positivity) | (rw [A007814.anchor _ (by omega)]; positivity) | (rename_i h; rw [A007814.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A007814.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A135481.P16709624487943681434.a n = (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1 := by simp only [A135481.P16709624487943681434.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A135481, hz, SequenceProof.roundAway_intCast]

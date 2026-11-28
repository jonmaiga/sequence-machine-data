import Prog.A081.A0817
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A000.A000040
import Mathlib.NumberTheory.PrimeCounting

/-- A081701: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A081701.anchor (n : ℕ) :
    (A081701 (n + 1) : ℚ) = (A000040 (n + 1) : ℚ) * (A000040 (n + 1) - 1 : ℚ) ^ (A000040 (n + 1) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, A081701.P214869542892994214.a n = (z : ℚ) := by
    simp only [A081701.P214869542892994214.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000040]; positivity) | (rw [A000040.anchor _ (by omega)]; positivity) | (rename_i h; rw [A000040.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A000040.anchor]; positivity) | (rw [A000040.anchor _ (by omega)]; simp only [Nat.add_sub_cancel]; have := (Nat.prime_nth_prime n).two_le; omega) | (rw [A000040.anchor _ (by omega)]; simp only [Nat.add_sub_cancel]; have := (Nat.prime_nth_prime (n + 1)).two_le; omega))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A081701.P214869542892994214.a n = (A000040 (n + 1) : ℚ) * (A000040 (n + 1) - 1 : ℚ) ^ (A000040 (n + 1) - 1 : ℤ) := by simp only [A081701.P214869542892994214.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A081701, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

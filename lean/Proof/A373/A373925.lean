import Prog.A373.A3739
import Proof.Lib.Integral
import Proof.Lib.Zpow
import Proof.A000.A000010

/-- A373925: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A373925.anchor (n : ℕ) :
    (A373925 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (-1 : ℚ) ^ (A000010 d : ℤ) := by
  have hz : ∃ z : ℤ, A373925.P14676355047284176177.a n = (z : ℚ) := by
    simp only [A373925.P14676355047284176177.f1, A373925.P14676355047284176177.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000010]; positivity) | (rw [A000010.anchor _ (by omega)]; positivity) | (rename_i h; rw [A000010.anchor _ (Nat.pos_of_mem_divisors h)]; positivity) | (rw [A000010.anchor]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A373925.P14676355047284176177.a n = ∑ d ∈ Nat.divisors ((n + 1)), (-1 : ℚ) ^ (A000010 d : ℤ) := by simp only [A373925.P14676355047284176177.f1, A373925.P14676355047284176177.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A373925, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]

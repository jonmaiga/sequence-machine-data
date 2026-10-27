import Prog.A084.A0848
import Proof.Lib.Integral

/-- A084847: a(n) = 2*3^n+2^(2n-1)*(n-2). The name formula is an integer. -/
theorem A084847.anchor (n : ℕ) :
    (A084847 n : ℚ) = (2 * 3 ^ n : ℚ) + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * ((n : ℤ) - 2 : ℚ) := by
  have hz : ∃ z : ℤ, (2 * 3 ^ n : ℚ) + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * ((n : ℤ) - 2 : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A084847, A084847.P15706749602897950463.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

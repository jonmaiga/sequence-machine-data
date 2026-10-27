import Prog.A036.A0365
import Proof.Lib.Integral

/-- A036551: a(n) = 2^(n-1)*(3^n-1) + 1. The name formula is an integer. -/
theorem A036551.anchor (n : ℕ) :
    (A036551 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - 1 : ℚ) + 1 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - 1 : ℚ) + 1 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A036551, A036551.P16636008447867567606.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

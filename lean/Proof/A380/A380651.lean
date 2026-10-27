import Prog.A380.A3806
import Proof.Lib.Integral

/-- A380651: a(n) = 4^n - n*3^(n-1). The name formula is an integer. -/
theorem A380651.anchor (n : ℕ) :
    (A380651 n : ℚ) = (4 ^ n : ℚ) - (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (4 ^ n : ℚ) - (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A380651, A380651.P8151096039884004130.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

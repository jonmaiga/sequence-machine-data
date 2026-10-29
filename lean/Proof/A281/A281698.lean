import Prog.A281.A2816
import Proof.Lib.Integral

/-- A281698: a(n) = 5*2^(n-1) + 2^(2*n-1) + 6^n + 1. The name formula is an integer. -/
theorem A281698.anchor (n : ℕ) :
    (A281698 n : ℚ) = 5 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) + (6 ^ n : ℚ) + 1 := by
  have hz : ∃ z : ℤ, 5 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) + (6 ^ n : ℚ) + 1 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨5, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A281698, A281698.P13749213329271070590.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

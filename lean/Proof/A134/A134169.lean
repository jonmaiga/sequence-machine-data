import Prog.A134.A1341
import Proof.Lib.Integral

/-- A134169: a(n) = 2^(n-1)*(2^n - 1) + 1. The name formula is an integer. -/
theorem A134169.anchor (n : ℕ) :
    (A134169 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 ^ n : ℤ) - 1 : ℚ) + 1 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 ^ n : ℤ) - 1 : ℚ) + 1 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A134169, A134169.P4806546088313490847.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

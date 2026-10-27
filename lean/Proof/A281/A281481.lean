import Prog.A281.A2814
import Proof.Lib.Integral

/-- A281481: a(n) = 2^(n - 1) * (2^n + 1) + 1. The name formula is an integer. -/
theorem A281481.anchor (n : ℕ) :
    (A281481 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 1 : ℚ) + 1 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 1 : ℚ) + 1 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨2, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A281481, A281481.P3201181797122776370.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

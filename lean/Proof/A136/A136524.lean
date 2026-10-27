import Prog.A136.A1365
import Proof.Lib.Integral

/-- A136524: a(n) = 2^n*(2^n + n)^(n-1). The name formula is an integer. -/
theorem A136524.anchor (n : ℕ) :
    (A136524 n : ℚ) = (2 ^ n : ℚ) * (2 ^ n + n : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (2 ^ n : ℚ) * (2 ^ n + n : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A136524, A136524.P11682882297783830628.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

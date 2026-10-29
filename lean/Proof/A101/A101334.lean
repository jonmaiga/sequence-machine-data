import Prog.A101.A1013
import Proof.Lib.Integral

/-- A101334: a(n) = n^n - (n+1)^(n-1). The name formula is an integer. -/
theorem A101334.anchor (n : ℕ) :
    (A101334 n : ℚ) = (n ^ n : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (n ^ n : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A101334, A101334.P5724577027891316913.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A343.A3432
import Proof.Lib.Integral

/-- A343291: a(n) = (n-2)*2^(n-1) + n + 2. The name formula is an integer. -/
theorem A343291.anchor (n : ℕ) :
    (A343291 n : ℚ) = ((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ) + 2 := by
  have hz : ∃ z : ℤ, ((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ) + 2 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A343291, A343291.P1131782987714866787.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

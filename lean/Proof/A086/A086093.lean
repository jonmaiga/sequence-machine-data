import Prog.A086.A0860
import Proof.Lib.Integral

/-- A086093: a(n) = 3^n + 2*n*4^(n-1). The name formula is an integer. -/
theorem A086093.anchor (n : ℕ) :
    (A086093 n : ℚ) = (3 ^ n : ℚ) + (2 * n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (3 ^ n : ℚ) + (2 * n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A086093, A086093.P6734917064426738367.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

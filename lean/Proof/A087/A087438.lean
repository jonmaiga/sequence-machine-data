import Prog.A087.A0874
import Proof.Lib.Integral

/-- A087438: a(n) = 3*2^(2*(n-1)) + 2^(n-2)*(n+1). The name formula is an integer. -/
theorem A087438.anchor (n : ℕ) :
    (A087438 n : ℚ) = 3 * (2 : ℚ) ^ (2 * ((n : ℤ) - 1) : ℤ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n + 1 : ℚ) := by
  have hz : ∃ z : ℤ, 3 * (2 : ℚ) ^ (2 * ((n : ℤ) - 1) : ℤ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n + 1 : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A087438, A087438.P16575751985052783341.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A229.A2291
import Proof.Lib.Integral

/-- A229135: a(n) = n * (2 + 2^(2*n - 1)). The name formula is an integer. -/
theorem A229135.anchor (n : ℕ) :
    (A229135 n : ℚ) = (n : ℚ) * (2 + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)) := by
  have hz : ∃ z : ℤ, (n : ℚ) * (2 + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A229135, A229135.P12108909619783335073.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

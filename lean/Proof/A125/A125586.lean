import Prog.A125.A1255
import Proof.Lib.Integral

/-- A125586: a(n) = 2^(2n-1) - (n+2)*3^(n-2). The name formula is an integer. -/
theorem A125586.anchor (n : ℕ) :
    (A125586 (n + 1) : ℚ) = (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) - (n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) - (n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A125586, Nat.add_sub_cancel, A125586.P10093926589923412362.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

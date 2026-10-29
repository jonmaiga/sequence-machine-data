import Prog.A251.A2515
import Proof.Lib.Integral

/-- A251583: a(n) = 3^(n-1) * (n+1)^(n-3) * (n+3). The name formula is an integer. -/
theorem A251583.anchor (n : ℕ) :
    (A251583 n : ℚ) = (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 1 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n + 3 : ℚ) := by
  have hz : ∃ z : ℤ, (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 1 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n + 3 : ℚ) = z := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨5, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251583, A251583.P8910026891617991750.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

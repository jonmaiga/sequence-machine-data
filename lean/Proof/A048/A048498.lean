import Prog.A048.A0484
import Proof.Lib.Integral

/-- A048498: a(n) = 2^(n-1)*(5*n-8) + 5. The name formula is an integer. -/
theorem A048498.anchor (n : ℕ) :
    (A048498 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((5 * n : ℤ) - 8 : ℚ) + 5 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((5 * n : ℤ) - 8 : ℚ) + 5 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A048498, A048498.P12645167656800031907.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

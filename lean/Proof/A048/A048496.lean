import Prog.A048.A0484
import Proof.Lib.Integral

/-- A048496: a(n) = 2^(n-1)*(3*n-4) + 3. The name formula is an integer. -/
theorem A048496.anchor (n : ℕ) :
    (A048496 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 * n : ℤ) - 4 : ℚ) + 3 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 * n : ℤ) - 4 : ℚ) + 3 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A048496, A048496.P10038668049760122665.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

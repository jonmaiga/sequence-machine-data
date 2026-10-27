import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251699: a(n) = (7*n+1) * (8*n+1)^(n-2) * 9^n. The name formula is an integer. -/
theorem A251699.anchor (n : ℕ) :
    (A251699 n : ℚ) = (7 * n + 1 : ℚ) * (8 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (9 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (7 * n + 1 : ℚ) * (8 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (9 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨8, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251699, A251699.P866515338596510768.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251694: a(n) = (2*n+1) * (3*n+1)^(n-2) * 4^n. The name formula is an integer. -/
theorem A251694.anchor (n : ℕ) :
    (A251694 n : ℚ) = (2 * n + 1 : ℚ) * (3 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (4 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (2 * n + 1 : ℚ) * (3 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (4 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨3, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251694, A251694.P6875443956432066648.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251698: a(n) = (6*n+1) * (7*n+1)^(n-2) * 8^n. The name formula is an integer. -/
theorem A251698.anchor (n : ℕ) :
    (A251698 n : ℚ) = (6 * n + 1 : ℚ) * (7 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (8 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (6 * n + 1 : ℚ) * (7 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (8 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨7, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251698, A251698.P2757666679304069960.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

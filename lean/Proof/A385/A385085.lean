import Prog.A385.A3850
import Proof.Lib.Integral

/-- A385085: a(n) = 2 * (3*n+2)^(n-1). The name formula is an integer. -/
theorem A385085.anchor (n : ℕ) :
    (A385085 n : ℚ) = 2 * (3 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, 2 * (3 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A385085, A385085.P12560886625132023276.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

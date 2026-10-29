import Prog.A076.A0767
import Proof.Lib.Integral

/-- A076728: a(n) = (n-1)^2 * n^(n-2). The name formula is an integer. -/
theorem A076728.anchor (n : ℕ) :
    (A076728 (n + 1) : ℚ) = (n ^ 2 : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (n ^ 2 : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A076728, Nat.add_sub_cancel, A076728.P16183147114775620766.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

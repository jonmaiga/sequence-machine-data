import Prog.A367.A3672
import Proof.Lib.Integral

/-- A367255: a(n) = (n + 1)^(n - 2)*(3*n + 1). The name formula is an integer. -/
theorem A367255.anchor (n : ℕ) :
    (A367255 n : ℚ) = (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (3 * n + 1 : ℚ) := by
  have hz : ∃ z : ℤ, (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (3 * n + 1 : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨2, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A367255, A367255.P3734428243993847854.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A086.A0860
import Proof.Lib.Integral

/-- A086091: a(n) = 3^n + 3*n*4^(n-1). The name formula is an integer. -/
theorem A086091.anchor (n : ℕ) :
    (A086091 n : ℚ) = (3 ^ n : ℚ) + (3 * n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (3 ^ n : ℚ) + (3 * n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A086091, A086091.P3154457619635186415.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A084.A0846
import Proof.Lib.Integral

/-- A084643: a(n) = 3^(n-1)*(2*n-3) + 2^(n+1). The name formula is an integer. -/
theorem A084643.anchor (n : ℕ) :
    (A084643 n : ℚ) = (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 * n : ℤ) - 3 : ℚ) + (2 ^ (n + 1) : ℚ) := by
  have hz : ∃ z : ℤ, (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 * n : ℤ) - 3 : ℚ) + (2 ^ (n + 1) : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A084643, A084643.P15268343866240561983.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

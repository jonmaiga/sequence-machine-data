import Prog.A006.A0062
import Proof.Lib.Integral

/-- A006236: a(n) = n^(n-2)*(n+2)^(n-1). The name formula is an integer. -/
theorem A006236.anchor (n : ℕ) :
    (A006236 (n + 1) : ℚ) = (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((n + 3) ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((n + 3) ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A006236, Nat.add_sub_cancel, A006236.P8418489764481886021.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

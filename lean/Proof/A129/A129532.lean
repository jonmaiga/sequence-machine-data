import Prog.A129.A1295
import Proof.Lib.Integral

/-- A129532: a(n) = 3*n*(n-1)*4^(n-2). The name formula is an integer. -/
theorem A129532.anchor (n : ℕ) :
    (A129532 n : ℚ) = ((3 * n : ℤ) * ((n : ℤ) - 1) : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by
  have hz : ∃ z : ℤ, ((3 * n : ℤ) * ((n : ℤ) - 1) : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A129532, A129532.P2710296928401358278.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

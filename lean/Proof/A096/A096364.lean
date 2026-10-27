import Prog.A096.A0963
import Proof.Lib.Integral

/-- A096364: Number of ways to generate a Coxeter element of the reflection group of the root system B_n with certain restrictions on generators: (3n-4)*(n-2)^(n-2) - (n-1)^(n-1). The name formula is an integer. -/
theorem A096364.anchor (n : ℕ) :
    (A096364 (n + 1) : ℚ) = ((3 * (n + 1) : ℤ) - 4 : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n ^ n : ℚ) := by
  have hz : ∃ z : ℤ, ((3 * (n + 1) : ℤ) - 4 : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A096364, Nat.add_sub_cancel, A096364.P6771774350481292813.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

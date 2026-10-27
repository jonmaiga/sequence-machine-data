import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251693: a(n) = (n+1) * (2*n+1)^(n-2) * 3^n. The name formula is an integer. -/
theorem A251693.anchor (n : ℕ) :
    (A251693 n : ℚ) = (n + 1 : ℚ) * (2 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (3 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (n + 1 : ℚ) * (2 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (3 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨2, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251693, A251693.P18292720667471138471.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

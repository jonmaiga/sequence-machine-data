import Prog.A251.A2517
import Proof.Lib.Integral

/-- A251700: a(n) = (8*n+1) * (9*n+1)^(n-2) * 10^n. The name formula is an integer. -/
theorem A251700.anchor (n : ℕ) :
    (A251700 n : ℚ) = (8 * n + 1 : ℚ) * (9 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (10 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (8 * n + 1 : ℚ) * (9 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (10 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨9, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251700, A251700.P4266059864923752673.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

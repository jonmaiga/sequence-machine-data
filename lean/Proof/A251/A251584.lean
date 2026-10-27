import Prog.A251.A2515
import Proof.Lib.Integral

/-- A251584: a(n) = 4^(n-2) * (n+1)^(n-4) * (3*n^2 + 13*n + 16). The name formula is an integer. -/
theorem A251584.anchor (n : ℕ) :
    (A251584 n : ℚ) = (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n + 1 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (3 * n ^ 2 + 13 * n + 16 : ℚ) := by
  have hz : ∃ z : ℤ, (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n + 1 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (3 * n ^ 2 + 13 * n + 16 : ℚ) = z := by
    rcases Nat.lt_or_ge n 4 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨6, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨82, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251584, A251584.P7515185479979683614.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

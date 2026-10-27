import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251695: a(n) = (3*n+1) * (4*n+1)^(n-2) * 5^n. The name formula is an integer. -/
theorem A251695.anchor (n : ℕ) :
    (A251695 n : ℚ) = (3 * n + 1 : ℚ) * (4 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (5 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (3 * n + 1 : ℚ) * (4 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (5 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251695, A251695.P10996144173858362134.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A085.A0855
import Proof.Lib.Integral

/-- A085531: a(n) = (2*n+1)^(2*n-1). The name formula is an integer. -/
theorem A085531.anchor (n : ℕ) :
    (A085531 n : ℚ) = (2 * n + 1 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (2 * n + 1 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A085531, A085531.P14464995482352617164.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

import Prog.A232.A2329
import Proof.Lib.Integral

/-- A232994: a(n) = 6*(n - 3)*(n - 4)*2^(n-3)*n^(n-4). The name formula is an integer. -/
theorem A232994.anchor (n : ℕ) :
    (A232994 (n + 3) : ℚ) = ((6 * n : ℤ) * ((n : ℤ) - 1) * (2 ^ n : ℤ) : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, ((6 * n : ℤ) * ((n : ℤ) - 1) * (2 ^ n : ℤ) : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A232994, Nat.add_sub_cancel, A232994.P13105028873786130498.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

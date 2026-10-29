import Prog.A394.A3949
import Proof.Lib.Integral

/-- A394960: a(n) = (2^(n-1)-1) * (2^n-3). The name formula is an integer. -/
theorem A394960.anchor (n : ℕ) :
    (A394960 n : ℚ) = ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * ((2 ^ n : ℤ) - 3 : ℚ) := by
  have hz : ∃ z : ℤ, ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * ((2 ^ n : ℤ) - 3 : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A394960, A394960.P6409184033975738542.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

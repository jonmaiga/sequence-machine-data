import Prog.A217.A2175
import Proof.Lib.Integral

/-- A217528: a(n) = (n-2)*(n-3)*2^(n-2)+2^n-2. The name formula is an integer. -/
theorem A217528.anchor (n : ℕ) :
    (A217528 (n + 1) : ℚ) = (((n : ℤ) - 1) * ((n : ℤ) - 2) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 ^ (n + 1) : ℚ) - 2 := by
  have hz : ∃ z : ℤ, (((n : ℤ) - 1) * ((n : ℤ) - 2) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 ^ (n + 1) : ℚ) - 2 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A217528, Nat.add_sub_cancel, A217528.P11059898023563823371.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]

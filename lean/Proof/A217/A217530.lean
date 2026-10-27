import Prog.A217.A2175
import Proof.Lib.Integral

/-- A217530: a(n) = n^4/2-5*n^3/2+21*n-30. The name formula is an integer. -/
theorem A217530.anchor (n : ℕ) :
    (A217530 (n + 2) : ℚ) = ((n + 2) ^ 4 : ℚ) / 2 - (5 * (n + 2) ^ 3 : ℚ) / 2 + (21 * (n + 2) : ℚ) - 30 := by
  have hE : ((n + 2) ^ 4 : ℚ) / 2 - (5 * (n + 2) ^ 3 : ℚ) / 2 + (21 * (n + 2) : ℚ) - 30 = ((14 * (n : ℤ) - 6 * (n : ℤ) ^ 2 + 3 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 14 * (n : ℤ) - 6 * (n : ℤ) ^ 2 + 3 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 14 * (n : ℤ) - 6 * (n : ℤ) ^ 2 + 3 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 := by omega
  have hq : ((n + 2) ^ 4 : ℚ) / 2 - (5 * (n + 2) ^ 3 : ℚ) / 2 + (21 * (n + 2) : ℚ) - 30 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 14 * (n : ℤ) - 6 * (n : ℤ) ^ 2 + 3 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 = z * 2)
  simp only [A217530, Nat.add_sub_cancel, A217530.P16714677509817472332.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

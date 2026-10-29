import Prog.A134.A1341
import Proof.Lib.Integral

/-- A134176: a(n) = (3/8)*(n-1)*(n-2)*(27*n^2-137*n+180). The name formula is an integer. -/
theorem A134176.anchor (n : ℕ) :
    (A134176 (n + 1) : ℚ) = (3 : ℚ) / 8 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((27 * (n + 1) ^ 2 : ℤ) - (137 * (n + 1) : ℤ) + 180 : ℚ) := by
  have hE : (3 : ℚ) / 8 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((27 * (n + 1) ^ 2 : ℤ) - (137 * (n + 1) : ℤ) + 180 : ℚ) = ((-210 * (n : ℤ) + 459 * (n : ℤ) ^ 2 - 330 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 : ℤ) : ℚ) / 8 := by push_cast; ring
  have h8 : (8 : ℤ) ∣ -210 * (n : ℤ) + 459 * (n : ℤ) ^ 2 - 330 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (8 : ℤ) ∣ -210 * (n : ℤ) + 459 * (n : ℤ) ^ 2 - 330 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 := by omega
  have hq : (3 : ℚ) / 8 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((27 * (n + 1) ^ 2 : ℤ) - (137 * (n + 1) : ℤ) + 180 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -210 * (n : ℤ) + 459 * (n : ℤ) ^ 2 - 330 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 = z * 8)
  simp only [A134176, Nat.add_sub_cancel, A134176.P17485879339479065544.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

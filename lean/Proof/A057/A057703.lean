import Prog.A057.A0577
import Proof.Lib.Integral

/-- A057703: a(n) = n*(94 + 5*n + 25*n^2 - 5*n^3 + n^4)/120. The name formula is an integer. -/
theorem A057703.anchor (n : ℕ) :
    (A057703 n : ℚ) = ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℤ) := by omega
  have hq : ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((94 + 5 * n + 25 * n ^ 2 : ℤ) - (5 * n ^ 3 : ℤ) + (n ^ 4 : ℤ)) : ℤ) = z * 120)
  simp only [A057703, A057703.P9441875660912202182.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

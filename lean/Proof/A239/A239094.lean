import Prog.A239.A2390
import Proof.Lib.Integral

/-- A239094: a(n) = (5*n^9 - 30*n^7 + 63*n^5 - 50*n^3 + 12*n)/360. The name formula is an integer. -/
theorem A239094.anchor (n : ℕ) :
    (A239094 n : ℚ) = ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℚ) / 360 := by
  have h8 : (8 : ℤ) ∣ ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (360 : ℤ) ∣ ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℤ) := by omega
  have hq : ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℚ) / 360 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℤ) = z * 360)
  simp only [A239094, A239094.P12982977801086125285.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

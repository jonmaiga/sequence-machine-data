import Prog.A079.A0795
import Proof.Lib.Integral

/-- A079547: a(n) = ((n^6 - (n-1)^6) - (n^2 - (n-1)^2))/60. The name formula is an integer. -/
theorem A079547.anchor (n : ℕ) :
    (A079547 (n + 1) : ℚ) = (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 60 := by
  have h4 : (4 : ℤ) ∣ (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (60 : ℤ) ∣ (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℤ) := by omega
  have hq : (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 60 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ) - (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)) : ℤ) = z * 60)
  simp only [A079547, Nat.add_sub_cancel, A079547.P6760666080980648222.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

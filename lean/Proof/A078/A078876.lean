import Prog.A078.A0788
import Proof.Lib.Integral

/-- A078876: a(n) = n^4*(n^4-1)/240. The name formula is an integer. -/
theorem A078876.anchor (n : ℕ) :
    (A078876 n : ℚ) = ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℚ) / 240 := by
  have h16 : (16 : ℤ) ∣ ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (240 : ℤ) ∣ ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℤ) := by omega
  have hq : ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℚ) / 240 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℤ) = z * 240)
  simp only [A078876, A078876.P1746976397778396075.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

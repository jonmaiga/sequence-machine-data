import Prog.A238.A2381
import Proof.Lib.Integral

/-- A238108: a(n) = (n - 1)*(n - 2)*(5*n^4 + 3*n^3 + 34*n^2 - 264*n + 180)/360. The name formula is an integer. -/
theorem A238108.anchor (n : ℕ) :
    (A238108 n : ℚ) = (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℚ) / 360 := by
  have h8 : (8 : ℤ) ∣ (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (360 : ℤ) ∣ (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℤ) := by omega
  have hq : (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℚ) / 360 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((n : ℤ) - 1) * ((n : ℤ) - 2) * ((5 * n ^ 4 + 3 * n ^ 3 + 34 * n ^ 2 : ℤ) - (264 * n : ℤ) + 180) : ℤ) = z * 360)
  simp only [A238108, A238108.P4488216212764168640.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

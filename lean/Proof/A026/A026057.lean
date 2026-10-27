import Prog.A026.A0260
import Proof.Lib.Integral

/-- A026057: a(n) = n*(n^2 + 12*n - 25)/6. The name formula is an integer. -/
theorem A026057.anchor (n : ℕ) :
    (A026057 n : ℚ) = ((n : ℤ) * ((n ^ 2 + 12 * n : ℤ) - 25) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((n : ℤ) * ((n ^ 2 + 12 * n : ℤ) - 25) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n : ℤ) * ((n ^ 2 + 12 * n : ℤ) - 25) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((n : ℤ) * ((n ^ 2 + 12 * n : ℤ) - 25) : ℤ) := by omega
  have hq : ((n : ℤ) * ((n ^ 2 + 12 * n : ℤ) - 25) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((n ^ 2 + 12 * n : ℤ) - 25) : ℤ) = z * 6)
  simp only [A026057, A026057.P5667498557132812741.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

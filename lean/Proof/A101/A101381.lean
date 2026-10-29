import Prog.A101.A1013
import Proof.Lib.Integral

/-- A101381: a(n) = n^2*(n+1)^2*(4*n^2 - 5*n + 4)/12. The name formula is an integer. -/
theorem A101381.anchor (n : ℕ) :
    (A101381 n : ℚ) = ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((4 * n ^ 2 : ℤ) - (5 * n : ℤ) + 4) : ℚ) / 12 := by
  have h4 : (4 : ℤ) ∣ ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((4 * n ^ 2 : ℤ) - (5 * n : ℤ) + 4) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((4 * n ^ 2 : ℤ) - (5 * n : ℤ) + 4) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((4 * n ^ 2 : ℤ) - (5 * n : ℤ) + 4) : ℤ) := by omega
  have hq : ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((4 * n ^ 2 : ℤ) - (5 * n : ℤ) + 4) : ℚ) / 12 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((4 * n ^ 2 : ℤ) - (5 * n : ℤ) + 4) : ℤ) = z * 12)
  simp only [A101381, A101381.P1636319080173833325.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A101.A1013
import Proof.Lib.Integral

/-- A101379: a(n) = n*(n+1)^2*(6*n^3-5*n^2+3*n+2)/24. The name formula is an integer. -/
theorem A101379.anchor (n : ℕ) :
    (A101379 n : ℚ) = ((n * (n + 1) ^ 2 : ℤ) * ((6 * n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2) : ℚ) / 24 := by
  have h8 : (8 : ℤ) ∣ ((n * (n + 1) ^ 2 : ℤ) * ((6 * n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n * (n + 1) ^ 2 : ℤ) * ((6 * n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (24 : ℤ) ∣ ((n * (n + 1) ^ 2 : ℤ) * ((6 * n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2) : ℤ) := by omega
  have hq : ((n * (n + 1) ^ 2 : ℤ) * ((6 * n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2) : ℚ) / 24 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (n + 1) ^ 2 : ℤ) * ((6 * n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2) : ℤ) = z * 24)
  simp only [A101379, A101379.P13255299419516851383.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

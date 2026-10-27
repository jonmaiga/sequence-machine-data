import Prog.A096.A0962
import Proof.Lib.Integral

/-- A096200: a(n) = n*(n-1)*(n-2)*(3*n-2)/6. The name formula is an integer. -/
theorem A096200.anchor (n : ℕ) :
    (A096200 n : ℚ) = ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((3 * n : ℤ) - 2) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((3 * n : ℤ) - 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((3 * n : ℤ) - 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((3 * n : ℤ) - 2) : ℤ) := by omega
  have hq : ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((3 * n : ℤ) - 2) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((3 * n : ℤ) - 2) : ℤ) = z * 6)
  simp only [A096200, A096200.P4365199947411171117.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

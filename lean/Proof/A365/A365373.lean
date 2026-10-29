import Prog.A365.A3653
import Proof.Lib.Integral

/-- A365373: a(n) = n*(3*n^4 + 15*n^3 + 25*n^2 - 15*n - 28)/60. The name formula is an integer. -/
theorem A365373.anchor (n : ℕ) :
    (A365373 n : ℚ) = ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℚ) / 60 := by
  have h4 : (4 : ℤ) ∣ ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (60 : ℤ) ∣ ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℤ) := by omega
  have hq : ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℚ) / 60 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℤ) = z * 60)
  simp only [A365373, A365373.P4114578376088839030.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A239.A2390
import Proof.Lib.Integral

/-- A239095: a(n) = (n^7 - 21*n^3 + 20*n)/210. The name formula is an integer. -/
theorem A239095.anchor (n : ℕ) :
    (A239095 n : ℚ) = ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℚ) / 210 := by
  have h2 : (2 : ℤ) ∣ ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  have h7 : (7 : ℤ) ∣ ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 7).mp (by push_cast; generalize (n : ZMod 7) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (210 : ℤ) ∣ ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℤ) := by omega
  have hq : ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℚ) / 210 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 7 : ℤ) - (21 * n ^ 3 : ℤ) + (20 * n : ℤ) : ℤ) = z * 210)
  simp only [A239095, A239095.P5018079448449239445.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

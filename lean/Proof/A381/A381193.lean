import Prog.A381.A3811
import Proof.Lib.Integral

/-- A381193: a(n) = (3*n-1)*(n^4-18*n^3+179*n^2-582*n+720)/120. The name formula is an integer. -/
theorem A381193.anchor (n : ℕ) :
    (A381193 (n + 1) : ℚ) = (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℤ) := by omega
  have hq : (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((3 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (179 * (n + 1) ^ 2 : ℤ) - (582 * (n + 1) : ℤ) + 720) : ℤ) = z * 120)
  simp only [A381193, Nat.add_sub_cancel, A381193.P5284170118730963565.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

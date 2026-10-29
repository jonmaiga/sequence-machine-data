import Prog.A319.A3199
import Proof.Lib.Integral

/-- A319931: a(n) = -(1/120)*n*(n - 3)*(n - 6)*(n^2 - 21*n + 8). The name formula is an integer. -/
theorem A319931.anchor (n : ℕ) :
    (A319931 n : ℚ) = (-((1 : ℚ) / 120)) * (n : ℚ) * ((n : ℤ) - 3 : ℚ) * ((n : ℤ) - 6 : ℚ) * ((n ^ 2 : ℤ) - (21 * n : ℤ) + 8 : ℚ) := by
  have hE : (-((1 : ℚ) / 120)) * (n : ℚ) * ((n : ℤ) - 3 : ℚ) * ((n : ℤ) - 6 : ℚ) * ((n ^ 2 : ℤ) - (21 * n : ℤ) + 8 : ℚ) = ((-144 * (n : ℤ) + 450 * (n : ℤ) ^ 2 - 215 * (n : ℤ) ^ 3 + 30 * (n : ℤ) ^ 4 - (n : ℤ) ^ 5 : ℤ) : ℚ) / 120 := by push_cast; ring
  have h8 : (8 : ℤ) ∣ -144 * (n : ℤ) + 450 * (n : ℤ) ^ 2 - 215 * (n : ℤ) ^ 3 + 30 * (n : ℤ) ^ 4 - (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ -144 * (n : ℤ) + 450 * (n : ℤ) ^ 2 - 215 * (n : ℤ) ^ 3 + 30 * (n : ℤ) ^ 4 - (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ -144 * (n : ℤ) + 450 * (n : ℤ) ^ 2 - 215 * (n : ℤ) ^ 3 + 30 * (n : ℤ) ^ 4 - (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ -144 * (n : ℤ) + 450 * (n : ℤ) ^ 2 - 215 * (n : ℤ) ^ 3 + 30 * (n : ℤ) ^ 4 - (n : ℤ) ^ 5 := by omega
  have hq : (-((1 : ℚ) / 120)) * (n : ℚ) * ((n : ℤ) - 3 : ℚ) * ((n : ℤ) - 6 : ℚ) * ((n ^ 2 : ℤ) - (21 * n : ℤ) + 8 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -144 * (n : ℤ) + 450 * (n : ℤ) ^ 2 - 215 * (n : ℤ) ^ 3 + 30 * (n : ℤ) ^ 4 - (n : ℤ) ^ 5 = z * 120)
  simp only [A319931, A319931.P4359869937451958641.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

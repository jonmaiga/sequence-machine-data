import Prog.A145.A1451
import Proof.Lib.Integral

/-- A145127: a(n) = 1 + (144 + (50 + (35 + (10 + n)*n)*n)*n)*n/120. The name formula is an integer. -/
theorem A145127.anchor (n : ℕ) :
    (A145127 n : ℚ) = 1 + ((144 + (50 + (35 + (10 + n) * n) * n) * n) * n : ℚ) / 120 := by
  have hE : 1 + ((144 + (50 + (35 + (10 + n) * n) * n) * n) * n : ℚ) / 120 = ((120 + 144 * (n : ℤ) + 50 * (n : ℤ) ^ 2 + 35 * (n : ℤ) ^ 3 + 10 * (n : ℤ) ^ 4 + (n : ℤ) ^ 5 : ℤ) : ℚ) / 120 := by push_cast; ring
  have h8 : (8 : ℤ) ∣ 120 + 144 * (n : ℤ) + 50 * (n : ℤ) ^ 2 + 35 * (n : ℤ) ^ 3 + 10 * (n : ℤ) ^ 4 + (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 120 + 144 * (n : ℤ) + 50 * (n : ℤ) ^ 2 + 35 * (n : ℤ) ^ 3 + 10 * (n : ℤ) ^ 4 + (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ 120 + 144 * (n : ℤ) + 50 * (n : ℤ) ^ 2 + 35 * (n : ℤ) ^ 3 + 10 * (n : ℤ) ^ 4 + (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ 120 + 144 * (n : ℤ) + 50 * (n : ℤ) ^ 2 + 35 * (n : ℤ) ^ 3 + 10 * (n : ℤ) ^ 4 + (n : ℤ) ^ 5 := by omega
  have hq : 1 + ((144 + (50 + (35 + (10 + n) * n) * n) * n) * n : ℚ) / 120 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 120 + 144 * (n : ℤ) + 50 * (n : ℤ) ^ 2 + 35 * (n : ℤ) ^ 3 + 10 * (n : ℤ) ^ 4 + (n : ℤ) ^ 5 = z * 120)
  simp only [A145127, A145127.P6868547568372436535.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A135.A1359
import Proof.Lib.Integral

/-- A135917: a(n) = (n^6 - 30*n^4 + 45*n^3 + 206*n^2 - 576*n + 384)/6. The name formula is an integer. -/
theorem A135917.anchor (n : ℕ) :
    (A135917 (n + 2) : ℚ) = (((n + 2) ^ 6 : ℤ) - (30 * (n + 2) ^ 4 : ℤ) + (45 * (n + 2) ^ 3 : ℤ) + (206 * (n + 2) ^ 2 : ℤ) - (576 * (n + 2) : ℤ) + 384 : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ (((n + 2) ^ 6 : ℤ) - (30 * (n + 2) ^ 4 : ℤ) + (45 * (n + 2) ^ 3 : ℤ) + (206 * (n + 2) ^ 2 : ℤ) - (576 * (n + 2) : ℤ) + 384 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (((n + 2) ^ 6 : ℤ) - (30 * (n + 2) ^ 4 : ℤ) + (45 * (n + 2) ^ 3 : ℤ) + (206 * (n + 2) ^ 2 : ℤ) - (576 * (n + 2) : ℤ) + 384 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ (((n + 2) ^ 6 : ℤ) - (30 * (n + 2) ^ 4 : ℤ) + (45 * (n + 2) ^ 3 : ℤ) + (206 * (n + 2) ^ 2 : ℤ) - (576 * (n + 2) : ℤ) + 384 : ℤ) := by omega
  have hq : (((n + 2) ^ 6 : ℤ) - (30 * (n + 2) ^ 4 : ℤ) + (45 * (n + 2) ^ 3 : ℤ) + (206 * (n + 2) ^ 2 : ℤ) - (576 * (n + 2) : ℤ) + 384 : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((n + 2) ^ 6 : ℤ) - (30 * (n + 2) ^ 4 : ℤ) + (45 * (n + 2) ^ 3 : ℤ) + (206 * (n + 2) ^ 2 : ℤ) - (576 * (n + 2) : ℤ) + 384 : ℤ) = z * 6)
  simp only [A135917, Nat.add_sub_cancel, A135917.P3249757232128085178.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

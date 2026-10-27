import Prog.A161.A1617
import Proof.Lib.Integral

/-- A161713: a(n) = (-n^5 + 15*n^4 - 65*n^3 + 125*n^2 - 34*n + 40)/40. The name formula is an integer. -/
theorem A161713.anchor (n : ℕ) :
    (A161713 n : ℚ) = (-(n ^ 5 : ℤ) + (15 * n ^ 4 : ℤ) - (65 * n ^ 3 : ℤ) + (125 * n ^ 2 : ℤ) - (34 * n : ℤ) + 40 : ℚ) / 40 := by
  have h8 : (8 : ℤ) ∣ (-(n ^ 5 : ℤ) + (15 * n ^ 4 : ℤ) - (65 * n ^ 3 : ℤ) + (125 * n ^ 2 : ℤ) - (34 * n : ℤ) + 40 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (-(n ^ 5 : ℤ) + (15 * n ^ 4 : ℤ) - (65 * n ^ 3 : ℤ) + (125 * n ^ 2 : ℤ) - (34 * n : ℤ) + 40 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (40 : ℤ) ∣ (-(n ^ 5 : ℤ) + (15 * n ^ 4 : ℤ) - (65 * n ^ 3 : ℤ) + (125 * n ^ 2 : ℤ) - (34 * n : ℤ) + 40 : ℤ) := by omega
  have hq : (-(n ^ 5 : ℤ) + (15 * n ^ 4 : ℤ) - (65 * n ^ 3 : ℤ) + (125 * n ^ 2 : ℤ) - (34 * n : ℤ) + 40 : ℚ) / 40 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (-(n ^ 5 : ℤ) + (15 * n ^ 4 : ℤ) - (65 * n ^ 3 : ℤ) + (125 * n ^ 2 : ℤ) - (34 * n : ℤ) + 40 : ℤ) = z * 40)
  simp only [A161713, A161713.P16836313380821940203.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A219.A2190
import Proof.Lib.Integral

/-- A219070: a(n) = (46*n^5 + 30*n^4 + 15*n^3 - n) / 30. The name formula is an integer. -/
theorem A219070.anchor (n : ℕ) :
    (A219070 n : ℚ) = ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 30 := by
  have h2 : (2 : ℤ) ∣ ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (30 : ℤ) ∣ ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) := by omega
  have hq : ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 30 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((46 * n ^ 5 + 30 * n ^ 4 + 15 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) = z * 30)
  simp only [A219070, A219070.P14543158143249078882.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

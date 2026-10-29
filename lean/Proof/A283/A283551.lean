import Prog.A283.A2835
import Proof.Lib.Integral

/-- A283551: a(n) = -1 + 5*n/6 + n^3/6. The name formula is an integer. -/
theorem A283551.anchor (n : ℕ) :
    (A283551 n : ℚ) = -1 + (5 * n : ℚ) / 6 + (n ^ 3 : ℚ) / 6 := by
  have hE : -1 + (5 * n : ℚ) / 6 + (n ^ 3 : ℚ) / 6 = ((-6 + 5 * (n : ℤ) + (n : ℤ) ^ 3 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ -6 + 5 * (n : ℤ) + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ -6 + 5 * (n : ℤ) + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ -6 + 5 * (n : ℤ) + (n : ℤ) ^ 3 := by omega
  have hq : -1 + (5 * n : ℚ) / 6 + (n ^ 3 : ℚ) / 6 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -6 + 5 * (n : ℤ) + (n : ℤ) ^ 3 = z * 6)
  simp only [A283551, A283551.P5575617590734609024.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

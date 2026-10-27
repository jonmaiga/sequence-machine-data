import Prog.A136.A1363
import Proof.Lib.Integral

/-- A136396: a(n) = 1 + n*(n+1)*(n^2-n+12)/12. The name formula is an integer. -/
theorem A136396.anchor (n : ℕ) :
    (A136396 n : ℚ) = 1 + ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 12) : ℚ) / 12 := by
  have hE : 1 + ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 12) : ℚ) / 12 = ((12 + 12 * (n : ℤ) + 11 * (n : ℤ) ^ 2 + (n : ℤ) ^ 4 : ℤ) : ℚ) / 12 := by push_cast; ring
  have h4 : (4 : ℤ) ∣ 12 + 12 * (n : ℤ) + 11 * (n : ℤ) ^ 2 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 12 + 12 * (n : ℤ) + 11 * (n : ℤ) ^ 2 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ 12 + 12 * (n : ℤ) + 11 * (n : ℤ) ^ 2 + (n : ℤ) ^ 4 := by omega
  have hq : 1 + ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 12) : ℚ) / 12 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 12 + 12 * (n : ℤ) + 11 * (n : ℤ) ^ 2 + (n : ℤ) ^ 4 = z * 12)
  simp only [A136396, A136396.P18028851304802420194.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

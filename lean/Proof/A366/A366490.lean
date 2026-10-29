import Prog.A366.A3664
import Proof.Lib.Integral

/-- A366490: a(n) = (n^17 - n)/17. The name formula is an integer. -/
theorem A366490.anchor (n : ℕ) :
    (A366490 n : ℚ) = ((n ^ 17 : ℤ) - (n : ℤ) : ℚ) / 17 := by
  have h17 : (17 : ℤ) ∣ ((n ^ 17 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 17).mp (by push_cast; generalize (n : ZMod 17) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (17 : ℤ) ∣ ((n ^ 17 : ℤ) - (n : ℤ) : ℤ) := by omega
  have hq : ((n ^ 17 : ℤ) - (n : ℤ) : ℚ) / 17 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 17 : ℤ) - (n : ℤ) : ℤ) = z * 17)
  simp only [A366490, A366490.P18095061105171444197.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

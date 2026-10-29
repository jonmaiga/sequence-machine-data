import Prog.A366.A3664
import Proof.Lib.Integral

/-- A366488: a(n) = (n^11 - n)/11. The name formula is an integer. -/
theorem A366488.anchor (n : ℕ) :
    (A366488 n : ℚ) = ((n ^ 11 : ℤ) - (n : ℤ) : ℚ) / 11 := by
  have h11 : (11 : ℤ) ∣ ((n ^ 11 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 11).mp (by push_cast; generalize (n : ZMod 11) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (11 : ℤ) ∣ ((n ^ 11 : ℤ) - (n : ℤ) : ℤ) := by omega
  have hq : ((n ^ 11 : ℤ) - (n : ℤ) : ℚ) / 11 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 11 : ℤ) - (n : ℤ) : ℤ) = z * 11)
  simp only [A366488, A366488.P10110916196873006906.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

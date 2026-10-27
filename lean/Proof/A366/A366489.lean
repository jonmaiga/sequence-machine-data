import Prog.A366.A3664
import Proof.Lib.Integral

/-- A366489: a(n) = (n^13 - n)/13. The name formula is an integer. -/
theorem A366489.anchor (n : ℕ) :
    (A366489 n : ℚ) = ((n ^ 13 : ℤ) - (n : ℤ) : ℚ) / 13 := by
  have h13 : (13 : ℤ) ∣ ((n ^ 13 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 13).mp (by push_cast; generalize (n : ZMod 13) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (13 : ℤ) ∣ ((n ^ 13 : ℤ) - (n : ℤ) : ℤ) := by omega
  have hq : ((n ^ 13 : ℤ) - (n : ℤ) : ℚ) / 13 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 13 : ℤ) - (n : ℤ) : ℤ) = z * 13)
  simp only [A366489, A366489.P13230996808277506270.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

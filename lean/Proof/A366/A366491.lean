import Prog.A366.A3664
import Proof.Lib.Integral

/-- A366491: a(n) = (n^19 - n)/19. The name formula is an integer. -/
theorem A366491.anchor (n : ℕ) :
    (A366491 n : ℚ) = ((n ^ 19 : ℤ) - (n : ℤ) : ℚ) / 19 := by
  have h19 : (19 : ℤ) ∣ ((n ^ 19 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 19).mp (by push_cast; generalize (n : ZMod 19) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (19 : ℤ) ∣ ((n ^ 19 : ℤ) - (n : ℤ) : ℤ) := by omega
  have hq : ((n ^ 19 : ℤ) - (n : ℤ) : ℚ) / 19 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 19 : ℤ) - (n : ℤ) : ℤ) = z * 19)
  simp only [A366491, A366491.P7121023607802350257.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

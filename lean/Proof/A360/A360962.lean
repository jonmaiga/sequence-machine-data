import Prog.A360.A3609
import Proof.Lib.Integral

/-- A360962: Square array T(n,k) = k*((3+6*n)*k - 1)/2; n>=0, k>=0, read by antidiagonals upwards. The name formula is an integer. -/
theorem A360962.anchor (n : ℕ) :
    (A360962 n : ℚ) = ((SequenceMachineLib.triCol n : ℤ) * ((3 + 6 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triCol n : ℤ) * ((3 + 6 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 = ((-(SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ -(SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ -(SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 := by omega
  have hq : ((SequenceMachineLib.triCol n : ℤ) * ((3 + 6 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -(SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 = z * 2)
  simp only [A360962, A360962.P17262487106903654125.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

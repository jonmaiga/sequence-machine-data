import Prog.A361.A3612
import Proof.Lib.Integral

/-- A361226: Square array T(n,k) = k*((1+2*n)*k - 1)/2; n>=0, k>=0, read by antidiagonals upwards. The name formula is an integer. -/
theorem A361226.anchor (n : ℕ) :
    (A361226 n : ℚ) = ((SequenceMachineLib.triCol n : ℤ) * ((1 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triCol n : ℤ) * ((1 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 = ((-(SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ -(SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ -(SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 := by omega
  have hq : ((SequenceMachineLib.triCol n : ℤ) * ((1 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -(SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 = z * 2)
  simp only [A361226, A361226.P7781671185256553747.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

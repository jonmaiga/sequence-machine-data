import Prog.A317.A3173
import Proof.Lib.Integral

/-- A317302: Square array T(n,k) = (n - 2)*(k - 1)*k/2 + k, with n >= 0, k >= 0, read by antidiagonals upwards. The name formula is an integer. -/
theorem A317302.anchor (n : ℕ) :
    (A317302 n : ℚ) = (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 2) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ) := by
  have hE : (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 2) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ) = ((4 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 - (SequenceMachineLib.triCol n : ℤ) ^ 3 - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 4 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 - (SequenceMachineLib.triCol n : ℤ) ^ 3 - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 4 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 - (SequenceMachineLib.triCol n : ℤ) ^ 3 - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 := by omega
  have hq : (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 2) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 4 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 - (SequenceMachineLib.triCol n : ℤ) ^ 3 - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 = z * 2)
  simp only [A317302, A317302.P16751757954040107891.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

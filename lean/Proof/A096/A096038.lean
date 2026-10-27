import Prog.A096.A0960
import Proof.Lib.Integral

/-- A096038: Triangle T(n,m) = (3*n^2-3*m^2+5*m-4+n)/2 read by rows. The name formula is an integer. -/
theorem A096038.anchor (n : ℕ) :
    (A096038 (n + 1) : ℚ) = ((3 * (SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - (3 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ) + (5 * (SequenceMachineLib.triCol n + 1) : ℤ) - 4 + (SequenceMachineLib.triRow n + 1 : ℤ) : ℚ) / 2 := by
  have hE : ((3 * (SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - (3 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ) + (5 * (SequenceMachineLib.triCol n + 1) : ℤ) - 4 + (SequenceMachineLib.triRow n + 1 : ℤ) : ℚ) / 2 = ((2 - (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 7 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 7 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 7 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : ((3 * (SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - (3 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ) + (5 * (SequenceMachineLib.triCol n + 1) : ℤ) - 4 + (SequenceMachineLib.triRow n + 1 : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 7 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A096038, Nat.add_sub_cancel, A096038.P12589696669190235938.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A049.A0497
import Proof.Lib.Integral

/-- A049777: Triangular array read by rows: T(m,n) = n + n+1 + ... + m = (m+n)(m-n+1)/2. The name formula is an integer. -/
theorem A049777.anchor (n : ℕ) :
    (A049777 (n + 1) : ℚ) = ((SequenceMachineLib.triRow n + 1 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triRow n + 1 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2 = ((2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : ((SequenceMachineLib.triRow n + 1 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A049777, Nat.add_sub_cancel, A049777.P4000231892958571332.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

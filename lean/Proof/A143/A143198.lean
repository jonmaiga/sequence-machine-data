import Prog.A143.A1431
import Proof.Lib.Integral

/-- A143198: Triangle read by rows T(n, k) = n + (n+1)*(k-1)*(k+2)/2. The name formula is an integer. -/
theorem A143198.anchor (n : ℕ) :
    (A143198 n : ℚ) = (SequenceMachineLib.triRow n : ℚ) + ((SequenceMachineLib.triRow n + 1 : ℤ) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n + 2 : ℤ) : ℚ) / 2 := by
  have hE : (SequenceMachineLib.triRow n : ℚ) + ((SequenceMachineLib.triRow n + 1 : ℤ) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n + 2 : ℤ) : ℚ) / 2 = ((-2 + (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ -2 + (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ -2 + (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 := by omega
  have hq : (SequenceMachineLib.triRow n : ℚ) + ((SequenceMachineLib.triRow n + 1 : ℤ) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n + 2 : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -2 + (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 = z * 2)
  simp only [A143198, A143198.P3772274350902887636.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A101.A1013
import Proof.Lib.Integral

/-- A101321: Table T(n,m) = 1 + n*m*(m+1)/2 read by antidiagonals: centered polygonal numbers. The name formula is an integer. -/
theorem A101321.anchor (n : ℕ) :
    (A101321 n : ℚ) = 1 + ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2 := by
  have hE : 1 + ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2 = ((2 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) := by omega
  have hq : 1 + ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) = z * 2)
  simp only [A101321, A101321.P14393802291670128662.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

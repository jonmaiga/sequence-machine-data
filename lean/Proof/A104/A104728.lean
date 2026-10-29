import Prog.A104.A1047
import Proof.Lib.Integral

/-- A104728: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k-2+2*n)/2 read by rows, 1<=k<=n. The name formula is an integer. -/
theorem A104728.anchor (n : ℕ) :
    (A104728 (n + 1) : ℚ) = (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 + (2 * (SequenceMachineLib.triRow n + 1) : ℤ)) : ℚ) / 2 := by
  have hE : (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 + (2 * (SequenceMachineLib.triRow n + 1) : ℤ)) : ℚ) / 2 = ((2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 7 * (SequenceMachineLib.triRow n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 7 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 7 * (SequenceMachineLib.triRow n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 7 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 7 * (SequenceMachineLib.triRow n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 7 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 := by omega
  have hq : (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 + (2 * (SequenceMachineLib.triRow n + 1) : ℤ)) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 7 * (SequenceMachineLib.triRow n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 7 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 = z * 2)
  simp only [A104728, Nat.add_sub_cancel, A104728.P11054080648943115040.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

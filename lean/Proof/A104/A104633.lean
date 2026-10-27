import Prog.A104.A1046
import Proof.Lib.Integral

/-- A104633: Triangle T(n,k) = k*(k-n-1)*(k-n-2)/2 read by rows, 1<=k<=n. The name formula is an integer. -/
theorem A104633.anchor (n : ℕ) :
    (A104633 (n + 1) : ℚ) = ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) - 1) * ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) - 2) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) - 1) * ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) - 2) : ℚ) / 2 = ((2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) := by omega
  have hq : ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) - 1) * ((SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ) - 2) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) = z * 2)
  simp only [A104633, Nat.add_sub_cancel, A104633.P310418357099449208.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

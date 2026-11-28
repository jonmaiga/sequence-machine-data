import Prog.A095.A0958
import Proof.Lib.Integral

/-- A095871: Triangle read by rows: T(n,k)=(n+1)*(3*(n+1)-1)/2-k*(3*k-1)/2. The name formula is an integer. -/
theorem A095871.anchor (n : ℕ) :
    (A095871 (n + 1) : ℚ) = ((SequenceMachineLib.triRow n + 1 : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - 1) : ℚ) / 2 - ((SequenceMachineLib.triCol n : ℤ) * ((3 * SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triRow n + 1 : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - 1) : ℚ) / 2 - ((SequenceMachineLib.triCol n : ℤ) * ((3 * SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 = ((2 + (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : ((SequenceMachineLib.triRow n + 1 : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - 1) : ℚ) / 2 - ((SequenceMachineLib.triCol n : ℤ) * ((3 * SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + (SequenceMachineLib.triCol n : ℤ) - 3 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A095871, Nat.add_sub_cancel, A095871.P4845579394584075715.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

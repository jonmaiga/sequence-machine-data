import Prog.A351.A3511
import Proof.Lib.Integral

/-- A351153: Triangle read by rows: T(n, k) = n*(k - 1) - k*(k - 3)/2 with 0 < k <= n. The name formula is an integer. -/
theorem A351153.anchor (n : ℕ) :
    (A351153 (n + 1) : ℚ) = ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triCol n : ℚ) - ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triCol n : ℤ) - 2) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triCol n : ℚ) - ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triCol n : ℤ) - 2) : ℚ) / 2 = ((2 + 3 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + 3 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + 3 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) := by omega
  have hq : ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triCol n : ℚ) - ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triCol n : ℤ) - 2) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + 3 * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) = z * 2)
  simp only [A351153, Nat.add_sub_cancel, A351153.P8723488756719176141.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

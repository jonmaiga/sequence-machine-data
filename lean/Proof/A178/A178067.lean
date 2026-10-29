import Prog.A178.A1780
import Proof.Lib.Integral

/-- A178067: Triangle read by rows: T(n,k) = (n^2 + k)*(n - k + 1)/2. The name formula is an integer. -/
theorem A178067.anchor (n : ℕ) :
    (A178067 (n + 1) : ℚ) = (((SequenceMachineLib.triRow n + 1) ^ 2 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2 := by
  have hE : (((SequenceMachineLib.triRow n + 1) ^ 2 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2 = ((2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 4 * (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 3 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 4 * (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 4 * (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 3 := by omega
  have hq : (((SequenceMachineLib.triRow n + 1) ^ 2 + (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 4 * (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 3 = z * 2)
  simp only [A178067, Nat.add_sub_cancel, A178067.P9341501526283460798.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

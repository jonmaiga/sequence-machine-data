import Prog.A132.A1321
import Proof.Lib.Integral

/-- A132118: Triangle read by rows: T(n,k) = n*(n-1)/2 + 2*k - 1. The name formula is an integer. -/
theorem A132118.anchor (n : ℕ) :
    (A132118 (n + 1) : ℚ) = ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triRow n : ℚ) / 2 + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) - 1 := by
  have hE : ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triRow n : ℚ) / 2 + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) - 1 = ((2 + 4 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + 4 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + 4 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : ((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triRow n : ℚ) / 2 + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) - 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + 4 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A132118, Nat.add_sub_cancel, A132118.P1363662735479864841.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A141.A1414
import Proof.Lib.Integral

/-- A141418: Triangle read by rows: T(n,k) = k * (2*n - k - 1) / 2, 1 <= k <= n. The name formula is an integer. -/
theorem A141418.anchor (n : ℕ) :
    (A141418 (n + 1) : ℚ) = ((SequenceMachineLib.triCol n + 1 : ℤ) * ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) - 1) : ℚ) / 2 := by
  have hE : ((SequenceMachineLib.triCol n + 1 : ℤ) * ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) - 1) : ℚ) / 2 = ((-(SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ -(SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ -(SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) := by omega
  have hq : ((SequenceMachineLib.triCol n + 1 : ℤ) * ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -(SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) ^ 2 + 2 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) = z * 2)
  simp only [A141418, Nat.add_sub_cancel, A141418.P16103118710698348226.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

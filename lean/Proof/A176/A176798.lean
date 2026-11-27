import Prog.A176.A1767
import Proof.Lib.Integral

/-- A176798: Triangle read by rows: T(n,m)=1 + n*(2*m + 1 + n)/2, 0<=m<=n. The name formula is an integer. -/
theorem A176798.anchor (n : ℕ) :
    (A176798 n : ℚ) = 1 + (SequenceMachineLib.triRow n * (2 * SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n) : ℚ) / 2 := by
  have hE : 1 + (SequenceMachineLib.triRow n * (2 * SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n) : ℚ) / 2 = ((2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : 1 + (SequenceMachineLib.triRow n * (2 * SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A176798, A176798.P12019709796135081810.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

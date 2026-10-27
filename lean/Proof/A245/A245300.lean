import Prog.A245.A2453
import Proof.Lib.Integral

/-- A245300: Triangle T(n,k) = (n+k)*(n+k+1)/2 + k, 0 <= k <= n, read by rows. The name formula is an integer. -/
theorem A245300.anchor (n : ℕ) :
    (A245300 n : ℚ) = ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ) := by
  have hE : ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ) = ((3 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 3 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 3 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 3 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A245300, A245300.P9556212720038646879.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

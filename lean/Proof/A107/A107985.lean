import Prog.A107.A1079
import Proof.Lib.Integral

/-- A107985: Triangle read by rows: T(n,k) = (k+1)*(n+2)*(n-k+1)/2 for 0 <= k <= n. The name formula is an integer. -/
theorem A107985.anchor (n : ℕ) :
    (A107985 n : ℚ) = (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 2) : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2 := by
  have hE : (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 2) : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2 = ((2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) := by omega
  have hq : (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 2) : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) = z * 2)
  simp only [A107985, A107985.P18009679851518096281.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

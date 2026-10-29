import Prog.A113.A1135
import Proof.Lib.Integral

/-- A113582: Triangle T(n,m) read by rows: T(n,m) = (n - m)*(n - m + 1)*m*(m + 1)/4 + 1. The name formula is an integer. -/
theorem A113582.anchor (n : ℕ) :
    (A113582 (n + 1) : ℚ) = (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 4 + 1 := by
  have hE : (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 4 + 1 = ((4 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 4 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 : ℤ) : ℚ) / 4 := by push_cast; ring
  have h4 : (4 : ℤ) ∣ 4 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 4 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 4) = x
      generalize (SequenceMachineLib.triCol n : ZMod 4) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (4 : ℤ) ∣ 4 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 4 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 := by omega
  have hq : (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 4 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 4 - (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triCol n : ℤ) ^ 4 + (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 = z * 4)
  simp only [A113582, Nat.add_sub_cancel, A113582.P7154011532379744885.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

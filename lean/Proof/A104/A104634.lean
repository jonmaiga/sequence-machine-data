import Prog.A104.A1046
import Proof.Lib.Integral

/-- A104634: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k+2*n)/6, 1<=k<=n. The name formula is an integer. -/
theorem A104634.anchor (n : ℕ) :
    (A104634 (n + 1) : ℚ) = (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n + 1 : ℤ)) * (SequenceMachineLib.triCol n + 1 + 2 * (SequenceMachineLib.triRow n + 1) : ℤ) : ℚ) / 6 := by
  have hE : (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n + 1 : ℤ)) * (SequenceMachineLib.triCol n + 1 + 2 * (SequenceMachineLib.triRow n + 1) : ℤ) : ℚ) / 6 = ((6 - 7 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 13 * (SequenceMachineLib.triRow n : ℤ) - 9 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 6 - 7 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 13 * (SequenceMachineLib.triRow n : ℤ) - 9 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  have h3 : (3 : ℤ) ∣ 6 - 7 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 13 * (SequenceMachineLib.triRow n : ℤ) - 9 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 3) = x
      generalize (SequenceMachineLib.triCol n : ZMod 3) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 6 - 7 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 13 * (SequenceMachineLib.triRow n : ℤ) - 9 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 := by omega
  have hq : (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n + 1 : ℤ)) * (SequenceMachineLib.triCol n + 1 + 2 * (SequenceMachineLib.triRow n + 1) : ℤ) : ℚ) / 6 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 6 - 7 * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 3 + 13 * (SequenceMachineLib.triRow n : ℤ) - 9 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 - 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 = z * 6)
  simp only [A104634, Nat.add_sub_cancel, A104634.P15724108096827104955.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

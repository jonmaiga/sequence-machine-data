import Prog.A342.A3421
import Proof.Lib.Integral

/-- A342138: Array T(n,k) = (n+k)*(3*n+3*k-5)/2 + (3*k+1), read by ascending antidiagonals. The name formula is an integer. -/
theorem A342138.anchor (n : ℕ) :
    (A342138 n : ℚ) = (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)) * (3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + (3 * SequenceMachineLib.triCol n : ℤ) - 5) : ℚ) / 2 + (3 * SequenceMachineLib.triCol n + 1 : ℚ) := by
  have hE : (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)) * (3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + (3 * SequenceMachineLib.triCol n : ℤ) - 5) : ℚ) / 2 + (3 * SequenceMachineLib.triCol n + 1 : ℚ) = ((2 + 6 * (SequenceMachineLib.triCol n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + 6 * (SequenceMachineLib.triCol n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + 6 * (SequenceMachineLib.triCol n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)) * (3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + (3 * SequenceMachineLib.triCol n : ℤ) - 5) : ℚ) / 2 + (3 * SequenceMachineLib.triCol n + 1 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + 6 * (SequenceMachineLib.triCol n : ℤ) - 5 * (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A342138, A342138.P15793587741709844545.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

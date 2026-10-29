import Prog.A107.A1079
import Proof.Lib.Integral

/-- A107972: Triangle read by rows: T(n,k) = (k+1)(k+2)(n+2)(3n-2k+3)/12 for 0<=k<=n. The name formula is an integer. -/
theorem A107972.anchor (n : ℕ) :
    (A107972 n : ℚ) = (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 2) * (SequenceMachineLib.triRow n + 2) : ℤ) * ((3 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + 3) : ℚ) / 12 := by
  have hE : (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 2) * (SequenceMachineLib.triRow n + 2) : ℤ) * ((3 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + 3) : ℚ) / 12 = ((12 + 10 * (SequenceMachineLib.triCol n : ℤ) - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 4 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 18 * (SequenceMachineLib.triRow n : ℤ) + 23 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 : ℤ) : ℚ) / 12 := by push_cast; ring
  have h4 : (4 : ℤ) ∣ 12 + 10 * (SequenceMachineLib.triCol n : ℤ) - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 4 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 18 * (SequenceMachineLib.triRow n : ℤ) + 23 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 4) = x
      generalize (SequenceMachineLib.triCol n : ZMod 4) = y
      revert x y
      decide)
  have h3 : (3 : ℤ) ∣ 12 + 10 * (SequenceMachineLib.triCol n : ℤ) - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 4 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 18 * (SequenceMachineLib.triRow n : ℤ) + 23 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 3) = x
      generalize (SequenceMachineLib.triCol n : ZMod 3) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ 12 + 10 * (SequenceMachineLib.triCol n : ℤ) - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 4 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 18 * (SequenceMachineLib.triRow n : ℤ) + 23 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 := by omega
  have hq : (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 2) * (SequenceMachineLib.triRow n + 2) : ℤ) * ((3 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + 3) : ℚ) / 12 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 12 + 10 * (SequenceMachineLib.triCol n : ℤ) - 6 * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 4 * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 18 * (SequenceMachineLib.triRow n : ℤ) + 23 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 2 - 2 * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triCol n : ℤ) ^ 3 + 6 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 9 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) ^ 2 = z * 12)
  simp only [A107972, A107972.P2706246706227756376.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

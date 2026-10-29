import Prog.A356.A3567
import Proof.Lib.Integral

/-- A356754: Triangle read by rows: T(n,k) = ((n-1)*(n+2))/2 + 2*k. The name formula is an integer. -/
theorem A356754.anchor (n : ℕ) :
    (A356754 (n + 1) : ℚ) = (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) := by
  have hE : (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) = ((4 + 4 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 4 + 4 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 4 + 4 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 4 + 4 * (SequenceMachineLib.triCol n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A356754, Nat.add_sub_cancel, A356754.P15553405362605267409.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

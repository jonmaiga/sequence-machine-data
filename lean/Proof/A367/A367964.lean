import Prog.A367.A3679
import Proof.Lib.Integral

/-- A367964: Triangle of 2-parameter triangular numbers, read by rows. T(n, k) = (n*(n + 1) + k*(k + 1)) / 2. The name formula is an integer. -/
theorem A367964.anchor (n : ℕ) :
    (A367964 n : ℚ) = (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) + SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2 := by
  have hE : (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) + SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2 = (((SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 := by omega
  have hq : (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) + SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) ^ 2 + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ) ^ 2 = z * 2)
  simp only [A367964, A367964.P15333321417896263776.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

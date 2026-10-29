import Prog.A132.A1321
import Proof.Lib.Integral

/-- A132121: Triangle read by rows: T(n,k)=n*(n+1)*((3*k+2)*n+1)/6, 0<=k<=n. The name formula is an integer. -/
theorem A132121.anchor (n : ℕ) :
    (A132121 n : ℚ) = (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) * ((3 * SequenceMachineLib.triCol n + 2) * SequenceMachineLib.triRow n + 1) : ℚ) / 6 := by
  have hE : (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) * ((3 * SequenceMachineLib.triCol n + 2) * SequenceMachineLib.triRow n + 1) : ℚ) / 6 = (((SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 3 * (SequenceMachineLib.triCol n : ℤ) : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 3 * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 2) = x
      generalize (SequenceMachineLib.triCol n : ZMod 2) = y
      revert x y
      decide)
  have h3 : (3 : ℤ) ∣ (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 3 * (SequenceMachineLib.triCol n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      generalize (SequenceMachineLib.triRow n : ZMod 3) = x
      generalize (SequenceMachineLib.triCol n : ZMod 3) = y
      revert x y
      decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 3 * (SequenceMachineLib.triCol n : ℤ) := by omega
  have hq : (SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) * ((3 * SequenceMachineLib.triCol n + 2) * SequenceMachineLib.triRow n + 1) : ℚ) / 6 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (SequenceMachineLib.triRow n : ℤ) + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 2 * (SequenceMachineLib.triCol n : ℤ) + 2 * (SequenceMachineLib.triRow n : ℤ) ^ 3 + 3 * (SequenceMachineLib.triRow n : ℤ) ^ 3 * (SequenceMachineLib.triCol n : ℤ) = z * 6)
  simp only [A132121, A132121.P4850799735873907847.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

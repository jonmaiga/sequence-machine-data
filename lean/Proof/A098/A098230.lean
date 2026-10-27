import Prog.A098.A0982
import Proof.Lib.Integral

/-- A098230: 75-gonal numbers: a(n) = n*(73*n-71)/2. The name formula is an integer. -/
theorem A098230.anchor (n : ℕ) :
    (A098230 n : ℚ) = ((n : ℤ) * ((73 * n : ℤ) - 71) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((n : ℤ) * ((73 * n : ℤ) - 71) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((n : ℤ) * ((73 * n : ℤ) - 71) : ℤ) := by omega
  have hq : ((n : ℤ) * ((73 * n : ℤ) - 71) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((73 * n : ℤ) - 71) : ℤ) = z * 2)
  simp only [A098230, A098230.P13136546891317126791.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

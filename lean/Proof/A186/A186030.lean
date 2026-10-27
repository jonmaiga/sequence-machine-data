import Prog.A186.A1860
import Proof.Lib.Integral

/-- A186030: a(n) = n*(13*n-3)/2. The name formula is an integer. -/
theorem A186030.anchor (n : ℕ) :
    (A186030 n : ℚ) = ((n : ℤ) * ((13 * n : ℤ) - 3) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((n : ℤ) * ((13 * n : ℤ) - 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((n : ℤ) * ((13 * n : ℤ) - 3) : ℤ) := by omega
  have hq : ((n : ℤ) * ((13 * n : ℤ) - 3) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((13 * n : ℤ) - 3) : ℤ) = z * 2)
  simp only [A186030, A186030.P5392890000206512431.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

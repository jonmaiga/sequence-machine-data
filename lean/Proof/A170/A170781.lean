import Prog.A170.A1707
import Proof.Lib.Integral

/-- A170781: a(n) = n^8*(n^9 + 1)/2. The name formula is an integer. -/
theorem A170781.anchor (n : ℕ) :
    (A170781 n : ℚ) = (n ^ 8 * (n ^ 9 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 8 * (n ^ 9 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 8 * (n ^ 9 + 1) : ℤ) := by omega
  have hq : (n ^ 8 * (n ^ 9 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 8 * (n ^ 9 + 1) : ℤ) = z * 2)
  simp only [A170781, A170781.P13674484255828465593.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

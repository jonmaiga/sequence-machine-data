import Prog.A047.A0477
import Proof.Lib.Integral

/-- A047786: a(n) = (9*n^4 + 4*n^3 - n)/2. The name formula is an integer. -/
theorem A047786.anchor (n : ℕ) :
    (A047786 n : ℚ) = ((9 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((9 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((9 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) := by omega
  have hq : ((9 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((9 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℤ) = z * 2)
  simp only [A047786, A047786.P6967672226850323160.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A081.A0814
import Proof.Lib.Integral

/-- A081441: a(n) = (2*n^3 - n^2 - n + 2)/2. The name formula is an integer. -/
theorem A081441.anchor (n : ℕ) :
    (A081441 n : ℚ) = ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (n : ℤ) + 2 : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (n : ℤ) + 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (n : ℤ) + 2 : ℤ) := by omega
  have hq : ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (n : ℤ) + 2 : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (n : ℤ) + 2 : ℤ) = z * 2)
  simp only [A081441, A081441.P9575560521250186220.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

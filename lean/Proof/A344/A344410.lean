import Prog.A344.A3444
import Proof.Lib.Integral

/-- A344410: a(n) = (3*n^2 - 1) * (3*n^2 - 2) * (3*n^3 - 3*n + 1)/2. The name formula is an integer. -/
theorem A344410.anchor (n : ℕ) :
    (A344410 n : ℚ) = (((3 * n ^ 2 : ℤ) - 1) * ((3 * n ^ 2 : ℤ) - 2) * ((3 * n ^ 3 : ℤ) - (3 * n : ℤ) + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (((3 * n ^ 2 : ℤ) - 1) * ((3 * n ^ 2 : ℤ) - 2) * ((3 * n ^ 3 : ℤ) - (3 * n : ℤ) + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (((3 * n ^ 2 : ℤ) - 1) * ((3 * n ^ 2 : ℤ) - 2) * ((3 * n ^ 3 : ℤ) - (3 * n : ℤ) + 1) : ℤ) := by omega
  have hq : (((3 * n ^ 2 : ℤ) - 1) * ((3 * n ^ 2 : ℤ) - 2) * ((3 * n ^ 3 : ℤ) - (3 * n : ℤ) + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((3 * n ^ 2 : ℤ) - 1) * ((3 * n ^ 2 : ℤ) - 2) * ((3 * n ^ 3 : ℤ) - (3 * n : ℤ) + 1) : ℤ) = z * 2)
  simp only [A344410, A344410.P9614244077895157848.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

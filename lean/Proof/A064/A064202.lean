import Prog.A064.A0642
import Proof.Lib.Integral

/-- A064202: a(n) = n*(n+1)*(n+2)*(2*n^3 + 6*n^2 + 7*n - 3)/36. The name formula is an integer. -/
theorem A064202.anchor (n : ℕ) :
    (A064202 n : ℚ) = ((n * (n + 1) * (n + 2) : ℤ) * ((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3) : ℚ) / 36 := by
  have h4 : (4 : ℤ) ∣ ((n * (n + 1) * (n + 2) : ℤ) * ((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n * (n + 1) * (n + 2) : ℤ) * ((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (36 : ℤ) ∣ ((n * (n + 1) * (n + 2) : ℤ) * ((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3) : ℤ) := by omega
  have hq : ((n * (n + 1) * (n + 2) : ℤ) * ((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3) : ℚ) / 36 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (n + 1) * (n + 2) : ℤ) * ((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3) : ℤ) = z * 36)
  simp only [A064202, A064202.P6093841460947549176.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

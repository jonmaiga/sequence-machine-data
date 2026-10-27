import Prog.A271.A2715
import Proof.Lib.Integral

/-- A271535: a(n) = ( n*(n + 1)*(2*n + 1)/6 )^2. The name formula is an integer. -/
theorem A271535.anchor (n : ℕ) :
    (A271535 n : ℚ) = ((n * (n + 1) * (2 * n + 1) : ℚ) / 6) ^ 2 := by
  have hE : ((n * (n + 1) * (2 * n + 1) : ℚ) / 6) ^ 2 = (((n : ℤ) ^ 2 + 6 * (n : ℤ) ^ 3 + 13 * (n : ℤ) ^ 4 + 12 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 : ℤ) : ℚ) / 36 := by push_cast; ring
  have h4 : (4 : ℤ) ∣ (n : ℤ) ^ 2 + 6 * (n : ℤ) ^ 3 + 13 * (n : ℤ) ^ 4 + 12 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ (n : ℤ) ^ 2 + 6 * (n : ℤ) ^ 3 + 13 * (n : ℤ) ^ 4 + 12 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (36 : ℤ) ∣ (n : ℤ) ^ 2 + 6 * (n : ℤ) ^ 3 + 13 * (n : ℤ) ^ 4 + 12 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 := by omega
  have hq : ((n * (n + 1) * (2 * n + 1) : ℚ) / 6) ^ 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n : ℤ) ^ 2 + 6 * (n : ℤ) ^ 3 + 13 * (n : ℤ) ^ 4 + 12 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 = z * 36)
  simp only [A271535, A271535.P3846666067483833786.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A076.A0767
import Proof.Lib.Integral

/-- A076758: a(n) = n*(n+1)^2*(2+n)*(3+2*n)*(19+8*n)/180. The name formula is an integer. -/
theorem A076758.anchor (n : ℕ) :
    (A076758 n : ℚ) = (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℚ) / 180 := by
  have h4 : (4 : ℤ) ∣ (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (180 : ℤ) ∣ (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℤ) := by omega
  have hq : (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℚ) / 180 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 1) ^ 2 * (2 + n) * (3 + 2 * n) * (19 + 8 * n) : ℤ) = z * 180)
  simp only [A076758, A076758.P8747128058039899245.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

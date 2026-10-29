import Prog.A114.A1142
import Proof.Lib.Integral

/-- A114243: a(n) = (n+1)*(n+2)^2*(n+3)*(n+4)*(3*n+5)/240. The name formula is an integer. -/
theorem A114243.anchor (n : ℕ) :
    (A114243 n : ℚ) = ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℚ) / 240 := by
  have h16 : (16 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (240 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℚ) / 240 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (3 * n + 5) : ℤ) = z * 240)
  simp only [A114243, A114243.P1043288665764533513.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

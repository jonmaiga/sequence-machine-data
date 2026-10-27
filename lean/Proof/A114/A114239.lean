import Prog.A114.A1142
import Proof.Lib.Integral

/-- A114239: a(n) = (n+1)(n+2)^3*(n+3)(n^2 + 4n + 5)/120. The name formula is an integer. -/
theorem A114239.anchor (n : ℕ) :
    (A114239 n : ℚ) = ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) ^ 3 * (n + 3) * (n ^ 2 + 4 * n + 5) : ℤ) = z * 120)
  simp only [A114239, A114239.P12593152605643686974.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

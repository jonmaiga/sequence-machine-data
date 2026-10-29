import Prog.A323.A3232
import Proof.Lib.Integral

/-- A323220: a(n) = n*(n + 5)*(n + 7)*(n + 10)/24 + 1. The name formula is an integer. -/
theorem A323220.anchor (n : ℕ) :
    (A323220 n : ℚ) = (n * (n + 5) * (n + 7) * (n + 10) : ℚ) / 24 + 1 := by
  have hE : (n * (n + 5) * (n + 7) * (n + 10) : ℚ) / 24 + 1 = ((24 + 350 * (n : ℤ) + 155 * (n : ℤ) ^ 2 + 22 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 : ℤ) : ℚ) / 24 := by push_cast; ring
  have h8 : (8 : ℤ) ∣ 24 + 350 * (n : ℤ) + 155 * (n : ℤ) ^ 2 + 22 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 24 + 350 * (n : ℤ) + 155 * (n : ℤ) ^ 2 + 22 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (24 : ℤ) ∣ 24 + 350 * (n : ℤ) + 155 * (n : ℤ) ^ 2 + 22 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 := by omega
  have hq : (n * (n + 5) * (n + 7) * (n + 10) : ℚ) / 24 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 24 + 350 * (n : ℤ) + 155 * (n : ℤ) ^ 2 + 22 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 = z * 24)
  simp only [A323220, A323220.P13662285328539052818.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

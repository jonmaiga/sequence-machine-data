import Prog.A181.A1813
import Proof.Lib.Integral

/-- A181343: a(n) = (35*n^4 - 35*n^3 + 55*n^2 - 25*n + 6)/6. The name formula is an integer. -/
theorem A181343.anchor (n : ℕ) :
    (A181343 (n + 1) : ℚ) = ((35 * (n + 1) ^ 4 : ℤ) - (35 * (n + 1) ^ 3 : ℤ) + (55 * (n + 1) ^ 2 : ℤ) - (25 * (n + 1) : ℤ) + 6 : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((35 * (n + 1) ^ 4 : ℤ) - (35 * (n + 1) ^ 3 : ℤ) + (55 * (n + 1) ^ 2 : ℤ) - (25 * (n + 1) : ℤ) + 6 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((35 * (n + 1) ^ 4 : ℤ) - (35 * (n + 1) ^ 3 : ℤ) + (55 * (n + 1) ^ 2 : ℤ) - (25 * (n + 1) : ℤ) + 6 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((35 * (n + 1) ^ 4 : ℤ) - (35 * (n + 1) ^ 3 : ℤ) + (55 * (n + 1) ^ 2 : ℤ) - (25 * (n + 1) : ℤ) + 6 : ℤ) := by omega
  have hq : ((35 * (n + 1) ^ 4 : ℤ) - (35 * (n + 1) ^ 3 : ℤ) + (55 * (n + 1) ^ 2 : ℤ) - (25 * (n + 1) : ℤ) + 6 : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((35 * (n + 1) ^ 4 : ℤ) - (35 * (n + 1) ^ 3 : ℤ) + (55 * (n + 1) ^ 2 : ℤ) - (25 * (n + 1) : ℤ) + 6 : ℤ) = z * 6)
  simp only [A181343, Nat.add_sub_cancel, A181343.P16401128473370767170.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

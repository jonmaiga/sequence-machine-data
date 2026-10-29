import Prog.A232.A2324
import Proof.Lib.Integral

/-- A232495: a(n) = 9*n^3/2 - 21*n^2/2 + 8*n - 4. The name formula is an integer. -/
theorem A232495.anchor (n : ℕ) :
    (A232495 (n + 2) : ℚ) = (9 * (n + 2) ^ 3 : ℚ) / 2 - (21 * (n + 2) ^ 2 : ℚ) / 2 + (8 * (n + 2) : ℚ) - 4 := by
  have hE : (9 * (n + 2) ^ 3 : ℚ) / 2 - (21 * (n + 2) ^ 2 : ℚ) / 2 + (8 * (n + 2) : ℚ) - 4 = ((12 + 40 * (n : ℤ) + 33 * (n : ℤ) ^ 2 + 9 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 12 + 40 * (n : ℤ) + 33 * (n : ℤ) ^ 2 + 9 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 12 + 40 * (n : ℤ) + 33 * (n : ℤ) ^ 2 + 9 * (n : ℤ) ^ 3 := by omega
  have hq : (9 * (n + 2) ^ 3 : ℚ) / 2 - (21 * (n + 2) ^ 2 : ℚ) / 2 + (8 * (n + 2) : ℚ) - 4 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 12 + 40 * (n : ℤ) + 33 * (n : ℤ) ^ 2 + 9 * (n : ℤ) ^ 3 = z * 2)
  simp only [A232495, Nat.add_sub_cancel, A232495.P6182302967584083734.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

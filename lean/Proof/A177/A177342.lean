import Prog.A177.A1773
import Proof.Lib.Integral

/-- A177342: a(n) = (4*n^3-3*n^2+5*n-3)/3. The name formula is an integer. -/
theorem A177342.anchor (n : ℕ) :
    (A177342 (n + 1) : ℚ) = ((4 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 3 : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ ((4 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 3 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ ((4 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 3 : ℤ) := by omega
  have hq : ((4 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 3 : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((4 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 3 : ℤ) = z * 3)
  simp only [A177342, Nat.add_sub_cancel, A177342.P11458382800740035729.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

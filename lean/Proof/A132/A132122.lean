import Prog.A132.A1321
import Proof.Lib.Integral

/-- A132122: a(n) = n * (n+1)^2 * (3*n^2 + 4*n + 2) / 12. The name formula is an integer. -/
theorem A132122.anchor (n : ℕ) :
    (A132122 n : ℚ) = (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℚ) / 12 := by
  have h4 : (4 : ℤ) ∣ (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℤ) := by omega
  have hq : (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℚ) / 12 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℤ) = z * 12)
  simp only [A132122, A132122.P2249693330651238976.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

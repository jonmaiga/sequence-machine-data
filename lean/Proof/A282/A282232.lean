import Prog.A282.A2822
import Proof.Lib.Integral

/-- A282232: a(n) = ((3*n + 1)^6 - 1)/9. The name formula is an integer. -/
theorem A282232.anchor (n : ℕ) :
    (A282232 n : ℚ) = (((3 * n + 1) ^ 6 : ℤ) - 1 : ℚ) / 9 := by
  have h9 : (9 : ℤ) ∣ (((3 * n + 1) ^ 6 : ℤ) - 1 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (9 : ℤ) ∣ (((3 * n + 1) ^ 6 : ℤ) - 1 : ℤ) := by omega
  have hq : (((3 * n + 1) ^ 6 : ℤ) - 1 : ℚ) / 9 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((3 * n + 1) ^ 6 : ℤ) - 1 : ℤ) = z * 9)
  simp only [A282232, A282232.P5716533033109574785.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

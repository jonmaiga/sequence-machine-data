import Prog.A073.A0733
import Proof.Lib.Integral

/-- A073351: a(n) = n^2*(n + 1)*(2*n + 1)^2*(7*n + 1)/36. The name formula is an integer. -/
theorem A073351.anchor (n : ℕ) :
    (A073351 n : ℚ) = (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℚ) / 36 := by
  have h4 : (4 : ℤ) ∣ (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (36 : ℤ) ∣ (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℤ) := by omega
  have hq : (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℚ) / 36 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 2 * (n + 1) * (2 * n + 1) ^ 2 * (7 * n + 1) : ℤ) = z * 36)
  simp only [A073351, A073351.P7414037357777152730.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

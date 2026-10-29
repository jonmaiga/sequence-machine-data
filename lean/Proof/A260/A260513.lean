import Prog.A260.A2605
import Proof.Lib.Integral

/-- A260513: a(n) = (8*n+13*n^3+3*n^5)/24; also the sum of triangular numbers taken in successive groups of increasing size (see Example). The name formula is an integer. -/
theorem A260513.anchor (n : ℕ) :
    (A260513 (n + 1) : ℚ) = (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℚ) / 24 := by
  have h8 : (8 : ℤ) ∣ (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (24 : ℤ) ∣ (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℤ) := by omega
  have hq : (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℚ) / 24 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℤ) = z * 24)
  simp only [A260513, Nat.add_sub_cancel, A260513.P318657554716321414.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A256.A2568
import Proof.Lib.Integral

/-- A256861: a(n) = n*(n + 1)*(n + 2)*(n + 3)*(n + 4)*(n^2 - n + 6)/720. The name formula is an integer. -/
theorem A256861.anchor (n : ℕ) :
    (A256861 (n + 1) : ℚ) = (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℚ) / 720 := by
  have h16 : (16 : ℤ) ∣ (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (720 : ℤ) ∣ (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℤ) := by omega
  have hq : (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℚ) / 720 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 6) : ℤ) = z * 720)
  simp only [A256861, Nat.add_sub_cancel, A256861.P5535518076765391892.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

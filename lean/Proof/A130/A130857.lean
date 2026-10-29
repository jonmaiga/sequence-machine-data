import Prog.A130.A1308
import Proof.Lib.Integral

/-- A130857: a(n) = (n-1)*n*(n+1)*(n+2)*(2*n+11)/120. The name formula is an integer. -/
theorem A130857.anchor (n : ℕ) :
    (A130857 (n + 1) : ℚ) = (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℤ) := by omega
  have hq : (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 1) * (n + 2) * (n + 3) * (2 * (n + 1) + 11) : ℤ) = z * 120)
  simp only [A130857, Nat.add_sub_cancel, A130857.P3245722002303660237.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

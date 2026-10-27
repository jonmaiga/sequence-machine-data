import Prog.A131.A1312
import Proof.Lib.Integral

/-- A131211: a(n)=(n^5-n-30)/30. The name formula is an integer. -/
theorem A131211.anchor (n : ℕ) :
    (A131211 n : ℚ) = ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℚ) / 30 := by
  have h2 : (2 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (30 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℤ) := by omega
  have hq : ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℚ) / 30 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 5 : ℤ) - (n : ℤ) - 30 : ℤ) = z * 30)
  simp only [A131211, A131211.P7924276423477525152.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

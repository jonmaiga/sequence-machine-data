import Prog.A164.A1649
import Proof.Lib.Integral

/-- A164938: a(n) = (n^5 - n)/10, which is always an integer. The name formula is an integer. -/
theorem A164938.anchor (n : ℕ) :
    (A164938 (n + 1) : ℚ) = (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℚ) / 10 := by
  have h2 : (2 : ℤ) ∣ (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (10 : ℤ) ∣ (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℤ) := by omega
  have hq : (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℚ) / 10 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℤ) = z * 10)
  simp only [A164938, Nat.add_sub_cancel, A164938.P1069292342534480461.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

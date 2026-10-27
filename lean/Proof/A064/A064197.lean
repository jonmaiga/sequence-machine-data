import Prog.A064.A0641
import Proof.Lib.Integral

/-- A064197: a(n) = 27*(n-1)*(n-2)*(n-3)*(3*n-8)/2. The name formula is an integer. -/
theorem A064197.anchor (n : ℕ) :
    (A064197 (n + 2) : ℚ) = ((27 * (n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) : ℤ) - 8) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((27 * (n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) : ℤ) - 8) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((27 * (n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) : ℤ) - 8) : ℤ) := by omega
  have hq : ((27 * (n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) : ℤ) - 8) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((27 * (n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) : ℤ) - 8) : ℤ) = z * 2)
  simp only [A064197, Nat.add_sub_cancel, A064197.P5681134733550556333.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

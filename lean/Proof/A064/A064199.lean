import Prog.A064.A0641
import Proof.Lib.Integral

/-- A064199: a(n) = 9*(n-2)^2*(n^2-2*n-1)/2. The name formula is an integer. -/
theorem A064199.anchor (n : ℕ) :
    (A064199 (n + 2) : ℚ) = ((9 * n ^ 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) - 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((9 * n ^ 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((9 * n ^ 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) - 1) : ℤ) := by omega
  have hq : ((9 * n ^ 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((9 * n ^ 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) - 1) : ℤ) = z * 2)
  simp only [A064199, Nat.add_sub_cancel, A064199.P3522908506873654562.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

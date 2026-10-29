import Prog.A064.A0641
import Proof.Lib.Integral

/-- A064195: a(n) = 3*(n-2)*(n-3)*(3*n^2-9)*(3*n^2-9*n-5)/2. The name formula is an integer. -/
theorem A064195.anchor (n : ℕ) :
    (A064195 (n + 2) : ℚ) = ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - 9) * ((3 * (n + 2) ^ 2 : ℤ) - (9 * (n + 2) : ℤ) - 5) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - 9) * ((3 * (n + 2) ^ 2 : ℤ) - (9 * (n + 2) : ℤ) - 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - 9) * ((3 * (n + 2) ^ 2 : ℤ) - (9 * (n + 2) : ℤ) - 5) : ℤ) := by omega
  have hq : ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - 9) * ((3 * (n + 2) ^ 2 : ℤ) - (9 * (n + 2) : ℤ) - 5) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - 9) * ((3 * (n + 2) ^ 2 : ℤ) - (9 * (n + 2) : ℤ) - 5) : ℤ) = z * 2)
  simp only [A064195, Nat.add_sub_cancel, A064195.P13824007065003240540.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A064.A0641
import Proof.Lib.Integral

/-- A064198: a(n) = 3*(n-2)*(n-3)*(3*n^2-3*n-8)/2. The name formula is an integer. -/
theorem A064198.anchor (n : ℕ) :
    (A064198 (n + 2) : ℚ) = ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) - 8) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) - 8) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) - 8) : ℤ) := by omega
  have hq : ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) - 8) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) - 8) : ℤ) = z * 2)
  simp only [A064198, Nat.add_sub_cancel, A064198.P1160414185973349492.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A172.A1720
import Proof.Lib.Integral

/-- A172076: a(n) = n*(n+1)*(14*n-11)/6. The name formula is an integer. -/
theorem A172076.anchor (n : ℕ) :
    (A172076 n : ℚ) = ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℤ) := by omega
  have hq : ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (n + 1) : ℤ) * ((14 * n : ℤ) - 11) : ℤ) = z * 6)
  simp only [A172076, A172076.P1383740934166208424.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

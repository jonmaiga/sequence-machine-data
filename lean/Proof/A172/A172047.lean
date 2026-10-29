import Prog.A172.A1720
import Proof.Lib.Integral

/-- A172047: a(n) = n*(n+1)*(15*n^2-n-8)/12. The name formula is an integer. -/
theorem A172047.anchor (n : ℕ) :
    (A172047 n : ℚ) = ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℚ) / 12 := by
  have h4 : (4 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℤ) := by omega
  have hq : ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℚ) / 12 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (n + 1) : ℤ) * ((15 * n ^ 2 : ℤ) - (n : ℤ) - 8) : ℤ) = z * 12)
  simp only [A172047, A172047.P9757449435803970936.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

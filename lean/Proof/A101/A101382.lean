import Prog.A101.A1013
import Proof.Lib.Integral

/-- A101382: a(n) = n*(n+1)*(2*n^3 - n^2 + 2)^2/6. The name formula is an integer. -/
theorem A101382.anchor (n : ℕ) :
    (A101382 n : ℚ) = ((n * (n + 1) : ℤ) * ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) + 2) ^ 2 : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) + 2) ^ 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) + 2) ^ 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) + 2) ^ 2 : ℤ) := by omega
  have hq : ((n * (n + 1) : ℤ) * ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) + 2) ^ 2 : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (n + 1) : ℤ) * ((2 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) + 2) ^ 2 : ℤ) = z * 6)
  simp only [A101382, A101382.P9177886643032851565.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

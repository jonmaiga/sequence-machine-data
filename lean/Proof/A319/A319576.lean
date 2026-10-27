import Prog.A319.A3195
import Proof.Lib.Integral

/-- A319576: a(n) = (4/15)*n*(n - 1)*(n^3 - 9*n^2 + 26*n - 9). The name formula is an integer. -/
theorem A319576.anchor (n : ℕ) :
    (A319576 n : ℚ) = (4 : ℚ) / 15 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (26 * n : ℤ) - 9 : ℚ) := by
  have hE : (4 : ℚ) / 15 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (26 * n : ℤ) - 9 : ℚ) = ((36 * (n : ℤ) - 140 * (n : ℤ) ^ 2 + 140 * (n : ℤ) ^ 3 - 40 * (n : ℤ) ^ 4 + 4 * (n : ℤ) ^ 5 : ℤ) : ℚ) / 15 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 36 * (n : ℤ) - 140 * (n : ℤ) ^ 2 + 140 * (n : ℤ) ^ 3 - 40 * (n : ℤ) ^ 4 + 4 * (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ 36 * (n : ℤ) - 140 * (n : ℤ) ^ 2 + 140 * (n : ℤ) ^ 3 - 40 * (n : ℤ) ^ 4 + 4 * (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (15 : ℤ) ∣ 36 * (n : ℤ) - 140 * (n : ℤ) ^ 2 + 140 * (n : ℤ) ^ 3 - 40 * (n : ℤ) ^ 4 + 4 * (n : ℤ) ^ 5 := by omega
  have hq : (4 : ℚ) / 15 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (26 * n : ℤ) - 9 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 36 * (n : ℤ) - 140 * (n : ℤ) ^ 2 + 140 * (n : ℤ) ^ 3 - 40 * (n : ℤ) ^ 4 + 4 * (n : ℤ) ^ 5 = z * 15)
  simp only [A319576, A319576.P16722743822054633773.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

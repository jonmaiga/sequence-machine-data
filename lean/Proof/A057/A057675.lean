import Prog.A057.A0576
import Proof.Lib.Integral

/-- A057675: a(n) = 1 - (5/6)*n + (5/2)*n^2 + (10/3)*n^3 + n^4. The name formula is an integer. -/
theorem A057675.anchor (n : ℕ) :
    (A057675 n : ℚ) = 1 - (5 : ℚ) / 6 * (n : ℚ) + (5 : ℚ) / 2 * (n ^ 2 : ℚ) + (10 : ℚ) / 3 * (n ^ 3 : ℚ) + (n ^ 4 : ℚ) := by
  have hE : 1 - (5 : ℚ) / 6 * (n : ℚ) + (5 : ℚ) / 2 * (n ^ 2 : ℚ) + (10 : ℚ) / 3 * (n ^ 3 : ℚ) + (n ^ 4 : ℚ) = ((6 - 5 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 20 * (n : ℤ) ^ 3 + 6 * (n : ℤ) ^ 4 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 6 - 5 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 20 * (n : ℤ) ^ 3 + 6 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 6 - 5 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 20 * (n : ℤ) ^ 3 + 6 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 6 - 5 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 20 * (n : ℤ) ^ 3 + 6 * (n : ℤ) ^ 4 := by omega
  have hq : 1 - (5 : ℚ) / 6 * (n : ℚ) + (5 : ℚ) / 2 * (n ^ 2 : ℚ) + (10 : ℚ) / 3 * (n ^ 3 : ℚ) + (n ^ 4 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 6 - 5 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 20 * (n : ℤ) ^ 3 + 6 * (n : ℤ) ^ 4 = z * 6)
  simp only [A057675, A057675.P2630206491767238085.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

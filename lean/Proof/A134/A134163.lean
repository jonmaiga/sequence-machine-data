import Prog.A134.A1341
import Proof.Lib.Integral

/-- A134163: a(n) = 1 + 12*n + 81*n^3 + n*(105*n + 81*n^3)/2. The name formula is an integer. -/
theorem A134163.anchor (n : ℕ) :
    (A134163 n : ℚ) = (1 + 12 * n + 81 * n ^ 3 : ℚ) + (n * (105 * n + 81 * n ^ 3) : ℚ) / 2 := by
  have hE : (1 + 12 * n + 81 * n ^ 3 : ℚ) + (n * (105 * n + 81 * n ^ 3) : ℚ) / 2 = ((2 + 24 * (n : ℤ) + 105 * (n : ℤ) ^ 2 + 162 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + 24 * (n : ℤ) + 105 * (n : ℤ) ^ 2 + 162 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + 24 * (n : ℤ) + 105 * (n : ℤ) ^ 2 + 162 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 := by omega
  have hq : (1 + 12 * n + 81 * n ^ 3 : ℚ) + (n * (105 * n + 81 * n ^ 3) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + 24 * (n : ℤ) + 105 * (n : ℤ) ^ 2 + 162 * (n : ℤ) ^ 3 + 81 * (n : ℤ) ^ 4 = z * 2)
  simp only [A134163, A134163.P3502369401792325863.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

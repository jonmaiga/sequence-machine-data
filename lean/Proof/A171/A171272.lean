import Prog.A171.A1712
import Proof.Lib.Integral

/-- A171272: a(n) = 1 + 4*n*(1 + 2*n^2)/3. The name formula is an integer. -/
theorem A171272.anchor (n : ℕ) :
    (A171272 n : ℚ) = 1 + (4 * n * (1 + 2 * n ^ 2) : ℚ) / 3 := by
  have hE : 1 + (4 * n * (1 + 2 * n ^ 2) : ℚ) / 3 = ((3 + 4 * (n : ℤ) + 8 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 3 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 3 + 4 * (n : ℤ) + 8 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ 3 + 4 * (n : ℤ) + 8 * (n : ℤ) ^ 3 := by omega
  have hq : 1 + (4 * n * (1 + 2 * n ^ 2) : ℚ) / 3 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 3 + 4 * (n : ℤ) + 8 * (n : ℤ) ^ 3 = z * 3)
  simp only [A171272, A171272.P368184293404323137.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

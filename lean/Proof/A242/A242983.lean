import Prog.A242.A2429
import Proof.Lib.Integral

/-- A242983: a(n) = (n/2) * (n^3 - 2*n^2 - 2*n + 5). The name formula is an integer. -/
theorem A242983.anchor (n : ℕ) :
    (A242983 n : ℚ) = (n : ℚ) / 2 * ((n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 5 : ℚ) := by
  have hE : (n : ℚ) / 2 * ((n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 5 : ℚ) = ((5 * (n : ℤ) - 2 * (n : ℤ) ^ 2 - 2 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 5 * (n : ℤ) - 2 * (n : ℤ) ^ 2 - 2 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 5 * (n : ℤ) - 2 * (n : ℤ) ^ 2 - 2 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 := by omega
  have hq : (n : ℚ) / 2 * ((n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 5 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 5 * (n : ℤ) - 2 * (n : ℤ) ^ 2 - 2 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 = z * 2)
  simp only [A242983, A242983.P5343338815252454514.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

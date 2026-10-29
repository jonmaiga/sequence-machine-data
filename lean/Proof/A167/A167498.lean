import Prog.A167.A1674
import Proof.Lib.Integral

/-- A167498: a(n) = 6+32*n^2+8*n*(7+8*n^2)/3. The name formula is an integer. -/
theorem A167498.anchor (n : ℕ) :
    (A167498 n : ℚ) = (6 + 32 * n ^ 2 : ℚ) + (8 * n * (7 + 8 * n ^ 2) : ℚ) / 3 := by
  have hE : (6 + 32 * n ^ 2 : ℚ) + (8 * n * (7 + 8 * n ^ 2) : ℚ) / 3 = ((18 + 56 * (n : ℤ) + 96 * (n : ℤ) ^ 2 + 64 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 3 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 18 + 56 * (n : ℤ) + 96 * (n : ℤ) ^ 2 + 64 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ 18 + 56 * (n : ℤ) + 96 * (n : ℤ) ^ 2 + 64 * (n : ℤ) ^ 3 := by omega
  have hq : (6 + 32 * n ^ 2 : ℚ) + (8 * n * (7 + 8 * n ^ 2) : ℚ) / 3 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 18 + 56 * (n : ℤ) + 96 * (n : ℤ) ^ 2 + 64 * (n : ℤ) ^ 3 = z * 3)
  simp only [A167498, A167498.P4594328217968134659.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A034.A0347
import Proof.Lib.Integral

/-- A034721: a(n) = (10*n^3 - 9*n^2 + 2*n)/3 + 1. The name formula is an integer. -/
theorem A034721.anchor (n : ℕ) :
    (A034721 n : ℚ) = ((10 * n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (2 * n : ℤ) : ℚ) / 3 + 1 := by
  have hE : ((10 * n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (2 * n : ℤ) : ℚ) / 3 + 1 = ((3 + 2 * (n : ℤ) - 9 * (n : ℤ) ^ 2 + 10 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 3 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 3 + 2 * (n : ℤ) - 9 * (n : ℤ) ^ 2 + 10 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ 3 + 2 * (n : ℤ) - 9 * (n : ℤ) ^ 2 + 10 * (n : ℤ) ^ 3 := by omega
  have hq : ((10 * n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (2 * n : ℤ) : ℚ) / 3 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 3 + 2 * (n : ℤ) - 9 * (n : ℤ) ^ 2 + 10 * (n : ℤ) ^ 3 = z * 3)
  simp only [A034721, A034721.P12183180036091575082.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

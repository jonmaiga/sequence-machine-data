import Prog.A154.A1545
import Proof.Lib.Integral

/-- A154560: a(n) = (n+3)^2*n/2 + 1. The name formula is an integer. -/
theorem A154560.anchor (n : ℕ) :
    (A154560 n : ℚ) = ((n + 3) ^ 2 * n : ℚ) / 2 + 1 := by
  have hE : ((n + 3) ^ 2 * n : ℚ) / 2 + 1 = ((2 + 9 * (n : ℤ) + 6 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + 9 * (n : ℤ) + 6 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + 9 * (n : ℤ) + 6 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 := by omega
  have hq : ((n + 3) ^ 2 * n : ℚ) / 2 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + 9 * (n : ℤ) + 6 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 = z * 2)
  simp only [A154560, A154560.P4761582464667904984.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

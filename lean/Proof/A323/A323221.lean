import Prog.A323.A3232
import Proof.Lib.Integral

/-- A323221: a(n) = n*(n + 5)*(n + 7)/6 + 1. The name formula is an integer. -/
theorem A323221.anchor (n : ℕ) :
    (A323221 n : ℚ) = (n * (n + 5) * (n + 7) : ℚ) / 6 + 1 := by
  have hE : (n * (n + 5) * (n + 7) : ℚ) / 6 + 1 = ((6 + 35 * (n : ℤ) + 12 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 6 + 35 * (n : ℤ) + 12 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 6 + 35 * (n : ℤ) + 12 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 6 + 35 * (n : ℤ) + 12 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 := by omega
  have hq : (n * (n + 5) * (n + 7) : ℚ) / 6 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 6 + 35 * (n : ℤ) + 12 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 = z * 6)
  simp only [A323221, A323221.P1160006221664677187.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

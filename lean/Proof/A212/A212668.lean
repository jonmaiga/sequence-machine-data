import Prog.A212.A2126
import Proof.Lib.Integral

/-- A212668: a(n) = (16/3)*(n+1)*n*(n-1) + 8*n^2 + 1. The name formula is an integer. -/
theorem A212668.anchor (n : ℕ) :
    (A212668 (n + 1) : ℚ) = (16 : ℚ) / 3 * (n + 2 : ℚ) * (n + 1 : ℚ) * (n : ℚ) + (8 * (n + 1) ^ 2 : ℚ) + 1 := by
  have hE : (16 : ℚ) / 3 * (n + 2 : ℚ) * (n + 1 : ℚ) * (n : ℚ) + (8 * (n + 1) ^ 2 : ℚ) + 1 = ((27 + 80 * (n : ℤ) + 72 * (n : ℤ) ^ 2 + 16 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 3 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 27 + 80 * (n : ℤ) + 72 * (n : ℤ) ^ 2 + 16 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ 27 + 80 * (n : ℤ) + 72 * (n : ℤ) ^ 2 + 16 * (n : ℤ) ^ 3 := by omega
  have hq : (16 : ℚ) / 3 * (n + 2 : ℚ) * (n + 1 : ℚ) * (n : ℚ) + (8 * (n + 1) ^ 2 : ℚ) + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 27 + 80 * (n : ℤ) + 72 * (n : ℤ) ^ 2 + 16 * (n : ℤ) ^ 3 = z * 3)
  simp only [A212668, Nat.add_sub_cancel, A212668.P12330225572544944972.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

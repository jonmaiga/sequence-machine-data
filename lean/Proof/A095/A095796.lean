import Prog.A095.A0957
import Proof.Lib.Integral

/-- A095796: a(n) = 1 + (26*n+17+7*n^2)*n/2. The name formula is an integer. -/
theorem A095796.anchor (n : ℕ) :
    (A095796 n : ℚ) = 1 + ((26 * n + 17 + 7 * n ^ 2) * n : ℚ) / 2 := by
  have hE : 1 + ((26 * n + 17 + 7 * n ^ 2) * n : ℚ) / 2 = ((2 + 17 * (n : ℤ) + 26 * (n : ℤ) ^ 2 + 7 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 + 17 * (n : ℤ) + 26 * (n : ℤ) ^ 2 + 7 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 + 17 * (n : ℤ) + 26 * (n : ℤ) ^ 2 + 7 * (n : ℤ) ^ 3 := by omega
  have hq : 1 + ((26 * n + 17 + 7 * n ^ 2) * n : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 + 17 * (n : ℤ) + 26 * (n : ℤ) ^ 2 + 7 * (n : ℤ) ^ 3 = z * 2)
  simp only [A095796, A095796.P12530331311375189301.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

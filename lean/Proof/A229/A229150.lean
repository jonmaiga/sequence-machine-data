import Prog.A229.A2291
import Proof.Lib.Integral

/-- A229150: a(n) = n^7*(9*n+7)/2. The name formula is an integer. -/
theorem A229150.anchor (n : ℕ) :
    (A229150 n : ℚ) = (n ^ 7 * (9 * n + 7) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 7 * (9 * n + 7) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 7 * (9 * n + 7) : ℤ) := by omega
  have hq : (n ^ 7 * (9 * n + 7) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 7 * (9 * n + 7) : ℤ) = z * 2)
  simp only [A229150, A229150.P1849462040591650263.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

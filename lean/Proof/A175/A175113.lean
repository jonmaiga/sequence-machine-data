import Prog.A175.A1751
import Proof.Lib.Integral

/-- A175113: a(n) = ((2*n + 1)^6 + 1)/2. The name formula is an integer. -/
theorem A175113.anchor (n : ℕ) :
    (A175113 n : ℚ) = ((2 * n + 1) ^ 6 + 1 : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((2 * n + 1) ^ 6 + 1 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((2 * n + 1) ^ 6 + 1 : ℤ) := by omega
  have hq : ((2 * n + 1) ^ 6 + 1 : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * n + 1) ^ 6 + 1 : ℤ) = z * 2)
  simp only [A175113, A175113.P15508926392791470040.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A163.A1632
import Proof.Lib.Integral

/-- A163274: a(n) = n^4*(n+1)^2/2. The name formula is an integer. -/
theorem A163274.anchor (n : ℕ) :
    (A163274 n : ℚ) = (n ^ 4 * (n + 1) ^ 2 : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 4 * (n + 1) ^ 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 4 * (n + 1) ^ 2 : ℤ) := by omega
  have hq : (n ^ 4 * (n + 1) ^ 2 : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 4 * (n + 1) ^ 2 : ℤ) = z * 2)
  simp only [A163274, A163274.P6521112982158119716.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

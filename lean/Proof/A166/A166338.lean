import Prog.A166.A1663
import Proof.Lib.Integral

/-- A166338: a(n) = (4*n)!/n!. The name formula is an integer. -/
theorem A166338.anchor (n : ℕ) :
    (A166338 n : ℚ) = (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n : ℚ) := by
  have hm : Nat.factorial (n) ∣ Nat.factorial (n) := dvd_refl _
  have hd : (Nat.factorial n : ℕ) ∣ (Nat.factorial (4 * n) : ℕ) := by
    have h : Nat.factorial (n) ∣ (Nat.factorial (4 * n) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : (n) ≤ 4 * n)).trans (dvd_refl _))
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A166338, A166338.P3385257530143789961.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

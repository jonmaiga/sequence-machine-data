import Prog.A008.A0089
import Proof.Lib.Integral

/-- A008977: a(n) = (4*n)!/(n!)^4. The name formula is an integer. -/
theorem A008977.anchor (n : ℕ) :
    (A008977 n : ℚ) = (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n ^ 4 : ℚ) := by
  have hm : Nat.factorial (n) * Nat.factorial (n) * Nat.factorial (n) * Nat.factorial (n) ∣ Nat.factorial ((((n) + (n)) + (n)) + (n)) := (Nat.mul_dvd_mul_right ((Nat.mul_dvd_mul_right ((Nat.mul_dvd_mul_right (dvd_refl _) _).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)) _).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)) _).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)
  have hd : (Nat.factorial n ^ 4 : ℕ) ∣ (Nat.factorial (4 * n) : ℕ) := by
    have h : Nat.factorial (n) * Nat.factorial (n) * Nat.factorial (n) * Nat.factorial (n) ∣ (Nat.factorial (4 * n) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : ((((n) + (n)) + (n)) + (n)) ≤ 4 * n)).trans (dvd_refl _))
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n ^ 4 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A008977, A008977.P6553658077722946254.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

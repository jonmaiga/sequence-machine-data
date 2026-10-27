import Prog.A006.A0065
import Proof.Lib.Integral

/-- A006587: a(n) = 3*2^(2*n)*(3*n)!/((2*n)!*n!). The name formula is an integer. -/
theorem A006587.anchor (n : ℕ) :
    (A006587 n : ℚ) = (3 * 2 ^ (2 * n) * Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial n : ℚ) := by
  have hm : Nat.factorial (2 * n) * Nat.factorial (n) ∣ Nat.factorial ((2 * n) + (n)) := (Nat.mul_dvd_mul_right (dvd_refl _) _).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)
  have hd : (Nat.factorial (2 * n) * Nat.factorial n : ℕ) ∣ (3 * 2 ^ (2 * n) * Nat.factorial (3 * n) : ℕ) := by
    have h : Nat.factorial (2 * n) * Nat.factorial (n) ∣ (3 * 2 ^ (2 * n) * Nat.factorial (3 * n) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : ((2 * n) + (n)) ≤ 3 * n)).trans ⟨3 * 2 ^ (2 * n), by ring⟩)
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * 2 ^ (2 * n) * Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial n : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A006587, A006587.P7239323280343436526.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

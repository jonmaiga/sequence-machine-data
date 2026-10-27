import Prog.A000.A0009
import Proof.Lib.Integral

/-- A000911: a(n) = (2n+3)! /( n! * (n+1)! ). The name formula is an integer. -/
theorem A000911.anchor (n : ℕ) :
    (A000911 n : ℚ) = (Nat.factorial (2 * n + 3) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ) := by
  have hm : Nat.factorial (n) * Nat.factorial (n + 1) ∣ Nat.factorial ((n) + (n + 1)) := (Nat.mul_dvd_mul_right (dvd_refl _) _).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)
  have hd : (Nat.factorial n * Nat.factorial (n + 1) : ℕ) ∣ (Nat.factorial (2 * n + 3) : ℕ) := by
    have h : Nat.factorial (n) * Nat.factorial (n + 1) ∣ (Nat.factorial (2 * n + 3) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : ((n) + (n + 1)) ≤ 2 * n + 3)).trans (dvd_refl _))
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (2 * n + 3) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A000911, A000911.P17965130823935547465.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A002.A0020
import Proof.Lib.Integral

/-- A002011: a(n) = 4*(2n+1)!/n!^2. The name formula is an integer. -/
theorem A002011.anchor (n : ℕ) :
    (A002011 n : ℚ) = (4 * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n ^ 2 : ℚ) := by
  have hm : Nat.factorial (n) * Nat.factorial (n) ∣ Nat.factorial ((n) + (n)) := (Nat.mul_dvd_mul_right (dvd_refl _) _).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)
  have hd : (Nat.factorial n ^ 2 : ℕ) ∣ (4 * Nat.factorial (2 * n + 1) : ℕ) := by
    have h : Nat.factorial (n) * Nat.factorial (n) ∣ (4 * Nat.factorial (2 * n + 1) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : ((n) + (n)) ≤ 2 * n + 1)).trans ⟨4, by ring⟩)
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (4 * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n ^ 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A002011, A002011.P2253550494180111135.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

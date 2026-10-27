import Prog.A064.A0643
import Proof.Lib.Integral

/-- A064352: a(n) = (3*n)!/(2*n)!. The name formula is an integer. -/
theorem A064352.anchor (n : ℕ) :
    (A064352 n : ℚ) = (Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) : ℚ) := by
  have hm : Nat.factorial (2 * n) ∣ Nat.factorial (2 * n) := dvd_refl _
  have hd : (Nat.factorial (2 * n) : ℕ) ∣ (Nat.factorial (3 * n) : ℕ) := by
    have h : Nat.factorial (2 * n) ∣ (Nat.factorial (3 * n) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : (2 * n) ≤ 3 * n)).trans (dvd_refl _))
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A064352, A064352.P17858079158270413850.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A135.A1354
import Proof.Lib.Integral

/-- A135487: a(n) = (n^2+5*n+5)*(2*n+2)!/(n+4)!. The name formula is an integer. -/
theorem A135487.anchor (n : ℕ) :
    (A135487 (n + 2) : ℚ) = (((n + 2) ^ 2 + 5 * (n + 2) + 5) * Nat.factorial (2 * (n + 2) + 2) : ℚ) / (Nat.factorial (n + 6) : ℚ) := by
  have hm : Nat.factorial (n + 6) ∣ Nat.factorial (n + 6) := dvd_refl _
  have hd : (Nat.factorial (n + 6) : ℕ) ∣ (((n + 2) ^ 2 + 5 * (n + 2) + 5) * Nat.factorial (2 * (n + 2) + 2) : ℕ) := by
    have h : Nat.factorial (n + 6) ∣ (((n + 2) ^ 2 + 5 * (n + 2) + 5) * Nat.factorial (2 * (n + 2) + 2) : ℕ) := hm.trans ((Nat.factorial_dvd_factorial (by omega : (n + 6) ≤ 2 * (n + 2) + 2)).trans ⟨((n + 2) ^ 2 + 5 * (n + 2) + 5), by ring⟩)
    simpa only [pow_succ, pow_zero, one_mul, mul_one, mul_assoc, mul_comm, mul_left_comm] using h
  obtain ⟨z, hz⟩ := hd
  have hq : (((n + 2) ^ 2 + 5 * (n + 2) + 5) * Nat.factorial (2 * (n + 2) + 2) : ℚ) / (Nat.factorial (n + 6) : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A135487, Nat.add_sub_cancel, A135487.P3593567982238175270.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

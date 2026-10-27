import Prog.A154.A1543
import Proof.Lib.Integral

/-- A154306: a(n) = (n+1)^3*(3+n)!/6. The name formula is an integer. -/
theorem A154306.anchor (n : ℕ) :
    (A154306 n : ℚ) = ((n + 1) ^ 3 * Nat.factorial (3 + n) : ℚ) / 6 := by
  have hd : 6 ∣ ((n + 1) ^ 3 * Nat.factorial (3 + n) : ℕ) :=
    (show 6 ∣ Nat.factorial 3 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 3 ≤ 3 + n)).trans ⟨(n + 1) ^ 3, by ring⟩)
  obtain ⟨z, hz⟩ := hd
  have hq : ((n + 1) ^ 3 * Nat.factorial (3 + n) : ℚ) / 6 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A154306, A154306.P567988047409913397.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A154.A1543
import Proof.Lib.Integral

/-- A154307: a(n) = (n+1)^4*(4+n)!/24. The name formula is an integer. -/
theorem A154307.anchor (n : ℕ) :
    (A154307 n : ℚ) = ((n + 1) ^ 4 * Nat.factorial (4 + n) : ℚ) / 24 := by
  have hd : 24 ∣ ((n + 1) ^ 4 * Nat.factorial (4 + n) : ℕ) :=
    (show 24 ∣ Nat.factorial 4 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 4 ≤ 4 + n)).trans ⟨(n + 1) ^ 4, by ring⟩)
  obtain ⟨z, hz⟩ := hd
  have hq : ((n + 1) ^ 4 * Nat.factorial (4 + n) : ℚ) / 24 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A154307, A154307.P9891067317062005684.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

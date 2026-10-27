import Prog.A230.A2305
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A230547: a(n) = 3*binomial(3*n+9, n)/(n+3). The name formula is an integer. -/
theorem A230547.anchor (n : ℕ) :
    (A230547 n : ℚ) = (3 * Nat.choose (3 * n + 9) n : ℚ) / (n + 3 : ℚ) := by
  have hd : (n + 3 : ℕ) ∣ (3 * Nat.choose (3 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 3 9 n (by norm_num) (by norm_num)
    have h2 : 3 * (n + 3) ∣ 3 * (3 * Nat.choose (3 * n + 9) n) := by
      rw [show 3 * (n + 3) = 3 * n + 9 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (3 * n + 9) n : ℚ) / (n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A230547, A230547.P6627728339677918992.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

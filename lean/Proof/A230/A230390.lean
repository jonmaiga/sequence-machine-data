import Prog.A230.A2303
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A230390: a(n) = 5*binomial(8*n+10,n)/(4*n+5). The name formula is an integer. -/
theorem A230390.anchor (n : ℕ) :
    (A230390 n : ℚ) = (5 * Nat.choose (8 * n + 10) n : ℚ) / (4 * n + 5 : ℚ) := by
  have hd : (4 * n + 5 : ℕ) ∣ (5 * Nat.choose (8 * n + 10) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 10 n (by norm_num) (by norm_num)
    have h2 : 2 * (4 * n + 5) ∣ 2 * (5 * Nat.choose (8 * n + 10) n) := by
      rw [show 2 * (4 * n + 5) = 8 * n + 10 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (8 * n + 10) n : ℚ) / (4 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A230390, A230390.P1349966002235485043.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

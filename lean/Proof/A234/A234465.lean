import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234465: a(n) = 3*binomial(8*n+6,n)/(4*n+3). The name formula is an integer. -/
theorem A234465.anchor (n : ℕ) :
    (A234465 n : ℚ) = (3 * Nat.choose (8 * n + 6) n : ℚ) / (4 * n + 3 : ℚ) := by
  have hd : (4 * n + 3 : ℕ) ∣ (3 * Nat.choose (8 * n + 6) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 6 n (by norm_num) (by norm_num)
    have h2 : 2 * (4 * n + 3) ∣ 2 * (3 * Nat.choose (8 * n + 6) n) := by
      rw [show 2 * (4 * n + 3) = 8 * n + 6 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (8 * n + 6) n : ℚ) / (4 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234465, A234465.P17549893966879213526.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

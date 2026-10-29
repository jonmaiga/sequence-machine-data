import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234463: a(n) = binomial(8*n+4,n)/(2*n+1). The name formula is an integer. -/
theorem A234463.anchor (n : ℕ) :
    (A234463 n : ℚ) = (Nat.choose (8 * n + 4) n : ℚ) / (2 * n + 1 : ℚ) := by
  have hd : (2 * n + 1 : ℕ) ∣ (Nat.choose (8 * n + 4) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 4 n (by norm_num) (by norm_num)
    have h2 : 4 * (2 * n + 1) ∣ 4 * (Nat.choose (8 * n + 4) n) := by
      rw [show 4 * (2 * n + 1) = 8 * n + 4 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (8 * n + 4) n : ℚ) / (2 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234463, A234463.P1069547442113230402.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234506: a(n) = binomial(9*n+3, n)/(3*n+1). The name formula is an integer. -/
theorem A234506.anchor (n : ℕ) :
    (A234506 n : ℚ) = (Nat.choose (9 * n + 3) n : ℚ) / (3 * n + 1 : ℚ) := by
  have hd : (3 * n + 1 : ℕ) ∣ (Nat.choose (9 * n + 3) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 3 n (by norm_num) (by norm_num)
    have h2 : 3 * (3 * n + 1) ∣ 3 * (Nat.choose (9 * n + 3) n) := by
      rw [show 3 * (3 * n + 1) = 9 * n + 3 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (9 * n + 3) n : ℚ) / (3 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234506, A234506.P11009094261416888985.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

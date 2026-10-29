import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234510: a(n) = 7*binomial(9*n+7,n)/(9*n+7). The name formula is an integer. -/
theorem A234510.anchor (n : ℕ) :
    (A234510 n : ℚ) = (7 * Nat.choose (9 * n + 7) n : ℚ) / (9 * n + 7 : ℚ) := by
  have hd : (9 * n + 7 : ℕ) ∣ (7 * Nat.choose (9 * n + 7) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 7 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (7 * Nat.choose (9 * n + 7) n : ℚ) / (9 * n + 7 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234510, A234510.P3065776263212345378.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

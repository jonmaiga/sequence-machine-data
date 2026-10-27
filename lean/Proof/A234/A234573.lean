import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234573: a(n) = 9*binomial(10*n+9,n)/(10*n+9). The name formula is an integer. -/
theorem A234573.anchor (n : ℕ) :
    (A234573 n : ℚ) = (9 * Nat.choose (10 * n + 9) n : ℚ) / (10 * n + 9 : ℚ) := by
  have hd : (10 * n + 9 : ℕ) ∣ (9 * Nat.choose (10 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 9 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (9 * Nat.choose (10 * n + 9) n : ℚ) / (10 * n + 9 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234573, A234573.P2537565463048657075.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A234.A2348
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234869: a(n) = 3*binomial(11*n+3,n)/(11*n+3). The name formula is an integer. -/
theorem A234869.anchor (n : ℕ) :
    (A234869 n : ℚ) = (3 * Nat.choose (11 * n + 3) n : ℚ) / (11 * n + 3 : ℚ) := by
  have hd : (11 * n + 3 : ℕ) ∣ (3 * Nat.choose (11 * n + 3) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 3 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (11 * n + 3) n : ℚ) / (11 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234869, A234869.P6990886365438771550.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

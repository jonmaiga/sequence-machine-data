import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234466: a(n) = 7*binomial(8*n+7,n)/(8*n+7). The name formula is an integer. -/
theorem A234466.anchor (n : ℕ) :
    (A234466 n : ℚ) = (7 * Nat.choose (8 * n + 7) n : ℚ) / (8 * n + 7 : ℚ) := by
  have hd : (8 * n + 7 : ℕ) ∣ (7 * Nat.choose (8 * n + 7) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 7 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (7 * Nat.choose (8 * n + 7) n : ℚ) / (8 * n + 7 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234466, A234466.P5422403043252799257.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

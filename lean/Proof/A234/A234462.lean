import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234462: a(n) = 3*binomial(8*n+3,n)/(8*n+3). The name formula is an integer. -/
theorem A234462.anchor (n : ℕ) :
    (A234462 n : ℚ) = (3 * Nat.choose (8 * n + 3) n : ℚ) / (8 * n + 3 : ℚ) := by
  have hd : (8 * n + 3 : ℕ) ∣ (3 * Nat.choose (8 * n + 3) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 3 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (8 * n + 3) n : ℚ) / (8 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234462, A234462.P3320381882171532416.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

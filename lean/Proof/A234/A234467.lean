import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234467: a(n) = 9*binomial(8*n + 9,n)/(8*n + 9). The name formula is an integer. -/
theorem A234467.anchor (n : ℕ) :
    (A234467 n : ℚ) = (9 * Nat.choose (8 * n + 9) n : ℚ) / (8 * n + 9 : ℚ) := by
  have hd : (8 * n + 9 : ℕ) ∣ (9 * Nat.choose (8 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 9 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (9 * Nat.choose (8 * n + 9) n : ℚ) / (8 * n + 9 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234467, A234467.P13819058097301829321.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

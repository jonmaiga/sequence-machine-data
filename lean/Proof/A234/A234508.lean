import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234508: a(n) = 5*binomial(9*n+5,n)/(9*n+5). The name formula is an integer. -/
theorem A234508.anchor (n : ℕ) :
    (A234508 n : ℚ) = (5 * Nat.choose (9 * n + 5) n : ℚ) / (9 * n + 5 : ℚ) := by
  have hd : (9 * n + 5 : ℕ) ∣ (5 * Nat.choose (9 * n + 5) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 5 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (9 * n + 5) n : ℚ) / (9 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234508, A234508.P15157110799197174239.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

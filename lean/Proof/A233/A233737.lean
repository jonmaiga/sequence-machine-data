import Prog.A233.A2337
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233737: a(n) = 9*binomial(5*n+9, n)/(5*n+9). The name formula is an integer. -/
theorem A233737.anchor (n : ℕ) :
    (A233737 n : ℚ) = (9 * Nat.choose (5 * n + 9) n : ℚ) / (5 * n + 9 : ℚ) := by
  have hd : (5 * n + 9 : ℕ) ∣ (9 * Nat.choose (5 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 5 9 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (9 * Nat.choose (5 * n + 9) n : ℚ) / (5 * n + 9 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233737, A233737.P11445290408204490189.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A233.A2337
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233743: a(n) = 7*binomial(6*n + 7, n)/(6*n + 7). The name formula is an integer. -/
theorem A233743.anchor (n : ℕ) :
    (A233743 n : ℚ) = (7 * Nat.choose (6 * n + 7) n : ℚ) / (6 * n + 7 : ℚ) := by
  have hd : (6 * n + 7 : ℕ) ∣ (7 * Nat.choose (6 * n + 7) n : ℕ) := by
    have h := SequenceProof.raney_dvd 6 7 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (7 * Nat.choose (6 * n + 7) n : ℚ) / (6 * n + 7 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233743, A233743.P16518700471986388449.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

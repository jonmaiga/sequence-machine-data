import Prog.A233.A2336
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233657: a(n) = 10 * binomial(3*n+10,n)/(3*n+10). The name formula is an integer. -/
theorem A233657.anchor (n : ℕ) :
    (A233657 n : ℚ) = (10 * Nat.choose (3 * n + 10) n : ℚ) / (3 * n + 10 : ℚ) := by
  have hd : (3 * n + 10 : ℕ) ∣ (10 * Nat.choose (3 * n + 10) n : ℕ) := by
    have h := SequenceProof.raney_dvd 3 10 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (10 * Nat.choose (3 * n + 10) n : ℚ) / (3 * n + 10 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233657, A233657.P5092340438807226560.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

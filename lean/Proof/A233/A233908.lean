import Prog.A233.A2339
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233908: a(n) = 10*binomial(7*n+10,n)/(7*n+10). The name formula is an integer. -/
theorem A233908.anchor (n : ℕ) :
    (A233908 n : ℚ) = (10 * Nat.choose (7 * n + 10) n : ℚ) / (7 * n + 10 : ℚ) := by
  have hd : (7 * n + 10 : ℕ) ∣ (10 * Nat.choose (7 * n + 10) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 10 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (10 * Nat.choose (7 * n + 10) n : ℚ) / (7 * n + 10 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233908, A233908.P1028036176363625222.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

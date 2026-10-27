import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234526: a(n) = 3*binomial(10*n+3,n)/(10*n+3). The name formula is an integer. -/
theorem A234526.anchor (n : ℕ) :
    (A234526 n : ℚ) = (3 * Nat.choose (10 * n + 3) n : ℚ) / (10 * n + 3 : ℚ) := by
  have hd : (10 * n + 3 : ℕ) ∣ (3 * Nat.choose (10 * n + 3) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 3 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (10 * n + 3) n : ℚ) / (10 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234526, A234526.P5556790500387693121.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

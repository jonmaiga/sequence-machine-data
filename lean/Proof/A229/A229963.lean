import Prog.A229.A2299
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A229963: a(n) = 11*binomial(10*n + 11, n)/(10*n + 11). The name formula is an integer. -/
theorem A229963.anchor (n : ℕ) :
    (A229963 n : ℚ) = (11 * Nat.choose (10 * n + 11) n : ℚ) / (10 * n + 11 : ℚ) := by
  have hd : (10 * n + 11 : ℕ) ∣ (11 * Nat.choose (10 * n + 11) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 11 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (11 * Nat.choose (10 * n + 11) n : ℚ) / (10 * n + 11 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A229963, A229963.P15987772240577070665.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

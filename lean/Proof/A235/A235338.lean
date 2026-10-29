import Prog.A235.A2353
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A235338: a(n) = 8*binomial(11*n+8,n)/(11*n+8). The name formula is an integer. -/
theorem A235338.anchor (n : ℕ) :
    (A235338 n : ℚ) = (8 * Nat.choose (11 * n + 8) n : ℚ) / (11 * n + 8 : ℚ) := by
  have hd : (11 * n + 8 : ℕ) ∣ (8 * Nat.choose (11 * n + 8) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 8 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (8 * Nat.choose (11 * n + 8) n : ℚ) / (11 * n + 8 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A235338, A235338.P11684330598555439878.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

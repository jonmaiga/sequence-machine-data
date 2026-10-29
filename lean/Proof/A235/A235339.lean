import Prog.A235.A2353
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A235339: a(n) = 9*binomial(11*n+9,n)/(11*n+9). The name formula is an integer. -/
theorem A235339.anchor (n : ℕ) :
    (A235339 n : ℚ) = (9 * Nat.choose (11 * n + 9) n : ℚ) / (11 * n + 9 : ℚ) := by
  have hd : (11 * n + 9 : ℕ) ∣ (9 * Nat.choose (11 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 9 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (9 * Nat.choose (11 * n + 9) n : ℚ) / (11 * n + 9 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A235339, A235339.P16791216980042622977.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

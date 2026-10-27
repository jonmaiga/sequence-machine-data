import Prog.A233.A2338
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233833: a(n) = 3*binomial(7*n+3, n)/(7*n+3). The name formula is an integer. -/
theorem A233833.anchor (n : ℕ) :
    (A233833 n : ℚ) = (3 * Nat.choose (7 * n + 3) n : ℚ) / (7 * n + 3 : ℚ) := by
  have hd : (7 * n + 3 : ℕ) ∣ (3 * Nat.choose (7 * n + 3) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 3 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (7 * n + 3) n : ℚ) / (7 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233833, A233833.P6808845897056325022.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

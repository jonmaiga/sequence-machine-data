import Prog.A233.A2337
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233736: a(n) = 8*binomial(5*n + 8, n)/(5*n + 8). The name formula is an integer. -/
theorem A233736.anchor (n : ℕ) :
    (A233736 n : ℚ) = (8 * Nat.choose (5 * n + 8) n : ℚ) / (5 * n + 8 : ℚ) := by
  have hd : (5 * n + 8 : ℕ) ∣ (8 * Nat.choose (5 * n + 8) n : ℕ) := by
    have h := SequenceProof.raney_dvd 5 8 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (8 * Nat.choose (5 * n + 8) n : ℚ) / (5 * n + 8 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233736, A233736.P17789680142832867079.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

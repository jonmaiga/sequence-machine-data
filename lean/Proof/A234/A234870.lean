import Prog.A234.A2348
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234870: a(n) = 4*binomial(11*n+4,n)/(11*n+4). The name formula is an integer. -/
theorem A234870.anchor (n : ℕ) :
    (A234870 n : ℚ) = (4 * Nat.choose (11 * n + 4) n : ℚ) / (11 * n + 4 : ℚ) := by
  have hd : (11 * n + 4 : ℕ) ∣ (4 * Nat.choose (11 * n + 4) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 4 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (4 * Nat.choose (11 * n + 4) n : ℚ) / (11 * n + 4 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234870, A234870.P2064753317977125337.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

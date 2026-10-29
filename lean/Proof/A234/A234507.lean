import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234507: a(n) = 4*binomial(9*n+4,n)/(9*n+4). The name formula is an integer. -/
theorem A234507.anchor (n : ℕ) :
    (A234507 n : ℚ) = (4 * Nat.choose (9 * n + 4) n : ℚ) / (9 * n + 4 : ℚ) := by
  have hd : (9 * n + 4 : ℕ) ∣ (4 * Nat.choose (9 * n + 4) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 4 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (4 * Nat.choose (9 * n + 4) n : ℚ) / (9 * n + 4 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234507, A234507.P1571797451760932957.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

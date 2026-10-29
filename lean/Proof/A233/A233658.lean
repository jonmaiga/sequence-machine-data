import Prog.A233.A2336
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233658: a(n) = 7*binomial(4*n + 7, n)/(4*n + 7). The name formula is an integer. -/
theorem A233658.anchor (n : ℕ) :
    (A233658 n : ℚ) = (7 * Nat.choose (4 * n + 7) n : ℚ) / (4 * n + 7 : ℚ) := by
  have hd : (4 * n + 7 : ℕ) ∣ (7 * Nat.choose (4 * n + 7) n : ℕ) := by
    have h := SequenceProof.raney_dvd 4 7 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (7 * Nat.choose (4 * n + 7) n : ℚ) / (4 * n + 7 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233658, A233658.P1715427381718170931.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

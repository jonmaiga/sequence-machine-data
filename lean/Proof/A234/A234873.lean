import Prog.A234.A2348
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234873: a(n) = 7*binomial(11*n+7,n)/(11*n+7). The name formula is an integer. -/
theorem A234873.anchor (n : ℕ) :
    (A234873 n : ℚ) = (7 * Nat.choose (11 * n + 7) n : ℚ) / (11 * n + 7 : ℚ) := by
  have hd : (11 * n + 7 : ℕ) ∣ (7 * Nat.choose (11 * n + 7) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 7 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (7 * Nat.choose (11 * n + 7) n : ℚ) / (11 * n + 7 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234873, A234873.P9574430598085858005.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

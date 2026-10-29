import Prog.A233.A2339
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233907: a(n) = 9*binomial(7*n+9, n)/(7*n+9). The name formula is an integer. -/
theorem A233907.anchor (n : ℕ) :
    (A233907 n : ℚ) = (9 * Nat.choose (7 * n + 9) n : ℚ) / (7 * n + 9 : ℚ) := by
  have hd : (7 * n + 9 : ℕ) ∣ (9 * Nat.choose (7 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 9 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (9 * Nat.choose (7 * n + 9) n : ℚ) / (7 * n + 9 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233907, A233907.P1605500090284288055.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A232.A2322
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A232265: a(n) = 10*binomial(9*n + 10, n)/(9*n + 10). The name formula is an integer. -/
theorem A232265.anchor (n : ℕ) :
    (A232265 n : ℚ) = (10 * Nat.choose (9 * n + 10) n : ℚ) / (9 * n + 10 : ℚ) := by
  have hd : (9 * n + 10 : ℕ) ∣ (10 * Nat.choose (9 * n + 10) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 10 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (10 * Nat.choose (9 * n + 10) n : ℚ) / (9 * n + 10 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A232265, A232265.P13228310085095729745.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

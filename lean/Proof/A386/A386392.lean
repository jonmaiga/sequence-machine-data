import Prog.A386.A3863
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A386392: a(n) = 4 * binomial(7*n+4,n)/(7*n+4). The name formula is an integer. -/
theorem A386392.anchor (n : ℕ) :
    (A386392 n : ℚ) = (4 * Nat.choose (7 * n + 4) n : ℚ) / (7 * n + 4 : ℚ) := by
  have hd : (7 * n + 4 : ℕ) ∣ (4 * Nat.choose (7 * n + 4) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 4 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (4 * Nat.choose (7 * n + 4) n : ℚ) / (7 * n + 4 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A386392, A386392.P12680172549557109250.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

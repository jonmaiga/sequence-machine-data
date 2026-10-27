import Prog.A003.A0035
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A003519: a(n) = 10*binomial(2*n + 1, n - 4)/(n + 6). The name formula is an integer. -/
theorem A003519.anchor (n : ℕ) :
    (A003519 (n + 4) : ℚ) = (10 * Nat.choose (2 * (n + 4) + 1) n : ℚ) / (n + 10 : ℚ) := by
  have hd : (n + 10 : ℕ) ∣ (10 * Nat.choose (2 * (n + 4) + 1) n : ℕ) := by
    have h := SequenceProof.ballot_dvd 9 n
    rw [show (2 * (n + 4) + 1) = 2 * n + 9 by ring, show (n + 10) = n + 9 + 1 by ring]
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (10 * Nat.choose (2 * (n + 4) + 1) n : ℚ) / (n + 10 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A003519, Nat.add_sub_cancel, A003519.P8748030535205218975.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

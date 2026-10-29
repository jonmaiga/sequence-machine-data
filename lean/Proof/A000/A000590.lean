import Prog.A000.A0005
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A000590: a(n) = 13*binomial(2n,n-6)/(n+7). The name formula is an integer. -/
theorem A000590.anchor (n : ℕ) :
    (A000590 (n + 6) : ℚ) = (13 * Nat.choose (2 * (n + 6)) n : ℚ) / (n + 13 : ℚ) := by
  have hd : (n + 13 : ℕ) ∣ (13 * Nat.choose (2 * (n + 6)) n : ℕ) := by
    have h := SequenceProof.ballot_dvd 12 n
    rw [show (2 * (n + 6)) = 2 * n + 12 by ring, show (n + 13) = n + 12 + 1 by ring]
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (13 * Nat.choose (2 * (n + 6)) n : ℚ) / (n + 13 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A000590, Nat.add_sub_cancel, A000590.P9708195866616479349.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A000.A0005
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A000589: a(n) = 11*binomial(2n,n-5)/(n+6). The name formula is an integer. -/
theorem A000589.anchor (n : ℕ) :
    (A000589 (n + 5) : ℚ) = (11 * Nat.choose (2 * (n + 5)) n : ℚ) / (n + 11 : ℚ) := by
  have hd : (n + 11 : ℕ) ∣ (11 * Nat.choose (2 * (n + 5)) n : ℕ) := by
    have h := SequenceProof.ballot_dvd 10 n
    rw [show (2 * (n + 5)) = 2 * n + 10 by ring, show (n + 11) = n + 10 + 1 by ring]
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (11 * Nat.choose (2 * (n + 5)) n : ℚ) / (n + 11 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A000589, Nat.add_sub_cancel, A000589.P13450582615708353823.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

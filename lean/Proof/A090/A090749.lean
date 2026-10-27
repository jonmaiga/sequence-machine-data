import Prog.A090.A0907
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A090749: a(n) = 12 * C(2n+1,n-5) / (n+7). The name formula is an integer. -/
theorem A090749.anchor (n : ℕ) :
    (A090749 (n + 5) : ℚ) = (12 * Nat.choose (2 * (n + 5) + 1) n : ℚ) / (n + 12 : ℚ) := by
  have hd : (n + 12 : ℕ) ∣ (12 * Nat.choose (2 * (n + 5) + 1) n : ℕ) := by
    have h := SequenceProof.ballot_dvd 11 n
    rw [show (2 * (n + 5) + 1) = 2 * n + 11 by ring, show (n + 12) = n + 11 + 1 by ring]
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (12 * Nat.choose (2 * (n + 5) + 1) n : ℚ) / (n + 12 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A090749, Nat.add_sub_cancel, A090749.P3173448819452688393.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

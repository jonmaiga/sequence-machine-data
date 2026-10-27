import Prog.A171.A1710
import Proof.Lib.Integral

/-- A171005: a(n) = (n+1)*(n-1)!/2. The name formula is an integer. -/
theorem A171005.anchor (n : ℕ) :
    (A171005 (n + 3) : ℚ) = ((n + 4) * Nat.factorial (n + 2) : ℚ) / 2 := by
  have hd : 2 ∣ ((n + 4) * Nat.factorial (n + 2) : ℕ) :=
    (show 2 ∣ Nat.factorial 2 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 2 ≤ n + 2)).trans ⟨(n + 4), by ring⟩)
  obtain ⟨z, hz⟩ := hd
  have hq : ((n + 4) * Nat.factorial (n + 2) : ℚ) / 2 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A171005, Nat.add_sub_cancel, A171005.P9645506390964445830.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

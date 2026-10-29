import Prog.A002.A0023
import Proof.Lib.Integral

/-- A002301: a(n) = n! / 3. The name formula is an integer. -/
theorem A002301.anchor (n : ℕ) :
    (A002301 (n + 3) : ℚ) = (Nat.factorial (n + 3) : ℚ) / 3 := by
  have hd : 3 ∣ (Nat.factorial (n + 3) : ℕ) :=
    (show 3 ∣ Nat.factorial 3 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 3 ≤ n + 3)).trans (dvd_refl _))
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (n + 3) : ℚ) / 3 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A002301, Nat.add_sub_cancel, A002301.P17587943642236014446.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

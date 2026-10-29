import Prog.A129.A1299
import Proof.Lib.Integral

/-- A129923: a(n) = (n+5)! / 5. The name formula is an integer. -/
theorem A129923.anchor (n : ℕ) :
    (A129923 n : ℚ) = (Nat.factorial (n + 5) : ℚ) / 5 := by
  have hd : 5 ∣ (Nat.factorial (n + 5) : ℕ) :=
    (show 5 ∣ Nat.factorial 5 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 5 ≤ n + 5)).trans (dvd_refl _))
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (n + 5) : ℚ) / 5 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A129923, A129923.P6380343442039840714.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

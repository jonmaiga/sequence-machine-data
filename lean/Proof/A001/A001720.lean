import Prog.A001.A0017
import Proof.Lib.Integral

/-- A001720: a(n) = n!/24. The name formula is an integer. -/
theorem A001720.anchor (n : ℕ) :
    (A001720 (n + 4) : ℚ) = (Nat.factorial (n + 4) : ℚ) / 24 := by
  have hd : 24 ∣ (Nat.factorial (n + 4) : ℕ) :=
    (show 24 ∣ Nat.factorial 4 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 4 ≤ n + 4)).trans (dvd_refl _))
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (n + 4) : ℚ) / 24 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A001720, Nat.add_sub_cancel, A001720.P88558306593264620.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

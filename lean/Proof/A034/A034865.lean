import Prog.A034.A0348
import Proof.Lib.Integral

/-- A034865: a(n) = n!*(n-4)/2. The name formula is an integer. -/
theorem A034865.anchor (n : ℕ) :
    (A034865 (n + 4) : ℚ) = (Nat.factorial (n + 4) * n : ℚ) / 2 := by
  have hd : 2 ∣ (Nat.factorial (n + 4) * n : ℕ) :=
    (show 2 ∣ Nat.factorial 2 by decide).trans
      ((Nat.factorial_dvd_factorial (by omega : 2 ≤ n + 4)).trans ⟨n, by ring⟩)
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.factorial (n + 4) * n : ℚ) / 2 = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A034865, Nat.add_sub_cancel, A034865.P18218795335980471694.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

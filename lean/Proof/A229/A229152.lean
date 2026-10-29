import Prog.A229.A2291
import Proof.Lib.Integral

/-- A229152: a(n) = n^9*(11*n+9)/2. The name formula is an integer. -/
theorem A229152.anchor (n : ℕ) :
    (A229152 n : ℚ) = (n ^ 9 * (11 * n + 9) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 9 * (11 * n + 9) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 9 * (11 * n + 9) : ℤ) := by omega
  have hq : (n ^ 9 * (11 * n + 9) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 9 * (11 * n + 9) : ℤ) = z * 2)
  simp only [A229152, A229152.P5068940393221567430.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

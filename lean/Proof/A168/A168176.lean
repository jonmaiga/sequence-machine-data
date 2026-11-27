import Prog.A168.A1681
import Proof.Lib.Integral

/-- A168176: a(n) = n^2*(n^10 + 1)/2. The name formula is an integer. -/
theorem A168176.anchor (n : ℕ) :
    (A168176 n : ℚ) = (n ^ 2 * (n ^ 10 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 2 * (n ^ 10 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 2 * (n ^ 10 + 1) : ℤ) := by omega
  have hq : (n ^ 2 * (n ^ 10 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 2 * (n ^ 10 + 1) : ℤ) = z * 2)
  simp only [A168176, A168176.P7572206138590168629.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

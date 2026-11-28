import Prog.A170.A1707
import Proof.Lib.Integral

/-- A170792: a(n) = n^9*(n^10 + 1)/2. The name formula is an integer. -/
theorem A170792.anchor (n : ℕ) :
    (A170792 n : ℚ) = (n ^ 9 * (n ^ 10 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 9 * (n ^ 10 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 9 * (n ^ 10 + 1) : ℤ) := by omega
  have hq : (n ^ 9 * (n ^ 10 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 9 * (n ^ 10 + 1) : ℤ) = z * 2)
  simp only [A170792, A170792.P7821020768952903033.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

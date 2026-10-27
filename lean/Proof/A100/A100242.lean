import Prog.A100.A1002
import Proof.Lib.Integral

/-- A100242: a(n) = n^5 - n^2*(n^2 - 1)/2. The name formula is an integer. -/
theorem A100242.anchor (n : ℕ) :
    (A100242 n : ℚ) = (n ^ 5 : ℚ) - ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 2 := by
  have hE : (n ^ 5 : ℚ) - ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 2 = (((n : ℤ) ^ 2 - (n : ℤ) ^ 4 + 2 * (n : ℤ) ^ 5 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ (n : ℤ) ^ 2 - (n : ℤ) ^ 4 + 2 * (n : ℤ) ^ 5 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n : ℤ) ^ 2 - (n : ℤ) ^ 4 + 2 * (n : ℤ) ^ 5 := by omega
  have hq : (n ^ 5 : ℚ) - ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n : ℤ) ^ 2 - (n : ℤ) ^ 4 + 2 * (n : ℤ) ^ 5 = z * 2)
  simp only [A100242, A100242.P17258774720473599640.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

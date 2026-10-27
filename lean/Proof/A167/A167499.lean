import Prog.A167.A1674
import Proof.Lib.Integral

/-- A167499: a(n) = n*(n+3)/2 + 6. The name formula is an integer. -/
theorem A167499.anchor (n : ℕ) :
    (A167499 n : ℚ) = (n * (n + 3) : ℚ) / 2 + 6 := by
  have hE : (n * (n + 3) : ℚ) / 2 + 6 = ((12 + 3 * (n : ℤ) + (n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 12 + 3 * (n : ℤ) + (n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 12 + 3 * (n : ℤ) + (n : ℤ) ^ 2 := by omega
  have hq : (n * (n + 3) : ℚ) / 2 + 6 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 12 + 3 * (n : ℤ) + (n : ℤ) ^ 2 = z * 2)
  simp only [A167499, A167499.P13522463022127954517.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

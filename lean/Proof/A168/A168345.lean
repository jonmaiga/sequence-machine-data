import Prog.A168.A1683
import Proof.Lib.Integral

/-- A168345: a(n) = n^4*(n^9 + 1)/2. The name formula is an integer. -/
theorem A168345.anchor (n : ℕ) :
    (A168345 n : ℚ) = (n ^ 4 * (n ^ 9 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 4 * (n ^ 9 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 4 * (n ^ 9 + 1) : ℤ) := by omega
  have hq : (n ^ 4 * (n ^ 9 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 4 * (n ^ 9 + 1) : ℤ) = z * 2)
  simp only [A168345, A168345.P4631879238593598652.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

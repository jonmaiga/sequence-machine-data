import Prog.A389.A3890
import Proof.Lib.Integral

/-- A389090: a(n) = n^4 - 4*(n^3-n)/3. The name formula is an integer. -/
theorem A389090.anchor (n : ℕ) :
    (A389090 n : ℚ) = (n ^ 4 : ℚ) - (4 * ((n ^ 3 : ℤ) - (n : ℤ)) : ℚ) / 3 := by
  have hE : (n ^ 4 : ℚ) - (4 * ((n ^ 3 : ℤ) - (n : ℤ)) : ℚ) / 3 = ((4 * (n : ℤ) - 4 * (n : ℤ) ^ 3 + 3 * (n : ℤ) ^ 4 : ℤ) : ℚ) / 3 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 4 * (n : ℤ) - 4 * (n : ℤ) ^ 3 + 3 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ 4 * (n : ℤ) - 4 * (n : ℤ) ^ 3 + 3 * (n : ℤ) ^ 4 := by omega
  have hq : (n ^ 4 : ℚ) - (4 * ((n ^ 3 : ℤ) - (n : ℤ)) : ℚ) / 3 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 4 * (n : ℤ) - 4 * (n : ℤ) ^ 3 + 3 * (n : ℤ) ^ 4 = z * 3)
  simp only [A389090, A389090.P17429034800336636947.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

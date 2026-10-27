import Prog.A092.A0921
import Proof.Lib.Integral

/-- A092185: a(n) = (5/6)*n^3+(5/2)*n^2+(8/3)*n. The name formula is an integer. -/
theorem A092185.anchor (n : ℕ) :
    (A092185 n : ℚ) = (5 : ℚ) / 6 * (n ^ 3 : ℚ) + (5 : ℚ) / 2 * (n ^ 2 : ℚ) + (8 : ℚ) / 3 * (n : ℚ) := by
  have hE : (5 : ℚ) / 6 * (n ^ 3 : ℚ) + (5 : ℚ) / 2 * (n ^ 2 : ℚ) + (8 : ℚ) / 3 * (n : ℚ) = ((16 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 5 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 16 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 5 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 16 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 5 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 16 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 5 * (n : ℤ) ^ 3 := by omega
  have hq : (5 : ℚ) / 6 * (n ^ 3 : ℚ) + (5 : ℚ) / 2 * (n ^ 2 : ℚ) + (8 : ℚ) / 3 * (n : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 16 * (n : ℤ) + 15 * (n : ℤ) ^ 2 + 5 * (n : ℤ) ^ 3 = z * 6)
  simp only [A092185, A092185.P16863492281060480228.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

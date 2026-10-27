import Prog.A394.A3941
import Proof.Lib.Integral

/-- A394185: a(n) = n^3/6 + 3*n^2 + 41*n/6 + 3. The name formula is an integer. -/
theorem A394185.anchor (n : ℕ) :
    (A394185 n : ℚ) = (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + (41 * n : ℚ) / 6 + 3 := by
  have hE : (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + (41 * n : ℚ) / 6 + 3 = ((18 + 41 * (n : ℤ) + 18 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 18 + 41 * (n : ℤ) + 18 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 18 + 41 * (n : ℤ) + 18 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 18 + 41 * (n : ℤ) + 18 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 := by omega
  have hq : (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + (41 * n : ℚ) / 6 + 3 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 18 + 41 * (n : ℤ) + 18 * (n : ℤ) ^ 2 + (n : ℤ) ^ 3 = z * 6)
  simp only [A394185, A394185.P5619514107203186845.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

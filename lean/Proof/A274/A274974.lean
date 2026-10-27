import Prog.A274.A2749
import Proof.Lib.Integral

/-- A274974: Centered octahemioctahedral numbers: a(n) = (4*n^3+24*n^2+8*n+3)/3. The name formula is an integer. -/
theorem A274974.anchor (n : ℕ) :
    (A274974 n : ℚ) = (4 * n ^ 3 + 24 * n ^ 2 + 8 * n + 3 : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (4 * n ^ 3 + 24 * n ^ 2 + 8 * n + 3 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (4 * n ^ 3 + 24 * n ^ 2 + 8 * n + 3 : ℤ) := by omega
  have hq : (4 * n ^ 3 + 24 * n ^ 2 + 8 * n + 3 : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (4 * n ^ 3 + 24 * n ^ 2 + 8 * n + 3 : ℤ) = z * 3)
  simp only [A274974, A274974.P5151845161253712593.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

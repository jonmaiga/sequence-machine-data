import Prog.A132.A1321
import Proof.Lib.Integral

/-- A132123: a(n) = n * (2*n + 1) * (6*n^2 + 4*n + 1) / 3. The name formula is an integer. -/
theorem A132123.anchor (n : ℕ) :
    (A132123 n : ℚ) = (n * (2 * n + 1) * (6 * n ^ 2 + 4 * n + 1) : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (n * (2 * n + 1) * (6 * n ^ 2 + 4 * n + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (n * (2 * n + 1) * (6 * n ^ 2 + 4 * n + 1) : ℤ) := by omega
  have hq : (n * (2 * n + 1) * (6 * n ^ 2 + 4 * n + 1) : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (2 * n + 1) * (6 * n ^ 2 + 4 * n + 1) : ℤ) = z * 3)
  simp only [A132123, A132123.P4775769122706633601.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

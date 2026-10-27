import Prog.A272.A2721
import Proof.Lib.Integral

/-- A272125: a(n) = n^3*(2*n^2+1)/3. The name formula is an integer. -/
theorem A272125.anchor (n : ℕ) :
    (A272125 n : ℚ) = (n ^ 3 * (2 * n ^ 2 + 1) : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (n ^ 3 * (2 * n ^ 2 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (n ^ 3 * (2 * n ^ 2 + 1) : ℤ) := by omega
  have hq : (n ^ 3 * (2 * n ^ 2 + 1) : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 3 * (2 * n ^ 2 + 1) : ℤ) = z * 3)
  simp only [A272125, A272125.P5472917139588958984.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

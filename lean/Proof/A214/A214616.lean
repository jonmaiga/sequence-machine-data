import Prog.A214.A2146
import Proof.Lib.Integral

/-- A214616: a(n) = n*(n+1)*(n+2)*(n+3)*(20*n^2+72*n+43)/360. The name formula is an integer. -/
theorem A214616.anchor (n : ℕ) :
    (A214616 n : ℚ) = (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℚ) / 360 := by
  have h8 : (8 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (360 : ℤ) ∣ (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℤ) := by omega
  have hq : (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℚ) / 360 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 1) * (n + 2) * (n + 3) * (20 * n ^ 2 + 72 * n + 43) : ℤ) = z * 360)
  simp only [A214616, A214616.P13895584102839837014.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

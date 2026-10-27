import Prog.A387.A3874
import Proof.Lib.Integral

/-- A387439: a(n) = (2*n + 1)*(12 + 11*n + 93*n^2 + 4*n^3)/3. The name formula is an integer. -/
theorem A387439.anchor (n : ℕ) :
    (A387439 n : ℚ) = ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℤ) := by omega
  have hq : ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℤ) = z * 3)
  simp only [A387439, A387439.P7694640285450300545.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

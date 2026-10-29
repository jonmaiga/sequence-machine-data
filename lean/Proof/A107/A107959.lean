import Prog.A107.A1079
import Proof.Lib.Integral

/-- A107959: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(n^2 + 5*n + 5)/720. The name formula is an integer. -/
theorem A107959.anchor (n : ℕ) :
    (A107959 n : ℚ) = ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℚ) / 720 := by
  have h16 : (16 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (720 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℚ) / 720 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) * (n ^ 2 + 5 * n + 5) : ℤ) = z * 720)
  simp only [A107959, A107959.P10341362667604094017.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

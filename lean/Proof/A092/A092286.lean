import Prog.A092.A0922
import Proof.Lib.Integral

/-- A092286: Fourth diagonal (m=3) of triangle A084938; a(n) = A084938(n+3,n) = (n^3 + 9*n^2 + 26*n)/6. The name formula is an integer. -/
theorem A092286.anchor (n : ℕ) :
    (A092286 n : ℚ) = (n ^ 3 + 9 * n ^ 2 + 26 * n : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ (n ^ 3 + 9 * n ^ 2 + 26 * n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (n ^ 3 + 9 * n ^ 2 + 26 * n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ (n ^ 3 + 9 * n ^ 2 + 26 * n : ℤ) := by omega
  have hq : (n ^ 3 + 9 * n ^ 2 + 26 * n : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 3 + 9 * n ^ 2 + 26 * n : ℤ) = z * 6)
  simp only [A092286, A092286.P12797197720896273286.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A167.A1679
import Proof.Lib.Integral

/-- A167963: a(n) = n*(n^5 + 1)/2. The name formula is an integer. -/
theorem A167963.anchor (n : ℕ) :
    (A167963 n : ℚ) = (n * (n ^ 5 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n * (n ^ 5 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n * (n ^ 5 + 1) : ℤ) := by omega
  have hq : (n * (n ^ 5 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n ^ 5 + 1) : ℤ) = z * 2)
  simp only [A167963, A167963.P13145154254571842283.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

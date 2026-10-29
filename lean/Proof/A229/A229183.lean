import Prog.A229.A2291
import Proof.Lib.Integral

/-- A229183: a(n) = n*(n^2 + 3)/2. The name formula is an integer. -/
theorem A229183.anchor (n : ℕ) :
    (A229183 n : ℚ) = (n * (n ^ 2 + 3) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n * (n ^ 2 + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n * (n ^ 2 + 3) : ℤ) := by omega
  have hq : (n * (n ^ 2 + 3) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n ^ 2 + 3) : ℤ) = z * 2)
  simp only [A229183, A229183.P5655827316259754631.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

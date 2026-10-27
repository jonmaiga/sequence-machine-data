import Prog.A168.A1680
import Proof.Lib.Integral

/-- A168029: a(n) = n*(n^6 + 1)/2. The name formula is an integer. -/
theorem A168029.anchor (n : ℕ) :
    (A168029 n : ℚ) = (n * (n ^ 6 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n * (n ^ 6 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n * (n ^ 6 + 1) : ℤ) := by omega
  have hq : (n * (n ^ 6 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n ^ 6 + 1) : ℤ) = z * 2)
  simp only [A168029, A168029.P10159170857480692680.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

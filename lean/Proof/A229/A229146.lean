import Prog.A229.A2291
import Proof.Lib.Integral

/-- A229146: a(n) = n^3*(5*n+3)/2. The name formula is an integer. -/
theorem A229146.anchor (n : ℕ) :
    (A229146 n : ℚ) = (n ^ 3 * (5 * n + 3) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (n ^ 3 * (5 * n + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (n ^ 3 * (5 * n + 3) : ℤ) := by omega
  have hq : (n ^ 3 * (5 * n + 3) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n ^ 3 * (5 * n + 3) : ℤ) = z * 2)
  simp only [A229146, A229146.P2034095443759381722.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A355.A3557
import Proof.Lib.Integral

/-- A355752: a(n) = 3*(2*n - 1)*(3*(2*n - 1)^3 + 1) / 2. The name formula is an integer. -/
theorem A355752.anchor (n : ℕ) :
    (A355752 (n + 1) : ℚ) = (3 * ((2 * (n + 1) : ℤ) - 1) * (3 * ((2 * (n + 1) : ℤ) - 1) ^ 3 + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (3 * ((2 * (n + 1) : ℤ) - 1) * (3 * ((2 * (n + 1) : ℤ) - 1) ^ 3 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (3 * ((2 * (n + 1) : ℤ) - 1) * (3 * ((2 * (n + 1) : ℤ) - 1) ^ 3 + 1) : ℤ) := by omega
  have hq : (3 * ((2 * (n + 1) : ℤ) - 1) * (3 * ((2 * (n + 1) : ℤ) - 1) ^ 3 + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (3 * ((2 * (n + 1) : ℤ) - 1) * (3 * ((2 * (n + 1) : ℤ) - 1) ^ 3 + 1) : ℤ) = z * 2)
  simp only [A355752, Nat.add_sub_cancel, A355752.P14568209550650075275.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

import Prog.A264.A2644
import Proof.Lib.Integral

/-- A264449: a(n) = n*(n + 7)*(n + 14)*(n + 21)*(n + 28)/120. The name formula is an integer. -/
theorem A264449.anchor (n : ℕ) :
    (A264449 n : ℚ) = (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℤ) := by omega
  have hq : (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 7) * (n + 14) * (n + 21) * (n + 28) : ℤ) = z * 120)
  simp only [A264449, A264449.P5910090040537304062.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

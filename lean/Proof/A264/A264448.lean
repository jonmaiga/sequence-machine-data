import Prog.A264.A2644
import Proof.Lib.Integral

/-- A264448: a(n) = n*(n + 11)*(n + 22)*(n + 33)/24. The name formula is an integer. -/
theorem A264448.anchor (n : ℕ) :
    (A264448 n : ℚ) = (n * (n + 11) * (n + 22) * (n + 33) : ℚ) / 24 := by
  have h8 : (8 : ℤ) ∣ (n * (n + 11) * (n + 22) * (n + 33) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (n * (n + 11) * (n + 22) * (n + 33) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (24 : ℤ) ∣ (n * (n + 11) * (n + 22) * (n + 33) : ℤ) := by omega
  have hq : (n * (n + 11) * (n + 22) * (n + 33) : ℚ) / 24 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 11) * (n + 22) * (n + 33) : ℤ) = z * 24)
  simp only [A264448, A264448.P10052184330128183376.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

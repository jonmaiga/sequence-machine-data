import Prog.A108.A1086
import Proof.Lib.Integral

/-- A108671: a(n) = (n+1)(n+2)^3*(n+3)(13n^2 + 37n + 30)/720. The name formula is an integer. -/
theorem A108671.anchor (n : ℕ) :
    (A108671 n : ℚ) = ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℚ) / 720 := by
  have h16 : (16 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (720 : ℤ) ∣ ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℚ) / 720 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) ^ 3 * (n + 3) * (13 * n ^ 2 + 37 * n + 30) : ℤ) = z * 720)
  simp only [A108671, A108671.P12489596368738202224.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

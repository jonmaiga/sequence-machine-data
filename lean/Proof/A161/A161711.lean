import Prog.A161.A1617
import Proof.Lib.Integral

/-- A161711: a(n) = (-4*n^3 + 27*n^2 - 20*n + 3)/3. The name formula is an integer. -/
theorem A161711.anchor (n : ℕ) :
    (A161711 n : ℚ) = ((-4) * (n ^ 3 : ℤ) + (27 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3 : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ ((-4) * (n ^ 3 : ℤ) + (27 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ ((-4) * (n ^ 3 : ℤ) + (27 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3 : ℤ) := by omega
  have hq : ((-4) * (n ^ 3 : ℤ) + (27 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3 : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((-4) * (n ^ 3 : ℤ) + (27 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3 : ℤ) = z * 3)
  simp only [A161711, A161711.P4820622981922326299.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

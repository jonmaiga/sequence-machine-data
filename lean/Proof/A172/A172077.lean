import Prog.A172.A1720
import Proof.Lib.Integral

/-- A172077: a(n) = n*(n+1)*(7*n^2 - n - 4)/4. The name formula is an integer. -/
theorem A172077.anchor (n : ℕ) :
    (A172077 n : ℚ) = ((n * (n + 1) : ℤ) * ((7 * n ^ 2 : ℤ) - (n : ℤ) - 4) : ℚ) / 4 := by
  have h4 : (4 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((7 * n ^ 2 : ℤ) - (n : ℤ) - 4) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (4 : ℤ) ∣ ((n * (n + 1) : ℤ) * ((7 * n ^ 2 : ℤ) - (n : ℤ) - 4) : ℤ) := by omega
  have hq : ((n * (n + 1) : ℤ) * ((7 * n ^ 2 : ℤ) - (n : ℤ) - 4) : ℚ) / 4 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (n + 1) : ℤ) * ((7 * n ^ 2 : ℤ) - (n : ℤ) - 4) : ℤ) = z * 4)
  simp only [A172077, A172077.P2979719852962049009.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

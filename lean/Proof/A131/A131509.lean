import Prog.A131.A1315
import Proof.Lib.Integral

/-- A131509: a(n) = (n + 1)*(n^2 + 2)*(n^3 + 3)/6. The name formula is an integer. -/
theorem A131509.anchor (n : ℕ) :
    (A131509 n : ℚ) = ((n + 1) * (n ^ 2 + 2) * (n ^ 3 + 3) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((n + 1) * (n ^ 2 + 2) * (n ^ 3 + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n ^ 2 + 2) * (n ^ 3 + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((n + 1) * (n ^ 2 + 2) * (n ^ 3 + 3) : ℤ) := by omega
  have hq : ((n + 1) * (n ^ 2 + 2) * (n ^ 3 + 3) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n ^ 2 + 2) * (n ^ 3 + 3) : ℤ) = z * 6)
  simp only [A131509, A131509.P3941252245702602312.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

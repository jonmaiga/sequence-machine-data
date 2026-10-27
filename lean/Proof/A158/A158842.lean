import Prog.A158.A1588
import Proof.Lib.Integral

/-- A158842: a(n) = 1 + n*(n+1)*(n-1)/2. The name formula is an integer. -/
theorem A158842.anchor (n : ℕ) :
    (A158842 n : ℚ) = 1 + ((n * (n + 1) : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 := by
  have hE : 1 + ((n * (n + 1) : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 = ((2 - (n : ℤ) + (n : ℤ) ^ 3 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - (n : ℤ) + (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - (n : ℤ) + (n : ℤ) ^ 3 := by omega
  have hq : 1 + ((n * (n + 1) : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - (n : ℤ) + (n : ℤ) ^ 3 = z * 2)
  simp only [A158842, A158842.P5650998236462169322.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

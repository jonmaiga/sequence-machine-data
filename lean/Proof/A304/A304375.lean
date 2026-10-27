import Prog.A304.A3043
import Proof.Lib.Integral

/-- A304375: a(n) = 27*n^2/2 + 45*n/2 - 12 (n>=1). The name formula is an integer. -/
theorem A304375.anchor (n : ℕ) :
    (A304375 (n + 1) : ℚ) = (27 * (n + 1) ^ 2 : ℚ) / 2 + (45 * (n + 1) : ℚ) / 2 - 12 := by
  have hE : (27 * (n + 1) ^ 2 : ℚ) / 2 + (45 * (n + 1) : ℚ) / 2 - 12 = ((48 + 99 * (n : ℤ) + 27 * (n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 48 + 99 * (n : ℤ) + 27 * (n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 48 + 99 * (n : ℤ) + 27 * (n : ℤ) ^ 2 := by omega
  have hq : (27 * (n + 1) ^ 2 : ℚ) / 2 + (45 * (n + 1) : ℚ) / 2 - 12 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 48 + 99 * (n : ℤ) + 27 * (n : ℤ) ^ 2 = z * 2)
  simp only [A304375, Nat.add_sub_cancel, A304375.P15898070538892034458.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

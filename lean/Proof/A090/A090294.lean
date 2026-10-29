import Prog.A090.A0902
import Proof.Lib.Integral

/-- A090294: a(n) = K_3(n) = Sum_{k>=0} A090285(3,k)*2^k*binomial(n,k). a(n) = (4*n^3+30*n^2+56*n+15)/3. The name formula is an integer. -/
theorem A090294.anchor (n : ℕ) :
    (A090294 n : ℚ) = (4 * n ^ 3 + 30 * n ^ 2 + 56 * n + 15 : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (4 * n ^ 3 + 30 * n ^ 2 + 56 * n + 15 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (4 * n ^ 3 + 30 * n ^ 2 + 56 * n + 15 : ℤ) := by omega
  have hq : (4 * n ^ 3 + 30 * n ^ 2 + 56 * n + 15 : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (4 * n ^ 3 + 30 * n ^ 2 + 56 * n + 15 : ℤ) = z * 3)
  simp only [A090294, A090294.P12427730223927020637.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

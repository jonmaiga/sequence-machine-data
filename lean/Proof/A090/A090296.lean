import Prog.A090.A0902
import Proof.Lib.Integral

/-- A090296: a(n) = K_4(n) = Sum_{k>=0} A090285(4,k)*2^k*binomial(n,k). a(n) = 2*(n^4+14*n^3+62*n^2+91*n+21)/3. The name formula is an integer. -/
theorem A090296.anchor (n : ℕ) :
    (A090296 n : ℚ) = (2 * (n ^ 4 + 14 * n ^ 3 + 62 * n ^ 2 + 91 * n + 21) : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (2 * (n ^ 4 + 14 * n ^ 3 + 62 * n ^ 2 + 91 * n + 21) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (2 * (n ^ 4 + 14 * n ^ 3 + 62 * n ^ 2 + 91 * n + 21) : ℤ) := by omega
  have hq : (2 * (n ^ 4 + 14 * n ^ 3 + 62 * n ^ 2 + 91 * n + 21) : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (2 * (n ^ 4 + 14 * n ^ 3 + 62 * n ^ 2 + 91 * n + 21) : ℤ) = z * 3)
  simp only [A090296, A090296.P8610668846866085165.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

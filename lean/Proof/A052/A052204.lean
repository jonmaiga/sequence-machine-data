import Prog.A052.A0522
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A052204: a(n) = (5n+1)*C(4n,n)/(3n+1). The name formula is an integer. -/
theorem A052204.anchor (n : ℕ) :
    (A052204 n : ℚ) = ((5 * n + 1) * Nat.choose (4 * n) n : ℚ) / (3 * n + 1 : ℚ) := by
  have hd : (3 * n + 1 : ℕ) ∣ ((5 * n + 1) * Nat.choose (4 * n) n : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 4 n (by norm_num)).trans ⟨(5 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : ((5 * n + 1) * Nat.choose (4 * n) n : ℚ) / (3 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A052204, A052204.P13577807641122741387.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

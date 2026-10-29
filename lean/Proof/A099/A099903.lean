import Prog.A099.A0999
import Proof.Lib.Integral

/-- A099903: Sum of all matrix elements of n X n matrix M(i,j) = i^3+j^3, (i,j = 1..n). a(n) = n^3*(n+1)^2/2. The name formula is an integer. -/
theorem A099903.anchor (n : ℕ) :
    (A099903 (n + 1) : ℚ) = ((n + 1) ^ 3 * (n + 2) ^ 2 : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((n + 1) ^ 3 * (n + 2) ^ 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((n + 1) ^ 3 * (n + 2) ^ 2 : ℤ) := by omega
  have hq : ((n + 1) ^ 3 * (n + 2) ^ 2 : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) ^ 3 * (n + 2) ^ 2 : ℤ) = z * 2)
  simp only [A099903, Nat.add_sub_cancel, A099903.P7325165902927232263.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]

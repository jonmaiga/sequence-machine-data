import Prog.A006.A0062
import Proof.A000.A000005

/-! The canonical program of A006218 is the recursion `a(n-1)+A000005(n)` with `a(0) = 0`, the partial sums of
A000005, the number of divisors (`A000005.anchor`). -/

local notation "dsum" => A006218.P9218434490128439557.a

private theorem dsum_succ (n : ℕ) : dsum (n + 1) = dsum n + A000005 (n + 1) := by
  simp only [A006218.P9218434490128439557.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

/-- A006218 is the partial sums of the number of divisors, `∑ k ∈ [1, n], σ₀ k`. -/
theorem A006218.anchor (n : ℕ) : A006218 n = ∑ k ∈ Finset.Icc 1 n, (ArithmeticFunction.sigma 0 k : ℤ) := by
  simp only [A006218]
  induction n with
  | zero => simp [A006218.P9218434490128439557.a, SequenceMachineLib.rec_of_lt]
  | succ n ih =>
    rw [dsum_succ, ih, Finset.sum_Icc_succ_top (by omega), A000005.anchor (n + 1) (by omega)]

import Prog.A000.A0005
import Mathlib.Data.Nat.Factorial.BigOperators

/-! The canonical program of A000522 is the recursion `1+n*a(n-1)` with `a(0) = 1`, which the sum of the
falling factorials satisfies (`Nat.succ_descFactorial_succ`). -/

local notation "arr" => A000522.P12126844601845706129.a

private theorem arr_succ (n : ℕ) : arr (n + 1) = 1 + (n + 1) * arr n := by
  simp only [A000522.P12126844601845706129.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

private theorem arr_eq (n : ℕ) : arr n = ∑ k ∈ Finset.range (n + 1), n.descFactorial k := by
  induction n with
  | zero => simp [A000522.P12126844601845706129.a, SequenceMachineLib.rec_of_lt]
  | succ n ih =>
    rw [arr_succ, ih, Finset.sum_range_succ' _ (n + 1)]
    simp only [Nat.succ_descFactorial_succ, Nat.descFactorial_zero, Finset.mul_sum]
    ring

/-- A000522 is the number of ordered k-tuples of distinct elements of an n-set, `∑ k ≤ n, n!/(n-k)!`. -/
theorem A000522.anchor (n : ℕ) : A000522 n = ((∑ k ∈ Finset.range (n + 1), n.descFactorial k : ℕ) : ℤ) := by
  simp [A000522, arr_eq]

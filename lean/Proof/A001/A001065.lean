import Prog.A001.A0010
import Proof.A000.A000203

/-- A001065 is the sum of the proper divisors (aliquot parts) of `n`. -/
theorem A001065.anchor (n : ℕ) (hn : 1 ≤ n) : A001065 n = ((∑ d ∈ n.properDivisors, d : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000203.anchor _ (by omega), ArithmeticFunction.sigma_one_apply,
    Nat.sum_divisors_eq_sum_properDivisors_add_self]
  push_cast
  ring

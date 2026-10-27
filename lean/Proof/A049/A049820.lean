import Prog.A049.A0498
import Proof.A000.A000005

/-- A049820 is `n - d(n)`, `d(n)` the number of divisors of `n`. -/
theorem A049820.anchor (n : ℕ) (hn : 1 ≤ n) : A049820 n = (n : ℤ) - (n.divisors.card : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000005.anchor _ (by omega), ArithmeticFunction.sigma_zero_apply]
  push_cast
  ring

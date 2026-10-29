import Prog.A033.A0338
import Proof.A000.A000203

/-- A033879 is the deficiency of `n`: `2n` minus the sum of the divisors of `n`. -/
theorem A033879.anchor (n : ℕ) (hn : 1 ≤ n) :
    A033879 n = 2 * (n : ℤ) - ((∑ d ∈ n.divisors, d : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000203.anchor _ (by omega), ArithmeticFunction.sigma_one_apply]
  push_cast
  ring

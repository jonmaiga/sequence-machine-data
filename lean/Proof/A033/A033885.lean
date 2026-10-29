import Prog.A033.A0338
import Proof.A000.A000203

/-- A033885 is `3n` minus the sum of the divisors of `n`. -/
theorem A033885.anchor (n : ℕ) (hn : 1 ≤ n) :
    A033885 n = 3 * (n : ℤ) - ((∑ d ∈ n.divisors, d : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A033885, A033885.P621255430935931612.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000203.anchor _ (by omega), ArithmeticFunction.sigma_one_apply]
  push_cast
  ring

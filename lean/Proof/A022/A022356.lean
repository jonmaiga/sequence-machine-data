import Prog.A022.A0223
import Proof.A000.A000045

/-- A022356 is the Fibonacci sequence beginning 0, 22: each term is the sum of the two before it. -/
theorem A022356.anchor :
    A022356 0 = 0 ∧ A022356 1 = 22 ∧ ∀ n, A022356 (n + 2) = A022356 (n + 1) + A022356 n := by
  simp only [A022356, A022356.P14674045787055345271.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

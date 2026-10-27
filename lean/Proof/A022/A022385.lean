import Prog.A022.A0223
import Proof.A000.A000045

/-- A022385 is the Fibonacci sequence beginning 4, 22: each term is the sum of the two before it. -/
theorem A022385.anchor :
    A022385 0 = 4 ∧ A022385 1 = 22 ∧ ∀ n, A022385 (n + 2) = A022385 (n + 1) + A022385 n := by
  simp only [A022385, A022385.P15307573853202509835.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0221
import Proof.A000.A000045

/-- A022115 is the Fibonacci sequence beginning 2, 11: each term is the sum of the two before it. -/
theorem A022115.anchor :
    A022115 0 = 2 ∧ A022115 1 = 11 ∧ ∀ n, A022115 (n + 2) = A022115 (n + 1) + A022115 n := by
  simp only [A022115, A022115.P15621070677135967936.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 3 + 2) : ℤ) = Nat.fib (n + 3) + Nat.fib (n + 3 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

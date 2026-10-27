import Prog.A022.A0223
import Proof.A000.A000045

/-- A022394 is the Fibonacci sequence beginning 1, 24: each term is the sum of the two before it. -/
theorem A022394.anchor :
    A022394 0 = 1 ∧ A022394 1 = 24 ∧ ∀ n, A022394 (n + 2) = A022394 (n + 1) + A022394 n := by
  simp only [A022394, A022394.P9930325443307153468.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0224
import Proof.A000.A000045

/-- A022401 is the Fibonacci sequence beginning 1, 31: each term is the sum of the two before it. -/
theorem A022401.anchor :
    A022401 0 = 1 ∧ A022401 1 = 31 ∧ ∀ n, A022401 (n + 2) = A022401 (n + 1) + A022401 n := by
  simp only [A022401, A022401.P9589030317855516827.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0223
import Proof.A000.A000045

/-- A022348 is the Fibonacci sequence beginning 0, 14: each term is the sum of the two before it. -/
theorem A022348.anchor :
    A022348 0 = 0 ∧ A022348 1 = 14 ∧ ∀ n, A022348 (n + 2) = A022348 (n + 1) + A022348 n := by
  simp only [A022348, A022348.P5230939691613285964.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

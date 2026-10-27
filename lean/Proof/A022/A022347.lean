import Prog.A022.A0223
import Proof.A000.A000045

/-- A022347 is the Fibonacci sequence beginning 0, 13: each term is the sum of the two before it. -/
theorem A022347.anchor :
    A022347 0 = 0 ∧ A022347 1 = 13 ∧ ∀ n, A022347 (n + 2) = A022347 (n + 1) + A022347 n := by
  simp only [A022347, A022347.P1041826028407669146.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

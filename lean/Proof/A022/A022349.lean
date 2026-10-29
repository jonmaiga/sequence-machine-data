import Prog.A022.A0223
import Proof.A000.A000045

/-- A022349 is the Fibonacci sequence beginning 0, 15: each term is the sum of the two before it. -/
theorem A022349.anchor :
    A022349 0 = 0 ∧ A022349 1 = 15 ∧ ∀ n, A022349 (n + 2) = A022349 (n + 1) + A022349 n := by
  simp only [A022349, A022349.P10870212278406772653.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

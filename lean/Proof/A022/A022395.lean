import Prog.A022.A0223
import Proof.A000.A000045

/-- A022395 is the Fibonacci sequence beginning 1, 25: each term is the sum of the two before it. -/
theorem A022395.anchor :
    A022395 0 = 1 ∧ A022395 1 = 25 ∧ ∀ n, A022395 (n + 2) = A022395 (n + 1) + A022395 n := by
  simp only [A022395, A022395.P4004029521583966980.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0223
import Proof.A000.A000045

/-- A022353 is the Fibonacci sequence beginning 0, 19: each term is the sum of the two before it. -/
theorem A022353.anchor :
    A022353 0 = 0 ∧ A022353 1 = 19 ∧ ∀ n, A022353 (n + 2) = A022353 (n + 1) + A022353 n := by
  simp only [A022353, A022353.P4384315512974334384.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

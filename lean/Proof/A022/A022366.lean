import Prog.A022.A0223
import Proof.A000.A000045

/-- A022366 is the Fibonacci sequence beginning 0, 32: each term is the sum of the two before it. -/
theorem A022366.anchor :
    A022366 0 = 0 ∧ A022366 1 = 32 ∧ ∀ n, A022366 (n + 2) = A022366 (n + 1) + A022366 n := by
  simp only [A022366, A022366.P2612584355768870922.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

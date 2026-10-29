import Prog.A022.A0223
import Proof.A000.A000045

/-- A022351 is the Fibonacci sequence beginning 0, 17: each term is the sum of the two before it. -/
theorem A022351.anchor :
    A022351 0 = 0 ∧ A022351 1 = 17 ∧ ∀ n, A022351 (n + 2) = A022351 (n + 1) + A022351 n := by
  simp only [A022351, A022351.P1553212968435598646.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0223
import Proof.A000.A000045

/-- A022399 is the Fibonacci sequence beginning 1, 29: each term is the sum of the two before it. -/
theorem A022399.anchor :
    A022399 0 = 1 ∧ A022399 1 = 29 ∧ ∀ n, A022399 (n + 2) = A022399 (n + 1) + A022399 n := by
  simp only [A022399, A022399.P4935257256329762216.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0223
import Proof.A000.A000045

/-- A022386 is the Fibonacci sequence beginning 4, 26: each term is the sum of the two before it. -/
theorem A022386.anchor :
    A022386 0 = 4 ∧ A022386 1 = 26 ∧ ∀ n, A022386 (n + 2) = A022386 (n + 1) + A022386 n := by
  simp only [A022386, A022386.P2397031079009450865.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

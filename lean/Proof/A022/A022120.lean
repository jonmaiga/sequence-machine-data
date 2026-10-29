import Prog.A022.A0221
import Proof.A000.A000045

/-- A022120 is the Fibonacci sequence beginning 3, 7: each term is the sum of the two before it. -/
theorem A022120.anchor :
    A022120 0 = 3 ∧ A022120 1 = 7 ∧ ∀ n, A022120 (n + 2) = A022120 (n + 1) + A022120 n := by
  simp only [A022120, A022120.P5426568397649837323.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 1 + 2) : ℤ) = Nat.fib (n + 1) + Nat.fib (n + 1 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0223
import Proof.A000.A000045

/-- A022389 is the Fibonacci sequence beginning 7, 15: each term is the sum of the two before it. -/
theorem A022389.anchor :
    A022389 0 = 7 ∧ A022389 1 = 15 ∧ ∀ n, A022389 (n + 2) = A022389 (n + 1) + A022389 n := by
  simp only [A022389, A022389.P8122599839796764298.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

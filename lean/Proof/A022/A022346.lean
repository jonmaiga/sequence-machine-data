import Prog.A022.A0223
import Proof.A000.A000045

/-- A022346 is the Fibonacci sequence beginning 0, 12: each term is the sum of the two before it. -/
theorem A022346.anchor :
    A022346 0 = 0 ∧ A022346 1 = 12 ∧ ∀ n, A022346 (n + 2) = A022346 (n + 1) + A022346 n := by
  simp only [A022346, A022346.P3506680417996539901.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

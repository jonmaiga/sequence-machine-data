import Prog.A022.A0223
import Proof.A000.A000045

/-- A022398 is the Fibonacci sequence beginning 1, 28: each term is the sum of the two before it. -/
theorem A022398.anchor :
    A022398 0 = 1 ∧ A022398 1 = 28 ∧ ∀ n, A022398 (n + 2) = A022398 (n + 1) + A022398 n := by
  simp only [A022398, A022398.P18208586573942108252.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  have e1 : (Nat.fib (n + 2 + 2) : ℤ) = Nat.fib (n + 2) + Nat.fib (n + 2 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

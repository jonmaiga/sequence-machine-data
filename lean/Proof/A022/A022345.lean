import Prog.A022.A0223
import Proof.A000.A000045

/-- A022345 is the Fibonacci sequence beginning 0, 11: each term is the sum of the two before it. -/
theorem A022345.anchor :
    A022345 0 = 0 ∧ A022345 1 = 11 ∧ ∀ n, A022345 (n + 2) = A022345 (n + 1) + A022345 n := by
  simp only [A022345, A022345.P11331629753888677578.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

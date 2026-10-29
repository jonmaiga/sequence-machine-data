import Prog.A022.A0223
import Proof.A000.A000045

/-- A022354 is the Fibonacci sequence beginning 0, 20: each term is the sum of the two before it. -/
theorem A022354.anchor :
    A022354 0 = 0 ∧ A022354 1 = 20 ∧ ∀ n, A022354 (n + 2) = A022354 (n + 1) + A022354 n := by
  simp only [A022354, A022354.P2497390260056676203.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

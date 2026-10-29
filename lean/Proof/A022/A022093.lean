import Prog.A022.A0220
import Proof.A000.A000045

/-- A022093 is the Fibonacci sequence beginning 0, 10: each term is the sum of the two before it. -/
theorem A022093.anchor :
    A022093 0 = 0 ∧ A022093 1 = 10 ∧ ∀ n, A022093 (n + 2) = A022093 (n + 1) + A022093 n := by
  simp only [A022093, A022093.P316154037428549231.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

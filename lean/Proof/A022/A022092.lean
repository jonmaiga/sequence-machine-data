import Prog.A022.A0220
import Proof.A000.A000045

/-- A022092 is the Fibonacci sequence beginning 0, 9: each term is the sum of the two before it. -/
theorem A022092.anchor :
    A022092 0 = 0 ∧ A022092 1 = 9 ∧ ∀ n, A022092 (n + 2) = A022092 (n + 1) + A022092 n := by
  simp only [A022092, A022092.P12154545116690058814.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

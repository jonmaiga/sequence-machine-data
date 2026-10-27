import Prog.A022.A0223
import Proof.A000.A000045

/-- A022361 is the Fibonacci sequence beginning 0, 27: each term is the sum of the two before it. -/
theorem A022361.anchor :
    A022361 0 = 0 ∧ A022361 1 = 27 ∧ ∀ n, A022361 (n + 2) = A022361 (n + 1) + A022361 n := by
  simp only [A022361, A022361.P9439601930716895092.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

import Prog.A022.A0223
import Proof.A000.A000045

/-- A022352 is the Fibonacci sequence beginning 0, 18: each term is the sum of the two before it. -/
theorem A022352.anchor :
    A022352 0 = 0 ∧ A022352 1 = 18 ∧ ∀ n, A022352 (n + 2) = A022352 (n + 1) + A022352 n := by
  simp only [A022352, A022352.P10895253600584194026.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

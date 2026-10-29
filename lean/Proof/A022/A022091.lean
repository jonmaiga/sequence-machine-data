import Prog.A022.A0220
import Proof.A000.A000045

/-- A022091 is the Fibonacci sequence beginning 0, 8: each term is the sum of the two before it. -/
theorem A022091.anchor :
    A022091 0 = 0 ∧ A022091 1 = 8 ∧ ∀ n, A022091 (n + 2) = A022091 (n + 1) + A022091 n := by
  simp only [A022091, A022091.P8466803900234881799.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

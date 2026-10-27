import Prog.A022.A0223
import Proof.A000.A000045

/-- A022362 is the Fibonacci sequence beginning 0, 28: each term is the sum of the two before it. -/
theorem A022362.anchor :
    A022362 0 = 0 ∧ A022362 1 = 28 ∧ ∀ n, A022362 (n + 2) = A022362 (n + 1) + A022362 n := by
  simp only [A022362, A022362.P11876149498119894087.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

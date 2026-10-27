import Prog.A022.A0220
import Proof.A000.A000045

/-- A022088 is the Fibonacci sequence beginning 0, 5: each term is the sum of the two before it. -/
theorem A022088.anchor :
    A022088 0 = 0 ∧ A022088 1 = 5 ∧ ∀ n, A022088 (n + 2) = A022088 (n + 1) + A022088 n := by
  simp only [A022088, A022088.P13238787405379109622.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

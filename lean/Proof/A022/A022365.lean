import Prog.A022.A0223
import Proof.A000.A000045

/-- A022365 is the Fibonacci sequence beginning 0, 31: each term is the sum of the two before it. -/
theorem A022365.anchor :
    A022365 0 = 0 ∧ A022365 1 = 31 ∧ ∀ n, A022365 (n + 2) = A022365 (n + 1) + A022365 n := by
  simp only [A022365, A022365.P15230630190226812545.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

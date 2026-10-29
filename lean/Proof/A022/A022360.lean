import Prog.A022.A0223
import Proof.A000.A000045

/-- A022360 is the Fibonacci sequence beginning 0, 26: each term is the sum of the two before it. -/
theorem A022360.anchor :
    A022360 0 = 0 ∧ A022360 1 = 26 ∧ ∀ n, A022360 (n + 2) = A022360 (n + 1) + A022360 n := by
  simp only [A022360, A022360.P3825721097200071590.a, SequenceMachineLib.memo_apply, A000045.anchor]
  refine ⟨by norm_num [Nat.fib_add_two], by norm_num [Nat.fib_add_two], fun n => ?_⟩
  have e0 : (Nat.fib (n + 0 + 2) : ℤ) = Nat.fib (n + 0) + Nat.fib (n + 0 + 1) := by exact_mod_cast Nat.fib_add_two
  ring_nf at *
  linarith

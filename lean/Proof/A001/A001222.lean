import Prog.A001.A0012
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-- A001222 is big omega, the number of prime factors of `n` counted with multiplicity. -/
theorem A001222.anchor (n : ℕ) (hn : 1 ≤ n) : A001222 n = (ArithmeticFunction.cardFactors n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A001222, A001222.P667907507343207792.a, A001222.P667907507343207792.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [ArithmeticFunction.cardFactors_eq_sum_factorization, Finsupp.sum, Nat.support_factorization]

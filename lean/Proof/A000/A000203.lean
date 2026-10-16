import Prog.A000.A000203
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-- A000203 is the sum of divisors σ₁. -/
theorem A000203.anchor (n : ℕ) (hn : 1 ≤ n) : A000203 n = (ArithmeticFunction.sigma 1 n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A000203, A000203.P15001602795509372896.a, A000203.P15001602795509372896.f1,
    ArithmeticFunction.sigma_one_apply]

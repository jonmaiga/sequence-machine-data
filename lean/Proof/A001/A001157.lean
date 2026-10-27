import Prog.A001.A0011
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-- A001157 is sigma_2, the sum of the squares of the divisors of `n`. -/
theorem A001157.anchor (n : ℕ) (hn : 1 ≤ n) : A001157 n = (ArithmeticFunction.sigma 2 n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A001157, A001157.P17878717581134609993.a, A001157.P17878717581134609993.f1,
    ArithmeticFunction.sigma_apply]

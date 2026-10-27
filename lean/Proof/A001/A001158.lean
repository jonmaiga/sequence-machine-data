import Prog.A001.A0011
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-- A001158 is sigma_3, the sum of the cubes of the divisors of `n`. -/
theorem A001158.anchor (n : ℕ) (hn : 1 ≤ n) : A001158 n = (ArithmeticFunction.sigma 3 n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A001158, A001158.P5142498491642488153.a, A001158.P5142498491642488153.f1,
    ArithmeticFunction.sigma_apply]

import Prog.A008.A0084

/-- A008472 is the sum of the distinct primes dividing `n`. -/
theorem A008472.anchor (n : ℕ) (hn : 1 ≤ n) : A008472 n = ∑ p ∈ n.primeFactors, (p : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A008472, A008472.P6567490011312877583.a, A008472.P6567490011312877583.f1]

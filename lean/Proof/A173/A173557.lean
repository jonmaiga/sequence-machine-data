import Prog.A173.A1735

/-- A173557 is the product of `p - 1` over the primes `p` dividing `n`. -/
theorem A173557.anchor (n : ℕ) (hn : 1 ≤ n) :
    A173557 n = ∏ p ∈ n.primeFactors, ((p : ℤ) - 1) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A173557, A173557.P308518469657070908.a, A173557.P308518469657070908.f1]

import Prog.A007.A0079
import Mathlib.RingTheory.Radical.NatInt

/-- A007947 is the radical of n, the product of its distinct prime factors. -/
theorem A007947.anchor (n : ℕ) (hn : 1 ≤ n) :
    A007947 n = ((UniqueFactorizationMonoid.radical n : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A007947, A007947.P6860725317735988916.a, A007947.P6860725317735988916.f1, Nat.radical_eq_prod_primeFactors]

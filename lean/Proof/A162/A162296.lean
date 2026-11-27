import Prog.A162.A1622
import Mathlib.Data.Nat.Squarefree

/-- The sum of the squarefree divisors of `n` is `∏ p ∣ n, (1 + p)`. -/
private theorem sum_squarefree_divisors (n : ℕ) (h0 : n ≠ 0) :
    ∑ d ∈ n.divisors with Squarefree d, d = ∏ p ∈ n.primeFactors, (1 + p) := by
  rw [Nat.sum_divisors_filter_squarefree h0]
  have hP : (UniqueFactorizationMonoid.normalizedFactors n).toFinset = n.primeFactors := by
    rw [Nat.factors_eq]
    ext p
    simp
  rw [hP]
  simp_rw [add_comm 1]
  rw [Finset.prod_add_one]
  refine Finset.sum_congr rfl fun t _ => ?_
  exact Finset.prod_val t

/-- A162296: the sum of the divisors of `n` that have a square factor (are not squarefree). -/
theorem A162296.anchor (n : ℕ) (hn : 1 ≤ n) :
    A162296 n = ∑ d ∈ n.divisors with ¬ Squarefree d, (d : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A162296, A162296.P12828981685556826858.a, A162296.P12828981685556826858.f1,
    A162296.P12828981685556826858.f2, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [show 1 + m = m + 1 by ring, ← sum_squarefree_divisors (m + 1) (by omega),
    ← Finset.sum_filter_add_sum_filter_not (m + 1).divisors Squarefree (fun d => d)]
  push_cast
  ring

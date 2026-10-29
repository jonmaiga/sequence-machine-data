import Prog.A000.A0007
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-! The canonical program of A000720 sums `C(C(2, Ω(j+1)), 2)` over `j < n`, with Ω the sum of the prime exponents.
That term is 1 when Ω is 1, i.e. when j+1 is prime (`cardFactors_eq_one_iff_prime`), and 0 otherwise. -/

open ArithmeticFunction

private theorem term_eq (m : ℕ) :
    Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors m, Nat.factorization m p)) 2 = if m.Prime then 1 else 0 := by
  have hs : ∑ p ∈ Nat.primeFactors m, Nat.factorization m p = cardFactors m := by
    rw [cardFactors_eq_sum_factorization, Finsupp.sum, Nat.support_factorization]
  rw [hs]
  by_cases hp : m.Prime
  · simp [hp, cardFactors_apply_prime hp]
  · have h1 : cardFactors m ≠ 1 := fun h => hp (cardFactors_eq_one_iff_prime.mp h)
    simp only [hp, ↓reduceIte]
    generalize cardFactors m = k at h1 ⊢
    rcases Nat.lt_or_ge k 3 with h | h
    · interval_cases k <;> simp_all
    · rw [Nat.choose_eq_zero_of_lt (by omega : 2 < k)]
      rfl

/-- A000720 is the prime counting function π(n), Mathlib's `Nat.primeCounting`. -/
theorem A000720.anchor (n : ℕ) (hn : 1 ≤ n) : A000720 n = (Nat.primeCounting n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000720, A000720.P1755771944745605250.a, A000720.P1755771944745605250.f1,
    A000720.P1755771944745605250.f2, SequenceMachineLib.memo_apply, Nat.add_sub_cancel, term_eq]
  rw [Nat.primeCounting, Nat.primeCounting', Nat.count_eq_card_filter_range, Finset.card_filter,
    Finset.sum_range_succ' _ (m + 1)]
  simp [Nat.not_prime_zero]

import Prog.A001.A0012
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-- A001221 is omega, the number of distinct primes dividing `n`. -/
theorem A001221.anchor (n : ℕ) (hn : 1 ≤ n) :
    A001221 n = (ArithmeticFunction.cardDistinctFactors n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A001221, A001221.P14816172234621668833.a, A001221.P14816172234621668833.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [ArithmeticFunction.cardDistinctFactors_apply, ← List.card_toFinset, ← Nat.primeFactors.eq_1,
    Finset.card_eq_sum_ones, Nat.cast_sum]
  refine Finset.sum_congr rfl fun p hp => ?_
  have hp1 : (1 : ℚ) < p := by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).one_lt
  have hp0 : (0 : ℚ) < p := by linarith
  rw [Nat.cast_one, Int.ceil_eq_iff]
  refine ⟨by simpa using one_div_pos.mpr hp0, ?_⟩
  push_cast
  rw [div_le_one hp0]
  linarith

import Prog.A000.A0000
import Proof.A173.A173557
import Proof.A003.A003557
import Mathlib.Data.Nat.Totient

/-! The canonical program of A000010 is `A173557(n) * A003557(n)`, the product of `p - 1` over the primes
dividing `n` times `n / rad(n)`, which is `Nat.totient_eq_div_primeFactors_mul`. -/

/-- A000010 is Euler's totient function. -/
theorem A000010.anchor (n : ℕ) (hn : 1 ≤ n) : A000010 n = (Nat.totient n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A173557.anchor _ (by omega), A003557.anchor _ (by omega), Nat.totient_eq_div_primeFactors_mul,
    Nat.radical_eq_prod_primeFactors, mul_comm, Nat.cast_mul, Nat.cast_prod]
  congr 1
  refine Finset.prod_congr rfl fun p hp => ?_
  rw [Nat.cast_sub (Nat.prime_of_mem_primeFactors hp).one_le, Nat.cast_one]

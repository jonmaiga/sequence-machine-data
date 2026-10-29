import Prog.A001.A0016
import Proof.A007.A007947
import Proof.A000.A000203

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- A001615 is the Dedekind psi function, `n * ∏_{p ∣ n} (1 + 1/p)`. -/
theorem A001615.anchor (n : ℕ) (hn : 1 ≤ n) :
    (A001615 n : ℚ) = n * ∏ p ∈ n.primeFactors, (1 + 1 / (p : ℚ)) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hrad : UniqueFactorizationMonoid.radical (m + 1) = ∏ p ∈ (m + 1).primeFactors, p :=
    Nat.radical_eq_prod_primeFactors
  have hd : ∏ p ∈ (m + 1).primeFactors, p ∣ m + 1 := Nat.prod_primeFactors_dvd (m + 1)
  have hpos : 0 < ∏ p ∈ (m + 1).primeFactors, p :=
    Finset.prod_pos fun p hp => (Nat.prime_of_mem_primeFactors hp).pos
  have hsig : ArithmeticFunction.sigma 1 (∏ p ∈ (m + 1).primeFactors, p) = ∏ p ∈ (m + 1).primeFactors, (p + 1) := by
    rw [ArithmeticFunction.isMultiplicative_sigma.map_prod_of_prime _ fun p hp => Nat.prime_of_mem_primeFactors hp]
    refine Finset.prod_congr rfl fun p hp => ?_
    have hpp := Nat.prime_of_mem_primeFactors hp
    rw [ArithmeticFunction.sigma_one_apply, hpp.divisors, Finset.sum_pair hpp.one_lt.ne, add_comm]
  have hval : A001615.P12078511981713404634.a m =
      (((m + 1) / (∏ p ∈ (m + 1).primeFactors, p) * ∏ p ∈ (m + 1).primeFactors, (p + 1) : ℕ) : ℚ) := by
    simp only [A001615.P12078511981713404634.a, SequenceMachineLib.memo_apply, A007947.anchor (m + 1) (by omega),
      hrad, Int.toNat_natCast, A000203.anchor _ hpos, hsig]
    rw [Nat.cast_mul, Nat.cast_div hd (Nat.cast_ne_zero.mpr hpos.ne')]
    push_cast
    field_simp
  simp only [A001615, Nat.add_sub_cancel, hval, roundAway_natCast, Int.cast_natCast]
  have hprod : ∏ p ∈ (m + 1).primeFactors, (1 + 1 / (p : ℚ)) =
      (∏ p ∈ (m + 1).primeFactors, ((p : ℚ) + 1)) / ∏ p ∈ (m + 1).primeFactors, (p : ℚ) := by
    rw [← Finset.prod_div_distrib]
    refine Finset.prod_congr rfl fun p hp => ?_
    have : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.prime_of_mem_primeFactors hp).ne_zero
    field_simp
  have h0 : ∏ p ∈ (m + 1).primeFactors, (p : ℚ) ≠ 0 := by
    rw [← Nat.cast_prod]
    exact Nat.cast_ne_zero.mpr hpos.ne'
  rw [Nat.cast_mul, Nat.cast_div hd (Nat.cast_ne_zero.mpr hpos.ne'), hprod]
  push_cast
  field_simp

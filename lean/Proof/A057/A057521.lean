import Prog.A057.A0575
import Proof.A003.A003557
import Proof.A007.A007947

/-- The exponent of a prime `q` in a product of powers of distinct primes. -/
private theorem factorization_prod_pow (S : Finset ℕ) (hS : ∀ p ∈ S, p.Prime) (f : ℕ → ℕ) (q : ℕ) :
    (∏ p ∈ S, p ^ f p).factorization q = if q ∈ S then f q else 0 := by
  rw [Nat.factorization_prod fun p hp => (pow_pos (hS p hp).pos _).ne', Finset.sum_apply']
  have term : ∀ p ∈ S, (p ^ f p).factorization q = if p = q then f p else 0 := by
    intro p hp
    rw [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul, (hS p hp).factorization, Finsupp.single_apply]
    split_ifs <;> simp
  rw [Finset.sum_congr rfl term, Finset.sum_ite_eq']

private theorem mem_primeFactors_iff (n q : ℕ) : q ∈ n.primeFactors ↔ n.factorization q ≠ 0 := by
  rw [← Nat.support_factorization, Finsupp.mem_support_iff]

/-- The exponent of `q` in the radical of `n` is 1 for the primes dividing `n`, otherwise 0. -/
private theorem factorization_radical (n q : ℕ) :
    (UniqueFactorizationMonoid.radical n).factorization q = if q ∈ n.primeFactors then 1 else 0 := by
  have := factorization_prod_pow n.primeFactors (fun p hp => Nat.prime_of_mem_primeFactors hp) (fun _ => 1) q
  simpa [Nat.radical_eq_prod_primeFactors] using this

/-- Dividing by the radical lowers every exponent by one. -/
private theorem factorization_div_radical (n q : ℕ) :
    (n / UniqueFactorizationMonoid.radical n).factorization q = n.factorization q - 1 := by
  rw [Nat.factorization_div UniqueFactorizationMonoid.radical_dvd_self, Finsupp.tsub_apply, factorization_radical]
  split_ifs with h
  · rfl
  · rw [not_not.mp (mt (mem_primeFactors_iff n q).mpr h)]

/-! The canonical program of A057521 is `A064549(A003557(n))` with `A064549(k) = k * rad(k)` and
`A003557(n) = n / rad(n)`: `n / rad(n)` lowers each exponent by one, multiplying by its radical restores the
exponents that are at least 2. -/

/-- A057521 is the powerful part of `n`, the product of the prime powers `p^e ∥ n` with `e ≥ 2`. -/
theorem A057521.anchor (n : ℕ) (hn : 1 ≤ n) :
    A057521 n = ((∏ p ∈ n.primeFactors with 2 ≤ n.factorization p, p ^ n.factorization p : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hd := UniqueFactorizationMonoid.radical_dvd_self (a := m + 1)
  have hr : 0 < UniqueFactorizationMonoid.radical (m + 1) := Nat.pos_of_dvd_of_pos hd (by omega)
  have hQ : 0 < (m + 1) / UniqueFactorizationMonoid.radical (m + 1) :=
    Nat.div_pos (Nat.le_of_dvd (by omega) hd) hr
  have hrQ : 0 < UniqueFactorizationMonoid.radical ((m + 1) / UniqueFactorizationMonoid.radical (m + 1)) :=
    Nat.pos_of_dvd_of_pos UniqueFactorizationMonoid.radical_dvd_self hQ
  simp only [A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    A003557.anchor (m + 1) (by omega), Int.toNat_natCast, A064549, A064549.P18019400484953624932.a,
    Nat.sub_add_cancel hQ, A007947.anchor _ hQ]
  have hc : ((((m + 1) / UniqueFactorizationMonoid.radical (m + 1) - 1 : ℕ) : ℤ) + 1) =
      (((m + 1) / UniqueFactorizationMonoid.radical (m + 1) : ℕ) : ℤ) := by
    omega
  rw [hc, ← Nat.cast_mul, Nat.cast_inj]
  refine Nat.eq_of_factorization_eq (Nat.mul_ne_zero hQ.ne' hrQ.ne')
    (Finset.prod_ne_zero_iff.mpr fun p hp =>
      (pow_pos (Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1).pos _).ne') fun q => ?_
  rw [Nat.factorization_mul hQ.ne' hrQ.ne', Finsupp.add_apply, factorization_div_radical, factorization_radical,
    factorization_prod_pow _ (fun p hp => Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1)]
  have e1 : q ∈ ((m + 1) / UniqueFactorizationMonoid.radical (m + 1)).primeFactors ↔ 2 ≤ (m + 1).factorization q := by
    rw [mem_primeFactors_iff, factorization_div_radical]
    omega
  have e2 : q ∈ (m + 1).primeFactors.filter (fun p => 2 ≤ (m + 1).factorization p) ↔ 2 ≤ (m + 1).factorization q := by
    rw [Finset.mem_filter, mem_primeFactors_iff]
    omega
  simp only [e1, e2]
  split_ifs <;> omega

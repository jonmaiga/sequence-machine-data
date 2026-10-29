import Prog.A008.A0088

/-- `SequenceMachineLib.valuation l (p ^ 2)` is half the exponent of the prime `p` in `l`, rounded down. -/
private theorem valuation_sq (l p : ℕ) (hp : p.Prime) :
    SequenceMachineLib.valuation l (p ^ 2) = l.factorization p / 2 := by
  induction l using Nat.strong_induction_on with
  | _ l ih =>
    rw [SequenceMachineLib.valuation]
    split_ifs with h
    · obtain ⟨-, hl, hd⟩ := h
      have h2 : 2 ≤ l.factorization p := (hp.pow_dvd_iff_le_factorization (by omega)).mp hd
      rw [ih (l / p ^ 2) (Nat.div_lt_self hl (Nat.one_lt_pow two_ne_zero hp.one_lt)), Nat.factorization_div hd,
        Finsupp.tsub_apply, Nat.factorization_pow, Finsupp.smul_apply, hp.factorization_self, smul_eq_mul]
      omega
    · push Not at h
      rcases Nat.eq_zero_or_pos l with rfl | hl
      · simp
      · have : ¬ 2 ≤ l.factorization p := fun h2 =>
          h (Nat.le_self_pow two_ne_zero p |>.trans' hp.two_le) hl ((hp.pow_dvd_iff_le_factorization (by omega)).mpr h2)
        omega

/-- The exponent of a prime `q` in `∏ p ∈ n.primeFactors, p ^ f p`. -/
private theorem factorization_prod_pow (n : ℕ) (f : ℕ → ℕ) (q : ℕ) :
    (∏ p ∈ n.primeFactors, p ^ f p).factorization q = if q ∈ n.primeFactors then f q else 0 := by
  rw [Nat.factorization_prod fun p hp => (pow_pos (Nat.prime_of_mem_primeFactors hp).pos _).ne',
    Finset.sum_apply']
  have term : ∀ p ∈ n.primeFactors, (p ^ f p).factorization q = if p = q then f p else 0 := by
    intro p hp
    rw [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul, (Nat.prime_of_mem_primeFactors hp).factorization,
      Finsupp.single_apply]
    split_ifs <;> simp
  rw [Finset.sum_congr rfl term, Finset.sum_ite_eq']

/-- The largest `d` with `d² ∣ n`, as a product over the primes of `n`. -/
private theorem sqrtPart (n : ℕ) (hn : n ≠ 0) :
    IsGreatest {d : ℕ | d ^ 2 ∣ n} (∏ p ∈ n.primeFactors, p ^ (n.factorization p / 2)) := by
  have hv0 : ∏ p ∈ n.primeFactors, p ^ (n.factorization p / 2) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun p hp => (pow_pos (Nat.prime_of_mem_primeFactors hp).pos _).ne'
  have hv : ∀ q, (∏ p ∈ n.primeFactors, p ^ (n.factorization p / 2)).factorization q = n.factorization q / 2 := by
    intro q
    rw [factorization_prod_pow]
    split_ifs with h
    · rfl
    · rw [Finsupp.notMem_support_iff.mp (by rwa [Nat.support_factorization]), Nat.zero_div]
  refine ⟨?_, fun d hd => ?_⟩
  · show _ ∣ n
    rw [← Nat.factorization_le_iff_dvd (pow_ne_zero 2 hv0) hn]
    intro q
    rw [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul, hv]
    omega
  · have hd0 : d ≠ 0 := by rintro rfl; simp at hd; exact hn hd
    refine Nat.le_of_dvd (Nat.pos_of_ne_zero hv0) ((Nat.factorization_le_iff_dvd hd0 hv0).mp fun q => ?_)
    have := (Nat.factorization_le_iff_dvd (pow_ne_zero 2 hd0) hn).mpr hd q
    rw [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul] at this
    rw [hv]
    omega

/-- A008833 is the largest square dividing `n`. -/
theorem A008833.anchor (n : ℕ) (hn : 1 ≤ n) :
    ∃ k : ℕ, A008833 n = k ∧ IsGreatest {d : ℕ | d ∣ n ∧ IsSquare d} k := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hs := sqrtPart (m + 1) (by omega)
  refine ⟨(∏ p ∈ (m + 1).primeFactors, p ^ ((m + 1).factorization p / 2)) ^ 2, ?_, ?_, ?_⟩
  · simp only [A008833, A008833.P11016767941717339701.a, A008833.P11016767941717339701.f1,
      SequenceMachineLib.memo_apply, Nat.add_sub_cancel, Nat.cast_inj]
    congr 1
    exact Finset.prod_congr rfl fun p hp => by rw [valuation_sq _ _ (Nat.prime_of_mem_primeFactors hp)]
  · exact ⟨hs.1, _, sq _⟩
  · rintro d ⟨hd, s, rfl⟩
    rw [← sq] at hd ⊢
    exact Nat.pow_le_pow_left (hs.2 hd) 2

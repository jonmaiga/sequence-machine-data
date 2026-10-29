import Prog.A007.A0079
import Proof.A007.A007947

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

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

/-- The squarefree part: each prime with its exponent modulo 2. -/
private def sqf (n : ℕ) : ℕ := ∏ p ∈ n.primeFactors, p ^ (n.factorization p % 2)

private theorem sqf_ne_zero (n : ℕ) : sqf n ≠ 0 :=
  Finset.prod_ne_zero_iff.mpr fun p hp => (pow_pos (Nat.prime_of_mem_primeFactors hp).pos _).ne'

private theorem factorization_sqf (n q : ℕ) : (sqf n).factorization q = n.factorization q % 2 := by
  rw [sqf, factorization_prod_pow _ fun p hp => Nat.prime_of_mem_primeFactors hp]
  split_ifs with h
  · rfl
  · rw [not_not.mp (mt (mem_primeFactors_iff n q).mpr h)]

/-- `rad(n)` is the squarefree part of `n` times the squarefree part of `n / rad(n)`: `1 = e % 2 + (e - 1) % 2`. -/
private theorem radical_eq (n : ℕ) (hn : n ≠ 0) :
    UniqueFactorizationMonoid.radical n = sqf n * sqf (n / UniqueFactorizationMonoid.radical n) := by
  have hr : 0 < UniqueFactorizationMonoid.radical n :=
    Nat.pos_of_dvd_of_pos UniqueFactorizationMonoid.radical_dvd_self (Nat.pos_of_ne_zero hn)
  refine Nat.eq_of_factorization_eq hr.ne' (Nat.mul_ne_zero (sqf_ne_zero _) (sqf_ne_zero _)) fun q => ?_
  rw [Nat.factorization_mul (sqf_ne_zero _) (sqf_ne_zero _), Finsupp.add_apply, factorization_sqf,
    factorization_sqf, factorization_div_radical, factorization_radical]
  simp only [mem_primeFactors_iff]
  split_ifs <;> omega

/-- The canonical program `a(n) = rad(n) / a(n / rad(n))` computes the squarefree part. -/
private theorem value (m : ℕ) : A007913.P8131970495124731496.a m = (sqf (m + 1) : ℚ) := by
  induction m using Nat.strong_induction_on with
  | _ m ih =>
    rcases m with _ | m
    · simp [A007913.P8131970495124731496.a, SequenceMachineLib.rec_of_lt, sqf]
    · have hd := UniqueFactorizationMonoid.radical_dvd_self (a := m + 1 + 1)
      have hr : 0 < UniqueFactorizationMonoid.radical (m + 1 + 1) := Nat.pos_of_dvd_of_pos hd (by omega)
      have hQ : 0 < (m + 1 + 1) / UniqueFactorizationMonoid.radical (m + 1 + 1) :=
        Nat.div_pos (Nat.le_of_dvd (by omega) hd) hr
      have hmin : (m + 1 + 1).minFac ∈ (m + 1 + 1).primeFactors :=
        Nat.mem_primeFactors.mpr ⟨Nat.minFac_prime (by omega), Nat.minFac_dvd _, by omega⟩
      have hr2 : 2 ≤ UniqueFactorizationMonoid.radical (m + 1 + 1) := by
        rw [Nat.radical_eq_prod_primeFactors]
        exact (Nat.minFac_prime (by omega)).two_le.trans
          (Finset.single_le_prod (fun _ hp => (Nat.prime_of_mem_primeFactors hp).one_le) hmin)
      have hlt : (m + 1 + 1) / UniqueFactorizationMonoid.radical (m + 1 + 1) - 1 < m + 1 := by
        have := Nat.div_lt_self (show 0 < m + 1 + 1 by omega) (show 1 < UniqueFactorizationMonoid.radical (m + 1 + 1) by omega)
        omega
      have hk : (SequenceMachineLib.roundAway (((m + 1 : ℕ) + 1 : ℚ) / (A007947 (m + 1 + 1) : ℚ) - 1)).toNat =
          (m + 1 + 1) / UniqueFactorizationMonoid.radical (m + 1 + 1) - 1 := by
        rw [A007947.anchor _ (by omega), Int.cast_natCast,
          show (((m + 1 : ℕ) + 1 : ℚ) / (UniqueFactorizationMonoid.radical (m + 1 + 1) : ℕ) - 1) =
            (((m + 1 + 1) / UniqueFactorizationMonoid.radical (m + 1 + 1) - 1 : ℕ) : ℚ) by
            rw [Nat.cast_sub (by omega), Nat.cast_div hd (Nat.cast_ne_zero.mpr hr.ne')]; push_cast; ring,
          roundAway_natCast, Int.toNat_natCast]
      have ih' := ih _ hlt
      rw [Nat.sub_add_cancel hQ] at ih'
      simp only [A007913.P8131970495124731496.a] at ih' ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [hk, hlt, ↓reduceIte, ih']
      have hR := radical_eq (m + 1 + 1) (by omega)
      rw [A007947.anchor (m + 1 + 1) (by omega), Int.cast_natCast,
        show ((UniqueFactorizationMonoid.radical (m + 1 + 1) : ℕ) : ℚ) = (sqf (m + 1 + 1) : ℚ) *
          sqf ((m + 1 + 1) / UniqueFactorizationMonoid.radical (m + 1 + 1)) by rw [← Nat.cast_mul, ← hR],
        mul_div_assoc, div_self (Nat.cast_ne_zero.mpr (sqf_ne_zero _)), mul_one]

/-- A007913 is the squarefree part of `n`: the smallest positive `m` such that `n / m` is a square. -/
theorem A007913.anchor (n : ℕ) (hn : 1 ≤ n) :
    ∃ k : ℕ, A007913 n = k ∧ IsLeast {m : ℕ | 0 < m ∧ m ∣ n ∧ IsSquare (n / m)} k := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  refine ⟨sqf (m + 1), ?_, ⟨Nat.pos_of_ne_zero (sqf_ne_zero _), ?_, ?_⟩, ?_⟩
  · simp only [A007913, Nat.add_sub_cancel, value, roundAway_natCast]
  · rw [← Nat.factorization_le_iff_dvd (sqf_ne_zero _) (by omega)]
    intro q
    rw [factorization_sqf]
    exact Nat.mod_le _ _
  · set v := ∏ p ∈ (m + 1).primeFactors, p ^ ((m + 1).factorization p / 2) with hv
    have hv0 : v ≠ 0 := Finset.prod_ne_zero_iff.mpr fun p hp => (pow_pos (Nat.prime_of_mem_primeFactors hp).pos _).ne'
    refine ⟨v, Nat.div_eq_of_eq_mul_left (Nat.pos_of_ne_zero (sqf_ne_zero _)) ?_⟩
    refine Nat.eq_of_factorization_eq (by omega) (Nat.mul_ne_zero (Nat.mul_ne_zero hv0 hv0) (sqf_ne_zero _))
      fun q => ?_
    rw [Nat.factorization_mul (Nat.mul_ne_zero hv0 hv0) (sqf_ne_zero _), Nat.factorization_mul hv0 hv0,
      Finsupp.add_apply, Finsupp.add_apply, factorization_sqf, hv,
      factorization_prod_pow _ fun p hp => Nat.prime_of_mem_primeFactors hp]
    simp only [mem_primeFactors_iff]
    split_ifs <;> omega
  · rintro k ⟨hk0, hkd, r, hr⟩
    have hN : m + 1 = r * r * k := by rw [← hr]; exact (Nat.div_mul_cancel hkd).symm
    have hr0 : r ≠ 0 := by
      rintro rfl
      simp at hN
    refine Nat.le_of_dvd hk0 ((Nat.factorization_le_iff_dvd (sqf_ne_zero _) hk0.ne').mp fun q => ?_)
    rw [factorization_sqf]
    have := congrArg (fun x => Nat.factorization x q) hN
    simp only [Nat.factorization_mul (Nat.mul_ne_zero hr0 hr0) hk0.ne', Nat.factorization_mul hr0 hr0,
      Finsupp.add_apply] at this
    omega

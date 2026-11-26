import Prog.A003.A0034
import Proof.A003.A003557
import Proof.A008.A008683
import Proof.A001.A001221
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Data.Nat.Squarefree
import Mathlib.RingTheory.Radical.NatInt

/-! The canonical program of A003415 is `∑_{d ∣ n} d * A349394(n/d)`, with A349394 = A003557 * A069513 and
A069513 = `-∑_{d ∣ n} μ(d) ω(d)`. Over the squarefree divisors that sum is `∑_S (-1)^|S| |S|` over the subsets `S` of
the prime factors, which is `-1` for one prime factor and `0` otherwise: A069513 is the characteristic function of the
prime powers, and A349394 is `p^(k-1)` at `p^k`. So the sum runs over the prime powers `p^k ∣ n`, each adding
`(n / p^k) p^(k-1) = n / p`, `v_p(n)` times for each prime: `a(n) = n ∑_{p ∣ n} v_p(n) / p`, which is additive in
the factorization and gives the product rule. -/

open Finset ArithmeticFunction
open scoped ArithmeticFunction.Moebius ArithmeticFunction.omega

namespace A003415.Anchor

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simp only [SequenceMachineLib.roundAway, Nat.cast_nonneg, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- `∑_{k ≤ r} C(r,k) (-1)^k k` is `-1` for `r = 1` and `0` otherwise. -/
private theorem alt_sum (r : ℕ) :
    ∑ k ∈ range (r + 1), (r.choose k : ℤ) * ((-1) ^ k * (k : ℤ)) = if r = 1 then -1 else 0 := by
  rcases r with _ | s
  · simp
  rw [sum_range_succ']
  have h : ∀ k ∈ range (s + 1), ((s + 1).choose (k + 1) : ℤ) * ((-1) ^ (k + 1) * ((k + 1 : ℕ) : ℤ)) =
      -((s : ℤ) + 1) * ((-1) ^ k * (s.choose k : ℤ)) := by
    intro k _
    have h' : (((s + 1) * s.choose k : ℕ) : ℤ) = (((s + 1).choose (k + 1) * (k + 1) : ℕ) : ℤ) := by
      rw [Nat.add_one_mul_choose_eq]
    push_cast at h' ⊢
    rw [pow_succ]
    linear_combination ((-1 : ℤ) ^ k) * h'
  rw [sum_congr rfl h, ← mul_sum, Int.alternating_sum_range_choose]
  rcases s with _ | s <;> simp

private theorem omega_eq_card (n : ℕ) : ω n = n.primeFactors.card := by
  rw [cardDistinctFactors_apply, ← List.card_toFinset]
  rfl

/-- `∑_{d ∣ m} μ(d) ω(d)` is `-1` for a prime power and `0` otherwise: over the squarefree divisors, the products of
the subsets `S` of the prime factors, it is `∑_S (-1)^|S| |S|`. -/
private theorem sum_moebius_mul_omega (m : ℕ) (hm : m ≠ 0) :
    ∑ d ∈ m.divisors, (μ d : ℤ) * (ω d : ℤ) = if IsPrimePow m then -1 else 0 := by
  have hsf : ∑ d ∈ m.divisors with Squarefree d, (μ d : ℤ) * (ω d : ℤ) =
      ∑ d ∈ m.divisors, (μ d : ℤ) * (ω d : ℤ) := by
    apply sum_filter_of_ne
    intro d _ h
    exact moebius_ne_zero_iff_squarefree.mp (left_ne_zero_of_mul h)
  rw [← hsf, Nat.sum_divisors_filter_squarefree hm]
  have hP : (UniqueFactorizationMonoid.normalizedFactors m).toFinset = m.primeFactors := by
    rw [UniqueFactorizationMonoid.toFinset_normalizedFactors, UniqueFactorizationMonoid.primeFactors_eq_natPrimeFactors]
  have key : ∀ S ∈ (UniqueFactorizationMonoid.normalizedFactors m).toFinset.powerset,
      (μ S.val.prod : ℤ) * (ω S.val.prod : ℤ) = (-1) ^ S.card * (S.card : ℤ) := by
    intro S hS
    have hsq : Squarefree S.val.prod := by
      have hmem : S.val.prod ∈ (m.divisors.filter Squarefree).val := by
        rw [Nat.divisors_filter_squarefree hm]
        exact Multiset.mem_map_of_mem _ hS
      exact (mem_filter.mp (Finset.mem_def.mpr hmem)).2
    rw [hP, mem_powerset] at hS
    have hprod : S.val.prod = ∏ p ∈ S, p := Finset.prod_val S
    have hprimes : ∀ p ∈ S, p.Prime := fun p hp => Nat.prime_of_mem_primeFactors (hS hp)
    have hω : ω S.val.prod = S.card := by rw [omega_eq_card, hprod, Nat.primeFactors_prod hprimes]
    rw [moebius_apply_of_squarefree hsq, ← (cardDistinctFactors_eq_cardFactors_iff_squarefree hsq.ne_zero).mpr hsq,
      hω]
  rw [sum_congr rfl key, hP, sum_powerset_apply_card (fun k => (-1 : ℤ) ^ k * (k : ℤ))]
  simp only [nsmul_eq_mul]
  rw [alt_sum]
  simp only [isPrimePow_iff_card_primeFactors_eq_one]

/-- A069513 is the characteristic function of the prime powers. -/
private theorem A069513_eq (m : ℕ) (hm : 1 ≤ m) : A069513 m = if IsPrimePow m then 1 else 0 := by
  simp only [A069513, A069513.P8111133275882580857.a, A069513.P8111133275882580857.f1,
    SequenceMachineLib.memo_apply, Nat.sub_add_cancel hm]
  rw [sum_congr rfl fun d hd => by
    rw [A008683.anchor d (Nat.pos_of_mem_divisors hd), A001221.anchor d (Nat.pos_of_mem_divisors hd)],
    sum_moebius_mul_omega m (by omega)]
  split_ifs <;> simp

/-- A349394 is `p^(k-1)` at `p^k` and `0` at the other numbers. -/
private theorem A349394_eq (m : ℕ) (hm : 1 ≤ m) :
    A349394 m = if IsPrimePow m then ((m / UniqueFactorizationMonoid.radical m : ℕ) : ℤ) else 0 := by
  simp only [A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply, Nat.sub_add_cancel hm,
    A003557.anchor m hm, A069513_eq m hm]
  split_ifs <;> simp

/-- The canonical program is `∑_{d ∣ n} d * A349394(n/d)`. -/
private theorem A003415_eq (n : ℕ) :
    A003415 n = ∑ e ∈ n.divisors, ((n / e : ℕ) : ℤ) * A349394 e := by
  simp only [A003415, A003415.P13310047267010681054.a, A003415.P13310047267010681054.f1,
    SequenceMachineLib.memo_apply]
  rw [← Nat.sum_div_divisors n (fun e => ((n / e : ℕ) : ℤ) * A349394 e)]
  refine sum_congr rfl fun d hd => ?_
  have hdn : d ∣ n := Nat.dvd_of_mem_divisors hd
  have hn : n ≠ 0 := Nat.ne_of_gt (Nat.pos_of_mem_divisors (Nat.mem_divisors_self n
    (Nat.ne_of_gt (Nat.pos_of_ne_zero (by rintro rfl; simp at hd)))))
  have hd0 : (d : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt (Nat.pos_of_mem_divisors hd))
  rw [show (n : ℚ) / (d : ℚ) = ((n / d : ℕ) : ℚ) by rw [Nat.cast_div hdn hd0], roundAway_natCast,
    Int.toNat_natCast, Nat.div_div_self hdn hn]

/-- The sum of `h` at the smallest prime factor of the prime power divisors of `n`: the prime `p` is the smallest
prime factor of `p^1, ..., p^(v_p(n))`. -/
private theorem sum_primePow_divisors (n : ℕ) (hn : n ≠ 0) (h : ℕ → ℚ) :
    ∑ e ∈ n.divisors with IsPrimePow e, h e.minFac = ∑ p ∈ n.primeFactors, (n.factorization p : ℚ) * h p := by
  have hmaps : ∀ e ∈ n.divisors.filter IsPrimePow, e.minFac ∈ n.primeFactors := by
    intro e he
    rw [mem_filter, Nat.mem_divisors] at he
    rw [Nat.mem_primeFactors]
    exact ⟨Nat.minFac_prime he.2.ne_one, (Nat.minFac_dvd e).trans he.1.1, hn⟩
  rw [← sum_fiberwise_of_maps_to hmaps]
  refine sum_congr rfl fun p hp => ?_
  have hpp : p.Prime := Nat.prime_of_mem_primeFactors hp
  have hfib : {e ∈ n.divisors.filter IsPrimePow | e.minFac = p} =
      (Icc 1 (n.factorization p)).image (p ^ ·) := by
    ext e
    simp only [mem_filter, Nat.mem_divisors, mem_image, mem_Icc]
    constructor
    · rintro ⟨⟨⟨he, -⟩, hpow⟩, hmin⟩
      obtain ⟨q, k, hq, hk, rfl⟩ := (isPrimePow_nat_iff e).mp hpow
      rw [hq.pow_minFac hk.ne'] at hmin
      subst hmin
      exact ⟨k, ⟨hk, (hq.pow_dvd_iff_le_factorization hn).mp he⟩, rfl⟩
    · rintro ⟨k, ⟨hk, hkv⟩, rfl⟩
      exact ⟨⟨⟨(hpp.pow_dvd_iff_le_factorization hn).mpr hkv, hn⟩, hpp.isPrimePow.pow (by omega)⟩,
        hpp.pow_minFac (by omega)⟩
  rw [sum_congr rfl fun e he => by rw [(mem_filter.mp he).2], sum_const, hfib,
    card_image_of_injective _ (Nat.pow_right_injective hpp.two_le), Nat.card_Icc, nsmul_eq_mul]
  simp

/-- The arithmetic derivative: `n ∑_{p ∣ n} v_p(n) / p`. -/
theorem closed (n : ℕ) :
    (A003415 n : ℚ) = n * n.factorization.sum fun p k => (k : ℚ) / p := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [A003415_eq]
  rw [A003415_eq, Int.cast_sum]
  have hterm : ∀ e ∈ n.divisors, ((((n / e : ℕ) : ℤ) * A349394 e : ℤ) : ℚ) =
      if IsPrimePow e then (n : ℚ) / e.minFac else 0 := by
    intro e he
    have hen : e ∣ n := Nat.dvd_of_mem_divisors he
    rw [A349394_eq e (Nat.pos_of_mem_divisors he)]
    split_ifs with hpow
    · obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff _).mp hpow
      have hrad : UniqueFactorizationMonoid.radical (p ^ k) = p := by
        rw [Nat.radical_eq_prod_primeFactors, Nat.primeFactors_prime_pow hk.ne' hp, prod_singleton]
      have hp0 : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
      have hpk0 : ((p ^ k : ℕ) : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (pow_ne_zero _ hp.ne_zero)
      rw [hrad, hp.pow_minFac hk.ne', Int.cast_mul, Int.cast_natCast, Int.cast_natCast, Nat.cast_div hen hpk0,
        Nat.cast_div (dvd_pow_self p hk.ne') hp0]
      push_cast
      field_simp
    · simp
  rw [sum_congr rfl hterm, ← sum_filter, sum_primePow_divisors n hn.ne' (fun p => (n : ℚ) / p), Finsupp.sum,
    Nat.support_factorization, mul_sum]
  refine sum_congr rfl fun p _ => ?_
  ring

private theorem factorization_sum_mul (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    ((m * n).factorization.sum fun p k => (k : ℚ) / p) =
      (m.factorization.sum fun p k => (k : ℚ) / p) + n.factorization.sum fun p k => (k : ℚ) / p := by
  rw [Nat.factorization_mul hm hn, Finsupp.sum_add_index']
  · intro p; simp
  · intro p a b; push_cast; ring

end A003415.Anchor

open A003415.Anchor in
/-- A003415 is the arithmetic derivative: `a(0) = a(1) = 0`, `a(p) = 1` for a prime `p` and
`a(m n) = m a(n) + n a(m)`. -/
theorem A003415.anchor :
    A003415 0 = 0 ∧ A003415 1 = 0 ∧ (∀ p : ℕ, p.Prime → A003415 p = 1) ∧
      ∀ m n : ℕ, A003415 (m * n) = m * A003415 n + n * A003415 m := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · have h := closed 0
    rw [Nat.cast_zero, zero_mul] at h
    exact_mod_cast h
  · have h := closed 1
    rw [Nat.factorization_one, Finsupp.sum_zero_index, mul_zero] at h
    exact_mod_cast h
  · intro p hp
    have h := closed p
    rw [hp.factorization, Finsupp.sum_single_index (by simp)] at h
    have hp0 : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
    rw [Nat.cast_one, mul_one_div_cancel hp0] at h
    exact_mod_cast h
  · intro m n
    have h : (A003415 (m * n) : ℚ) = m * A003415 n + n * A003415 m := by
      rcases Nat.eq_zero_or_pos m with rfl | hm
      · rw [closed, closed 0]; simp
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · rw [closed, closed 0]; simp
      rw [closed, closed m, closed n, factorization_sum_mul m n hm.ne' hn.ne']
      push_cast
      ring
    exact_mod_cast h


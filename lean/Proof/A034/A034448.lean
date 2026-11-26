import Prog.A034.A0344
import Proof.A000.A000010
import Proof.A007.A007947
import Proof.A057.A057521
import Proof.Lib.Integral
import Mathlib.Data.Finset.NatDivisors

/-! The canonical program of A034448 is `∑_{d ∣ n} A254503(d)` with `A254503(d) = d φ(d) / A384050(d)`,
`A384050(d) = φ(A055231(d)) A057521(d)`, `A055231(d) = rad(d) / gcd(rad(d), d / rad(d))` the product of the primes
that divide `d` once, and `A057521(d)` the powerful part of `d`. With `d = s w`, `s` the product of the primes of
exponent 1 and `w` the powerful part, `A254503(d) = s φ(w)`: multiplicative, `p` at `p` and `φ(p^e)` at `p^e`,
`e ≥ 2`. Its divisor sum is multiplicative with `1 + p^e` at `p^e` (`∑_{i ≤ e} φ(p^i) = p^e`), as is the sum of the
unitary divisors. -/

namespace A034448.Anchor

open ArithmeticFunction
open scoped ArithmeticFunction.zeta

/-- The value of A254503 at `p ^ e`: `p` for `e = 1`, otherwise `φ(p ^ e)`. -/
private def h (p e : ℕ) : ℤ := if e = 1 then (p : ℤ) else (Nat.totient (p ^ e) : ℤ)

/-- The multiplicative function with the values `h p e` at the prime powers `p ^ e`. -/
private def g : ArithmeticFunction ℤ :=
  ⟨fun n => if n = 0 then 0 else ∏ p ∈ n.primeFactors, h p (n.factorization p), by simp⟩

private theorem g_apply {n : ℕ} (hn : n ≠ 0) : g n = ∏ p ∈ n.primeFactors, h p (n.factorization p) := by
  simp [g, hn]

private theorem factorization_eq_zero_of_notMem {n p : ℕ} (hp : p ∉ n.primeFactors) : n.factorization p = 0 := by
  rwa [← Finsupp.notMem_support_iff, Nat.support_factorization]

private theorem g_mult : g.IsMultiplicative := by
  rw [IsMultiplicative.iff_ne_zero]
  refine ⟨by simp [g], fun {m n} hm hn hmn => ?_⟩
  rw [g_apply (mul_ne_zero hm hn), g_apply hm, g_apply hn, Nat.Coprime.primeFactors_mul hmn,
    Finset.prod_union hmn.disjoint_primeFactors, Nat.factorization_mul_of_coprime hmn]
  congr 1
  · refine Finset.prod_congr rfl fun p hp => ?_
    rw [Finsupp.add_apply, factorization_eq_zero_of_notMem
      (Finset.disjoint_left.mp hmn.disjoint_primeFactors hp), add_zero]
  · refine Finset.prod_congr rfl fun p hp => ?_
    rw [Finsupp.add_apply, factorization_eq_zero_of_notMem
      (Finset.disjoint_right.mp hmn.disjoint_primeFactors hp), zero_add]

/-- The sum of the unitary divisors. -/
private def U : ArithmeticFunction ℤ :=
  ⟨fun n => ∑ d ∈ n.divisors with d.Coprime (n / d), (d : ℤ), by simp⟩

private theorem U_apply (n : ℕ) : U n = ∑ d ∈ n.divisors with d.Coprime (n / d), (d : ℤ) := rfl

private theorem U_mult : U.IsMultiplicative := by
  rw [IsMultiplicative.iff_ne_zero]
  refine ⟨by simp [U_apply, Finset.filter_singleton], fun {m n} hm hn hmn => ?_⟩
  simp only [U_apply, Finset.sum_filter]
  set F : ℕ → ℤ := fun d => if d.Coprime (m * n / d) then (d : ℤ) else 0 with hF
  have hsum : ∑ d ∈ (m * n).divisors, F d = ∑ x ∈ m.divisors ×ˢ n.divisors, F (x.1 * x.2) := by
    rw [hmn.divisors_mul, Finset.sum_map]
    exact Finset.sum_attach (m.divisors ×ˢ n.divisors) (fun x => F (x.1 * x.2))
  rw [hsum, Finset.sum_mul_sum, Finset.sum_product]
  refine Finset.sum_congr rfl fun a ha => Finset.sum_congr rfl fun b hb => ?_
  have ha' := Nat.dvd_of_mem_divisors ha
  have hb' := Nat.dvd_of_mem_divisors hb
  simp only [hF]
  rw [← Nat.div_mul_div_comm ha' hb']
  have h1 : a.Coprime (n / b) := (hmn.coprime_dvd_left ha').coprime_dvd_right (Nat.div_dvd_of_dvd hb')
  have h2 : b.Coprime (m / a) := (hmn.symm.coprime_dvd_left hb').coprime_dvd_right (Nat.div_dvd_of_dvd ha')
  have key : (a * b).Coprime (m / a * (n / b)) ↔ a.Coprime (m / a) ∧ b.Coprime (n / b) := by
    rw [Nat.coprime_mul_iff_left, Nat.coprime_mul_iff_right, Nat.coprime_mul_iff_right]
    tauto
  by_cases hA : a.Coprime (m / a) <;> by_cases hB : b.Coprime (n / b)
  · rw [ite_eq_left (key.mpr ⟨hA, hB⟩), ite_eq_left hA, ite_eq_left hB]; push_cast; ring
  · rw [ite_eq_right (fun h => hB (key.mp h).2), ite_eq_right hB, mul_zero]
  · rw [ite_eq_right (fun h => hA (key.mp h).1), ite_eq_right hA, zero_mul]
  · rw [ite_eq_right (fun h => hA (key.mp h).1), ite_eq_right hA, zero_mul]

/-- `g` at a prime power is `φ(p ^ j)`, plus one for `j = 1`. -/
private theorem g_prime_pow {p : ℕ} (hp : p.Prime) (j : ℕ) :
    g (p ^ j) = (Nat.totient (p ^ j) : ℤ) + if j = 1 then 1 else 0 := by
  rcases Nat.eq_zero_or_pos j with rfl | hj
  · simp [g]
  rw [g_apply (pow_ne_zero _ hp.ne_zero), Nat.primeFactors_prime_pow hj.ne' hp, Finset.prod_singleton,
    Nat.Prime.factorization_pow hp, Finsupp.single_eq_same, h]
  split_ifs with h1
  · subst h1
    rw [pow_one, Nat.totient_prime hp]
    have := hp.one_le
    push_cast [this]
    ring
  · simp

private theorem G_eq : g * (ζ : ArithmeticFunction ℤ) = U := by
  rw [IsMultiplicative.eq_iff_eq_on_prime_powers _ (g_mult.mul isMultiplicative_zeta.natCast) _ U_mult]
  intro p i hp
  rw [coe_mul_zeta_apply, Nat.sum_divisors_prime_pow hp, U_apply, Finset.sum_filter,
    Nat.sum_divisors_prime_pow hp]
  simp only [g_prime_pow hp]
  rw [Finset.sum_add_distrib, Finset.sum_ite_eq' (Finset.range (i + 1)) 1]
  have htot : ∑ j ∈ Finset.range (i + 1), (Nat.totient (p ^ j) : ℤ) = (p ^ i : ℕ) := by
    have := Nat.sum_totient (p ^ i)
    rw [Nat.sum_divisors_prime_pow hp] at this
    exact_mod_cast this
  rw [htot]
  have hc : ∀ j ∈ Finset.range (i + 1), (p ^ j).Coprime (p ^ i / p ^ j) ↔ j = 0 ∨ j = i := by
    intro j hj
    have hji : j ≤ i := Nat.lt_succ_iff.mp (Finset.mem_range.mp hj)
    rw [Nat.pow_div hji hp.pos]
    constructor
    · intro hcop
      by_contra hne
      rw [not_or] at hne
      exact Nat.not_coprime_of_dvd_of_dvd hp.one_lt (dvd_pow_self p hne.1)
        (dvd_pow_self p (by omega)) hcop
    · rintro (rfl | rfl)
      · simp
      · simp
  rw [Finset.sum_congr rfl fun j hj => if_congr (hc j hj) rfl rfl]
  rcases Nat.eq_zero_or_pos i with rfl | hi
  · simp
  have hsplit : ∀ j ∈ Finset.range (i + 1), (if j = 0 ∨ j = i then ((p ^ j : ℕ) : ℤ) else 0) =
      (if j = 0 then 1 else 0) + if j = i then ((p ^ i : ℕ) : ℤ) else 0 := by
    intro j _
    by_cases h0 : j = 0
    · subst h0; simp [hi.ne]
    · by_cases hji : j = i
      · subst hji; simp [h0]
      · simp [h0, hji]
  rw [Finset.sum_congr rfl hsplit, Finset.sum_add_distrib, Finset.sum_ite_eq' (Finset.range (i + 1)) 0,
    Finset.sum_ite_eq' (Finset.range (i + 1)) i]
  simp [show 1 < i + 1 by omega]
  ring


/-! The exponents of products of prime powers, the radical and `n / rad(n)`, as in the A057521 anchor. -/

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

private theorem factorization_radical (n q : ℕ) :
    (UniqueFactorizationMonoid.radical n).factorization q = if q ∈ n.primeFactors then 1 else 0 := by
  have := factorization_prod_pow n.primeFactors (fun p hp => Nat.prime_of_mem_primeFactors hp) (fun _ => 1) q
  simpa [Nat.radical_eq_prod_primeFactors] using this

private theorem factorization_div_radical (n q : ℕ) :
    (n / UniqueFactorizationMonoid.radical n).factorization q = n.factorization q - 1 := by
  rw [Nat.factorization_div UniqueFactorizationMonoid.radical_dvd_self, Finsupp.tsub_apply, factorization_radical]
  split_ifs with h
  · rfl
  · rw [not_not.mp (mt (mem_primeFactors_iff n q).mpr h)]

private theorem roundAway_natCast (c : ℕ) : SequenceMachineLib.roundAway (c : ℚ) = c := by
  simpa using SequenceProof.roundAway_intCast (c : ℤ)

/-- The totient as an arithmetic function, for `IsMultiplicative.map_prod`. -/
private def phi : ArithmeticFunction ℕ := ⟨Nat.totient, Nat.totient_zero⟩

private theorem phi_mult : phi.IsMultiplicative := by
  rw [IsMultiplicative.iff_ne_zero]
  exact ⟨Nat.totient_one, fun _ _ h => Nat.totient_mul h⟩

/-- A254503 is `g`: `s φ(w)` with `s` the product of the primes of exponent 1 and `w` the powerful part. -/
private theorem A254503_eq (n : ℕ) (hn : 1 ≤ n) : A254503 n = g n := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hn0 : m + 1 ≠ 0 := by omega
  have hprime : ∀ p ∈ (m + 1).primeFactors, p.Prime := fun p hp => Nat.prime_of_mem_primeFactors hp
  have hmem : ∀ q, q ∉ (m + 1).primeFactors → (m + 1).factorization q = 0 := fun q hq =>
    by_contra fun h => hq ((mem_primeFactors_iff (m + 1) q).mpr h)
  have hpos : ∀ q ∈ (m + 1).primeFactors, 1 ≤ (m + 1).factorization q := fun q hq =>
    Nat.one_le_iff_ne_zero.mpr ((mem_primeFactors_iff (m + 1) q).mp hq)
  set s := ∏ p ∈ (m + 1).primeFactors with (m + 1).factorization p = 1, p with hs
  set w := ∏ p ∈ (m + 1).primeFactors with 2 ≤ (m + 1).factorization p, p ^ (m + 1).factorization p with hw
  set R := UniqueFactorizationMonoid.radical (m + 1) with hR
  have hRd : R ∣ m + 1 := UniqueFactorizationMonoid.radical_dvd_self
  have hR0 : 0 < R := Nat.pos_of_dvd_of_pos hRd (by omega)
  have hQ0 : 0 < (m + 1) / R := Nat.div_pos (Nat.le_of_dvd (by omega) hRd) hR0
  have hs0 : 0 < s := Finset.prod_pos fun p hp => (hprime p (Finset.mem_filter.mp hp).1).pos
  have hw0 : 0 < w := Finset.prod_pos fun p hp => pow_pos (hprime p (Finset.mem_filter.mp hp).1).pos _
  have hg0 : 0 < Nat.gcd R ((m + 1) / R) := Nat.gcd_pos_of_pos_left _ hR0
  have fs : ∀ q, s.factorization q =
      if q ∈ (m + 1).primeFactors ∧ (m + 1).factorization q = 1 then 1 else 0 := by
    intro q
    have := factorization_prod_pow ((m + 1).primeFactors.filter (fun p => (m + 1).factorization p = 1))
      (fun p hp => hprime p (Finset.mem_filter.mp hp).1) (fun _ => 1) q
    simpa [hs, Finset.mem_filter] using this
  have fw : ∀ q, w.factorization q =
      if q ∈ (m + 1).primeFactors ∧ 2 ≤ (m + 1).factorization q then (m + 1).factorization q else 0 := by
    intro q
    have := factorization_prod_pow ((m + 1).primeFactors.filter (fun p => 2 ≤ (m + 1).factorization p))
      (fun p hp => hprime p (Finset.mem_filter.mp hp).1) (m + 1).factorization q
    simpa [hw, Finset.mem_filter] using this
  -- `rad = s * gcd(rad, n / rad)` and `n = s * w`, compared exponent by exponent.
  have hRs : R = s * Nat.gcd R ((m + 1) / R) := by
    refine Nat.eq_of_factorization_eq hR0.ne' (Nat.mul_ne_zero hs0.ne' hg0.ne') fun q => ?_
    rw [Nat.factorization_mul hs0.ne' hg0.ne', Finsupp.add_apply, Nat.factorization_gcd hR0.ne' hQ0.ne',
      Finsupp.inf_apply, hR, factorization_radical, factorization_div_radical, fs]
    by_cases hq : q ∈ (m + 1).primeFactors
    · have := hpos q hq
      simp only [hq, true_and, ite_true]
      split_ifs <;> omega
    · simp only [hq, false_and, ite_false, hmem q hq]
      rfl
  have hsw : m + 1 = s * w := by
    refine Nat.eq_of_factorization_eq hn0 (Nat.mul_ne_zero hs0.ne' hw0.ne') fun q => ?_
    rw [Nat.factorization_mul hs0.ne' hw0.ne', Finsupp.add_apply, fs, fw]
    by_cases hq : q ∈ (m + 1).primeFactors
    · have := hpos q hq
      simp only [hq, true_and]
      split_ifs <;> omega
    · simp only [hq, false_and, ite_false, hmem q hq]
  have hcop : s.Coprime w := by
    refine Nat.Coprime.prod_left fun p hp => Nat.Coprime.prod_right fun q hq => Nat.Coprime.pow_right _ ?_
    rw [Nat.coprime_primes (hprime p (Finset.mem_filter.mp hp).1) (hprime q (Finset.mem_filter.mp hq).1)]
    rintro rfl
    have h1 := (Finset.mem_filter.mp hp).2
    have h2 := (Finset.mem_filter.mp hq).2
    omega
  -- The chain of definitions.
  have h71 : A071773 (m + 1) = (Nat.gcd R ((m + 1) / R) : ℤ) := by
    simp only [A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
      A007947.anchor (m + 1) (by omega), Int.cast_natCast, ← hR]
    rw [show ((m : ℚ) + 1) / (R : ℚ) = (((m + 1) / R : ℕ) : ℚ) by
      rw [Nat.cast_div hRd (Nat.cast_ne_zero.mpr hR0.ne')]; push_cast; ring, roundAway_natCast,
      Int.gcd_natCast_natCast]
  have h55 : A055231 (m + 1) = (s : ℤ) := by
    simp only [A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
      A007947.anchor (m + 1) (by omega), h71, Int.cast_natCast, ← hR]
    refine SequenceProof.roundAway_div_of_eq _ _ _ (Nat.cast_ne_zero.mpr hg0.ne') ?_
    conv_lhs => rw [hRs]
    push_cast; ring
  have h384 : A384050 (m + 1) = (Nat.totient s : ℤ) * (w : ℤ) := by
    simp only [A384050, A384050.P7808103291810137926.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel, h55,
      Int.toNat_natCast, A000010.anchor s hs0, A057521.anchor (m + 1) (by omega)]
    rfl
  have h2618 : A002618 (m + 1) = ((m + 1 : ℕ) : ℤ) * (Nat.totient (m + 1) : ℤ) := by
    simp only [A002618, A002618.P8397693677428532773.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
      A000010.anchor (m + 1) (by omega)]
    push_cast; ring
  have hphiw : Nat.totient w =
      ∏ p ∈ (m + 1).primeFactors with 2 ≤ (m + 1).factorization p, Nat.totient (p ^ (m + 1).factorization p) := by
    have := phi_mult.map_prod (fun p => p ^ (m + 1).factorization p)
      ((m + 1).primeFactors.filter fun p => 2 ≤ (m + 1).factorization p) fun p hp q hq hpq =>
      Nat.Coprime.pow _ _ ((Nat.coprime_primes (hprime p (Finset.mem_filter.mp (Finset.mem_coe.mp hp)).1)
        (hprime q (Finset.mem_filter.mp (Finset.mem_coe.mp hq)).1)).mpr hpq)
    exact this
  have hts : 0 < Nat.totient s := Nat.totient_pos.mpr hs0
  simp only [A254503, A254503.P16877197465467938331.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel, h2618,
    h384]
  rw [SequenceProof.roundAway_div_of_eq _ _ ((s : ℤ) * (Nat.totient w : ℤ)) (by positivity) ?_]
  · rw [g_apply hn0, ← Finset.prod_filter_mul_prod_filter_not (m + 1).primeFactors
      (fun p => (m + 1).factorization p = 1)]
    have hnot : (m + 1).primeFactors.filter (fun p => ¬ (m + 1).factorization p = 1) =
        (m + 1).primeFactors.filter (fun p => 2 ≤ (m + 1).factorization p) :=
      Finset.filter_congr fun p hp => by have := hpos p hp; omega
    rw [hnot, hs, hphiw, Nat.cast_prod, Nat.cast_prod]
    congr 1
    · exact Finset.prod_congr rfl fun p hp => by rw [h, ite_eq_left (Finset.mem_filter.mp hp).2]
    · exact Finset.prod_congr rfl fun p hp => by
        have := (Finset.mem_filter.mp hp).2
        rw [h, ite_eq_right (by omega)]
  · rw [hsw, Nat.totient_mul hcop]
    push_cast; ring

end A034448.Anchor

/-- A034448 is the sum of the unitary divisors of `n`, the divisors `d` with `gcd(d, n / d) = 1`. -/
theorem A034448.anchor (n : ℕ) (hn : 1 ≤ n) :
    A034448 n = ∑ d ∈ n.divisors with d.Coprime (n / d), (d : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A034448, A034448.P10900256174600810407.a, A034448.P10900256174600810407.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel, Nat.add_comm 1 m]
  rw [Finset.sum_congr rfl fun d hd => A034448.Anchor.A254503_eq d (Nat.pos_of_mem_divisors hd),
    ← ArithmeticFunction.coe_mul_zeta_apply, A034448.Anchor.G_eq, A034448.Anchor.U_apply]

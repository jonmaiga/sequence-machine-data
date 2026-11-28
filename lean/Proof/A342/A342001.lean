import Prog.A342.A3420
import Proof.A003.A003415
import Proof.A003.A003557
import Proof.Lib.Integral
import Mathlib.RingTheory.Radical.NatInt

/-- A function with the Leibniz rule and `d p = 1` on primes: `d (p ^ e) = e * p ^ (e - 1)`. -/
private theorem d_pow (d : ℕ → ℤ) (hp1 : ∀ p : ℕ, p.Prime → d p = 1)
    (hmul : ∀ m n : ℕ, d (m * n) = m * d n + n * d m) (p : ℕ) (hp : p.Prime) (e : ℕ) :
    d (p ^ (e + 1)) = (e + 1) * (p : ℤ) ^ e := by
  induction e with
  | zero => simp [hp1 p hp]
  | succ e ih =>
    rw [pow_succ, hmul, ih, hp1 p hp]
    push_cast
    ring

/-- `p ^ (e - 1)` divides `d n` when `p ^ e` is the exact power of `p` in `n`. -/
private theorem pow_dvd_d (d : ℕ → ℤ) (hp1 : ∀ p : ℕ, p.Prime → d p = 1)
    (hmul : ∀ m n : ℕ, d (m * n) = m * d n + n * d m) (n p : ℕ) (hn : n ≠ 0) (hp : p.Prime) :
    ((p ^ (n.factorization p - 1) : ℕ) : ℤ) ∣ d n := by
  rcases Nat.eq_zero_or_pos (n.factorization p) with he | he
  · rw [he]; simp
  obtain ⟨e, he'⟩ : ∃ e, n.factorization p = e + 1 := ⟨_, (Nat.succ_pred_eq_of_pos he).symm⟩
  have hsplit := Nat.ordProj_mul_ordCompl_eq_self n p
  rw [he'] at hsplit ⊢
  rw [← hsplit, hmul, d_pow d hp1 hmul p hp e]
  simp only [Nat.add_sub_cancel]
  push_cast
  exact dvd_add (dvd_mul_of_dvd_left (pow_dvd_pow _ (Nat.le_succ e)) _) (dvd_mul_of_dvd_right (dvd_mul_left _ _) _)

/-- `n / rad n = ∏ p^(e_p - 1)` divides `d n`: the powers are pairwise coprime and each divides `d n`. -/
private theorem rad_dvd_d (d : ℕ → ℤ) (hp1 : ∀ p : ℕ, p.Prime → d p = 1)
    (hmul : ∀ m n : ℕ, d (m * n) = m * d n + n * d m) (n : ℕ) (hn : n ≠ 0) :
    ((n / UniqueFactorizationMonoid.radical n : ℕ) : ℤ) ∣ d n := by
  have hprod : n = (∏ p ∈ n.primeFactors, p ^ (n.factorization p - 1)) * ∏ p ∈ n.primeFactors, p := by
    rw [← Finset.prod_mul_distrib]
    conv_lhs => rw [← Nat.factorization_prod_pow_eq_self hn]
    rw [Nat.prod_factorization_eq_prod_primeFactors]
    refine Finset.prod_congr rfl fun p hp => ?_
    have he : n.factorization p ≠ 0 := Finsupp.mem_support_iff.mp (by rw [Nat.support_factorization]; exact hp)
    rw [← pow_succ, Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr he)]
  have hq : n / UniqueFactorizationMonoid.radical n = ∏ p ∈ n.primeFactors, p ^ (n.factorization p - 1) := by
    rw [Nat.radical_eq_prod_primeFactors]
    nth_rewrite 1 [hprod]
    rw [Nat.mul_div_cancel _ (Finset.prod_pos fun p hp => (Nat.prime_of_mem_primeFactors hp).pos)]
  rw [hq, Nat.cast_prod]
  refine Finset.prod_dvd_of_coprime ?_ fun p hp => pow_dvd_d d hp1 hmul n p hn (Nat.prime_of_mem_primeFactors hp)
  intro p hp q hq hpq
  exact Nat.isCoprime_iff_coprime.mpr
    (((Nat.coprime_primes (Nat.prime_of_mem_primeFactors hp) (Nat.prime_of_mem_primeFactors hq)).mpr hpq).pow _ _)

/-- A342001: the arithmetic derivative of `n` divided by A003557(n) (`n / rad n`), which divides it. -/
theorem A342001.anchor (n : ℕ) (hn : 1 ≤ n) : A342001 n * A003557 n = A003415 n := by
  obtain ⟨h0, h1, hp1, hmul⟩ := A003415.anchor
  obtain ⟨z, hz⟩ := rad_dvd_d A003415 hp1 hmul n (by omega)
  have hpos : 0 < n / UniqueFactorizationMonoid.radical n :=
    Nat.div_pos (Nat.le_of_dvd (by omega) UniqueFactorizationMonoid.radical_dvd_self) (Nat.radical_pos n)
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have h57 := A003557.anchor (m + 1) (by omega)
  simp only [A342001, A342001.P4805983025243635594.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [h57, hz]
  generalize ((m + 1) / UniqueFactorizationMonoid.radical (m + 1) : ℕ) = q at hpos ⊢
  have hq : ((q : ℤ) : ℚ) ≠ 0 := by exact_mod_cast hpos.ne'
  rw [Int.cast_mul, mul_div_cancel_left₀ _ hq, SequenceProof.roundAway_intCast]
  ring


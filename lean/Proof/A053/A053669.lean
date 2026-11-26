import Prog.A053.A0536
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Data.Nat.Prime.Factorial

/-! The canonical program of A053669 is Browne's formula `1 + ∑_{k=1..n} (⌊n^k/k!⌋ - ⌊(n^k-1)/k!⌋)`. Its k-th term is
1 when `k!` divides `n^k` and 0 otherwise (`Nat.succ_div`). `k!` divides `n^k` exactly when every prime `p ≤ k`
divides `n`: such a prime divides `k!`, and the exponent of a prime in `k!` is below `k` (Legendre). So the terms
count the `k ≥ 1` below the smallest prime `q` that does not divide `n`, and `q ≤ n + 1`, which gives `1 + (q - 1)`. -/

open Nat

/-- `⌊N/d⌋ - ⌊(N-1)/d⌋` is 1 when `d` divides `N ≥ 1` and 0 otherwise. -/
private theorem floor_sub_floor (N d : ℕ) (hN : 1 ≤ N) :
    ⌊(N : ℚ) / d⌋ - ⌊((N : ℚ) - 1) / d⌋ = if d ∣ N then 1 else 0 := by
  obtain ⟨y, rfl⟩ : ∃ y, N = y + 1 := ⟨N - 1, by omega⟩
  have e : ((y + 1 : ℕ) : ℚ) - 1 = (y : ℚ) := by push_cast; ring
  rw [e, Rat.floor_natCast_div_natCast, Rat.floor_natCast_div_natCast, ← Int.natCast_div, ← Int.natCast_div,
    Nat.succ_div]
  split_ifs <;> push_cast <;> ring

/-- `k!` divides `n^k` exactly when every prime `p ≤ k` divides `n`. -/
private theorem factorial_dvd_pow_iff (n k : ℕ) (hn : n ≠ 0) :
    k ! ∣ n ^ k ↔ ∀ p, p.Prime → p ≤ k → p ∣ n := by
  constructor
  · intro h p hp hpk
    exact hp.dvd_of_dvd_pow (((Nat.Prime.dvd_factorial hp).mpr hpk).trans h)
  · intro h
    rcases Nat.eq_zero_or_pos k with rfl | hk
    · simp
    rw [← Nat.factorization_le_iff_dvd (Nat.factorial_ne_zero k) (pow_ne_zero k hn)]
    intro p
    by_cases hp : p.Prime
    · have := Fact.mk hp
      rw [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul, Nat.factorization_def _ hp,
        Nat.factorization_def _ hp]
      by_cases hpk : p ≤ k
      · have h1 : 1 ≤ padicValNat p n := one_le_padicValNat_of_dvd hn (h p hp hpk)
        have h2 := padicValNat_factorial_lt_of_ne_zero p (Nat.pos_iff_ne_zero.mp hk)
        nlinarith
      · have : ¬ p ∣ k ! := fun hd => hpk ((Nat.Prime.dvd_factorial hp).mp hd)
        rw [padicValNat.eq_zero_of_not_dvd this]
        exact Nat.zero_le _
    · simp [Nat.factorization_eq_zero_of_not_prime _ hp]

/-- A053669 is the smallest prime that does not divide `n`. -/
theorem A053669.anchor (n : ℕ) (hn : 1 ≤ n) :
    ∃ p : ℕ, A053669 n = p ∧ IsLeast {q : ℕ | q.Prime ∧ ¬ q ∣ n} p := by
  classical
  have hex : ∃ q, q.Prime ∧ ¬ q ∣ n := by
    obtain ⟨q, hq1, hq2⟩ := Nat.exists_infinite_primes (n + 1)
    exact ⟨q, hq2, fun h => by have := Nat.le_of_dvd (by omega) h; omega⟩
  set q := Nat.find hex with hqdef
  have hq : q.Prime ∧ ¬ q ∣ n := Nat.find_spec hex
  have hqle : q ≤ n + 1 := by
    have hm := Nat.minFac_prime (show n + 1 ≠ 1 by omega)
    have hnd : ¬ (n + 1).minFac ∣ n := fun h => by
      have h1 := (Nat.dvd_add_right h).mp (Nat.minFac_dvd (n + 1))
      exact hm.one_lt.ne' (Nat.dvd_one.mp h1)
    exact (Nat.find_min' hex ⟨hm, hnd⟩).trans (Nat.minFac_le (by omega))
  -- the k-th term (k ≥ 0 stands for k + 1) is 1 when k + 1 < q
  have hterm : ∀ k : ℕ, ((k + 1) ! ∣ n ^ (k + 1)) ↔ k + 1 < q := by
    intro k
    rw [factorial_dvd_pow_iff n (k + 1) (by omega)]
    constructor
    · intro h
      by_contra hlt
      exact hq.2 (h q hq.1 (by omega))
    · intro h p hp hpk
      by_contra hpn
      exact Nat.find_min hex (show p < q by omega) ⟨hp, hpn⟩
  refine ⟨q, ?_, hq, fun p hp => Nat.find_min' hex hp⟩
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A053669, A053669.P10326959857469451860.a, A053669.P10326959857469451860.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [Finset.sum_congr rfl fun k _ => by
    have h := floor_sub_floor ((m + 1) ^ (k + 1)) (k + 1)! (Nat.one_le_pow _ _ (by omega))
    push_cast at h ⊢
    rw [h, if_congr (hterm k) rfl rfl], Finset.sum_boole]
  have hf : (Finset.range (m + 1)).filter (fun k => k + 1 < q) = Finset.range (q - 1) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_range]
    omega
  have h2 := hq.1.two_le
  rw [hf, Finset.card_range]
  push_cast [Nat.cast_sub (by omega : 1 ≤ q)]
  ring

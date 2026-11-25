import Prog.A276.A2760
import Proof.A053.A053669
import Proof.A002.A002110
import Proof.A000.A000720

/-! The canonical program of A276086 is the recursion `a(n) = A053669(n) * a(n - A002110(A276084(n)))`, `a(0) = 1`.
With `q = A053669(n)` the `j`-th prime (`A276084(n) = π(q) - 1 = j`), the primes below `q` divide `n`, so the
primorial `P j = A002110(j)` divides `n`, and `q` does not divide `n / P j`. The primorial base digits of `n` below
`j` are 0 and digit `j` is not: subtracting `P j` lowers digit `j` by one and keeps the others. So the product of
`prime(i)^digit(i)` drops one factor `q`, which the recursion multiplies back. -/

namespace A276086.Anchor

open SequenceMachineLib

/-- The product of the first `i` primes. -/
private noncomputable def P (i : ℕ) : ℕ := ∏ j ∈ Finset.range i, Nat.nth Nat.Prime j

/-- Digit `i` of `n` in primorial base. -/
private noncomputable def digit (n i : ℕ) : ℕ := n / P i % Nat.nth Nat.Prime i

/-- The product of `prime(i)^digit(i)` over `i < M`. -/
private noncomputable def Q (n M : ℕ) : ℤ := ∏ i ∈ Finset.range M, (Nat.nth Nat.Prime i : ℤ) ^ digit n i

private theorem prime_nth (i : ℕ) : (Nat.nth Nat.Prime i).Prime := Nat.prime_nth_prime i

private theorem P_succ (i : ℕ) : P (i + 1) = P i * Nat.nth Nat.Prime i := Finset.prod_range_succ _ _

private theorem two_pow_le_P (i : ℕ) : 2 ^ i ≤ P i := by
  induction i with
  | zero => simp [P]
  | succ i ih => rw [P_succ, pow_succ]; exact Nat.mul_le_mul ih (prime_nth i).two_le

private theorem P_pos (i : ℕ) : 0 < P i := lt_of_lt_of_le (by positivity) (two_pow_le_P i)

private theorem lt_P (i : ℕ) : i < P i := lt_of_lt_of_le Nat.lt_two_pow_self (two_pow_le_P i)

private theorem digit_eq_zero_of_le {n i : ℕ} (h : n ≤ i) : digit n i = 0 := by
  simp [digit, Nat.div_eq_of_lt (lt_of_le_of_lt h (lt_P i))]

private theorem Q_eq (n M : ℕ) (h : n ≤ M) : Q n M = Q n n := by
  unfold Q
  symm
  apply Finset.prod_subset (Finset.range_subset_range.mpr h)
  intro i _ hi
  rw [digit_eq_zero_of_le (by simpa using hi), pow_zero]

private theorem digit_eq_zero_of_dvd {x i : ℕ} (h : P (i + 1) ∣ x) : digit x i = 0 := by
  obtain ⟨t, rfl⟩ := h
  rw [digit, P_succ, mul_assoc, Nat.mul_div_cancel_left _ (P_pos i), Nat.mul_mod_right]

private theorem P_dvd_P {i j : ℕ} (h : i ≤ j) : P i ∣ P j := by
  rw [P, P, ← Finset.prod_range_mul_prod_Ico _ h]
  exact Dvd.intro _ rfl

private theorem coprime_P (i : ℕ) : Nat.Coprime (P i) (Nat.nth Nat.Prime i) := by
  apply Nat.Coprime.prod_left
  intro l hl
  rw [Nat.coprime_primes (prime_nth l) (prime_nth i)]
  exact fun h => (Finset.mem_range.mp hl).ne (Nat.nth_injective Nat.infinite_setOfPred_prime h)

private theorem P_dvd {n i : ℕ} (h : ∀ l < i, Nat.nth Nat.Prime l ∣ n) : P i ∣ n := by
  induction i with
  | zero => simp [P]
  | succ i ih =>
    rw [P_succ]
    exact (coprime_P i).mul_dvd_of_dvd_of_dvd (ih fun l hl => h l (by omega)) (h i (by omega))

private theorem main (n : ℕ) : A276086 n = Q n n := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [A276086, A276086.P2628529171982043184.a, rec_of_lt, Q]
  obtain ⟨q, hq, ⟨hqp, hqn⟩, hmin⟩ := A053669.anchor n hn
  obtain ⟨j, hj⟩ : ∃ j, j = Nat.count Nat.Prime q := ⟨_, rfl⟩
  have hpj : Nat.nth Nat.Prime j = q := hj ▸ Nat.nth_count hqp
  have hbelow : ∀ l < j, Nat.nth Nat.Prime l ∣ n := by
    intro l hl
    by_contra hd
    have h1 := hmin ⟨prime_nth l, hd⟩
    have h2 : Nat.nth Nat.Prime l < Nat.nth Nat.Prime j := Nat.nth_strictMono Nat.infinite_setOfPred_prime hl
    omega
  obtain ⟨m, hm⟩ := P_dvd hbelow
  have hqm : ¬ q ∣ m := fun h => hqn (hm ▸ Dvd.dvd.mul_left h _)
  have hm1 : 1 ≤ m % q := Nat.pos_of_ne_zero fun h => hqm (Nat.dvd_of_mod_eq_zero h)
  have hm0 : 1 ≤ m := by
    rcases Nat.eq_zero_or_pos m with h | h
    · simp [h] at hm1
    · exact h
  have hPpos := P_pos j
  have hPj : P j ≤ n := Nat.le_of_dvd hn ⟨m, hm⟩
  have hjn : j < n := lt_of_lt_of_le (lt_P j) hPj
  -- A276084(n) = j
  have h84 : A276084 n = j := by
    have h720 := A000720.anchor q hqp.one_lt.le
    simp only [A276084, A276084.P15799807898370521007.a, A257993, A257993.P18260690725132556195.a,
      memo_apply, Nat.sub_add_cancel hn, hq, Int.toNat_natCast, h720]
    rw [Nat.primeCounting, Nat.primeCounting', Nat.count_succ, ite_eq_left hqp, ← hj]
    push_cast
    ring
  have hstep : A276086 n = A053669 n * A276086 (n - P j) := by
    have e : ((n : ℤ) - A002110 (A276084 n).toNat).toNat = n - P j := by
      rw [h84, Int.toNat_natCast, A002110.anchor]
      have : (∏ i ∈ Finset.range j, (Nat.nth Nat.Prime i : ℤ)) = (P j : ℤ) := by simp [P]
      rw [this]
      omega
    show A276086.P2628529171982043184.a n = A053669 n * A276086.P2628529171982043184.a (n - P j)
    rw [A276086.P2628529171982043184.a, rec_of_le _ _ (by simp; omega)]
    simp only [e, ite_eq_left (show n - P j < n by omega)]
  have hdig : ∀ i, digit n i = digit (n - P j) i + if i = j then 1 else 0 := by
    intro i
    rcases lt_trichotomy i j with hij | hij | hij
    · rw [digit_eq_zero_of_dvd ((P_dvd_P (by omega : i + 1 ≤ j)).trans ⟨m, hm⟩),
        digit_eq_zero_of_dvd ((P_dvd_P (by omega : i + 1 ≤ j)).trans (Nat.dvd_sub ⟨m, hm⟩ dvd_rfl)),
        ite_eq_right hij.ne]
    · subst hij
      rw [ite_eq_left rfl]
      have e1 : n / P i = m := by rw [hm, Nat.mul_div_cancel_left _ hPpos]
      have e2 : (n - P i) / P i = m - 1 := by
        rw [hm, ← Nat.mul_sub_one, Nat.mul_div_cancel_left _ hPpos]
      simp only [digit, e1, e2, hpj]
      have h1 := Nat.div_add_mod m q
      have h3 : m % q - 1 < q := by have := Nat.mod_lt m hqp.pos; omega
      have h2 : m - 1 = (m % q - 1) + q * (m / q) := by omega
      rw [h2, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt h3]
      omega
    · rw [ite_eq_right hij.ne', add_zero]
      obtain ⟨R, hR, hqR⟩ : ∃ R, P i = P j * R ∧ q ∣ R :=
        ⟨∏ k ∈ Finset.Ico j i, Nat.nth Nat.Prime k, by rw [P, P, Finset.prod_range_mul_prod_Ico _ hij.le],
          hpj ▸ Finset.dvd_prod_of_mem _ (Finset.mem_Ico.mpr ⟨le_rfl, hij⟩)⟩
      simp only [digit]
      congr 1
      rw [hR, hm, ← Nat.mul_sub_one, Nat.mul_div_mul_left _ _ hPpos, Nat.mul_div_mul_left _ _ hPpos]
      obtain ⟨m', rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by omega⟩
      rw [Nat.add_sub_cancel, Nat.succ_div, ite_eq_right (fun h => hqm (hqR.trans h)), add_zero]
  have hQ : Q n n = q * Q (n - P j) n := by
    unfold Q
    simp_rw [hdig, pow_add]
    rw [Finset.prod_mul_distrib, mul_comm]
    congr 1
    rw [Finset.prod_eq_single j (fun b _ hb => by rw [ite_eq_right hb, pow_zero])
      (fun h => absurd (Finset.mem_range.mpr hjn) h), ite_eq_left rfl, pow_one, hpj]
  rw [hstep, hq, ih (n - P j) (by omega), ← Q_eq (n - P j) n (by omega), hQ]

end A276086.Anchor

/-- A276086 is the primorial base exp-function: digit `i` of `n` in primorial base, `⌊n / (p_0 ⋯ p_(i-1))⌋ mod p_i`,
becomes the exponent of the prime `p_i` (`p_i = Nat.nth Nat.Prime i`, from 0). -/
theorem A276086.anchor (n : ℕ) :
    A276086 n = ∏ i ∈ Finset.range n, (Nat.nth Nat.Prime i : ℤ) ^
      ((n / ∏ j ∈ Finset.range i, Nat.nth Nat.Prime j) % Nat.nth Nat.Prime i) :=
  A276086.Anchor.main n

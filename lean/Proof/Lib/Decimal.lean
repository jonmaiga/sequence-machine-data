import Mathlib.Tactic

/-! The decimal digits of a fraction `p / q`: the `(n+1)`-th digit after the point is `p * 10 ^ (n + 1) / q % 10`. For
the anchors of "Decimal expansion of p/q" with `q` coprime to 10 the digits are periodic with period `s` when
`10 ^ s % q = 1`. -/

namespace SequenceProof

/-- Long division: the last digit of `10 * x / q` is the digit of the remainder `x % q`. -/
theorem div_ten_mod (x q : ℕ) (hq : 0 < q) : 10 * x / q % 10 = 10 * (x % q) / q := by
  have h := Nat.div_add_mod x q
  have hu := Nat.mod_lt x hq
  have hd : 10 * (x % q) / q < 10 := Nat.div_lt_of_lt_mul (by nlinarith)
  rw [show 10 * x = 10 * (x % q) + q * (10 * (x / q)) by nlinarith, Nat.add_mul_div_left _ _ hq]
  generalize 10 * (x % q) / q = d at hd ⊢
  generalize x / q = e
  omega

/-- The decimal digits of `p / q` repeat with period `s` when `10 ^ s % q = 1`. -/
theorem decimal_digit_periodic (p q s : ℕ) (hq : 0 < q) (h : 10 ^ s % q = 1) (n : ℕ) :
    p * 10 ^ (n + s + 1) / q % 10 = p * 10 ^ (n + 1) / q % 10 := by
  rw [show p * 10 ^ (n + s + 1) = 10 * (p * 10 ^ n * 10 ^ s) by ring,
    show p * 10 ^ (n + 1) = 10 * (p * 10 ^ n) by ring, div_ten_mod _ _ hq, div_ten_mod _ _ hq, Nat.mul_mod, h,
    mul_one, Nat.mod_mod]

/-- The `(n+1)`-th decimal digit of `p / q` is the `(n % s + 1)`-th when `10 ^ s % q = 1`. -/
theorem decimal_digit_mod (p q s : ℕ) (hq : 0 < q) (h : 10 ^ s % q = 1) (n : ℕ) :
    p * 10 ^ (n + 1) / q % 10 = p * 10 ^ (n % s + 1) / q % 10 := by
  conv_lhs => rw [← Nat.mod_add_div n s]
  induction n / s with
  | zero => simp
  | succ k ih => rw [show n % s + s * (k + 1) = n % s + s * k + s by ring, decimal_digit_periodic p q s hq h, ih]

/-- The decimal digits of `p / q` repeat with period `s` from the `t`-th on when `10 ^ (t + s) % q = 10 ^ t % q`. -/
theorem decimal_digit_periodic_from (p q s t : ℕ) (hq : 0 < q) (h : 10 ^ (t + s) % q = 10 ^ t % q) (n : ℕ)
    (hn : t ≤ n) : p * 10 ^ (n + s + 1) / q % 10 = p * 10 ^ (n + 1) / q % 10 := by
  obtain ⟨m, rfl⟩ : ∃ m, n = t + m := ⟨n - t, by omega⟩
  rw [show p * 10 ^ (t + m + s + 1) = 10 * (p * 10 ^ m * 10 ^ (t + s)) by ring,
    show p * 10 ^ (t + m + 1) = 10 * (p * 10 ^ m * 10 ^ t) by ring, div_ten_mod _ _ hq, div_ten_mod _ _ hq,
    Nat.mul_mod, h, ← Nat.mul_mod]

/-- From the `t`-th on, the `(n+1)`-th decimal digit of `p / q` is the `(t + (n - t) % s + 1)`-th. -/
theorem decimal_digit_mod_from (p q s t : ℕ) (hq : 0 < q) (h : 10 ^ (t + s) % q = 10 ^ t % q) (n : ℕ)
    (hn : t ≤ n) : p * 10 ^ (n + 1) / q % 10 = p * 10 ^ (t + (n - t) % s + 1) / q % 10 := by
  obtain ⟨m, rfl⟩ : ∃ m, n = t + m := ⟨n - t, by omega⟩
  rw [Nat.add_sub_cancel_left]
  conv_lhs => rw [← Nat.mod_add_div m s]
  induction m / s with
  | zero => simp
  | succ k ih =>
    rw [show t + (m % s + s * (k + 1)) = t + (m % s + s * k) + s by ring,
      decimal_digit_periodic_from p q s t hq h _ (by omega), ih]

end SequenceProof

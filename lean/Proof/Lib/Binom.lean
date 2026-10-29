import Mathlib.Tactic

/-! Integrality of binomial quotients, for the anchors of name formulas that are Raney numbers
`r * C(p*n + r, n) / (p*n + r)` (Fuss–Catalan) or ballot numbers `(s+1) * C(2*n + s, n) / (n + s + 1)`. -/

namespace SequenceProof

/-- Raney numbers are integers: `p*n + r ∣ r * C(p*n + r, n)`, the quotient is
`C(p*n + r - 1, n) - (p - 1) * C(p*n + r - 1, n - 1)`. -/
theorem raney_dvd (p r n : ℕ) (hp : 1 ≤ p) (hr : 1 ≤ r) : p * n + r ∣ r * Nat.choose (p * n + r) n := by
  obtain ⟨q, rfl⟩ : ∃ q, p = q + 1 := ⟨p - 1, by omega⟩
  obtain ⟨s, rfl⟩ : ∃ s, r = s + 1 := ⟨r - 1, by omega⟩
  rcases n with _ | k
  · simp
  · set M := (q + 1) * (k + 1) + s with hM
    have h1 := Nat.choose_mul_succ_eq M (k + 1)
    have h2 := Nat.add_one_mul_choose_eq M k
    rw [show M + 1 - (k + 1) = q * (k + 1) + s + 1 by rw [hM]; ring_nf; omega] at h1
    rw [show (q + 1) * (k + 1) + (s + 1) = M + 1 by rw [hM]; ring]
    apply Int.natCast_dvd_natCast.mp
    refine ⟨(Nat.choose M (k + 1) : ℤ) - q * Nat.choose M k, ?_⟩
    have h1' : (Nat.choose M (k + 1) : ℤ) * (M + 1) = Nat.choose (M + 1) (k + 1) * (q * (k + 1) + s + 1) := by
      exact_mod_cast h1
    have h2' : ((M : ℤ) + 1) * Nat.choose M k = Nat.choose (M + 1) (k + 1) * (k + 1) := by exact_mod_cast h2
    push_cast
    linear_combination (-1 : ℤ) * h1' + (q : ℤ) * h2'

/-- Ballot numbers are integers: `n + s + 1 ∣ (s + 1) * C(2*n + s, n)`, the quotient is `C(2n+s, n) - C(2n+s, n-1)`. -/
theorem ballot_dvd (s n : ℕ) : n + s + 1 ∣ (s + 1) * Nat.choose (2 * n + s) n := by
  rcases n with _ | k
  · simp
  · have h := Nat.choose_succ_right_eq (2 * (k + 1) + s) k
    rw [show 2 * (k + 1) + s - k = k + 1 + s + 1 by omega] at h
    apply Int.natCast_dvd_natCast.mp
    refine ⟨(Nat.choose (2 * (k + 1) + s) (k + 1) : ℤ) - Nat.choose (2 * (k + 1) + s) k, ?_⟩
    have h' : (Nat.choose (2 * (k + 1) + s) (k + 1) : ℤ) * (k + 1) =
        Nat.choose (2 * (k + 1) + s) k * (k + 1 + s + 1) := by exact_mod_cast h
    push_cast
    linear_combination (-1 : ℤ) * h'

/-- Fuss–Catalan numbers are integers: `(p - 1) * n + 1 ∣ C(p*n, n)` (`raney_dvd` with `r = 1`). -/
theorem fuss_catalan_dvd (p n : ℕ) (hp : 1 ≤ p) : (p - 1) * n + 1 ∣ Nat.choose (p * n) n := by
  obtain ⟨w, hw⟩ := raney_dvd p 1 n hp le_rfl
  have h := Nat.choose_mul_succ_eq (p * n) n
  rw [show p * n + 1 - n = (p - 1) * n + 1 by
    rcases Nat.exists_eq_add_of_le hp with ⟨q, rfl⟩; rw [Nat.add_sub_cancel_left]; ring_nf; omega] at h
  rw [one_mul] at hw
  refine ⟨w, ?_⟩
  have hpos : 0 < p * n + 1 := by omega
  apply Nat.eq_of_mul_eq_mul_left hpos
  calc (p * n + 1) * Nat.choose (p * n) n = Nat.choose (p * n + 1) n * ((p - 1) * n + 1) := by rw [mul_comm, h]
    _ = (p * n + 1) * (((p - 1) * n + 1) * w) := by rw [hw]; ring

end SequenceProof

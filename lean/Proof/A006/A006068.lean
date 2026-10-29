import Prog.A006.A0060

/-! The canonical program of A006068 is `a(n) = n XOR a(⌊n/2⌋)`. Halving commutes with it, `a(n)/2 = a(n/2)`, so
the Gray code `a(n) XOR a(n)/2` of `a(n)` is `n`. -/

open SequenceMachineLib

local notation "g" => A006068.P433290056721054414.a

private theorem g_zero : g 0 = 0 := by
  simp [A006068.P433290056721054414.a, rec_of_lt]

private theorem g_step (n : ℕ) (hn : 1 ≤ n) : g n = n ^^^ g (n / 2) := by
  conv_lhs => rw [A006068.P433290056721054414.a, rec_of_le _ _ (by simpa using hn)]
  have hf : ⌊(n : ℚ) / 2⌋.toNat = n / 2 := by
    have : ⌊(n : ℚ) / 2⌋ = ((n / 2 : ℕ) : ℤ) := by exact_mod_cast Rat.floor_natCast_div_natCast n 2
    rw [this, Int.toNat_natCast]
  simp only [hf, show n / 2 < n by omega, ↓reduceIte]
  rfl

private theorem g_half (n : ℕ) : g n / 2 = g (n / 2) := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · simp [g_zero]
    · rw [g_step n hn, Nat.xor_div_two, ih (n / 2) (by omega)]
      rcases Nat.eq_zero_or_pos (n / 2) with h0 | h0
      · rw [h0]
        simp [g_zero]
      · rw [g_step (n / 2) h0]

/-- A006068 is the inverse Gray code: the `k` whose Gray code `k XOR ⌊k/2⌋` is `n`. -/
theorem A006068.anchor (n : ℕ) : ∃ k : ℕ, A006068 n = k ∧ k ^^^ (k / 2) = n := by
  refine ⟨g n, rfl, ?_⟩
  rw [g_half]
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [g_zero]
  · rw [g_step n hn, Nat.xor_assoc, Nat.xor_self, Nat.xor_zero]

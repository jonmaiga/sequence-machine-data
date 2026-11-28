import Prog.A055.A0550

private theorem block_start (k : ℕ) : ∑ j ∈ Finset.range k, (1 + j / 2) = (k + 1) ^ 2 / 4 := by
  induction k with
  | zero => rfl
  | succ k ih =>
    rw [Finset.sum_range_succ, ih]
    rcases Nat.even_or_odd' k with ⟨t, rfl | rfl⟩
    · have : (2 * t + 1 + 1) ^ 2 = 4 * (t * t + 2 * t + 1) := by ring
      have h2 : (2 * t + 1) ^ 2 = 4 * (t * t + t) + 1 := by ring
      rw [this, h2]; omega
    · have : (2 * t + 1 + 1 + 1) ^ 2 = 4 * (t * t + 3 * t + 2) + 1 := by ring
      have h2 : (2 * t + 1 + 1) ^ 2 = 4 * (t * t + 2 * t + 1) := by ring
      rw [this, h2]; omega

/-- A055086: each `k` appears `1 + ⌊k/2⌋` times, in increasing order from 0: `a(n) = k` exactly for the `n` from
`∑_{j<k} (1 + ⌊j/2⌋)` on, before `∑_{j≤k} (1 + ⌊j/2⌋)`. -/
theorem A055086.anchor (n k : ℕ) :
    A055086 n = k ↔ ∑ j ∈ Finset.range k, (1 + j / 2) ≤ n ∧ n < ∑ j ∈ Finset.range (k + 1), (1 + j / 2) := by
  rw [block_start, block_start]
  simp only [A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  have hn : (0 : ℝ) ≤ (n : ℝ) + 1 := by positivity
  rw [sub_eq_iff_eq_add, Int.ceil_eq_iff]
  push_cast
  have e1 : ((k : ℝ) + 2 - 1 < 2 * Real.sqrt ((n : ℝ) + 1)) ↔ (k + 1) ^ 2 < 4 * (n + 1) := by
    rw [show (k : ℝ) + 2 - 1 = 2 * (((k : ℝ) + 1) / 2) by ring, mul_lt_mul_iff_right₀ (by norm_num : (0 : ℝ) < 2),
      Real.lt_sqrt (by positivity), div_pow, div_lt_iff₀ (by norm_num),
      show ((n : ℝ) + 1) * 2 ^ 2 = ((4 * (n + 1) : ℕ) : ℝ) by push_cast; ring,
      show ((k : ℝ) + 1) ^ 2 = (((k + 1) ^ 2 : ℕ) : ℝ) by push_cast; ring]
    exact Nat.cast_lt
  have e2 : (2 * Real.sqrt ((n : ℝ) + 1) ≤ (k : ℝ) + 2) ↔ 4 * (n + 1) ≤ (k + 1 + 1) ^ 2 := by
    rw [show (k : ℝ) + 2 = 2 * (((k : ℝ) + 2) / 2) by ring, mul_le_mul_iff_right₀ (by norm_num : (0 : ℝ) < 2),
      Real.sqrt_le_left (by positivity), div_pow, le_div_iff₀ (by norm_num),
      show ((n : ℝ) + 1) * 2 ^ 2 = ((4 * (n + 1) : ℕ) : ℝ) by push_cast; ring,
      show ((k : ℝ) + 2) ^ 2 = (((k + 1 + 1) ^ 2 : ℕ) : ℝ) by push_cast; ring]
    exact Nat.cast_le
  rw [e1, e2]
  omega


import Prog.A000.A0000
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-! The canonical program of A000005 is `A032741(n+1)+1`. A032741 is
`∑{#}[floor(n/2)-1, A051731(C(n-(#+1), 2)+#+1)]`, the term `T(n-k-1, k+1)` of the triangle A051731 (rows and
columns from 1) for each `k < n/2`. A051731 is `A000007(A048158(n+1))`, `0^T(n,k)` of the triangle A048158 of
`n mod k`, so the term is 1 when `k+1` divides `n` and 0 otherwise: A032741 counts the divisors up to `n/2`, the
divisors of `n` but `n` itself. -/

/-- The row and column of the index `r(r+1)/2 + k` of a triangle read by rows, `k ≤ r`. -/
private theorem tri_index (r k : ℕ) (hk : k ≤ r) :
    SequenceMachineLib.triRow (r * (r + 1) / 2 + k) = r ∧ SequenceMachineLib.triCol (r * (r + 1) / 2 + k) = k := by
  have ht : 2 * (r * (r + 1) / 2) = r * (r + 1) := Nat.two_mul_div_two_of_even (Nat.even_mul_succ_self r)
  have hrow : SequenceMachineLib.triRow (r * (r + 1) / 2 + k) = r := by
    have lo : 2 * r + 1 ≤ Nat.sqrt (8 * (r * (r + 1) / 2 + k) + 1) := Nat.le_sqrt.mpr (by nlinarith)
    have hi : Nat.sqrt (8 * (r * (r + 1) / 2 + k) + 1) < 2 * r + 3 := Nat.sqrt_lt.mpr (by nlinarith)
    simp only [SequenceMachineLib.triRow]
    omega
  refine ⟨hrow, ?_⟩
  simp only [SequenceMachineLib.triCol, hrow]
  omega

/-- The term `T(n-k-1, k+1)` of A051731 is whether `k+1` divides `n`. -/
private theorem A051731_term (n k : ℕ) (hk : 2 * (k + 1) ≤ n) :
    A051731 (Nat.choose ((n : ℤ) - (k + 1 : ℤ)).toNat 2 + (k + 1)) = if k + 1 ∣ n then 1 else 0 := by
  obtain ⟨r, rfl⟩ : ∃ r, n = r + k + 2 := ⟨n - k - 2, by omega⟩
  have hc : Nat.choose ((((r + k + 2 : ℕ) : ℤ) - (k + 1 : ℤ)).toNat) 2 = r * (r + 1) / 2 := by
    rw [show (((r + k + 2 : ℕ) : ℤ) - (k + 1 : ℤ)).toNat = r + 1 by omega, Nat.choose_two_right,
      Nat.add_sub_cancel, Nat.mul_comm]
  obtain ⟨hrow, hcol⟩ := tri_index r k (by omega)
  rw [hc]
  simp only [A051731, A051731.P11318043630102858095.a, A048158, A048158.P1757030368331788429.a, A000007,
    A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply,
    show r * (r + 1) / 2 + (k + 1) - 1 = r * (r + 1) / 2 + k by omega,
    show r * (r + 1) / 2 + k + 1 - 1 = r * (r + 1) / 2 + k by omega, hrow, hcol, Int.toNat_natCast]
  have hdvd : k + 1 ∣ r + k + 2 ↔ (r + 1) % (k + 1) = 0 := by
    rw [Nat.dvd_iff_mod_eq_zero, show r + k + 2 = r + 1 + (k + 1) by omega, Nat.add_mod_right]
  by_cases h : (r + 1) % (k + 1) = 0
  · simp [h, hdvd.mpr h]
  · simp [mt hdvd.mp h, zero_pow h]

/-- A032741 counts the divisors of `n` up to `n/2`. -/
private theorem A032741_eq (n : ℕ) : A032741 n = ((Finset.Icc 1 (n / 2)).filter (· ∣ n)).card := by
  have hf : (⌊(n : ℚ) / 2⌋ - 1 + 1).toNat = n / 2 := by
    rw [sub_add_cancel, show ((n : ℚ) / 2) = ((n : ℕ) : ℚ) / ((2 : ℕ) : ℚ) by norm_num,
      Rat.floor_natCast_div_natCast]
    omega
  simp only [A032741, A032741.P7902726259890016945.a, A032741.P7902726259890016945.f1,
    SequenceMachineLib.memo_apply, hf]
  rw [Finset.sum_congr rfl fun k hk => A051731_term n k (by have := Finset.mem_range.mp hk; omega),
    Finset.sum_boole, Finset.range_eq_Ico]
  congr 1
  apply Finset.card_bij (fun k _ => k + 1)
  · intro k hk
    simp only [Finset.mem_filter, Finset.mem_Ico, Finset.mem_Icc] at hk ⊢
    exact ⟨⟨by omega, by omega⟩, hk.2⟩
  · intro a _ b _ h
    omega
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_Icc] at hd
    refine ⟨d - 1, ?_, by omega⟩
    simp only [Finset.mem_filter, Finset.mem_Ico]
    exact ⟨⟨by omega, by omega⟩, by rw [Nat.sub_add_cancel hd.1.1]; exact hd.2⟩

/-- The number of divisors of `n`, but `n` itself, are the divisors up to `n/2`. -/
private theorem card_divisors_eq (n : ℕ) (hn : 1 ≤ n) :
    (Nat.divisors n).card = ((Finset.Icc 1 (n / 2)).filter (· ∣ n)).card + 1 := by
  have hp : n.properDivisors = (Finset.Icc 1 (n / 2)).filter (· ∣ n) := by
    ext d
    simp only [Nat.mem_properDivisors, Finset.mem_filter, Finset.mem_Icc]
    constructor
    · rintro ⟨⟨q, hq⟩, hlt⟩
      have hd : 0 < d := Nat.pos_of_ne_zero (by rintro rfl; omega)
      have hq2 : 2 ≤ q := by
        rcases q with _ | _ | q
        · omega
        · omega
        · omega
      exact ⟨⟨hd, (Nat.le_div_iff_mul_le (by norm_num)).mpr (by nlinarith)⟩, q, hq⟩
    · rintro ⟨⟨hd, hle⟩, hdvd⟩
      exact ⟨hdvd, by omega⟩
  rw [← Nat.insert_self_properDivisors (by omega), Finset.card_insert_of_notMem Nat.self_notMem_properDivisors, hp]

/-- A000005 is the number of divisors of n, `σ₀ n`. -/
theorem A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    A032741_eq, ArithmeticFunction.sigma_zero_apply, card_divisors_eq (m + 1) hn]
  push_cast
  ring


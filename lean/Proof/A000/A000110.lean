import Prog.A000.A0001
import Mathlib.Combinatorics.Enumerative.Bell
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Analysis.SpecificLimits.Normed

/-! The canonical program of A000110 is Dobinski's formula truncated after `2n` terms,
`1 + ⌊e⁻¹ ∑_{j=1..2n} j^n/j!⌋`. The series `S n = ∑ j^n/j!` satisfies `S (n+1) = ∑ C(n,i) S i`
(`j^(n+1)/j! = (k+1)^n/k!` for `j = k + 1`, binomial expansion) and `S 0 = e`, so `S n = e * bell n` by the
recurrence of `Nat.bell`. For `n ≥ 1` the first term `0^n/0!` is 0 and the tail `T = ∑_{j > 2n} j^n/j!` is positive
and at most `∑ (1/2)^m = 2 < e`, since `j^n 2^m ≤ j!` for `j = m + 2n + 1` (`j^n ≤ 2^n j^(n)`, falling factorial,
and `(j-n)! ≥ (n+1)! (n+2)^m ≥ 2^n 2^m`). So `e⁻¹ T ∈ (0, 1)` and the floor is `bell n - 1`. -/

open Nat Finset

namespace A000110.Anchor

/-- The terms `j^n / j!` of Dobinski's series. -/
private noncomputable def t (n j : ℕ) : ℝ := (j : ℝ) ^ n / (j ! : ℝ)

private theorem t_nonneg (n j : ℕ) : 0 ≤ t n j := by unfold t; positivity

/-- `j^n ≤ n! e^j`, so the terms are summable. -/
private theorem summable_t (n : ℕ) : Summable (t n) := by
  refine Summable.of_nonneg_of_le (t_nonneg n) (fun j => ?_)
    ((Real.summable_pow_div_factorial (Real.exp 1)).mul_left (n ! : ℝ))
  have h := Real.pow_div_factorial_le_exp (j : ℝ) (by positivity) n
  have hj : Real.exp (j : ℝ) = Real.exp 1 ^ j := by rw [← Real.exp_nat_mul, mul_one]
  rw [div_le_iff₀ (by positivity), hj] at h
  unfold t
  rw [mul_div_assoc']
  exact div_le_div_of_nonneg_right (by linarith) (by positivity)

/-- Dobinski's series `S n = ∑ j^n / j!`. -/
private noncomputable def S (n : ℕ) : ℝ := ∑' j, t n j

private theorem S_zero : S 0 = Real.exp 1 := by
  rw [S, Real.exp_eq_exp_ℝ, NormedSpace.exp_eq_tsum_div]
  simp [t]

private theorem S_succ (n : ℕ) : S (n + 1) = ∑ i ∈ range (n + 1), (n.choose i : ℝ) * S i := by
  rw [S, (summable_t (n + 1)).tsum_eq_zero_add]
  have h0 : t (n + 1) 0 = 0 := by simp [t]
  have hs : ∀ m, t (n + 1) (m + 1) = ∑ i ∈ range (n + 1), (n.choose i : ℝ) * t i m := by
    intro m
    simp only [t]
    rw [Nat.factorial_succ]
    push_cast
    have ha : (0 : ℝ) < (m : ℝ) + 1 := by positivity
    rw [show ((m : ℝ) + 1) ^ (n + 1) / (((m : ℝ) + 1) * (m ! : ℝ)) = ((m : ℝ) + 1) ^ n / (m ! : ℝ) by
      rw [pow_succ, mul_comm ((m : ℝ) + 1) (m ! : ℝ), mul_div_mul_right _ _ ha.ne']]
    rw [add_pow, Finset.sum_div]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [one_pow, mul_one]
    ring
  rw [h0, zero_add, tsum_congr hs, Summable.tsum_finsetSum fun i _ => (summable_t i).mul_left _]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [S, tsum_mul_left]

private theorem bell_succ_real (n : ℕ) :
    ((n + 1).bell : ℝ) = ∑ i ∈ range (n + 1), (n.choose i : ℝ) * (i.bell : ℝ) := by
  rw [Nat.bell_succ, ← Nat.range_succ_eq_Iic, ← Finset.sum_range_reflect]
  push_cast
  refine Finset.sum_congr rfl fun i hi => ?_
  rw [Finset.mem_range] at hi
  rw [show n - (n - i) = i by omega, Nat.choose_symm (by omega)]

private theorem S_eq (n : ℕ) : S n = Real.exp 1 * n.bell := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    rcases n with _ | n
    · simp [S_zero]
    rw [S_succ, bell_succ_real, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i hi => ?_
    rw [ih i (by simpa [Nat.lt_succ_iff] using hi)]
    ring

/-- `(m + 2n + 1)^n 2^m ≤ (m + 2n + 1)!`. -/
private theorem key (m n : ℕ) : (m + 2 * n + 1) ^ n * 2 ^ m ≤ (m + 2 * n + 1)! := by
  have h1 : (m + 2 * n + 1) ^ n ≤ 2 ^ n * (m + 2 * n + 1).descFactorial n :=
    calc (m + 2 * n + 1) ^ n ≤ (2 * (m + 2 * n + 1 + 1 - n)) ^ n := Nat.pow_le_pow_left (by omega) n
      _ = 2 ^ n * (m + 2 * n + 1 + 1 - n) ^ n := mul_pow _ _ _
      _ ≤ 2 ^ n * (m + 2 * n + 1).descFactorial n :=
        Nat.mul_le_mul_left _ (Nat.pow_sub_le_descFactorial _ _)
  have h2 : (m + 2 * n + 1)! = (m + n + 1)! * (m + 2 * n + 1).descFactorial n := by
    rw [← Nat.factorial_mul_descFactorial (show n ≤ m + 2 * n + 1 by omega)]
    congr 2
    omega
  have h3 : 2 ^ n * 2 ^ m ≤ (m + n + 1)! :=
    calc 2 ^ n * 2 ^ m ≤ (n + 1)! * (n + 2) ^ m := by
          refine Nat.mul_le_mul ?_ (Nat.pow_le_pow_left (by omega) m)
          have := @Nat.factorial_mul_pow_le_factorial 1 n
          simpa [add_comm] using this
      _ ≤ (n + 1 + m)! := Nat.factorial_mul_pow_le_factorial
      _ = (m + n + 1)! := by congr 1; omega
  rw [h2]
  calc (m + 2 * n + 1) ^ n * 2 ^ m ≤ 2 ^ n * (m + 2 * n + 1).descFactorial n * 2 ^ m :=
        Nat.mul_le_mul_right _ h1
    _ = (2 ^ n * 2 ^ m) * (m + 2 * n + 1).descFactorial n := by ring
    _ ≤ (m + n + 1)! * (m + 2 * n + 1).descFactorial n := Nat.mul_le_mul_right _ h3

private theorem t_tail_le (n m : ℕ) : t n (m + (2 * n + 1)) ≤ (1 / 2 : ℝ) ^ m := by
  have h := key m n
  have h' : ((m + 2 * n + 1 : ℕ) : ℝ) ^ n * 2 ^ m ≤ ((m + 2 * n + 1)! : ℝ) := by exact_mod_cast h
  unfold t
  rw [show m + (2 * n + 1) = m + 2 * n + 1 by omega, div_le_iff₀ (by positivity)]
  have h2 : (0 : ℝ) < 2 ^ m := by positivity
  rw [div_pow, one_pow]
  rw [div_mul_eq_mul_div, one_mul, le_div_iff₀ h2]
  exact h'

end A000110.Anchor

open A000110.Anchor in
/-- A000110 is the Bell numbers: the canonical program is Dobinski's formula, truncated after `2n` terms. -/
theorem A000110.anchor (n : ℕ) : A000110 n = (Nat.bell n : ℤ) := by
  simp only [A000110, A000110.P10669528326230861424.a, A000110.P10669528326230861424.f1,
    SequenceMachineLib.memo_apply]
  have hr : ((2 * n : ℤ) - 1 + 1).toNat = 2 * n := by omega
  rw [hr]
  rcases n with _ | n
  · simp
  -- the program's sum is Dobinski's series without its first term (0) and its tail
  set N := n + 1 with hN
  have hP : ((∑ k ∈ Finset.range (2 * N), (((k : ℚ) + 1) ^ N) / ((k + 1)! : ℚ) : ℚ) : ℝ) =
      S N - ∑' m, t N (m + (2 * N + 1)) := by
    rw [S, ← (summable_t N).sum_add_tsum_nat_add (2 * N + 1), Finset.sum_range_succ']
    have h0 : t N 0 = 0 := by simp [t, hN]
    rw [h0, add_zero, add_sub_cancel_right]
    push_cast
    refine Finset.sum_congr rfl fun k _ => ?_
    simp [t]
  have hT0 : 0 < ∑' m, t N (m + (2 * N + 1)) :=
    Summable.tsum_pos ((summable_nat_add_iff _).mpr (summable_t N)) (fun m => t_nonneg _ _) 0
      (by simp only [t]; positivity)
  have hT2 : ∑' m, t N (m + (2 * N + 1)) ≤ 2 := by
    rw [← tsum_geometric_two]
    exact Summable.tsum_le_tsum (fun m => t_tail_le N m)
      ((summable_nat_add_iff _).mpr (summable_t N)) summable_geometric_two
  have he : (2 : ℝ) < Real.exp 1 := by
    have := Real.add_one_lt_exp (one_ne_zero (α := ℝ)); linarith
  have hx : Real.exp (-1) * Real.exp 1 = 1 := by rw [← Real.exp_add]; simp
  have hxpos : 0 < Real.exp (-1) := Real.exp_pos _
  rw [hP, S_eq]
  set T := ∑' m, t N (m + (2 * N + 1))
  have hfl : ⌊Real.exp (-1) * (Real.exp 1 * (N.bell : ℝ) - T)⌋ = (N.bell : ℤ) - 1 := by
    rw [Int.floor_eq_iff]
    have e1 : Real.exp (-1) * (Real.exp 1 * (N.bell : ℝ) - T) = N.bell - Real.exp (-1) * T := by
      rw [mul_sub, ← mul_assoc, hx, one_mul]
    rw [e1]
    have hlt : Real.exp (-1) * T < 1 := by
      calc Real.exp (-1) * T < Real.exp (-1) * Real.exp 1 :=
            mul_lt_mul_of_pos_left (by linarith) hxpos
        _ = 1 := hx
    push_cast
    constructor
    · linarith
    · nlinarith
  rw [hfl]
  ring

import Prog.A053.A0531
import Mathlib.RingTheory.Polynomial.Chebyshev

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

private theorem tri_succ (r : ℕ) : (r + 1) * (r + 1 + 1) / 2 = r * (r + 1) / 2 + (r + 1) := by
  have h : (r + 1) * (r + 1 + 1) = r * (r + 1) + 2 * (r + 1) := by ring
  rw [h]
  omega

/-- A053120: `T(n,k)` is the coefficient of `x^k` in the Chebyshev polynomial `T_n(x)`. -/
theorem A053120.anchor (n k : ℕ) (hk : k ≤ n) :
    A053120 (n * (n + 1) / 2 + k) = (Polynomial.Chebyshev.T ℤ n).coeff k := by
  simp only [A053120, A053120.P2213477912584561574.a]
  induction n using Nat.strong_induction_on generalizing k with
  | _ n ih =>
  rcases n with _ | _ | m
  · obtain rfl : k = 0 := by omega
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    simp
  · interval_cases k
    · rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]; simp
    · rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]; simp
  · have h1 := tri_succ (m + 1)
    have h0 := tri_succ m
    obtain ⟨hrow, hcol⟩ := tri_index (m + 1 + 1) k hk
    set R : ℕ → ℤ := SequenceMachineLib.rec ([1, 0, 1] : List ℤ)
      (fun n a => 2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n) with hR
    have key : R ((m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k) =
        2 * SequenceMachineLib.triUpLeft (fun i => if i < (m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k then R i else 0)
          ((m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k) -
        SequenceMachineLib.triUp2 (fun i => if i < (m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k then R i else 0)
          ((m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k) := by
      rw [hR, SequenceMachineLib.rec_of_le _ _ (by simp; omega)]
    have hT : Polynomial.Chebyshev.T ℤ ((m + 1 + 1 : ℕ) : ℤ) =
        2 * Polynomial.X * Polynomial.Chebyshev.T ℤ ((m + 1 : ℕ) : ℤ) - Polynomial.Chebyshev.T ℤ (m : ℕ) := by
      have := Polynomial.Chebyshev.T_add_two ℤ (m : ℤ)
      push_cast
      rw [show (m : ℤ) + 1 + 1 = m + 2 by ring, this]
    rw [key, hT, Polynomial.coeff_sub, mul_assoc, Polynomial.coeff_ofNat_mul]
    congr 1
    · congr 1
      simp only [SequenceMachineLib.triUpLeft, hrow, hcol]
      split_ifs with hk0 hlt
      · conv_rhs => rw [show k = (k - 1) + 1 by omega, Polynomial.coeff_X_mul]
        rw [show (m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k - (m + 1 + 1) - 1 = (m + 1) * (m + 1 + 1) / 2 + (k - 1) by omega]
        exact ih (m + 1) (by omega) (k - 1) (by omega)
      · omega
      · obtain rfl : k = 0 := by omega
        simp
    · simp only [SequenceMachineLib.triUp2, hrow, hcol]
      split_ifs with hkm hlt
      · rw [show (m + 1 + 1) * (m + 1 + 1 + 1) / 2 + k + 1 - 2 * (m + 1 + 1) = m * (m + 1) / 2 + k by omega]
        exact ih m (by omega) k (by omega)
      · omega
      · rw [Polynomial.coeff_eq_zero_of_natDegree_lt]
        rw [Polynomial.Chebyshev.natDegree_T]
        simp only [Int.natAbs_natCast]
        omega

import Prog.A011.A0119

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

/-- A011971: Aitken's array `a(n,k)`, read by rows (`a(n,k)` at `n(n+1)/2 + k`): `a(0,0) = 1`,
`a(n,0) = a(n-1,n-1)` and `a(n,k) = a(n,k-1) + a(n-1,k-1)`. -/
theorem A011971.anchor :
    A011971 0 = 1 ∧
      (∀ n, A011971 ((n + 1) * (n + 2) / 2) = A011971 (n * (n + 1) / 2 + n)) ∧
      ∀ n k, k < n + 1 → A011971 ((n + 1) * (n + 2) / 2 + (k + 1)) =
        A011971 ((n + 1) * (n + 2) / 2 + k) + A011971 (n * (n + 1) / 2 + k) := by
  simp only [A011971]
  set c : ℕ → ℕ := A011971.P9775330582581880587.a with hc
  have hstep : ∀ i, 1 ≤ i → c i = c (i - 1) + SequenceMachineLib.triUpLeft (fun j => if j < i then c j else 0) i := by
    intro i hi
    rw [hc, A011971.P9775330582581880587.a, SequenceMachineLib.rec_of_le _ _ (by simp; omega)]
    simp only [show i - 1 < i by omega, ↓reduceIte]
  refine ⟨?_, fun n => ?_, fun n k hk => ?_⟩
  · rw [hc, A011971.P9775330582581880587.a, SequenceMachineLib.rec_of_lt _ _ (by simp)]; rfl
  · have ht := tri_succ n
    obtain ⟨hrow, hcol⟩ := tri_index (n + 1) 0 (by omega)
    simp only [add_zero] at hrow hcol
    rw [show (n + 1) * (n + 2) / 2 = (n + 1) * (n + 1 + 1) / 2 by ring_nf, hstep _ (by omega)]
    simp only [SequenceMachineLib.triUpLeft, hrow, hcol, lt_self_iff_false, ↓reduceIte, add_zero]
    rw [show (n + 1) * (n + 1 + 1) / 2 - 1 = n * (n + 1) / 2 + n by omega]
  · have ht := tri_succ n
    obtain ⟨hrow, hcol⟩ := tri_index (n + 1) (k + 1) (by omega)
    rw [show (n + 1) * (n + 2) / 2 = (n + 1) * (n + 1 + 1) / 2 by ring_nf, hstep _ (by omega)]
    simp only [SequenceMachineLib.triUpLeft, hrow, hcol, Nat.succ_pos, ↓reduceIte,
      show (n + 1) * (n + 1 + 1) / 2 + (k + 1) - (n + 1) - 1 < (n + 1) * (n + 1 + 1) / 2 + (k + 1) by omega]
    rw [show (n + 1) * (n + 1 + 1) / 2 + (k + 1) - 1 = (n + 1) * (n + 1 + 1) / 2 + k by omega,
      show (n + 1) * (n + 1 + 1) / 2 + (k + 1) - (n + 1) - 1 = n * (n + 1) / 2 + k by omega]
    push_cast
    rfl


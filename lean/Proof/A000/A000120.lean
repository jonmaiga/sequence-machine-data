import Prog.A000.A0001
import Mathlib.Data.Nat.Digits.Lemmas

/-! The canonical program of A000120 is `2*n-A005187(n)`, and A005187 is the recursion `a(floor(n/2))+n` with
`a(0) = 0`. With the binary digit sum `s(n) = n%2 + s(⌊n/2⌋)`, A005187 is `2n - s(n)` by induction. -/

local notation "a5187" => A005187.P3874015513960485494.a

private theorem a5187_step (n : ℕ) : a5187 (n + 1) = a5187 ((n + 1) / 2) + (n + 1) := by
  simp only [A005187.P3874015513960485494.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  have h : ⌊((n + 1 : ℕ) : ℚ) / 2⌋ = (((n + 1) / 2 : ℕ) : ℤ) := by
    exact_mod_cast Rat.floor_natCast_div_natCast (n + 1) 2
  simp only [Nat.cast_add, Nat.cast_one] at h
  simp only [Nat.cast_add, Nat.cast_one, h, Int.toNat_natCast, show (n + 1) / 2 < n + 1 by omega, ↓reduceIte]

private theorem a5187_eq (n : ℕ) : (a5187 n : ℤ) = 2 * n - (Nat.digits 2 n).sum := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 => simp [A005187.P3874015513960485494.a, SequenceMachineLib.rec_of_lt]
    | n + 1 =>
      have h := ih ((n + 1) / 2) (by omega)
      rw [a5187_step, Nat.digits_def' (by norm_num) (by omega), List.sum_cons]
      push_cast at h ⊢
      omega

/-- A000120 is the number of ones in the binary expansion of n, the sum of its binary digits. -/
theorem A000120.anchor (n : ℕ) : A000120 n = ((Nat.digits 2 n).sum : ℤ) := by
  simp only [A000120, A000120.P2816527436160941581.a, A005187, SequenceMachineLib.memo_apply, a5187_eq]
  ring

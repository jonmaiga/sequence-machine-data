import Prog.A006.A0062
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-! The canonical program of A006218 is the recursion `a(n-1)+A000005(n)` with `a(0) = 0`, the partial sums of
A000005. A000005 is `A032741(n+1)+1` and A032741 is `∏{e}[n, #+1]-1`, the number of divisors
(`Nat.card_divisors`). -/

private theorem tau_eq (k : ℕ) (hk : 1 ≤ k) : A000005 k = (ArithmeticFunction.sigma 0 k : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, k = m + 1 := ⟨k - 1, by omega⟩
  simp only [A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.a,
    A032741.P3022166995030670566.f1, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    ArithmeticFunction.sigma_zero_apply, Nat.card_divisors (Nat.succ_ne_zero m)]
  ring

local notation "dsum" => A006218.P9218434490128439557.a

private theorem dsum_succ (n : ℕ) : dsum (n + 1) = dsum n + A000005 (n + 1) := by
  simp only [A006218.P9218434490128439557.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

/-- A006218 is the partial sums of the number of divisors, `∑ k ∈ [1, n], σ₀ k`. -/
theorem A006218.anchor (n : ℕ) : A006218 n = ∑ k ∈ Finset.Icc 1 n, (ArithmeticFunction.sigma 0 k : ℤ) := by
  simp only [A006218]
  induction n with
  | zero => simp [A006218.P9218434490128439557.a, SequenceMachineLib.rec_of_lt]
  | succ n ih =>
    rw [dsum_succ, ih, Finset.sum_Icc_succ_top (by omega), tau_eq (n + 1) (by omega)]

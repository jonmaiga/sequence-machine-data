import Prog.A000.A0000
import Mathlib.NumberTheory.Real.GoldenRatio

/-! The canonical program of A000032 is the recursion `a(n-1)+a(n-2)` with `a(0..1) = 2, 1`, the powers
of the golden ratio and of its conjugate satisfy it. -/

open Real

local notation "luc" => A000032.P8352177345629330861.a

private theorem luc_step (n : ℕ) : luc (n + 2) = luc (n + 1) + luc n := by
  simp only [A000032.P8352177345629330861.a]
  rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
  simp

private theorem luc_eq (n : ℕ) : (luc n : ℝ) = goldenRatio ^ n + goldenConj ^ n := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000032.P8352177345629330861.a, SequenceMachineLib.rec_of_lt]
      norm_num
    | 1 => simp [A000032.P8352177345629330861.a, SequenceMachineLib.rec_of_lt, goldenRatio_add_goldenConj]
    | n + 2 =>
      rw [luc_step]
      push_cast
      rw [ih (n + 1) (by omega), ih n (by omega)]
      linear_combination -(goldenRatio ^ n) * goldenRatio_sq - (goldenConj ^ n) * goldenConj_sq

/-- A000032 is the Lucas numbers `φ ^ n + ψ ^ n`, φ the golden ratio and ψ its conjugate. -/
theorem A000032.anchor (n : ℕ) : (A000032 n : ℝ) = goldenRatio ^ n + goldenConj ^ n := by
  simp [A000032, luc_eq]

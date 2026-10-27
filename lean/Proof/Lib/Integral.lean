import SequenceMachineLib
import Mathlib.Tactic

/-! Rational formulas that are integers: `roundAway` of an integer is the integer, for the anchors of sequences whose
name formula is a quotient `X / d` with `d ∣ X`. -/

namespace SequenceProof

theorem roundAway_intCast (z : ℤ) : SequenceMachineLib.roundAway (z : ℚ) = z := by
  unfold SequenceMachineLib.roundAway
  split_ifs with h
  · rw [Int.floor_eq_iff]; constructor <;> push_cast <;> linarith
  · rw [neg_eq_iff_eq_neg, Int.floor_eq_iff]; constructor <;> push_cast <;> linarith

/-- A quotient `x / d` of rationals that is an integer `z` (`x = z * d`) rounds to `z`. -/
theorem roundAway_div_of_eq (x : ℚ) (d : ℚ) (z : ℤ) (hd : d ≠ 0) (h : x = z * d) :
    SequenceMachineLib.roundAway (x / d) = z := by
  rw [h, mul_div_cancel_right₀ _ hd, roundAway_intCast]

end SequenceProof

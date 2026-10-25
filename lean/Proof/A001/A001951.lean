import Prog.A001.A0019
import Mathlib.Analysis.Real.Sqrt

/-! The canonical program of A001951 is `A000196(A001105(n))`, the integer square root of `2n²`, which is
`⌊√(2n²)⌋ = ⌊n√2⌋`. -/

/-- A001951 is the Beatty sequence of √2, `⌊n√2⌋`. -/
theorem A001951.anchor (n : ℕ) : A001951 n = ⌊(n : ℝ) * Real.sqrt 2⌋ := by
  simp only [A001951, A001951.P16235440681377643956.a, A000196, A000196.P15434771586934192083.a, A001105,
    A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply, Int.toNat_natCast]
  rw [← Real.floor_real_sqrt_eq_nat_sqrt]
  congr 1
  push_cast
  rw [Real.sqrt_mul (by norm_num), Real.sqrt_sq (by positivity), mul_comm]

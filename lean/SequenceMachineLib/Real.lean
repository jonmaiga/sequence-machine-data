import SequenceMachineLib.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.NumberTheory.Real.GoldenRatio
import Mathlib.NumberTheory.Harmonic.EulerMascheroni

/-!
# SequenceMachineLib.Real

Real valued operations. Only programs that need `ℝ` import this module.
-/

namespace SequenceMachineLib

/-- The inverse cotangent `arctan (1 / x)`, with `acot 0 = π / 2` as in sequencedb. -/
noncomputable def acot (x : ℝ) : ℝ :=
  if x = 0 then Real.pi / 2 else Real.arctan (1 / x)

/-! Powers of square roots for the spec tactics. With `Real.sq_sqrt` they remove the square roots that
`ring_nf` leaves, e.g. when `(1 + 4 * √5) * (5 + √5) ^ (m + 2)` is expanded. -/

theorem sqrt_pow_three {a : ℝ} (h : 0 ≤ a) : Real.sqrt a ^ 3 = a * Real.sqrt a := by
  rw [pow_succ, Real.sq_sqrt h]

theorem sqrt_pow_four {a : ℝ} (h : 0 ≤ a) : Real.sqrt a ^ 4 = a ^ 2 := by
  rw [show (4 : ℕ) = 2 * 2 from rfl, pow_mul, Real.sq_sqrt h]

theorem sqrt_pow_five {a : ℝ} (h : 0 ≤ a) : Real.sqrt a ^ 5 = a ^ 2 * Real.sqrt a := by
  rw [pow_succ, sqrt_pow_four h]

theorem sqrt_pow_six {a : ℝ} (h : 0 ≤ a) : Real.sqrt a ^ 6 = a ^ 3 := by
  rw [show (6 : ℕ) = 2 * 3 from rfl, pow_mul, Real.sq_sqrt h]

end SequenceMachineLib

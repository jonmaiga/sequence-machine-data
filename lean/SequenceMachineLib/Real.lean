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

end SequenceMachineLib

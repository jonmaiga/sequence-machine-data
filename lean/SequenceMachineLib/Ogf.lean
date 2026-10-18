import SequenceMachineLib.Basic
import Mathlib.RingTheory.PowerSeries.Inverse

/-!
# SequenceMachineLib.Ogf

The values of `ogf num den` are the coefficients of the power series `P(x)/Q(x)`: the definitions of the
sequences named "Expansion of P(x)/Q(x)" are the expansions of their generating functions.
-/

namespace SequenceMachineLib

/-- The power series with the coefficients `l` (`l[i]` of `x^i`). -/
noncomputable def series (l : List ℤ) : PowerSeries ℚ :=
  PowerSeries.mk fun i => (l.getD i 0 : ℚ)

theorem ogf_mul (num den : List ℤ) (h : den.getD 0 0 = 1) :
    PowerSeries.mk (fun n => (ogf num den n : ℚ)) * series den = series num := by
  ext n
  rw [PowerSeries.coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk, Finset.sum_range_succ]
  simp only [PowerSeries.coeff_mk, series, Nat.sub_self, h]
  rw [ogf_apply num den n]
  push_cast
  rw [Finset.sum_congr rfl fun i _ => mul_comm (ogf num den i : ℚ) _]
  ring

/-- `ogf num den n` is the coefficient of `x^n` of `P(x)/Q(x)`. -/
theorem ogf_eq_coeff (num den : List ℤ) (h : den.getD 0 0 = 1) (n : ℕ) :
    (ogf num den n : ℚ) = PowerSeries.coeff n (series num * (series den)⁻¹) := by
  have hc : PowerSeries.constantCoeff (series den) ≠ 0 := by
    rw [series, PowerSeries.constantCoeff_mk, h]
    norm_num
  rw [← (PowerSeries.eq_mul_inv_iff_mul_eq hc).mpr (ogf_mul num den h), PowerSeries.coeff_mk]

end SequenceMachineLib

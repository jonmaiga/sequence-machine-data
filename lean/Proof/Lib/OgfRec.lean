import SequenceMachineLib
import Mathlib.Tactic

/-! The expansion of a generating function `P(x)/Q(x)` satisfies the linear recurrence of its denominator once past
the numerator: `ogf num den n = -∑ j < deg Q, Q[j+1] * ogf num den (n - (j+1))`. With it a program
`SequenceMachineLib.ogf num den` is a linear recursion like a `rec`. -/

namespace SequenceProof

theorem ogf_eq_lags (num den : List ℤ) (n : ℕ) (hn : num.length ≤ n) (hd : den.length ≤ n + 1) :
    SequenceMachineLib.ogf num den n =
      -∑ j ∈ Finset.range (den.length - 1), den.getD (j + 1) 0 * SequenceMachineLib.ogf num den (n - (j + 1)) := by
  rw [SequenceMachineLib.ogf_apply, List.getD_eq_default _ _ hn, zero_sub, neg_inj]
  rw [← Finset.sum_range_reflect]
  have hsub : Finset.range (den.length - 1) ⊆ Finset.range n := Finset.range_subset_range.mpr (by omega)
  rw [← Finset.sum_subset hsub]
  · refine Finset.sum_congr rfl fun j hj => ?_
    have hj' : j < n := by simp at hj; omega
    rw [show n - (n - 1 - j) = j + 1 by omega, show n - 1 - j = n - (j + 1) by omega]
  · intro j hj hj'
    simp only [Finset.mem_range] at hj hj'
    rw [show n - (n - 1 - j) = j + 1 by omega, List.getD_eq_default _ _ (by omega), zero_mul]

end SequenceProof

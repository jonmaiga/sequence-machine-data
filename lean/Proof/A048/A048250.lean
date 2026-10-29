import Prog.A048.A0482
import Mathlib.Data.Nat.Squarefree

/-- A048250 is the sum of the squarefree divisors of `n`. -/
theorem A048250.anchor (n : ℕ) (hn : 1 ≤ n) :
    A048250 n = ((∑ d ∈ n.divisors with Squarefree d, d : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A048250, A048250.P17960441032552816313.a, A048250.P17960441032552816313.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel, Nat.cast_inj]
  rw [Nat.sum_divisors_filter_squarefree (by omega), Finset.prod_add_one, Nat.factors_eq]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [Finset.prod_val]
  rfl

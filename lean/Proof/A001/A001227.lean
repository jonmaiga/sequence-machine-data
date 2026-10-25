import Prog.A001.A0012

/-- A001227 is the number of odd divisors of n. -/
theorem A001227.anchor (n : ℕ) (hn : 1 ≤ n) : A001227 n = (((Nat.divisors n).filter Odd).card : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A001227, A001227.P17291574635237243988.a, A001227.P17291574635237243988.f1, SequenceMachineLib.memo_apply,
    Nat.add_sub_cancel]
  norm_cast
  rw [Finset.card_filter]
  refine Finset.sum_congr rfl fun d _ => ?_
  rcases Nat.mod_two_eq_zero_or_one d with h | h <;> simp [Nat.odd_iff, h]

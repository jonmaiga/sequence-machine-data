import Prog.A000.A0005

/-- A000593 is the sum of the odd divisors of `n`. -/
theorem A000593.anchor (n : ℕ) (hn : 1 ≤ n) : A000593 n = ((∑ d ∈ n.divisors with Odd d, d : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A000593, A000593.P10331878810394225172.a, A000593.P10331878810394225172.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel, Nat.cast_inj]
  rw [Finset.sum_filter]
  refine Finset.sum_congr rfl fun d _ => ?_
  rcases Nat.even_or_odd d with h | h
  · rw [ite_eq_right (Nat.not_odd_iff_even.mpr h), Nat.even_iff.mp h, zero_mul]
  · rw [ite_eq_left h, Nat.odd_iff.mp h, one_mul]

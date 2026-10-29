import Prog.A010.A0100

/-- A010051 is the characteristic function of the primes. -/
theorem A010051.anchor (n : ℕ) (hn : 1 ≤ n) : A010051 n = if n.Prime then 1 else 0 := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A010051, A010051.P2964579406648181973.a, A010051.P2964579406648181973.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  split_ifs with h
  · simp [h.primeFactors]
  · rw [Finset.sum_eq_zero, Nat.cast_zero]
    intro p hp
    have hpp := Nat.prime_of_mem_primeFactors hp
    have hle := Nat.le_of_dvd (by omega) (Nat.dvd_of_mem_primeFactors hp)
    exact Nat.choose_eq_zero_of_lt (lt_of_le_of_ne hle fun e => h (e ▸ hpp))

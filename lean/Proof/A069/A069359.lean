import Prog.A069.A0693

/-- A069359 is `n * Σ_{p | n} 1/p`, i.e. the sum of `n/p` over the primes `p` dividing `n`. -/
theorem A069359.anchor (n : ℕ) (hn : 1 ≤ n) : A069359 n = ∑ p ∈ n.primeFactors, ((n / p : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A069359, A069359.P17776763206282082862.a, A069359.P17776763206282082862.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  refine Finset.sum_congr rfl fun p hp => ?_
  have hpp := Nat.prime_of_mem_primeFactors hp
  obtain ⟨q, hq⟩ := Nat.dvd_of_mem_primeFactors hp
  have hp0 : (0 : ℚ) < p := by exact_mod_cast hpp.pos
  have hp2 : (2 : ℚ) ≤ p := by exact_mod_cast hpp.two_le
  have hm : (m : ℚ) = p * q - 1 := by
    have := congrArg (Nat.cast (R := ℚ)) hq
    push_cast at this
    linarith
  rw [hq, Nat.mul_div_cancel_left _ hpp.pos, Int.ceil_eq_iff, hm]
  constructor
  · rw [lt_div_iff₀ hp0]; push_cast; nlinarith
  · rw [div_le_iff₀ hp0]; push_cast; nlinarith

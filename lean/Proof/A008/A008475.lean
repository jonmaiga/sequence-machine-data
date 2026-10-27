import Prog.A008.A0084

/-- `SequenceMachineLib.valuation l p` is the exponent of the prime `p` in `l`. -/
private theorem valuation_eq (l p : ℕ) (hp : p.Prime) :
    SequenceMachineLib.valuation l p = l.factorization p := by
  induction l using Nat.strong_induction_on with
  | _ l ih =>
    rw [SequenceMachineLib.valuation]
    split_ifs with h
    · obtain ⟨-, hl, hd⟩ := h
      have hpos : 0 < l.factorization p := hp.factorization_pos_of_dvd (by omega) hd
      rw [ih (l / p) (Nat.div_lt_self hl hp.one_lt), Nat.factorization_div hd, Finsupp.tsub_apply,
        hp.factorization_self]
      omega
    · push Not at h
      rcases Nat.eq_zero_or_pos l with rfl | hl
      · simp
      · exact (Nat.factorization_eq_zero_of_not_dvd (h hp.two_le hl)).symm

/-- A008475 is the sum of the prime powers `p^e` exactly dividing `n` (0 for `n = 1`). -/
theorem A008475.anchor (n : ℕ) (hn : 1 ≤ n) :
    A008475 n = ((∑ p ∈ n.primeFactors, p ^ n.factorization p : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A008475, A008475.P2912436043946083167.a, A008475.P2912436043946083167.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel, Nat.cast_inj]
  exact Finset.sum_congr rfl fun p hp => by rw [valuation_eq _ _ (Nat.prime_of_mem_primeFactors hp)]

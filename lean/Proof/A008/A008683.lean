import Prog.A008.A0086
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-! The canonical program of A008683 multiplies `-⌊1/e⌋` over the exponents `e` of `n`: `-1` for an exponent 1,
`0` as soon as an exponent is at least 2. -/

/-- A008683 is the Möbius function. -/
theorem A008683.anchor (n : ℕ) (hn : 1 ≤ n) : A008683 n = ArithmeticFunction.moebius n := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A008683, A008683.P10736294816071761024.a, A008683.P10736294816071761024.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  have pos : ∀ p ∈ (m + 1).primeFactors, 1 ≤ (m + 1).factorization p := fun p hp =>
    (Nat.prime_of_mem_primeFactors hp).factorization_pos_of_dvd (by omega) (Nat.dvd_of_mem_primeFactors hp)
  have term : ∀ p ∈ (m + 1).primeFactors, (-⌊1 / ((m + 1).factorization p : ℚ)⌋) =
      if (m + 1).factorization p = 1 then -1 else 0 := by
    intro p hp
    split_ifs with h
    · simp [h]
    · have h2 : (2 : ℚ) ≤ (m + 1).factorization p := by exact_mod_cast (by have := pos p hp; omega)
      have h0 : ⌊1 / ((m + 1).factorization p : ℚ)⌋ = 0 := by
        rw [Int.floor_eq_zero_iff]
        constructor
        · positivity
        · rw [div_lt_one (by linarith)]; linarith
      rw [h0, neg_zero]
  rw [Finset.prod_congr rfl term]
  by_cases hsq : Squarefree (m + 1)
  · have hone : ∀ p ∈ (m + 1).primeFactors, (m + 1).factorization p = 1 := fun p hp =>
      le_antisymm ((Nat.squarefree_iff_factorization_le_one (by omega)).mp hsq p) (pos p hp)
    rw [Finset.prod_congr rfl fun p hp => by rw [ite_eq_left (hone p hp)], Finset.prod_const,
      ArithmeticFunction.moebius_apply_of_squarefree hsq,
      ← (ArithmeticFunction.cardDistinctFactors_eq_cardFactors_iff_squarefree (by omega)).mpr hsq,
      ArithmeticFunction.cardDistinctFactors_apply, ← List.card_toFinset, ← Nat.primeFactors.eq_1]
  · rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]
    obtain ⟨p, hp⟩ : ∃ p, 1 < (m + 1).factorization p := by
      by_contra h
      push Not at h
      exact hsq ((Nat.squarefree_iff_factorization_le_one (by omega)).mpr h)
    have hpf : p ∈ (m + 1).primeFactors := by
      rw [← Nat.support_factorization]
      exact Finsupp.mem_support_iff.mpr (by omega)
    exact Finset.prod_eq_zero hpf (by rw [ite_eq_right (by omega)])

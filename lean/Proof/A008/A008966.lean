import Prog.A008.A0089
import Mathlib.Data.Nat.Squarefree

/-- A008966 is 1 if `n` is squarefree, otherwise 0. -/
theorem A008966.anchor (n : ℕ) (hn : 1 ≤ n) : A008966 n = if Squarefree n then 1 else 0 := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A008966, A008966.P18444031257857153223.a, A008966.P18444031257857153223.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  have pos : ∀ p ∈ (m + 1).primeFactors, 1 ≤ (m + 1).factorization p := fun p hp =>
    (Nat.prime_of_mem_primeFactors hp).factorization_pos_of_dvd (by omega) (Nat.dvd_of_mem_primeFactors hp)
  split_ifs with hsq
  · have hone : ∀ p ∈ (m + 1).primeFactors, (m + 1).factorization p = 1 := fun p hp =>
      le_antisymm ((Nat.squarefree_iff_factorization_le_one (by omega)).mp hsq p) (pos p hp)
    rw [Finset.prod_eq_one fun p hp => by rw [hone p hp]; rfl, Nat.cast_one]
  · obtain ⟨p, hp⟩ : ∃ p, 1 < (m + 1).factorization p := by
      by_contra h
      push Not at h
      exact hsq ((Nat.squarefree_iff_factorization_le_one (by omega)).mpr h)
    have hpf : p ∈ (m + 1).primeFactors := by
      rw [← Nat.support_factorization]
      exact Finsupp.mem_support_iff.mpr (by omega)
    rw [Finset.prod_eq_zero hpf, Nat.cast_zero]
    exact Nat.mod_eq_zero_of_dvd (Nat.dvd_factorial (by norm_num) hp)

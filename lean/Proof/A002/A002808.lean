import Prog.A002.A0028
import Proof.A000.A000005

/-- A positive number has more than two divisors exactly when it is composite. -/
private theorem two_lt_card_divisors (k : ℕ) (hk : 1 ≤ k) : 2 < k.divisors.card ↔ 1 < k ∧ ¬ k.Prime := by
  constructor
  · intro h
    refine ⟨?_, fun hp => ?_⟩
    · by_contra h1
      obtain rfl : k = 1 := by omega
      simp at h
    · rw [hp.divisors, Finset.card_pair hp.one_lt.ne] at h
      omega
  · rintro ⟨h1, hp⟩
    have hmp := Nat.minFac_prime (show k ≠ 1 by omega)
    have h3 : ({1, k.minFac, k} : Finset ℕ).card = 3 :=
      Finset.card_eq_three.mpr ⟨1, k.minFac, k, hmp.one_lt.ne, by omega, fun e => hp (e ▸ hmp), rfl⟩
    have hsub : ({1, k.minFac, k} : Finset ℕ) ⊆ k.divisors := by
      intro x hx
      simp only [Finset.mem_insert, Finset.mem_singleton] at hx
      rcases hx with rfl | rfl | rfl <;> simp [Nat.minFac_dvd] <;> omega
    have := Finset.card_le_card hsub
    omega

private theorem composites_infinite : (Set.ofPred fun k => 1 < k ∧ ¬ k.Prime).Infinite := by
  refine Set.infinite_of_not_bddAbove fun ⟨N, hN⟩ => ?_
  have h : (fun k => 1 < k ∧ ¬ k.Prime) (2 * (N + 2)) := ⟨by omega, Nat.not_prime_mul (by omega) (by omega)⟩
  have := hN h
  omega

/-- A002808 are the composite numbers. -/
theorem A002808.anchor (n : ℕ) (hn : 1 ≤ n) :
    A002808 n = (Nat.nth (fun k => 1 < k ∧ ¬ k.Prime) (n - 1) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have h5 : ∀ j, A000005 (j + 1) = (((j + 1).divisors.card : ℕ) : ℤ) := fun j => by
    rw [A000005.anchor _ (by omega), ArithmeticFunction.sigma_zero_apply]
  have hc : ∀ j, 2 < (j + 1).divisors.card ↔ (fun k => 1 < k ∧ ¬ k.Prime) (j + 1) := fun j =>
    two_lt_card_divisors _ (by omega)
  simp only [A002808, A002808.P568819275912777150.a, A002808.P568819275912777150.f1,
    A002808.P568819275912777150.f2, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    SequenceMachineLib.nth_eq, h5, Nat.cast_lt, hc, Nat.cast_inj]
  have := Nat.nth_mem_of_infinite composites_infinite m
  exact Nat.nth_add_one (p := fun k => 1 < k ∧ ¬ k.Prime) (by simp) (by omega)

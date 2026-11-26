import Prog.A151.A1517
import Proof.A000.A000040
import Proof.A000.A000720

/-- The previous prime: A151799(n) is the largest prime below n. -/
theorem A151799.anchor (n : ℕ) (hn : 3 ≤ n) :
    ∃ p : ℕ, A151799 n = p ∧ IsGreatest {q : ℕ | q.Prime ∧ q < n} p := by
  have hk : 1 ≤ Nat.count Nat.Prime n := by
    have := Nat.count_strict_mono Nat.prime_two (show 2 < n by omega)
    omega
  refine ⟨Nat.nth Nat.Prime (Nat.count Nat.Prime n - 1), ?_, ⟨Nat.prime_nth_prime _,
    Nat.nth_lt_of_lt_count (by omega)⟩, ?_⟩
  · have hpc : Nat.primeCounting (n - 1) = Nat.count Nat.Prime n := by
      rw [Nat.primeCounting, Nat.primeCounting', show n - 1 + 1 = n by omega]
    simp only [A151799, A151799.P1836476777957611455.a, SequenceMachineLib.memo_apply,
      show n - 3 + 2 = n - 1 by omega, A000720.anchor (n - 1) (by omega), Int.toNat_natCast, hpc]
    exact A000040.anchor _ hk
  · rintro q ⟨hq, hqn⟩
    by_contra h
    have hc := Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime (Nat.count Nat.Prime n - 1)
    have h1 : Nat.count Nat.Prime (Nat.nth Nat.Prime (Nat.count Nat.Prime n - 1) + 1) =
        Nat.count Nat.Prime n := by
      rw [Nat.count_succ, hc]
      simp only [Nat.prime_nth_prime, ↓reduceIte]
      omega
    have h2 := Nat.count_monotone Nat.Prime (show Nat.nth Nat.Prime (Nat.count Nat.Prime n - 1) + 1 ≤ q by omega)
    have h3 := Nat.count_strict_mono hq hqn
    omega

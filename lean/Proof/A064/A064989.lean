import Prog.A064.A0649
import Proof.A000.A000720
import Proof.A008.A008578
import Proof.Lib.Valuation

/-- A064989: 2 removed and each odd prime factor replaced by the previous prime, with its exponent; multiplicative
with `a(2^e) = 1` and `a(p^e) = prevprime(p)^e` for odd primes `p`. -/
theorem A064989.anchor (n : ℕ) (hn : 1 ≤ n) :
    A064989 n = ∏ p ∈ n.primeFactors,
      ((if p = 2 then 1 else Nat.nth Nat.Prime (Nat.primeCounting p - 2) : ℕ) : ℤ) ^ n.factorization p := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A064989, A064989.P2068368621474667966.a, A064989.P2068368621474667966.f1, SequenceMachineLib.memo_apply,
    Nat.add_sub_cancel]
  refine Finset.prod_congr rfl fun p hp => ?_
  have hpp : p.Prime := Nat.prime_of_mem_primeFactors hp
  have h2 : Nat.primeCounting 2 = 1 := by decide
  have h3 : Nat.primeCounting 3 = 2 := by decide
  have hpc : 1 ≤ p.primeCounting := h2 ▸ Nat.monotone_primeCounting hpp.two_le
  rw [A000720.anchor p hpp.one_lt.le, SequenceProof.valuation_eq_factorization _ _ hpp (by omega),
    show (p.primeCounting : ℤ).toNat = p.primeCounting by omega, A008578.anchor _ hpc]
  by_cases hp2 : p = 2
  · subst hp2; simp [h2]
  · have : 3 ≤ p := by have := hpp.two_le; omega
    have : 2 ≤ p.primeCounting := h3 ▸ Nat.monotone_primeCounting this
    simp [hp2, show p.primeCounting ≠ 1 by omega]

import Prog.A003.A0039
import Proof.A000.A000040
import Proof.A000.A000720
import Proof.Lib.Valuation

/-- A003961: each prime factor replaced by the next prime, with its exponent; completely multiplicative with
`a(prime(k)) = prime(k+1)`. -/
theorem A003961.anchor (n : ℕ) (hn : 1 ≤ n) :
    A003961 n = ∏ p ∈ n.primeFactors, ((Nat.nth Nat.Prime (Nat.primeCounting p) : ℕ) : ℤ) ^ n.factorization p := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A003961, A003961.P682539252440638896.a, A003961.P682539252440638896.f1, SequenceMachineLib.memo_apply,
    Nat.add_sub_cancel]
  refine Finset.prod_congr rfl fun p hp => ?_
  have hpp : p.Prime := Nat.prime_of_mem_primeFactors hp
  rw [A000720.anchor p hpp.one_lt.le, SequenceProof.valuation_eq_factorization _ _ hpp (by omega),
    show ((p.primeCounting : ℤ) + 1).toNat = p.primeCounting + 1 by omega, A000040.anchor _ (by omega), Nat.add_sub_cancel]

import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141993 lists the primes congruent to 17 mod 29. -/
theorem A141993.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141993 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 17) (n - 1) : ℤ) := by
  simp only [A141993, A141993.P500248352914143476.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 29 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141993.P500248352914143476.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h29 := SequenceProof.prime_mod_eq_self hp 29 (by norm_num)
      simp only [A141993.P500248352914143476.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h29 ⊢
      omega)
    (fun x hp hx => ⟨(x - 17) / 58, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h29 := SequenceProof.prime_mod_eq_self hp 29 (by norm_num)
      simp only [A141993.P500248352914143476.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

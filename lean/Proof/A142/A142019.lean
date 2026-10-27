import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142019 lists the primes congruent to 15 mod 31. -/
theorem A142019.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142019 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 15) (n - 1) : ℤ) := by
  simp only [A142019, A142019.P6462402050578494635.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 31 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142019.P6462402050578494635.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h31 := SequenceProof.prime_mod_eq_self hp 31 (by norm_num)
      simp only [A142019.P6462402050578494635.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h31 ⊢
      omega)
    (fun x hp hx => ⟨(x - 77) / 31, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h31 := SequenceProof.prime_mod_eq_self hp 31 (by norm_num)
      simp only [A142019.P6462402050578494635.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142433 lists the primes congruent to 23 mod 49. -/
theorem A142433.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142433 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 23) (n - 1) : ℤ) := by
  simp only [A142433, A142433.P13028862557884119428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 49 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142433.P13028862557884119428.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A142433.P13028862557884119428.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 ⊢
      omega)
    (fun x hp hx => ⟨(x - 23) / 98, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A142433.P13028862557884119428.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

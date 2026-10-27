import Prog.A007.A0075
import Proof.Lib.PrimesMod

/-- A007528 lists the primes congruent to 5 mod 6. -/
theorem A007528.anchor (n : ℕ) (hn : 1 ≤ n) :
    A007528 n = (Nat.nth (fun p => p.Prime ∧ p % 6 = 5) (n - 1) : ℤ) := by
  simp only [A007528, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 6 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A007528.P3292322913023880558.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A007528.P3292322913023880558.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 ⊢
      omega)
    (fun x hp hx => ⟨(x - 5) / 3, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A007528.P3292322913023880558.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

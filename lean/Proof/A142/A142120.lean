import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142120 lists the primes congruent to 11 mod 37. -/
theorem A142120.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142120 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 11) (n - 1) : ℤ) := by
  simp only [A142120, A142120.P13542849916616082003.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 37 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142120.P13542849916616082003.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h37 := SequenceProof.prime_mod_eq_self hp 37 (by norm_num)
      simp only [A142120.P13542849916616082003.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h37 ⊢
      omega)
    (fun x hp hx => ⟨(x - 11) / 74, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h37 := SequenceProof.prime_mod_eq_self hp 37 (by norm_num)
      simp only [A142120.P13542849916616082003.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

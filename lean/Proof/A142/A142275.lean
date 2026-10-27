import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142275 lists the primes congruent to 26 mod 43. -/
theorem A142275.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142275 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 26) (n - 1) : ℤ) := by
  simp only [A142275, A142275.P8128551976673487399.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int_of_prime _ 43 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142275.P8128551976673487399.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h43 := SequenceProof.prime_mod_eq_self hp 43 (by norm_num)
      simp only [A142275.P8128551976673487399.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h43 ⊢
      omega)
    (fun x hp hx => ⟨(x + 17) / 86, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h43 := SequenceProof.prime_mod_eq_self hp 43 (by norm_num)
      simp only [A142275.P8128551976673487399.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

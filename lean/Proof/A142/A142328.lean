import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142328 lists the primes congruent to 31 mod 45. -/
theorem A142328.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142328 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 31) (n - 1) : ℤ) := by
  simp only [A142328, A142328.P14824499500990808311.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 45 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142328.P14824499500990808311.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A142328.P14824499500990808311.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 ⊢
      omega)
    (fun x hp hx => ⟨(x - 31) / 90, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A142328.P14824499500990808311.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

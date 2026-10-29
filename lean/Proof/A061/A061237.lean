import Prog.A061.A0612
import Proof.Lib.PrimesMod

/-- A061237 lists the primes congruent to 1 mod 9. -/
theorem A061237.anchor (n : ℕ) (hn : 1 ≤ n) :
    A061237 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 1) (n - 1) : ℤ) := by
  simp only [A061237, A061237.P5052601919176040914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 9 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A061237.P5052601919176040914.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A061237.P5052601919176040914.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 ⊢
      omega)
    (fun x hp hx => ⟨(x - 1) / 9, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A061237.P5052601919176040914.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

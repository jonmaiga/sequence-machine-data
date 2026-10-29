import Prog.A061.A0612
import Proof.Lib.PrimesMod

/-- A061240 lists the primes congruent to 5 mod 9. -/
theorem A061240.anchor (n : ℕ) (hn : 1 ≤ n) :
    A061240 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 5) (n - 1) : ℤ) := by
  simp only [A061240, A061240.P124253332193619625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int_of_prime _ 9 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A061240.P124253332193619625.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A061240.P124253332193619625.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 ⊢
      omega)
    (fun x hp hx => ⟨(x + 4) / 9, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A061240.P124253332193619625.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

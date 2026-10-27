import Prog.A037.A0370
import Proof.Lib.PrimesMod

/-- A037029 lists the primes congruent to 1 mod 666. -/
theorem A037029.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037029 n = (Nat.nth (fun p => p.Prime ∧ p % 666 = 1) (n - 1) : ℤ) := by
  simp only [A037029, A037029.P13713327370861726249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 666 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A037029.P13713327370861726249.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h37 := SequenceProof.prime_mod_eq_self hp 37 (by norm_num)
      simp only [A037029.P13713327370861726249.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h37 ⊢
      omega)
    (fun x hp hx => ⟨(x - 1) / 333, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h37 := SequenceProof.prime_mod_eq_self hp 37 (by norm_num)
      simp only [A037029.P13713327370861726249.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

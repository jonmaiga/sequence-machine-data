import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142057 lists the primes congruent to 14 mod 33. -/
theorem A142057.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142057 n = (Nat.nth (fun p => p.Prime ∧ p % 33 = 14) (n - 1) : ℤ) := by
  simp only [A142057, A142057.P2851651434208903845.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 33 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142057.P2851651434208903845.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A142057.P2851651434208903845.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 ⊢
      omega)
    (fun x hp hx => ⟨(x - 47) / 33, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      simp only [A142057.P2851651434208903845.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

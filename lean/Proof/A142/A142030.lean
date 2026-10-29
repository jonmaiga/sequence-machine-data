import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142030 lists the primes congruent to 26 mod 31. -/
theorem A142030.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142030 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 26) (n - 1) : ℤ) := by
  simp only [A142030, A142030.P5890763793859988796.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int_of_prime _ 31 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142030.P5890763793859988796.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h31 := SequenceProof.prime_mod_eq_self hp 31 (by norm_num)
      simp only [A142030.P5890763793859988796.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h31 ⊢
      omega)
    (fun x hp hx => ⟨(x + 5) / 62, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h31 := SequenceProof.prime_mod_eq_self hp 31 (by norm_num)
      simp only [A142030.P5890763793859988796.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

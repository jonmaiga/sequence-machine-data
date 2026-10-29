import Prog.A100.A1004
import Proof.Lib.PrimesMod

/-- A100494 lists the primes congruent to 3 mod 47. -/
theorem A100494.anchor (n : ℕ) (hn : 1 ≤ n) :
    A100494 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 3) (n - 1) : ℤ) := by
  simp only [A100494, A100494.P1937348515237649626.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod_of_prime _ 47 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A100494.P1937348515237649626.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i hp => by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h47 := SequenceProof.prime_mod_eq_self hp 47 (by norm_num)
      simp only [A100494.P1937348515237649626.f1, SequenceMachineLib.memo_apply] at hp h2 h3 h5 h7 h11 h13 h47 ⊢
      omega)
    (fun x hp hx => ⟨(x - 3) / 94, by
      have h2 := SequenceProof.prime_mod_eq_self hp 2 (by norm_num)
      have h3 := SequenceProof.prime_mod_eq_self hp 3 (by norm_num)
      have h5 := SequenceProof.prime_mod_eq_self hp 5 (by norm_num)
      have h7 := SequenceProof.prime_mod_eq_self hp 7 (by norm_num)
      have h11 := SequenceProof.prime_mod_eq_self hp 11 (by norm_num)
      have h13 := SequenceProof.prime_mod_eq_self hp 13 (by norm_num)
      have h47 := SequenceProof.prime_mod_eq_self hp 47 (by norm_num)
      simp only [A100494.P1937348515237649626.f1, SequenceMachineLib.memo_apply]
      omega⟩) _

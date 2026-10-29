import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141936 lists the primes congruent to 12 mod 25. -/
theorem A141936.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141936 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 12) (n - 1) : ℤ) := by
  simp only [A141936, A141936.P15384463065993104786.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 25 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141936.P15384463065993104786.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141936.P15384463065993104786.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 25, by simp only [A141936.P15384463065993104786.f1, SequenceMachineLib.memo_apply]; omega⟩) _

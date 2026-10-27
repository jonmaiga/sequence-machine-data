import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142361 lists the primes congruent to 10 mod 47. -/
theorem A142361.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142361 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 10) (n - 1) : ℤ) := by
  simp only [A142361, A142361.P13826215273931227432.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142361.P13826215273931227432.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142361.P13826215273931227432.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142361.P13826215273931227432.f1, SequenceMachineLib.memo_apply]; omega⟩) _

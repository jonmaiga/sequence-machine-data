import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142813 lists the primes congruent to 15 mod 61. -/
theorem A142813.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142813 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 15) (n - 1) : ℤ) := by
  simp only [A142813, A142813.P3118689322364856327.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 15 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142813.P3118689322364856327.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142813.P3118689322364856327.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142813.P3118689322364856327.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142561 lists the primes congruent to 31 mod 53. -/
theorem A142561.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142561 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 31) (n - 1) : ℤ) := by
  simp only [A142561, A142561.P5495587934823750673.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 31 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142561.P5495587934823750673.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142561.P5495587934823750673.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142561.P5495587934823750673.f1, SequenceMachineLib.memo_apply]; omega⟩) _

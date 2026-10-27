import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142325 lists the primes congruent to 26 mod 45. -/
theorem A142325.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142325 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 26) (n - 1) : ℤ) := by
  simp only [A142325, A142325.P16190209765258327535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 26 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142325.P16190209765258327535.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142325.P16190209765258327535.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142325.P16190209765258327535.f1, SequenceMachineLib.memo_apply]; omega⟩) _

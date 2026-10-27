import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142005 lists the primes congruent to 1 mod 31. -/
theorem A142005.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142005 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 1) (n - 1) : ℤ) := by
  simp only [A142005, A142005.P16017676294522784959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142005.P16017676294522784959.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142005.P16017676294522784959.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142005.P16017676294522784959.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142822 lists the primes congruent to 24 mod 61. -/
theorem A142822.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142822 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 24) (n - 1) : ℤ) := by
  simp only [A142822, A142822.P7367106811697207096.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142822.P7367106811697207096.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142822.P7367106811697207096.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142822.P7367106811697207096.f1, SequenceMachineLib.memo_apply]; omega⟩) _

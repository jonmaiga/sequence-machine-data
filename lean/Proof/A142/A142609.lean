import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142609 lists the primes congruent to 12 mod 55. -/
theorem A142609.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142609 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 12) (n - 1) : ℤ) := by
  simp only [A142609, A142609.P4764206604558976134.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142609.P4764206604558976134.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142609.P4764206604558976134.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142609.P4764206604558976134.f1, SequenceMachineLib.memo_apply]; omega⟩) _

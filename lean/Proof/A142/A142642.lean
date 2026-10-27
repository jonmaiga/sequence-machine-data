import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142642 lists the primes congruent to 3 mod 56. -/
theorem A142642.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142642 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 3) (n - 1) : ℤ) := by
  simp only [A142642, A142642.P10277425919260139066.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142642.P10277425919260139066.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142642.P10277425919260139066.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142642.P10277425919260139066.f1, SequenceMachineLib.memo_apply]; omega⟩) _

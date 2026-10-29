import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142604 lists the primes congruent to 4 mod 55. -/
theorem A142604.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142604 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 4) (n - 1) : ℤ) := by
  simp only [A142604, A142604.P10312759616562587423.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142604.P10312759616562587423.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142604.P10312759616562587423.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142604.P10312759616562587423.f1, SequenceMachineLib.memo_apply]; omega⟩) _

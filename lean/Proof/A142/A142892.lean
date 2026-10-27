import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142892 lists the primes congruent to 5 mod 63. -/
theorem A142892.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142892 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 5) (n - 1) : ℤ) := by
  simp only [A142892, A142892.P9881392065937177943.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142892.P9881392065937177943.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142892.P9881392065937177943.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142892.P9881392065937177943.f1, SequenceMachineLib.memo_apply]; omega⟩) _

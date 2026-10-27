import Prog.A100.A1002
import Proof.Lib.PrimesMod

/-- A100203 lists the primes congruent to 3 mod 37. -/
theorem A100203.anchor (n : ℕ) (hn : 1 ≤ n) :
    A100203 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 3) (n - 1) : ℤ) := by
  simp only [A100203, A100203.P16095460631761891307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A100203.P16095460631761891307.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A100203.P16095460631761891307.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A100203.P16095460631761891307.f1, SequenceMachineLib.memo_apply]; omega⟩) _

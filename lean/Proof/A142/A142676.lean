import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142676 lists the primes congruent to 17 mod 57. -/
theorem A142676.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142676 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 17) (n - 1) : ℤ) := by
  simp only [A142676, A142676.P9545973546308218541.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142676.P9545973546308218541.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142676.P9545973546308218541.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142676.P9545973546308218541.f1, SequenceMachineLib.memo_apply]; omega⟩) _

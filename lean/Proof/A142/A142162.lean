import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142162 lists the primes congruent to 5 mod 39. -/
theorem A142162.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142162 n = (Nat.nth (fun p => p.Prime ∧ p % 39 = 5) (n - 1) : ℤ) := by
  simp only [A142162, A142162.P17850514868329960176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 39 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142162.P17850514868329960176.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142162.P17850514868329960176.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 39, by simp only [A142162.P17850514868329960176.f1, SequenceMachineLib.memo_apply]; omega⟩) _

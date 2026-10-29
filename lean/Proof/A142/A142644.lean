import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142644 lists the primes congruent to 9 mod 56. -/
theorem A142644.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142644 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 9) (n - 1) : ℤ) := by
  simp only [A142644, A142644.P15028343553440600438.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 56 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142644.P15028343553440600438.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142644.P15028343553440600438.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 56, by simp only [A142644.P15028343553440600438.f1, SequenceMachineLib.memo_apply]; omega⟩) _

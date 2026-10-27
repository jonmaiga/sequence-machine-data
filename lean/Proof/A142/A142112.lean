import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142112 lists the primes congruent to 2 mod 37. -/
theorem A142112.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142112 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 2) (n - 1) : ℤ) := by
  simp only [A142112, A142112.P1921263212343522534.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142112.P1921263212343522534.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142112.P1921263212343522534.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142112.P1921263212343522534.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142420 lists the primes congruent to 8 mod 49. -/
theorem A142420.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142420 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 8) (n - 1) : ℤ) := by
  simp only [A142420, A142420.P1512918209034119506.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142420.P1512918209034119506.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142420.P1512918209034119506.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142420.P1512918209034119506.f1, SequenceMachineLib.memo_apply]; omega⟩) _

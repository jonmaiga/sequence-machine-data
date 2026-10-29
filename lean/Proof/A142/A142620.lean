import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142620 lists the primes congruent to 27 mod 55. -/
theorem A142620.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142620 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 27) (n - 1) : ℤ) := by
  simp only [A142620, A142620.P6649263307082028531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 27 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142620.P6649263307082028531.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142620.P6649263307082028531.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142620.P6649263307082028531.f1, SequenceMachineLib.memo_apply]; omega⟩) _

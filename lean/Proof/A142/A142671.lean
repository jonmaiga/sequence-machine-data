import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142671 lists the primes congruent to 10 mod 57. -/
theorem A142671.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142671 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 10) (n - 1) : ℤ) := by
  simp only [A142671, A142671.P18209446901248337541.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142671.P18209446901248337541.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142671.P18209446901248337541.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142671.P18209446901248337541.f1, SequenceMachineLib.memo_apply]; omega⟩) _

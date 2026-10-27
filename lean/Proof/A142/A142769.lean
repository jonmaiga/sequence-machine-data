import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142769 lists the primes congruent to 42 mod 59. -/
theorem A142769.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142769 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 42) (n - 1) : ℤ) := by
  simp only [A142769, A142769.P13463393631795004344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 42 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142769.P13463393631795004344.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142769.P13463393631795004344.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142769.P13463393631795004344.f1, SequenceMachineLib.memo_apply]; omega⟩) _

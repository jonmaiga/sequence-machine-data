import Prog.A142.A1420
import Proof.Lib.PrimesMod

/-- A142007 lists the primes congruent to 3 mod 31. -/
theorem A142007.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142007 n = (Nat.nth (fun p => p.Prime ∧ p % 31 = 3) (n - 1) : ℤ) := by
  simp only [A142007, A142007.P2747788869624958561.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 31 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142007.P2747788869624958561.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142007.P2747788869624958561.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 31, by simp only [A142007.P2747788869624958561.f1, SequenceMachineLib.memo_apply]; omega⟩) _

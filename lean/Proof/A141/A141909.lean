import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141909 lists the primes congruent to 4 mod 23. -/
theorem A141909.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141909 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 4) (n - 1) : ℤ) := by
  simp only [A141909, A141909.P13650298499783670270.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141909.P13650298499783670270.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141909.P13650298499783670270.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A141909.P13650298499783670270.f1, SequenceMachineLib.memo_apply]; omega⟩) _

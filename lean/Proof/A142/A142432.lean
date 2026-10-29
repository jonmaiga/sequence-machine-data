import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142432 lists the primes congruent to 22 mod 49. -/
theorem A142432.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142432 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 22) (n - 1) : ℤ) := by
  simp only [A142432, A142432.P13033102776452484171.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142432.P13033102776452484171.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142432.P13033102776452484171.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142432.P13033102776452484171.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142416 lists the primes congruent to 3 mod 49. -/
theorem A142416.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142416 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 3) (n - 1) : ℤ) := by
  simp only [A142416, A142416.P5754371465448936547.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142416.P5754371465448936547.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142416.P5754371465448936547.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142416.P5754371465448936547.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142125 lists the primes congruent to 16 mod 37. -/
theorem A142125.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142125 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 16) (n - 1) : ℤ) := by
  simp only [A142125, A142125.P12634931141477539271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142125.P12634931141477539271.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142125.P12634931141477539271.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142125.P12634931141477539271.f1, SequenceMachineLib.memo_apply]; omega⟩) _

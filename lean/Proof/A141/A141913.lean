import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141913 lists the primes congruent to 9 mod 23. -/
theorem A141913.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141913 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 9) (n - 1) : ℤ) := by
  simp only [A141913, A141913.P700375491561002954.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141913.P700375491561002954.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141913.P700375491561002954.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A141913.P700375491561002954.f1, SequenceMachineLib.memo_apply]; omega⟩) _

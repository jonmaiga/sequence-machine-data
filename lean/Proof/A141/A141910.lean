import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141910 lists the primes congruent to 6 mod 23. -/
theorem A141910.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141910 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 6) (n - 1) : ℤ) := by
  simp only [A141910, A141910.P16755912875914425086.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 23 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141910.P16755912875914425086.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141910.P16755912875914425086.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 23, by simp only [A141910.P16755912875914425086.f1, SequenceMachineLib.memo_apply]; omega⟩) _

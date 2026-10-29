import Prog.A268.A2688
import Proof.Lib.PrimesMod

/-- A268858 lists the primes whose decimal expansion ends in 39. -/
theorem A268858.anchor (n : ℕ) (hn : 1 ≤ n) :
    A268858 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 39) (n - 1) : ℤ) := by
  simp only [A268858, A268858.P6072330885185032074.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 39 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A268858.P6072330885185032074.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A268858.P6072330885185032074.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A268858.P6072330885185032074.f1, SequenceMachineLib.memo_apply]; omega⟩) _

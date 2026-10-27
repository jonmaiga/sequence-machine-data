import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141989 lists the primes congruent to 13 mod 29. -/
theorem A141989.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141989 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 13) (n - 1) : ℤ) := by
  simp only [A141989, A141989.P17280600227244085025.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141989.P17280600227244085025.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141989.P17280600227244085025.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141989.P17280600227244085025.f1, SequenceMachineLib.memo_apply]; omega⟩) _

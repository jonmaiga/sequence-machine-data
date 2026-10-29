import Prog.A141.A1419
import Proof.Lib.PrimesMod

/-- A141977 lists the primes congruent to 1 mod 29. -/
theorem A141977.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141977 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 1) (n - 1) : ℤ) := by
  simp only [A141977, A141977.P12366910579437342238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 29 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141977.P12366910579437342238.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141977.P12366910579437342238.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 29, by simp only [A141977.P12366910579437342238.f1, SequenceMachineLib.memo_apply]; omega⟩) _

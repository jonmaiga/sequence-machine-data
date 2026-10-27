import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141889 lists the primes congruent to 4 mod 21. -/
theorem A141889.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141889 n = (Nat.nth (fun p => p.Prime ∧ p % 21 = 4) (n - 1) : ℤ) := by
  simp only [A141889, A141889.P7602993043577355867.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 21 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141889.P7602993043577355867.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141889.P7602993043577355867.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 21, by simp only [A141889.P7602993043577355867.f1, SequenceMachineLib.memo_apply]; omega⟩) _

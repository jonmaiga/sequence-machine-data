import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142489 lists the primes congruent to 22 mod 51. -/
theorem A142489.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142489 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 22) (n - 1) : ℤ) := by
  simp only [A142489, A142489.P7445239063544031094.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142489.P7445239063544031094.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142489.P7445239063544031094.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142489.P7445239063544031094.f1, SequenceMachineLib.memo_apply]; omega⟩) _

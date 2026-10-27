import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142293 lists the primes congruent to 3 mod 44. -/
theorem A142293.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142293 n = (Nat.nth (fun p => p.Prime ∧ p % 44 = 3) (n - 1) : ℤ) := by
  simp only [A142293, A142293.P969043416426135805.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 44 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142293.P969043416426135805.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142293.P969043416426135805.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 44, by simp only [A142293.P969043416426135805.f1, SequenceMachineLib.memo_apply]; omega⟩) _

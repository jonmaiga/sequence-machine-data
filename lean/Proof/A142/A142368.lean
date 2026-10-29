import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142368 lists the primes congruent to 17 mod 47. -/
theorem A142368.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142368 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 17) (n - 1) : ℤ) := by
  simp only [A142368, A142368.P17642259357547429494.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 17 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142368.P17642259357547429494.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142368.P17642259357547429494.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142368.P17642259357547429494.f1, SequenceMachineLib.memo_apply]; omega⟩) _

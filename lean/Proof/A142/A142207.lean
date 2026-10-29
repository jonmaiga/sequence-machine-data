import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142207 lists the primes congruent to 10 mod 41. -/
theorem A142207.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142207 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 10) (n - 1) : ℤ) := by
  simp only [A142207, A142207.P14197881745197397113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 10 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142207.P14197881745197397113.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142207.P14197881745197397113.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142207.P14197881745197397113.f1, SequenceMachineLib.memo_apply]; omega⟩) _

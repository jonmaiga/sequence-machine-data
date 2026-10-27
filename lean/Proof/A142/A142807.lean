import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142807 lists the primes congruent to 9 mod 61. -/
theorem A142807.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142807 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 9) (n - 1) : ℤ) := by
  simp only [A142807, A142807.P3249392603131882975.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142807.P3249392603131882975.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142807.P3249392603131882975.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142807.P3249392603131882975.f1, SequenceMachineLib.memo_apply]; omega⟩) _

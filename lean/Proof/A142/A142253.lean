import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142253 lists the primes congruent to 4 mod 43. -/
theorem A142253.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142253 n = (Nat.nth (fun p => p.Prime ∧ p % 43 = 4) (n - 1) : ℤ) := by
  simp only [A142253, A142253.P14971636905352207892.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 43 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142253.P14971636905352207892.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142253.P14971636905352207892.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 43, by simp only [A142253.P14971636905352207892.f1, SequenceMachineLib.memo_apply]; omega⟩) _

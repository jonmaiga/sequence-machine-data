import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142732 lists the primes congruent to 5 mod 59. -/
theorem A142732.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142732 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 5) (n - 1) : ℤ) := by
  simp only [A142732, A142732.P14396978986747985854.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142732.P14396978986747985854.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142732.P14396978986747985854.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142732.P14396978986747985854.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142731 lists the primes congruent to 4 mod 59. -/
theorem A142731.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142731 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 4) (n - 1) : ℤ) := by
  simp only [A142731, A142731.P15418768050750891547.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 4 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142731.P15418768050750891547.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142731.P15418768050750891547.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142731.P15418768050750891547.f1, SequenceMachineLib.memo_apply]; omega⟩) _

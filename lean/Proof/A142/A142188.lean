import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142188 lists the primes congruent to 13 mod 40. -/
theorem A142188.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142188 n = (Nat.nth (fun p => p.Prime ∧ p % 40 = 13) (n - 1) : ℤ) := by
  simp only [A142188, A142188.P7306125609912037089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 40 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142188.P7306125609912037089.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142188.P7306125609912037089.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 40, by simp only [A142188.P7306125609912037089.f1, SequenceMachineLib.memo_apply]; omega⟩) _

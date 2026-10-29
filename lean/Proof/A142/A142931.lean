import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142931 lists the primes congruent to 13 mod 64. -/
theorem A142931.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142931 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 13) (n - 1) : ℤ) := by
  simp only [A142931, A142931.P365347274686259069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142931.P365347274686259069.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142931.P365347274686259069.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142931.P365347274686259069.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142927 lists the primes congruent to 5 mod 64. -/
theorem A142927.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142927 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 5) (n - 1) : ℤ) := by
  simp only [A142927, A142927.P4410429363118527156.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 64 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142927.P4410429363118527156.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142927.P4410429363118527156.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 64, by simp only [A142927.P4410429363118527156.f1, SequenceMachineLib.memo_apply]; omega⟩) _

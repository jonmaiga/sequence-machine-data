import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142729 lists the primes congruent to 2 mod 59. -/
theorem A142729.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142729 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 2) (n - 1) : ℤ) := by
  simp only [A142729, A142729.P4999326252629130332.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142729.P4999326252629130332.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142729.P4999326252629130332.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142729.P4999326252629130332.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142323 lists the primes congruent to 22 mod 45. -/
theorem A142323.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142323 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 22) (n - 1) : ℤ) := by
  simp only [A142323, A142323.P6599792148377430745.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 22 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142323.P6599792148377430745.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142323.P6599792148377430745.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142323.P6599792148377430745.f1, SequenceMachineLib.memo_apply]; omega⟩) _

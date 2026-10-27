import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142750 lists the primes congruent to 23 mod 59. -/
theorem A142750.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142750 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 23) (n - 1) : ℤ) := by
  simp only [A142750, A142750.P3306253928389468557.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142750.P3306253928389468557.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142750.P3306253928389468557.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142750.P3306253928389468557.f1, SequenceMachineLib.memo_apply]; omega⟩) _

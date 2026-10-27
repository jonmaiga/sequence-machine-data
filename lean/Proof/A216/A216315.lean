import Prog.A216.A2163
import Proof.Lib.PrimesMod

/-- A216315 lists the primes congruent to 1 mod 59. -/
theorem A216315.anchor (n : ℕ) (hn : 1 ≤ n) :
    A216315 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 1) (n - 1) : ℤ) := by
  simp only [A216315, A216315.P17924968363353530023.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A216315.P17924968363353530023.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A216315.P17924968363353530023.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A216315.P17924968363353530023.f1, SequenceMachineLib.memo_apply]; omega⟩) _

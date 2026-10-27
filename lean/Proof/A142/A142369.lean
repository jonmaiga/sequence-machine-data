import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142369 lists the primes congruent to 18 mod 47. -/
theorem A142369.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142369 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 18) (n - 1) : ℤ) := by
  simp only [A142369, A142369.P2473731333366495914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142369.P2473731333366495914.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142369.P2473731333366495914.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142369.P2473731333366495914.f1, SequenceMachineLib.memo_apply]; omega⟩) _

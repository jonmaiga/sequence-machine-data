import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142313 lists the primes congruent to 2 mod 45. -/
theorem A142313.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142313 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 2) (n - 1) : ℤ) := by
  simp only [A142313, A142313.P17283951088892303914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142313.P17283951088892303914.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142313.P17283951088892303914.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142313.P17283951088892303914.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1422
import Proof.Lib.PrimesMod

/-- A142200 lists the primes congruent to 3 mod 41. -/
theorem A142200.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142200 n = (Nat.nth (fun p => p.Prime ∧ p % 41 = 3) (n - 1) : ℤ) := by
  simp only [A142200, A142200.P17436572599243192909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 41 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142200.P17436572599243192909.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142200.P17436572599243192909.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 41, by simp only [A142200.P17436572599243192909.f1, SequenceMachineLib.memo_apply]; omega⟩) _

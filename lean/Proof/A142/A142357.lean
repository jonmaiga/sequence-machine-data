import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142357 lists the primes congruent to 6 mod 47. -/
theorem A142357.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142357 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 6) (n - 1) : ℤ) := by
  simp only [A142357, A142357.P17076880945785824031.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 6 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142357.P17076880945785824031.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142357.P17076880945785824031.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142357.P17076880945785824031.f1, SequenceMachineLib.memo_apply]; omega⟩) _

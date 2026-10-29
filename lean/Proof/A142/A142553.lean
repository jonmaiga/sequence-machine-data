import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142553 lists the primes congruent to 23 mod 53. -/
theorem A142553.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142553 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 23) (n - 1) : ℤ) := by
  simp only [A142553, A142553.P16008129457823151344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142553.P16008129457823151344.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142553.P16008129457823151344.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142553.P16008129457823151344.f1, SequenceMachineLib.memo_apply]; omega⟩) _

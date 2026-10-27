import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142102 lists the primes congruent to 7 mod 36. -/
theorem A142102.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142102 n = (Nat.nth (fun p => p.Prime ∧ p % 36 = 7) (n - 1) : ℤ) := by
  simp only [A142102, A142102.P12293802350160398836.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 36 7 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142102.P12293802350160398836.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142102.P12293802350160398836.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 36, by simp only [A142102.P12293802350160398836.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142488 lists the primes congruent to 20 mod 51. -/
theorem A142488.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142488 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 20) (n - 1) : ℤ) := by
  simp only [A142488, A142488.P5347374661696826231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 20 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142488.P5347374661696826231.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142488.P5347374661696826231.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142488.P5347374661696826231.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142810 lists the primes congruent to 12 mod 61. -/
theorem A142810.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142810 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 12) (n - 1) : ℤ) := by
  simp only [A142810, A142810.P4981445707121693173.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 12 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142810.P4981445707121693173.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142810.P4981445707121693173.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142810.P4981445707121693173.f1, SequenceMachineLib.memo_apply]; omega⟩) _

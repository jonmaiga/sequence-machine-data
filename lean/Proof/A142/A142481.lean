import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142481 lists the primes congruent to 8 mod 51. -/
theorem A142481.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142481 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 8) (n - 1) : ℤ) := by
  simp only [A142481, A142481.P4873203718547970786.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142481.P4873203718547970786.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142481.P4873203718547970786.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142481.P4873203718547970786.f1, SequenceMachineLib.memo_apply]; omega⟩) _

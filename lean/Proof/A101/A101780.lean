import Prog.A101.A1017
import Proof.Lib.PrimesMod

/-- A101780 lists the primes congruent to 3 mod 100. -/
theorem A101780.anchor (n : ℕ) (hn : 1 ≤ n) :
    A101780 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 3) (n - 1) : ℤ) := by
  simp only [A101780, A101780.P5426429691116946271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 100 3 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A101780.P5426429691116946271.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A101780.P5426429691116946271.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 100, by simp only [A101780.P5426429691116946271.f1, SequenceMachineLib.memo_apply]; omega⟩) _

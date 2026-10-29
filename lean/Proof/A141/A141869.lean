import Prog.A141.A1418
import Proof.Lib.PrimesMod

/-- A141869 lists the primes congruent to 2 mod 19. -/
theorem A141869.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141869 n = (Nat.nth (fun p => p.Prime ∧ p % 19 = 2) (n - 1) : ℤ) := by
  simp only [A141869, A141869.P7786215418859443788.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 19 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A141869.P7786215418859443788.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A141869.P7786215418859443788.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 19, by simp only [A141869.P7786215418859443788.f1, SequenceMachineLib.memo_apply]; omega⟩) _

import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142498 lists the primes congruent to 37 mod 51. -/
theorem A142498.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142498 n = (Nat.nth (fun p => p.Prime ∧ p % 51 = 37) (n - 1) : ℤ) := by
  simp only [A142498, A142498.P11279174544589885965.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 51 37 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142498.P11279174544589885965.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142498.P11279174544589885965.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 51, by simp only [A142498.P11279174544589885965.f1, SequenceMachineLib.memo_apply]; omega⟩) _

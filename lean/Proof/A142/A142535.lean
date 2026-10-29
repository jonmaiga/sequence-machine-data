import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142535 lists the primes congruent to 5 mod 53. -/
theorem A142535.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142535 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 5) (n - 1) : ℤ) := by
  simp only [A142535, A142535.P11369600720982195924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142535.P11369600720982195924.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142535.P11369600720982195924.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142535.P11369600720982195924.f1, SequenceMachineLib.memo_apply]; omega⟩) _

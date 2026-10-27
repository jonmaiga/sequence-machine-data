import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142429 lists the primes congruent to 18 mod 49. -/
theorem A142429.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142429 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 18) (n - 1) : ℤ) := by
  simp only [A142429, A142429.P13259812496142464532.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 18 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142429.P13259812496142464532.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142429.P13259812496142464532.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142429.P13259812496142464532.f1, SequenceMachineLib.memo_apply]; omega⟩) _

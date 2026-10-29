import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142122 lists the primes congruent to 13 mod 37. -/
theorem A142122.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142122 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 13) (n - 1) : ℤ) := by
  simp only [A142122, A142122.P16262793009237207886.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142122.P16262793009237207886.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142122.P16262793009237207886.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142122.P16262793009237207886.f1, SequenceMachineLib.memo_apply]; omega⟩) _

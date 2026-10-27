import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142893 lists the primes congruent to 8 mod 63. -/
theorem A142893.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142893 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 8) (n - 1) : ℤ) := by
  simp only [A142893, A142893.P5240627243338882195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142893.P5240627243338882195.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142893.P5240627243338882195.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142893.P5240627243338882195.f1, SequenceMachineLib.memo_apply]; omega⟩) _

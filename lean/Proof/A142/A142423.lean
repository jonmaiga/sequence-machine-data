import Prog.A142.A1424
import Proof.Lib.PrimesMod

/-- A142423 lists the primes congruent to 11 mod 49. -/
theorem A142423.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142423 n = (Nat.nth (fun p => p.Prime ∧ p % 49 = 11) (n - 1) : ℤ) := by
  simp only [A142423, A142423.P3925050904865258140.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 49 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142423.P3925050904865258140.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142423.P3925050904865258140.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 49, by simp only [A142423.P3925050904865258140.f1, SequenceMachineLib.memo_apply]; omega⟩) _
